import {
  TmLanguageVisitor,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguagePatternInclude,
} from "./types";

export class IncludePrependVisitor implements TmLanguageVisitor {
  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    if (node.name !== "comment.block.sv") {
      node.patterns = [
        { include: "#comment" },
        { include: "#compiler-directive" },
        ...(node.patterns ?? []),
      ];
    }
  }

  visitMatch(node: TmLanguagePatternMatch): void {}

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {}
}
