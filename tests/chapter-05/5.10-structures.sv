// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: structure
:description: Structure assignment tests
:tags: 5.10
*/
module top();
  typedef struct {
    int a;
    int b;
  } ms_t;

  ms_t ms;

  initial begin
    ms = '{ 0, 1};
//       ^^ punctuation.section.braces.begin.sv
//          ^ constant.numeric.integer.sv
//           ^ punctuation.separator.comma.sv
//             ^ constant.numeric.integer.sv
//              ^ punctuation.section.braces.end.sv

    ms = '{ default:1, int:1};
//       ^^ punctuation.section.braces.begin.sv
//          ^^^^^^^ keyword.other.default.sv
//                 ^ punctuation.separator.colon.sv
//                  ^ constant.numeric.integer.sv
//                   ^ punctuation.separator.comma.sv
//                     ^^^ entity.name.type.sv
//                        ^ punctuation.separator.colon.sv
//                         ^ constant.numeric.integer.sv
//                          ^ punctuation.section.braces.end.sv

    ms = '{ int:0, int:1};
//       ^^ punctuation.section.braces.begin.sv
//          ^^^ entity.name.type.sv
//             ^ punctuation.separator.colon.sv
//              ^ constant.numeric.integer.sv
//               ^ punctuation.separator.comma.sv
//                 ^^^ entity.name.type.sv
//                    ^ punctuation.separator.colon.sv
//                     ^ constant.numeric.integer.sv
  end

endmodule
