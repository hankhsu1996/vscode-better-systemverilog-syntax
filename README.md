# Better SystemVerilog Syntax for Visual Studio Code

[![CI](https://github.com/hankhsu1996/vscode-better-systemverilog-syntax/actions/workflows/vscode-extension-ci.yml/badge.svg)](https://github.com/hankhsu1996/vscode-better-systemverilog-syntax/actions/workflows/vscode-extension-ci.yml)
![Visual Studio Marketplace Version](https://img.shields.io/visual-studio-marketplace/v/hankhsu1996.better-systemverilog-syntax)
![GitHub License](https://img.shields.io/github/license/hankhsu1996/vscode-better-systemverilog-syntax)

## Introduction

Welcome to _Better SystemVerilog Syntax_! This extension enhances your coding experience by providing advanced TextMate grammar support, specifically designed to improve SystemVerilog syntax highlighting. Our aim is to make your coding sessions more enjoyable and productive by enhancing readability and aesthetics.

![showcase](assets/showcase.gif)

## Getting Started

1. **Install the Extension**: You can find _Better SystemVerilog Syntax_ in the VS Code Marketplace. Just search for it and click 'Install'.
2. **Activate Syntax Highlighting**: Once installed, open any `.sv` or `.svh` file, and enjoy enhanced syntax highlighting tailored for SystemVerilog.

## Supported Syntax

Here's a summary of the SystemVerilog syntax support, by chapter of IEEE 1800-2023:

| Chapter | Title                                          | Status           |
| ------- | ---------------------------------------------- | ---------------- |
| 5       | Lexical conventions                            | 🟢 Supported     |
| 6       | Data types                                     | 🟢 Supported     |
| 7       | Aggregate data types                           | 🟢 Supported     |
| 8       | Classes                                        | 🟢 Supported     |
| 9       | Processes                                      | 🟢 Supported     |
| 10      | Assignment statements                          | 🟢 Supported     |
| 11      | Operators and expressions                      | 🟢 Supported     |
| 12      | Procedural programming statements              | 🟢 Supported     |
| 13      | Tasks and functions (subroutines)              | 🟢 Supported     |
| 14      | Clocking blocks                                | 🟢 Supported     |
| 15      | Interprocess synchronization and communication | 🟢 Supported     |
| 16      | Assertions                                     | 🟢 Supported     |
| 17      | Checkers                                       | 🟢 Supported     |
| 18      | Constrained random value generation            | 🟢 Supported     |
| 19      | Functional coverage                            | 🟢 Supported     |
| 20      | Utility system tasks and system functions      | 🟢 Supported     |
| 21      | Input/output system tasks and system functions | 🟢 Supported     |
| 22      | Compiler directives                            | 🟢 Supported     |
| 23      | Modules and hierarchy                          | 🟢 Supported     |
| 24      | Programs                                       | 🟢 Supported     |
| 25      | Interfaces                                     | 🟢 Supported     |
| 26      | Packages                                       | 🟢 Supported     |
| 27      | Generate constructs                            | 🟢 Supported     |
| 28      | Gate-level and switch-level modeling           | 🟢 Supported     |
| 29      | User-defined primitives                        | 🔴 Not supported |
| 30      | Specify blocks                                 | 🟢 Supported     |
| 31      | Timing checks                                  | 🟢 Supported     |
| 32      | Backannotation using the standard delay format | 🟢 Supported     |
| 33      | Configuring the contents of a design           | 🟢 Supported     |
| 34      | Protected envelopes                            | 🟢 Supported     |

## Library Map Files

Library map files (IEEE 1800 clause 33.3) are highlighted as their own language, _SystemVerilog Library Map_:

```
library rtlLib *.v;
library gateLib ./*.vg, ../cells/.../*.v -incdir ./inc;
include ../other/lib.map;
```

The standard leaves the name of this file to each tool, so only a file named `lib.map`, the name the standard uses in its examples, is recognized automatically. For any other name, pick the language from the language selector in the status bar, or add an association to your settings:

```json
"files.associations": {
  "*.libmap": "systemverilog-libmap"
}
```

## Features

### Enhanced Syntax Highlighting

- **Precision**: SystemVerilog syntax is highlighted with unmatched accuracy, ensuring clarity and focus.
- **Robustness**: Even incomplete or unconventional code structures maintain readability and aesthetics.
- **Efficiency**: Minified JSON files ensure quick loading times and minimal performance overhead.

## How to Contribute

Your contributions are essential for ongoing improvements! Here’s how you can help:

- **Issue Reporting**: If you encounter incorrect syntax highlighting, please [open an issue](https://github.com/hankhsu1996/vscode-better-systemverilog-syntax/issues/new/choose) with the code.
- **Pull Requests**: For those looking to contribute code, especially for unsupported chapters, feel free to submit a pull request. Be sure to include tests!

## License

This project is licensed under the MIT License, meaning it’s free for personal and commercial use. For full details, see the [LICENSE](LICENSE) file.
