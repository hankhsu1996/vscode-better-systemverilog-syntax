import {
  TmLanguagePattern,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternInclude,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguageVisitor,
} from "./types";

export class PatternChecker implements TmLanguageVisitor {
  private static waivedNodeNames: string[] = [
    // The following two patterns contains keywords that can be preceded by numbers (s, ns, etc.)
    "meta.time-literal.sv",
    "constant.numeric.time-unit.sv",
  ];

  private isWaived(node: TmLanguagePattern): boolean {
    return !node.name || PatternChecker.waivedNodeNames.includes(node.name);
  }

  private checkPattern(pattern: string, regex: RegExp): void {
    const match = pattern.match(regex);
    if (match) {
      throw new Error(`Invalid pattern ${pattern}`);
    }
  }

  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    if (this.isWaived(node)) return;

    // Begin/end should not be a single bracket
    // It should at least be followed by a \s*
    this.checkPattern(node.begin, /^\\(\(|\{|\[)$/);
    this.checkPattern(node.end, /^\\(\)|\}|\])$/);

    // All the brackets end should be guarded by bracketsFailSafe
    this.checkPattern(node.begin, /^\(\\(\)|\]|\})\)\\s\*$/);

    // All the keywords should be guarded by word boundary
    this.checkPattern(node.begin, /\([a-z_\|\`]+\)(?!\\b)/);
    this.checkPattern(node.begin, /(?<!\\b)\([a-z_\|]+\)/);
    this.checkPattern(node.end, /\([a-z_\|\`]+\)(?!\\b)/);
    this.checkPattern(node.end, /(?<!\\b)\([a-z_\|]+\)/);
  }

  visitMatch(node: TmLanguagePatternMatch): void {
    if (this.isWaived(node)) return;

    // All the keywords should be guarded by word boundary
    this.checkPattern(node.match, /\([a-z_\|\`]+\)(?!\\b)/);
    this.checkPattern(node.match, /(?<!\\b)\([a-z_\|]+\)/);
  }

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {}

  visitNameOnly(node: TmLanguagePattern): void {}
}
