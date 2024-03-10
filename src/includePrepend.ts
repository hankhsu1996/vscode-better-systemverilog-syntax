import {
  TmLanguageVisitor,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguagePatternInclude,
  TmLanguagePatternNameOnly,
} from "./types";

export class IncludePrependVisitor implements TmLanguageVisitor {
  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    if (node.name !== "comment.block.sv") {
      node.patterns = [
        { include: "#comment" },
        { include: "#compiler-directive" },
        { include: "#git-conflict-marker" },
        ...(node.patterns ?? []),
      ];
    }
  }
  visitMatch(node: TmLanguagePatternMatch): void {}
  visitPatterns(node: TmLanguagePatternPatterns): void {}
  visitInclude(node: TmLanguagePatternInclude): void {}
  visitNameOnly(node: TmLanguagePatternNameOnly): void {}
}
