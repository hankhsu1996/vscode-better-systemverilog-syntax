// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: if_pattern
:description: A module testing pattern matching in if statements
:tags: 12.6.2
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

  initial if (tmp matches tagged a '{4'b01zx, .v})
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.conditional-statement.sv
//        ^^ keyword.control.if.sv
//                ^^^^^^^ keyword.control.matches.sv
//                        ^^^^^^ keyword.other.tagged.sv
//                               ^ variable.other.enummember.sv
//                                 ^^^^^^^^^^^^^^ meta.pattern.sv
    $display("a %d", v);


endmodule
