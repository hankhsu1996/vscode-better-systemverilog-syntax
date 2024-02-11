import {
  TmLanguageVisitor,
  TmLanguagePatternBeginEnd,
  TmLanguagePatternMatch,
  TmLanguagePatternPatterns,
  TmLanguagePatternInclude,
} from "./types";

export class IncludeFrequencyCounter implements TmLanguageVisitor {
  private includeFrequency: Record<string, number>;

  constructor(includeFrequency: Record<string, number>) {
    this.includeFrequency = includeFrequency;
  }

  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {}

  visitMatch(node: TmLanguagePatternMatch): void {}

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {
    if (node.include.startsWith("#")) {
      const includeKey = node.include.substring(1);
      this.includeFrequency[includeKey] =
        (this.includeFrequency[includeKey] ?? 0) + 1;
    } else {
      console.error(`Invalid include format: ${node.include}`);
    }
  }

  public printIncludeFrequency(): void {
    console.log(this.includeFrequency);
  }

  public getSortedIncludeKeys(): string[] {
    return Object.keys(this.includeFrequency).sort(
      (a, b) => this.includeFrequency[b] - this.includeFrequency[a]
    );
  }
}

export function getNewInclude(
  include: string,
  patternNameMap: Record<string, string>
): string {
  // Check if the include starts with '#'
  if (!include.startsWith("#")) {
    console.error(`Invalid include format: ${include}`);
    return include;
  }

  // Extract the key without the '#'
  const includeKey = include.substring(1);
  const newIncludeKey = patternNameMap[includeKey];

  // Check if the include key exists in the map
  if (newIncludeKey === undefined) {
    console.error(`Invalid include key: ${include}`);
    return include;
  }

  return `#${newIncludeKey}`;
}

export class PatternRenamer implements TmLanguageVisitor {
  private patternNameMap: Record<string, string>;

  constructor(patternNameMap: Record<string, string>) {
    this.patternNameMap = patternNameMap;
  }

  visitBeginEnd(node: TmLanguagePatternBeginEnd): void {}

  visitMatch(node: TmLanguagePatternMatch): void {}

  visitPatterns(node: TmLanguagePatternPatterns): void {}

  visitInclude(node: TmLanguagePatternInclude): void {
    node.include = getNewInclude(node.include, this.patternNameMap);
  }
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
