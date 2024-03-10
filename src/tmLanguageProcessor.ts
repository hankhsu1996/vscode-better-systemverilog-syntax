import {
  IncludeFrequencyCounter,
  PatternRenamer,
  generateName,
} from "./minify";
import { IncludePrependVisitor } from "./includePrepend";
import { InterpolationVisitor, interpolate } from "./interpolation";
import { PatternChecker } from "./checker";
import {
  TmLanguage,
  TmLanguagePattern,
  isPatternBeginEnd,
  isPatternInclude,
  isPatternMatch,
  isPatternPatterns,
  TmLanguageVisitor,
  isPatternNameOnly,
} from "./types";

export class TmLanguageProcessor {
  private symbolTable: Record<string, string> = {};
  private includeCount: Record<string, number> = {};

  constructor(private tmLanguage: TmLanguage) {}

  public process(): void {
    this.buildSymbolTable();
    this.applyVisitorsToRepository(new PatternChecker());
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

  private applyVisitorsToRepository<T>(visitor: TmLanguageVisitor<T>): void {
    Object.values(this.tmLanguage.repository).forEach((pattern) =>
      this.traverse<T>(pattern, visitor)
    );
  }

  private applyVisitorsToPatterns<T>(visitor: TmLanguageVisitor<T>): void {
    this.tmLanguage.patterns.forEach((pattern) =>
      this.traverse<T>(pattern, visitor)
    );
  }

  private traverse<T>(
    node: TmLanguagePattern,
    visitor: TmLanguageVisitor<T>
  ): T {
    if (isPatternBeginEnd(node)) {
      const beginCaptures = Object.values(node.beginCaptures ?? {}).map(
        (value) => this.traverse<T>(value, visitor)
      );
      const endCaptures = Object.values(node.endCaptures ?? {}).map((value) =>
        this.traverse<T>(value, visitor)
      );
      const patterns =
        node.patterns?.map((pattern) => this.traverse<T>(pattern, visitor)) ??
        [];
      return visitor.visitBeginEnd(node, beginCaptures, endCaptures, patterns);
    } else if (isPatternMatch(node)) {
      const captures = Object.values(node.captures ?? {}).map((value) =>
        this.traverse<T>(value, visitor)
      );
      return visitor.visitMatch(node, captures);
    } else if (isPatternPatterns(node)) {
      const patterns = node.patterns.map((pattern) =>
        this.traverse<T>(pattern, visitor)
      );
      return visitor.visitPatterns(node, patterns);
    } else if (isPatternInclude(node)) {
      return visitor.visitInclude(node);
    } else if (isPatternNameOnly(node)) {
      return visitor.visitNameOnly(node);
    } else {
      throw new Error("Invalid pattern type");
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
