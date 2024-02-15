export interface TmLanguage {
  name: string;
  scopeName: string;
  variables?: Record<string, string>;
  patterns: TmLanguagePattern[];
  repository: Record<string, TmLanguagePattern>;
}

export type TmLanguagePatternBeginEnd = {
  name?: string;
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

export type TmLanguagePattern =
  | TmLanguagePatternBeginEnd
  | TmLanguagePatternMatch
  | TmLanguagePatternPatterns
  | TmLanguagePatternInclude;

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

export interface TmLanguageVisitor {
  visitBeginEnd(node: TmLanguagePatternBeginEnd): void;
  visitMatch(node: TmLanguagePatternMatch): void;
  visitPatterns(node: TmLanguagePatternPatterns): void;
  visitInclude(node: TmLanguagePatternInclude): void;
}
