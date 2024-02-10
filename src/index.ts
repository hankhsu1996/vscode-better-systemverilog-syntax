import { readYamlFile, writeJsonFile } from "./fileOperations";
import { TmLanguageProcessor } from "./tmLanguageProcessor";
import { TmLanguage } from "./types";

const tmLanguageYaml = "syntaxes/systemverilog.tmLanguage.yaml";
const tmLanguageJson = "syntaxes/systemverilog.tmLanguage.json";

const tmLanguage = readYamlFile<TmLanguage>(tmLanguageYaml);
const processor = new TmLanguageProcessor(tmLanguage);
processor.process();
writeJsonFile(tmLanguageJson, tmLanguage);
