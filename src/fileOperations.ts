import * as fs from "fs";
import * as jsyaml from "js-yaml";

export function readYamlFile<T>(filePath: string): T {
  const fileContents = fs.readFileSync(filePath, "utf8");
  return jsyaml.load(fileContents) as T;
}

export function writeJsonFile(filePath: string, data: object): void {
  const jsonData = JSON.stringify(data);
  fs.writeFileSync(filePath, jsonData);
}
