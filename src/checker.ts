import {
  TmLanguagePattern,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternInclude,
  TmLanguagePatternMatch,
  TmLanguageVisitor,
  isRepositoryInclude,
} from "./types";

// TextMate silently ignores an include whose repository entry does not exist,
// so a misspelled name disables a rule with no error anywhere. Every include
// must therefore resolve; this runs after IncludePrependVisitor so the injected
// includes are checked too. An include is either "#name", a repository entry
// of the same grammar, or the scope name of a grammar built alongside it.
export class IncludeResolutionChecker implements TmLanguageVisitor {
  constructor(
    private repositoryKeys: ReadonlySet<string>,
    private scopeNames: ReadonlySet<string>
  ) {}

  visitBeginEnd(): void {}
  visitMatch(): void {}
  visitPatterns(): void {}
  visitInclude(node: TmLanguagePatternInclude): void {
    if (!isRepositoryInclude(node.include)) {
      if (this.scopeNames.has(node.include)) return;
      throw new Error(
        `Include "${node.include}" must name a repository entry as "#name" or the scope of a grammar built here`
      );
    }
    const key = node.include.substring(1);
    if (!this.repositoryKeys.has(key)) {
      throw new Error(
        `Include "${node.include}" has no repository entry; the rule would be silently ignored`
      );
    }
  }
  visitNameOnly(): void {}
}

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

  visitPatterns(): void {}

  visitInclude(): void {}

  visitNameOnly(): void {}
}
