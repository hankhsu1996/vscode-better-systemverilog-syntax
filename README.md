# Better SystemVerilog Syntax for Visual Studio Code

## Introduction

Welcome to "Better SystemVerilog Syntax" for Visual Studio Code! This extension elevates your coding experience by providing advanced tmLanguage grammar support, aimed at enhancing SystemVerilog syntax highlighting. Our goal is to improve both readability and aesthetics, making your coding sessions more enjoyable and productive.

## Features

### Refined Syntax Highlighting

We've meticulously refined the tmLanguage grammar to offer you more precise and visually appealing syntax highlighting. This enhancement covers crucial SystemVerilog aspects, including:

- Lexical conventions (Chapter 5)
- Data types (Chapter 6)
- Aggregated data types (Chapter 7)
- Classes (Chapter 8)
- Processes (Chapter 9)
- Assignment statements (Chapter 10)
- Operators and expressions (Chapter 11)
- Procedural programming statements (Chapter 12)
- Tasks and functions (Chapter 13)
- Clocking blocks (Chapter 14)
- Interprocess synchronization and communication (Chapter 15)
- Assertions (Chapter 16)
- Constrained random value generation (Chapter 18)
- Utility system functions and tasks (Chapter 20)
- Input/output system tasks (Chapter 21)
- Compiler directives (Chapter 22)
- Modules and hierarchy (Chapter 23)
- Programs (Chapter 24)
- Interfaces (Chapter 25)
- Packages (Chapter 26)

### Adaptive Highlighting Mechanisms

Our syntax highlighting is built to adapt and remain robust, ensuring clarity even with incomplete or unconventional code structures:

- **Immediate Recognition**: Syntax elements are highlighted as soon as they're detected. This means that partially written code or structures identified by their leading keywords are immediately made readable.

- **Resilient Parsing**: Our parser gracefully handles scenarios of improperly terminated code structures. For instance, if a function within a module isn't closed correctly, our system intelligently manages to maintain syntax highlighting integrity for the rest of your code.

### Optimized JSON Output

To ensure smooth and efficient operation of our extension, we've implemented the capability to minify the JSON output file, reducing its size to about 90% of the original.

## How to Contribute

Your contributions are highly valued! Here's how you can help improve this extension:

1. Start by forking the repository.
2. Create a branch for your feature.
3. Make your changes and submit a pull request.

## Feedback and Suggestions

Got feedback or suggestions? We'd love to hear from you! Please feel free to submit your thoughts as issues in the project repository.

## License

This extension is made available under the MIT License. For more details, please refer to the [LICENSE.md](LICENSE.md) file.
