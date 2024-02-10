import { CommentPrependVisitor } from "./commentPrepend";
import { InterpolationVisitor, interpolateString } from "./interpolation";
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

  constructor(private tmLanguage: TmLanguage) {}

  public process(): void {
    this.buildSymbolTable();
    Object.entries(this.tmLanguage.repository).forEach(([key, value]) => {
      this.traverse(value, new InterpolationVisitor(this.symbolTable));
      this.traverse(value, new CommentPrependVisitor());
    });
    delete this.tmLanguage.variables;
  }

  private buildSymbolTable(): void {
    Object.entries(this.tmLanguage.variables ?? {}).forEach(([key, value]) => {
      this.symbolTable[key] = interpolateString(
        value,
        this.tmLanguage.variables!
      );
    });
  }

  private traverse(node: TmLanguagePattern, visitor: TmLanguageVisitor): void {
    if (isPatternBeginEnd(node)) {
      visitor.visitBeginEnd(node);
      node.patterns?.forEach((pattern) => this.traverse(pattern, visitor));
      Object.entries(node.beginCapture ?? {}).forEach(([key, value]) =>
        this.traverse(value, visitor)
      );
      Object.entries(node.endCapture ?? {}).forEach(([key, value]) =>
        this.traverse(value, visitor)
      );
    } else if (isPatternMatch(node)) {
      visitor.visitMatch(node);
      Object.entries(node.captures ?? {}).forEach(([key, value]) =>
        this.traverse(value, visitor)
      );
    } else if (isPatternPatterns(node)) {
      node.patterns.forEach((pattern) => this.traverse(pattern, visitor));
    } else if (isPatternInclude(node)) {
      visitor.visitInclude(node);
    }
  }
}
