import {
  TmLanguagePatternBeginEnd,
  TmLanguagePatternInclude,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguageVisitor,
} from "./types";

export class PatternChecker implements TmLanguageVisitor {
  checkPattern(pattern: string, regex: RegExp): void {
    const match = pattern.match(regex);
    if (match) {
      throw new Error(`Invalid pattern ${pattern}`);
    }
  }

  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    // Begin/end should not be a single bracket
    // It should at least be followed by a \s*
    this.checkPattern(node.begin, /^\\(\(|\{|\[)$/);
    this.checkPattern(node.end, /^\\(\)|\}|\])$/);

    // All the brackets end should be guarded by bracketsFailSafe
    this.checkPattern(node.begin, /^\(\\(\)|\]|\})\)\\s\*$/);
  }

  visitMatch(node: TmLanguagePatternMatch): void {}

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {}
}
