import {
  TmLanguagePatternBeginEnd,
  TmLanguagePatternInclude,
  TmLanguagePatternMatch,
  TmLanguagePatternNameOnly,
  TmLanguagePatternPatterns,
  TmLanguageVisitor,
} from "./types";

export function interpolate(
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
    node.begin = interpolate(node.begin, this.symbolTable);
    node.end = interpolate(node.end, this.symbolTable);
  }
  visitMatch(node: TmLanguagePatternMatch): void {
    node.match = interpolate(node.match, this.symbolTable);
  }
  visitPatterns(node: TmLanguagePatternPatterns): void {}
  visitInclude(node: TmLanguagePatternInclude): void {}
  visitNameOnly(node: TmLanguagePatternNameOnly): void {}
}
