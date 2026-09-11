import { TmLanguageVisitor, TmLanguagePatternInclude } from "./types";

export class IncludeFrequencyCounter implements TmLanguageVisitor {
  private includeFrequency: Record<string, number>;

  constructor(includeFrequency: Record<string, number>) {
    this.includeFrequency = includeFrequency;
  }

  visitBeginEnd(): void {}
  visitMatch(): void {}
  visitPatterns(): void {}
  visitInclude(node: TmLanguagePatternInclude): void {
    const includeKey = node.include.substring(1);
    this.includeFrequency[includeKey] =
      (this.includeFrequency[includeKey] ?? 0) + 1;
  }
  visitNameOnly(): void {}

  public printIncludeFrequency(): void {
    console.log(this.includeFrequency);
  }

  public getSortedIncludeKeys(): string[] {
    return Object.keys(this.includeFrequency).sort(
      (a, b) => this.includeFrequency[b] - this.includeFrequency[a]
    );
  }
}

// IncludeResolutionChecker has already established that every include names an
// existing repository entry, so each one has a minified counterpart here.
export function getNewInclude(
  include: string,
  patternNameMap: Record<string, string>
): string {
  return `#${patternNameMap[include.substring(1)]}`;
}

export class PatternRenamer implements TmLanguageVisitor {
  private patternNameMap: Record<string, string>;

  constructor(patternNameMap: Record<string, string>) {
    this.patternNameMap = patternNameMap;
  }

  visitBeginEnd(): void {}
  visitMatch(): void {}
  visitPatterns(): void {}
  visitInclude(node: TmLanguagePatternInclude): void {
    node.include = getNewInclude(node.include, this.patternNameMap);
  }
  visitNameOnly(): void {}
}

export function generateName(index: number): string {
  const alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const base = alphabet.length;
  let name = "";
  do {
    name = alphabet[index % base] + name;
    index = Math.floor(index / base);
  } while (index > 0);
  return name;
}
