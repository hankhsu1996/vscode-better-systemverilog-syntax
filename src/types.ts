export interface TmLanguage {
  name: string;
  scopeName: string;
  test: string;
  variables?: Record<string, string>;
  repository: Record<string, TmLanguagePattern>;
}

export type TmLanguagePatternBeginEnd = {
  name?: string;
  begin: string;
  end: string;
  beginCapture?: {
    [key: string]: TmLanguagePattern;
  };
  endCapture?: {
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
  patterns: TmLanguagePattern[];
};

export type TmLanguagePatternInclude = {
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
