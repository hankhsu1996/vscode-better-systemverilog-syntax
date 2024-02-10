import {
  TmLanguageVisitor,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguagePatternInclude,
} from "./types";

export class CommentPrependVisitor implements TmLanguageVisitor {
  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    node.patterns = [
      { include: "#comment" },
      { include: "#compiler-directive" },
      ...(node.patterns ?? []),
    ];
  }

  visitMatch(node: TmLanguagePatternMatch): void {}

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {}
}
