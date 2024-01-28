const jsyaml = require("js-yaml");
const fs = require("fs");

const tmLanguageYaml = "syntaxes/systemverilog.tmLanguage.yaml";
const tmLanguageJson = "syntaxes/systemverilog.tmLanguage.json";

// Load the TAML file
const tmLanguage = jsyaml.load(fs.readFileSync(tmLanguageYaml));

// Define the interpolate function
String.prototype.interpolate = function (params) {
  const names = Object.keys(params);
  const vals = Object.values(params);
  const regex = new RegExp("\\$\\{(.*?)\\}", "g");
  return this.replace(regex, (match) => {
    const name = match.substring(2, match.length - 1);
    const index = names.indexOf(name);
    if (index === -1) {
      throw new Error(`Variable ${name} not found`);
    }
    return vals[index];
  });
};

// Loop throught tmLanguage.variables
// Do interpolation and store the result in symbolTable
const symbolTable = {};
Object.keys(tmLanguage.variables).forEach((key) => {
  const value = tmLanguage.variables[key];
  if (typeof value === "string") {
    symbolTable[key] = value.interpolate(tmLanguage.variables);
  }
});

// Walk the tree and interpolate variables
function walk(node) {
  if (node instanceof Array) {
    node.forEach(walk);
  } else if (node instanceof Object) {
    Object.keys(node).forEach((key) => {
      if (key === "begin" || key === "end" || key === "match") {
        const value = node[key];
        if (typeof value === "string") {
          node[key] = value.interpolate(symbolTable);
        }
      } else {
        walk(node[key]);
      }
    });
  }
}

// remove variables in tmLanguage
delete tmLanguage.variables;
walk(tmLanguage.repository);

// Write the JSON file
fs.writeFileSync(tmLanguageJson, JSON.stringify(tmLanguage, null, 2));
