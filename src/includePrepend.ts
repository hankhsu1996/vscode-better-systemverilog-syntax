import {
  TmLanguageVisitor,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguagePatternInclude,
  TmLanguagePatternNameOnly,
  ContextKind,
  CONTEXT_KINDS,
  isContextKind,
} from "./types";

// Which global rules get prepended into a begin/end region, keyed by the
// region's declared `contextKind` (default "code"). Inside pure text (ordinary
// strings and comments) `//`, `/* */`, and git markers are literal characters,
// not tokens, so nothing is injected. Only the `define `"..."` construct
// expands macros, so it alone keeps the compiler-directive include.
const INJECTED_INCLUDES: Record<ContextKind, string[]> = {
  code: ["#comment", "#compiler-directive", "#git-conflict-marker"],
  literal: [],
  macroString: ["#compiler-directive"],
};

export class IncludePrependVisitor implements TmLanguageVisitor {
  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    // contextKind is authored in YAML, so validate the raw value rather than
    // trusting the compile-time type, and never emit it into the grammar.
    const raw: unknown = node.contextKind;
    delete node.contextKind;

    if (raw !== undefined && !isContextKind(raw)) {
      throw new Error(
        `Unknown contextKind "${String(raw)}"${
          node.name ? ` on rule "${node.name}"` : ""
        }. Expected one of: ${CONTEXT_KINDS.join(", ")}.`
      );
    }
    const kind: ContextKind = raw ?? "code";

    const includes = INJECTED_INCLUDES[kind];
    if (includes.length > 0) {
      node.patterns = [
        ...includes.map((include) => ({ include })),
        ...(node.patterns ?? []),
      ];
    }
  }
  visitMatch(node: TmLanguagePatternMatch): void {}
  visitPatterns(node: TmLanguagePatternPatterns): void {}
  visitInclude(node: TmLanguagePatternInclude): void {}
  visitNameOnly(node: TmLanguagePatternNameOnly): void {}
}
