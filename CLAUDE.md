# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

For local/personal notes, use `CLAUDE.local.md` (gitignored).

## Project Overview

This is a VS Code extension providing TextMate grammar for SystemVerilog syntax highlighting. The grammar is authored in YAML and compiled to JSON for VS Code consumption.

## Build Commands

```bash
# Build the grammar (compiles YAML to JSON)
npm run build

# Run tests (builds first, then runs vscode-tmgrammar-test)
npm run test

# Watch mode for development
npm run test-watch

# Package for distribution
npm run package
```

## Architecture

### Grammar Build Pipeline

1. **Source**: `syntaxes/systemverilog.tmLanguage.yaml` - The main grammar definition
2. **Build**: `npm run build` runs `src/index.ts` which:
   - Reads the YAML grammar
   - Processes variables (interpolation)
   - Validates patterns
   - Minifies repository names for smaller output
   - Writes `syntaxes/systemverilog.tmLanguage.json`

### Source Files (`src/`)

- `index.ts` - Entry point for build process
- `tmLanguageProcessor.ts` - Main processor with visitor pattern for traversing grammar
- `types.ts` - TypeScript types for TextMate grammar structures
- `interpolation.ts` - Variable interpolation (e.g., `${identifier}`)
- `includePrepend.ts` - Handles include prepending
- `checker.ts` - Pattern validation
- `minify.ts` - Minifies repository names to reduce file size
- `fileOperations.ts` - YAML/JSON file I/O

### Testing

Tests use `vscode-tmgrammar-test` with annotated `.sv` files in `tests/`. Test files contain inline annotations that verify scope assignments:

```systemverilog
// SYNTAX TEST "source-text.sv"
  /* multi line comment */
//^^ punctuation.definition.comment.sv
//   ^^^^^^^^^^^^^^^^^^^ comment.block.sv
```

Tests are organized by SystemVerilog LRM chapter (e.g., `tests/chapter-05/`, `tests/chapter-06/`).

## Grammar Development

The YAML grammar uses variables for reusable regex patterns (defined at top of file). When adding new syntax rules:

1. Edit `syntaxes/systemverilog.tmLanguage.yaml`
2. Run `npm run test` to build and verify
3. Add test cases in appropriate `tests/chapter-XX/` directory

## Git Workflow

Use branch + PR workflow with these prefixes:
- `feature/` - New syntax support or functionality
- `bugfix/` - Fixes for incorrect highlighting
- `docs/` - Documentation changes
- `chore/` - Dependencies, CI, tooling updates

Open a PR, let CI pass, then merge to main.
