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

### Test Organization

```
tests/
├── chapter-XX/                        # LRM chapter tests
│   ├── {section}--{name}.sv           # Single LRM example
│   ├── {section}--{name}_0.sv         # Multiple examples (0, 1, 2...)
│   ├── {section}--{name}_fail.sv      # Invalid syntax case
│   └── misc.sv                        # Real-world patterns for this chapter
├── fail-safe/                         # Incomplete/malformed code robustness
├── tooling/                           # Non-SV editor concerns (git markers, etc.)
└── _fixtures/                         # Test helper files (includes, etc.)
```

**Directory purposes:**

| Directory | Purpose | When to use |
|-----------|---------|-------------|
| `chapter-XX/` | LRM-derived test cases | Examples directly from IEEE 1800 spec |
| `chapter-XX/misc.sv` | Real-world patterns | SV patterns related to that chapter's topic |
| `fail-safe/` | Grammar robustness | Incomplete/malformed code handling |
| `tooling/` | Non-SV editor concerns | Git markers, fold markers, etc. |

**File naming conventions:**

| Pattern | Meaning |
|---------|---------|
| `{section}--{name}.sv` | Single test case for LRM section |
| `{section}--{name}_N.sv` | Multiple examples for same section (N = 0, 1, 2...) |
| `{section}--{name}_fail.sv` | Invalid/error syntax case |

**Decision flowchart:**
1. Is it from the LRM? → `chapter-XX/{section}--{name}.sv`
2. Is it real-world SV related to a chapter topic? → `chapter-XX/misc.sv`
3. Is it incomplete/broken code handling? → `fail-safe/`
4. Is it outside SV language (tooling)? → `tooling/`

**Note:** Some legacy tests use `-sim` suffix or subdirectories (e.g., `chapter-07/arrays/`). The `-sim` suffix is from the source repository (LRM simulation compliance tests) and has no meaning for syntax highlighting. For new tests, prefer flat structure with documented suffixes above.

## Grammar Development

The YAML grammar uses variables for reusable regex patterns (defined at top of file). When adding new syntax rules:

1. Edit `syntaxes/systemverilog.tmLanguage.yaml`
2. Run `npm run test` to build and verify
3. Add test cases in appropriate `tests/chapter-XX/` directory

## Bug Fix Workflow

When reporting "failing syntax" (incorrect highlighting):
1. Add a test case in the appropriate `tests/chapter-XX/` file demonstrating expected scopes
2. Run `npm run test` to confirm the test fails
3. Fix the grammar in `syntaxes/systemverilog.tmLanguage.yaml`
4. Run `npm run test` to verify the fix

## Git Workflow

Use branch + PR workflow with these prefixes:
- `feature/` - New syntax support or functionality
- `bugfix/` - Fixes for incorrect highlighting
- `docs/` - Documentation changes
- `chore/` - Dependencies, CI, tooling updates
- `release/` - Version releases

**PR titles:** Start with a verb, no prefix/colon (e.g., "Add dark mode support" not "feat: Add dark mode support").

Open a PR, let CI pass, then merge to main. Direct push to main is disabled.

## Release Workflow

1. Update version in `package.json`
2. Run `npm install` to sync `package-lock.json`
3. Update `CHANGELOG.md` with release notes
4. Create branch (`release/v1.x.x`) and PR
5. After merge:
   - `git switch main && git pull`
   - `git tag v1.x.x && git push origin v1.x.x`
6. Create GitHub release with .vsix:
   - `npm run package` to build .vsix
   - `gh release create v1.x.x --title "v1.x.x" --notes "..." better-systemverilog-syntax-1.x.x.vsix`
   - Use CHANGELOG format for notes (### Fixed, ### Changed, etc.)
7. Publish to VS Code marketplace: `npm run publish`
