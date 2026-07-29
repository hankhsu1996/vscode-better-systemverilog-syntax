export interface TmLanguage {
  name: string;
  scopeName: string;
  variables?: Record<string, string>;
  keywords?: string[];
  patterns: TmLanguagePattern[];
  repository: Record<string, TmLanguagePattern>;
}

// Build-only hint (stripped before output) telling IncludePrependVisitor which
// global rules to inject into a region. Defaults to "code" when absent.
//   code        - real code: comments, directives, and git markers may appear
//   literal     - pure text (ordinary strings, comments): inject nothing
//   macroString - the `define `"..."` construct, where macros do expand
// See src/includePrepend.ts.
//
// The tuple is the single source of truth; the union is derived from it so the
// two never drift, and isContextKind validates the raw string parsed from YAML.
export const CONTEXT_KINDS = ["code", "literal", "macroString"] as const;
export type ContextKind = (typeof CONTEXT_KINDS)[number];

export function isContextKind(value: unknown): value is ContextKind {
  return (
    typeof value === "string" &&
    (CONTEXT_KINDS as readonly string[]).includes(value)
  );
}

export type TmLanguagePatternBeginEnd = {
  name?: string;
  contextKind?: ContextKind;
  begin: string;
  end: string;
  beginCaptures?: {
    [key: string]: TmLanguagePattern;
  };
  endCaptures?: {
    [key: string]: TmLanguagePattern;
  };
  patterns?: TmLanguagePattern[];
};

export type TmLanguagePatternMatch = {
  name?: string;
  match: string;
  captures?: {
    [key: string]: TmLanguagePattern;
  };
};

export type TmLanguagePatternPatterns = {
  name?: string;
  patterns: TmLanguagePattern[];
};

export type TmLanguagePatternInclude = {
  name?: string;
  include: string;
};

export type TmLanguagePatternNameOnly = {
  name: string;
};

export type TmLanguagePattern =
  | TmLanguagePatternBeginEnd
  | TmLanguagePatternMatch
  | TmLanguagePatternPatterns
  | TmLanguagePatternInclude
  | TmLanguagePatternNameOnly;

export function isPatternBeginEnd(
  pattern: TmLanguagePattern
): pattern is TmLanguagePatternBeginEnd {
  return "begin" in pattern && "end" in pattern;
}

export function isPatternMatch(
  pattern: TmLanguagePattern
): pattern is TmLanguagePatternMatch {
  return "match" in pattern;
}

export function isPatternPatterns(
  pattern: TmLanguagePattern
): pattern is TmLanguagePatternPatterns {
  return "patterns" in pattern && !("begin" in pattern || "match" in pattern);
}

export function isPatternInclude(
  pattern: TmLanguagePattern
): pattern is TmLanguagePatternInclude {
  return "include" in pattern;
}

export function isPatternNameOnly(
  pattern: TmLanguagePattern
): pattern is TmLanguagePatternNameOnly {
  return "name" in pattern && Object.keys(pattern).length === 1;
}

export interface TmLanguageVisitor<T = void> {
  visitBeginEnd(
    node: TmLanguagePatternBeginEnd,
    beginCaptures: T[],
    endCaptures: T[],
    patterns: T[]
  ): T;
  visitMatch(node: TmLanguagePatternMatch, captures: T[]): T;
  visitPatterns(node: TmLanguagePatternPatterns, patterns: T[]): T;
  visitInclude(node: TmLanguagePatternInclude): T;
  visitNameOnly(node: TmLanguagePatternNameOnly): T;
}
