import { readYamlFile, writeJsonFile } from "./fileOperations";
import { TmLanguageProcessor } from "./tmLanguageProcessor";
import { TmLanguage } from "./types";

// Each grammar is authored as syntaxes/<name>.tmLanguage.yaml and built to the
// .json beside it.
const grammarNames = ["systemverilog", "systemverilog-libmap"];

const grammars = grammarNames.map((name) => ({
  name,
  tmLanguage: readYamlFile<TmLanguage>(`syntaxes/${name}.tmLanguage.yaml`),
}));

// One grammar may include another by its scope name, so every scope built here
// is known before any grammar is checked.
const scopeNames = new Set(
  grammars.map(({ tmLanguage }) => tmLanguage.scopeName)
);

for (const { name, tmLanguage } of grammars) {
  new TmLanguageProcessor(tmLanguage, scopeNames).process();
  writeJsonFile(`syntaxes/${name}.tmLanguage.json`, tmLanguage);
}
