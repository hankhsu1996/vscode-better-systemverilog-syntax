import {
  IncludeFrequencyCounter,
  PatternRenamer,
  generateName,
} from "./minify";
import { IncludePrependVisitor } from "./includePrepend";
import { InterpolationVisitor, interpolate } from "./interpolation";
import {
  TmLanguage,
  TmLanguagePattern,
  isPatternBeginEnd,
  isPatternInclude,
  isPatternMatch,
  isPatternPatterns,
  TmLanguageVisitor,
} from "./types";

export class TmLanguageProcessor {
  private symbolTable: Record<string, string> = {};
  private includeCount: Record<string, number> = {};

  constructor(private tmLanguage: TmLanguage) {}

  public process(): void {
    this.buildSymbolTable();
    this.applyVisitorsToRepository(new InterpolationVisitor(this.symbolTable));
    this.applyVisitorsToRepository(new IncludePrependVisitor());
    delete this.tmLanguage.variables;
    this.minify();
  }

  private buildSymbolTable(): void {
    const variables = this.tmLanguage.variables ?? {};
    for (const [key, value] of Object.entries(variables)) {
      this.symbolTable[key] = interpolate(value, this.symbolTable);
    }
  }

  private applyVisitorsToRepository(visitor: TmLanguageVisitor): void {
    Object.values(this.tmLanguage.repository).forEach((pattern) =>
      this.traverse(pattern, visitor)
    );
  }

  private applyVisitorsToPatterns(visitor: TmLanguageVisitor): void {
    this.tmLanguage.patterns.forEach((pattern) =>
      this.traverse(pattern, visitor)
    );
  }

  private traverse(node: TmLanguagePattern, visitor: TmLanguageVisitor): void {
    if (isPatternBeginEnd(node)) {
      visitor.visitBeginEnd(node);
      Object.values(node.beginCaptures ?? {}).forEach((value) =>
        this.traverse(value, visitor)
      );
      Object.values(node.endCaptures ?? {}).forEach((value) =>
        this.traverse(value, visitor)
      );
      node.patterns?.forEach((pattern) => this.traverse(pattern, visitor));
    } else if (isPatternMatch(node)) {
      visitor.visitMatch(node);
      Object.values(node.captures ?? {}).forEach((value) =>
        this.traverse(value, visitor)
      );
    } else if (isPatternPatterns(node)) {
      node.patterns.forEach((pattern) => this.traverse(pattern, visitor));
    } else if (isPatternInclude(node)) {
      visitor.visitInclude(node);
    }
  }

  private minify(): void {
    const includeFrequencyCounter = new IncludeFrequencyCounter(
      this.includeCount
    );
    // Traverse patterns and repository to populate includeCount
    this.applyVisitorsToPatterns(includeFrequencyCounter);
    this.applyVisitorsToRepository(includeFrequencyCounter);

    // Generate new names based on include frequency
    const newNamesMap: Record<string, string> = {};
    const sortedKeys = includeFrequencyCounter.getSortedIncludeKeys();
    sortedKeys.forEach((key, index) => {
      newNamesMap[key] = generateName(index);
    });

    // Rebuild the repository with only entries that have a new name
    this.tmLanguage.repository = Object.fromEntries(
      Object.entries(this.tmLanguage.repository)
        .filter(([key]) => newNamesMap[key] !== undefined)
        .map(([key, value]) => [newNamesMap[key], value])
    );

    // Apply renaming to patterns and repository
    this.applyVisitorsToPatterns(new PatternRenamer(newNamesMap));
    this.applyVisitorsToRepository(new PatternRenamer(newNamesMap));
  }
}
