# SystemVerilog LRM Coverage

This document tracks grammar implementation and test coverage for each LRM chapter.

## Status Legend

**Grammar Status:**

- `Done` - Syntax fully supported in TextMate grammar
- `Partial` - Some constructs supported, others missing
- `None` - Not implemented
- `N/A` - Chapter has no syntax to highlight (conceptual/semantic only)

**Test Status:**

- `Good` - Comprehensive test coverage (20+ tests)
- `Moderate` - Basic coverage (5-20 tests)
- `Minimal` - Few tests (1-5 tests)
- `None` - No tests

## Summary Table

### Part One: Design and Verification Constructs

| Ch. | Title                                          | Grammar | Tests         | Notes                                                           |
| --- | ---------------------------------------------- | ------- | ------------- | --------------------------------------------------------------- |
| 1   | Overview                                       | N/A     | N/A           | Conceptual only                                                 |
| 2   | Normative references                           | N/A     | N/A           | Standards references                                            |
| 3   | Design and verification building blocks        | N/A     | N/A           | High-level concepts                                             |
| 4   | Scheduling semantics                           | N/A     | N/A           | Simulation semantics                                            |
| 5   | Lexical conventions                            | Done    | Good (~50)    |                                                                 |
| 6   | Data types                                     | Done    | Good (~90)    |                                                                 |
| 7   | Aggregate data types                           | Done    | Good (~88)    |                                                                 |
| 8   | Classes                                        | Done    | Good (~54)    |                                                                 |
| 9   | Processes                                      | Done    | Good (~46)    |                                                                 |
| 10  | Assignment statements                          | Done    | Minimal (10)  | See [Chapter 10 gaps](#chapter-10-assignment-statements)        |
| 11  | Operators and expressions                      | Done    | Good (~85)    |                                                                 |
| 12  | Procedural programming statements              | Done    | Good (~25)    |                                                                 |
| 13  | Tasks and functions                            | Done    | Moderate (14) |                                                                 |
| 14  | Clocking blocks                                | Done    | Minimal (5)   | See [Chapter 14 gaps](#chapter-14-clocking-blocks)              |
| 15  | Interprocess synchronization                   | Done    | Minimal (5)   | See [Chapter 15 gaps](#chapter-15-interprocess-synchronization) |
| 16  | Assertions                                     | Done    | Good (~75)    |                                                                 |
| 17  | Checkers                                       | None    | None          | See [Chapter 17 details](#chapter-17-checkers)                  |
| 18  | Constrained random value generation            | Done    | Good (~150)   |                                                                 |
| 19  | Functional coverage                            | None    | None          | See [Chapter 19 details](#chapter-19-functional-coverage)       |
| 20  | Utility system tasks and system functions      | Done    | Good (~49)    |                                                                 |
| 21  | Input/output system tasks and system functions | Done    | Good (~29)    |                                                                 |
| 22  | Compiler directives                            | Done    | Good (~97)    |                                                                 |

### Part Two: Hierarchy Constructs

| Ch. | Title                                          | Grammar | Tests       | Notes                                                                      |
| --- | ---------------------------------------------- | ------- | ----------- | -------------------------------------------------------------------------- |
| 23  | Modules and hierarchy                          | Done    | Minimal (3) | See [Chapter 23 gaps](#chapter-23-modules-and-hierarchy)                   |
| 24  | Programs                                       | Done    | Minimal (1) | See [Chapter 24 gaps](#chapter-24-programs)                                |
| 25  | Interfaces                                     | Done    | Minimal (6) | See [Chapter 25 gaps](#chapter-25-interfaces)                              |
| 26  | Packages                                       | Done    | Minimal (3) | See [Chapter 26 gaps](#chapter-26-packages)                                |
| 27  | Generate constructs                            | None    | None        | See [Chapter 27 details](#chapter-27-generate-constructs)                  |
| 28  | Gate-level and switch-level modeling           | None    | None        | See [Chapter 28 details](#chapter-28-gate-level-and-switch-level-modeling) |
| 29  | User-defined primitives                        | None    | None        | See [Chapter 29 details](#chapter-29-user-defined-primitives)              |
| 30  | Specify blocks                                 | Done    | Minimal (4) | See [Chapter 30 gaps](#chapter-30-specify-blocks)                          |
| 31  | Timing checks                                  | Done    | Minimal (4) | See [Chapter 31 gaps](#chapter-31-timing-checks)                           |
| 32  | Backannotation using the standard delay format | None    | None        | See [Chapter 32 details](#chapter-32-backannotation)                       |
| 33  | Configuring the contents of a design           | Done    | Minimal (1) | See [Chapter 33 gaps](#chapter-33-configuration)                           |
| 34  | Protected envelopes                            | None    | None        | See [Chapter 34 details](#chapter-34-protected-envelopes)                  |

### Part Three: Application Programming Interfaces

| Ch. | Title                                             | Grammar | Tests | Notes               |
| --- | ------------------------------------------------- | ------- | ----- | ------------------- |
| 35  | Direct programming interface                      | N/A     | N/A   | C API specification |
| 36  | Programming language interface (PLI/VPI) overview | N/A     | N/A   | C API specification |
| 37  | VPI object model diagrams                         | N/A     | N/A   | C API specification |
| 38  | VPI routine definitions                           | N/A     | N/A   | C API specification |
| 39  | Assertion API                                     | N/A     | N/A   | C API specification |
| 40  | Code coverage control and API                     | N/A     | N/A   | C API specification |
| 41  | Data read API                                     | N/A     | N/A   | C API specification |

---

## Not Implemented - Details

### Chapter 17: Checkers

**Priority:** Medium

**Syntax constructs needed:**

- `checker` / `endchecker` declarations
- Checker instantiation
- Checker ports and arguments
- Checker procedures (`always`, `initial` within checkers)
- Checker variables with special semantics

**LRM sections:**

- 17.2 Checker declaration
- 17.3 Checker instantiation
- 17.4 Context inference
- 17.5 Checker procedures
- 17.7 Checker variables
- 17.8 Functions in checkers

### Chapter 19: Functional Coverage

**Priority:** High (commonly used in verification)

**Syntax constructs needed:**

- `covergroup` / `endgroup` declarations
- `coverpoint` definitions
- `bins`, `illegal_bins`, `ignore_bins`
- `cross` coverage
- Coverage options (`option.`, `type_option.`)
- `with` expressions in coverpoints
- `iff` guards
- Covergroup arguments and clocking

**LRM sections:**

- 19.3 Defining the coverage model: covergroup
- 19.4 Using covergroups in classes
- 19.5 Defining coverage points
- 19.6 Defining cross coverage
- 19.7 Specifying coverage options
- 19.8 Predefined coverage methods

### Chapter 27: Generate Constructs

**Priority:** High (essential for RTL)

**Syntax constructs needed:**

- `generate` / `endgenerate` blocks
- `genvar` declarations
- Loop generate (`for` in generate context)
- Conditional generate (`if`, `case` in generate context)
- Generate block naming

**LRM sections:**

- 27.3 Generate construct syntax
- 27.4 Loop generate constructs
- 27.5 Conditional generate constructs
- 27.6 External names for unnamed generate blocks

### Chapter 28: Gate-level and Switch-level Modeling

**Priority:** Low (less common in modern SystemVerilog)

**Syntax constructs needed:**

- Gate primitives: `and`, `nand`, `nor`, `or`, `xor`, `xnor`
- Buffer primitives: `buf`, `not`, `bufif0`, `bufif1`, `notif0`, `notif1`
- MOS switches: `nmos`, `pmos`, `rnmos`, `rpmos`, `cmos`, `rcmos`
- Bidirectional switches: `tran`, `tranif0`, `tranif1`, `rtran`, `rtranif0`, `rtranif1`
- Pull primitives: `pullup`, `pulldown`
- Strength specifications

**LRM sections:**

- 28.3 Gate and switch declaration syntax
- 28.4-28.10 Individual gate types
- 28.11 Logic strength modeling

### Chapter 29: User-defined Primitives

**Priority:** Low (less common in modern SystemVerilog)

**Syntax constructs needed:**

- `primitive` / `endprimitive` declarations
- UDP ports and port declarations
- UDP `table` / `endtable`
- Table entries (combinational and sequential)
- Edge symbols in tables (`r`, `f`, `p`, `n`, `*`)
- `initial` statements in UDPs

**LRM sections:**

- 29.3 UDP definition
- 29.4 Combinational UDPs
- 29.5 Level-sensitive sequential UDPs
- 29.6 Edge-sensitive sequential UDPs
- 29.7 Sequential UDP initialization

### Chapter 32: Backannotation

**Priority:** Low (tool-specific)

**Syntax constructs needed:**

- `$sdf_annotate` system task

**LRM sections:**

- 32.9 Loading timing data from an SDF file

### Chapter 34: Protected Envelopes

**Priority:** Low (IP protection, tool-specific)

**Syntax constructs needed:**

- `pragma protect` directives
- Protection keywords: `begin_protected`, `end_protected`
- Encoding attributes: `encoding`, `key_block`, `data_block`

**LRM sections:**

- 34.4 Protect pragma directives
- 34.5 Protect pragma keywords

---

## Implemented - Test Gaps

### Chapter 10: Assignment Statements

**Current tests:** 10

**Missing test coverage:**

- 10.9 Assignment patterns (partial)
- 10.10 Unpacked array concatenation
- 10.11 Net aliasing (`alias` statement)

### Chapter 14: Clocking Blocks

**Current tests:** 5

**Missing test coverage:**

- 14.4 Input and output skews
- 14.5 Hierarchical expressions
- 14.11 Cycle delay (`##`)
- 14.12 Default clocking
- 14.14 Global clocking
- 14.16 Synchronous drives

### Chapter 15: Interprocess Synchronization

**Current tests:** 5

**Missing test coverage:**

- 15.3 Semaphores (`new`, `get`, `put`, `try_get`)
- 15.5 Named events (more edge cases)

### Chapter 23: Modules and Hierarchy

**Current tests:** 3

**Missing test coverage:**

- 23.3 Module instances (port connections, parameter overrides)
- 23.4 Nested modules
- 23.5 Extern modules
- 23.6 Hierarchical names
- 23.10 Overriding module parameters (defparam, #())
- 23.11 Binding auxiliary code (`bind`)

### Chapter 24: Programs

**Current tests:** 1

**Missing test coverage:**

- 24.3 Program construct (more examples)
- 24.6 Anonymous programs
- 24.7 Program control tasks (`$exit`)

### Chapter 25: Interfaces

**Current tests:** 6

**Missing test coverage:**

- 25.5 Modports (more complex examples)
- 25.8 Parameterized interfaces
- 25.9 Virtual interfaces
- 25.10 Access to interface objects

### Chapter 26: Packages

**Current tests:** 3

**Missing test coverage:**

- 26.3 Package references (more patterns)
- 26.4 Using packages in module headers
- 26.6 Exporting imported names
- 26.7 The `std` built-in package

### Chapter 30: Specify Blocks

**Current tests:** 4

**Missing test coverage:**

- 30.4 Module path declarations (edge-sensitive paths)
- 30.5 Assigning delays to module paths
- 30.7 Pulse filtering behavior (`PATHPULSE$`)

### Chapter 31: Timing Checks

**Current tests:** 4

**Missing test coverage:**

- 31.3 `$setup`, `$hold`, `$setuphold`, `$width` (more variants)
- 31.4 `$recovery`, `$removal`, `$recrem`, `$skew`, `$timeskew`, `$fullskew`
- 31.5 Edge-control specifiers
- 31.6 Notifiers
- 31.9 Negative timing checks

### Chapter 33: Configuration

**Current tests:** 1

**Missing test coverage:**

- 33.3 Libraries
- 33.4 Configuration (`config`, `design`, `default`, `instance`, `cell`, `liblist`, `use`)

---

## Contributing

When adding support for a new chapter or section:

1. **Add grammar rules** in `syntaxes/systemverilog.tmLanguage.yaml`
2. **Add tests** in the appropriate `tests/chapter-XX/` directory
3. **Update this document** to reflect the new status
4. **Update README.md** if a chapter status changes

See [CLAUDE.md](../CLAUDE.md) for detailed development workflow.
