# Better SystemVerilog Syntax for Visual Studio Code

## Introduction

"Better SystemVerilog Syntax" provides enhanced syntax highlighting for SystemVerilog in Visual Studio Code, improving readability and aesthetics with advanced tmLanguage grammar.

## Features

### Enhanced Syntax Highlighting

This extension leverages an advanced tmLanguage grammar to provide accurate and visually appealing syntax highlighting, covering essential SystemVerilog concepts such as lexical conventions, data types, classes, processes, statements, expressions, synchronization, assertions, random value generation, system functions, input/output tasks, compiler directives, and structural elements.

### Resilient Syntax Highlighting

To ensure readability under various coding conditions, including incomplete or unconventional code, the following strategies are employed:

- **Immediate Highlighting:** Begins highlighting as soon as recognizable syntax elements are detected, improving readability for partially written code.
- **Intelligent Parsing:** Capable of handling improperly terminated code structures, such as missing `endfunction`, by maintaining consistent highlighting.
- **Macro Compatibility:** Designed to accommodate SystemVerilog macros, ensuring swift recovery from syntax disruptions for uninterrupted highlighting.

## Contributing

Contributions are welcome. To contribute:

1. Fork the repository.
2. Create a feature branch.
3. Submit a pull request.

## Feedback

For issues or suggestions, please file them as issues in the project repository.

## License

Licensed under the MIT License. See [LICENSE.md](LICENSE.md) for full details.
