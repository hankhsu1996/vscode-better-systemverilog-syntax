// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: case_pattern
:description: A module testing pattern matching in case statements
:tags: 12.6.1
*/
module case_tb ();

  typedef union tagged {
    struct {
      bit [3:0] val1, val2;
    } a;
    struct {
      bit [7:0] val1, val2;
    } b;
    struct {
      bit [15:0] val1, val2;
    } c;
  } u;

  u tmp;

  initial case (tmp) matches
//                   ^^^^^^^ keyword.control.matches.sv
    tagged a '{.v, 0} : $display("a %d", v);
//  ^^^^^^ keyword.other.tagged.sv
//         ^ variable.other.enummember.sv
//           ^^^^^^^^ meta.pattern.sv
//             ^ punctuation.definition.pattern.sv
//              ^ variable.other.sv
//                    ^ punctuation.separator.colon.sv
    tagged a '{.v1, .v2} : $display("a %d %d", v1, v2);
//  ^^^^^^ keyword.other.tagged.sv
//         ^ variable.other.enummember.sv
//           ^^^^^^^^^^^ meta.pattern.sv
    tagged b '{.v1, .v2} : $display("b %d %d", v1, v2);
    tagged c '{0, .v} : $display("c %d", v);
  endcase
endmodule
