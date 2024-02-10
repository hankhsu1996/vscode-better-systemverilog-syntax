import {
  TmLanguagePatternBeginEnd,
  TmLanguagePatternInclude,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguageVisitor,
} from "./types";

export function interpolateString(
  template: string,
  params: Record<string, string>
): string {
  return template.replace(/\$\{(.*?)\}/g, (_match, name) => {
    if (!(name in params)) {
      throw new Error(`Variable ${name} not found`);
    }
    return params[name];
  });
}

export class InterpolationVisitor implements TmLanguageVisitor {
  constructor(private symbolTable: Record<string, string>) {}

  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {
    node.begin = interpolateString(node.begin, this.symbolTable);
    node.end = interpolateString(node.end, this.symbolTable);
  }

  visitMatch(node: TmLanguagePatternMatch): void {
    node.match = interpolateString(node.match, this.symbolTable);
  }

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {}
}
