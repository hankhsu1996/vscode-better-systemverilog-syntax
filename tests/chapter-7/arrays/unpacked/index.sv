// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: unpacked-array-iterator-index-querying
:description: Test support of unpacked arrays index querying method
:tags: 7.12.4 7.4.2 7.10 7.12.1
:type: simulation elaboration parsing
*/
module top ();

int arr[] = { 0, 1, 3, 3 };
int q[$];

initial begin
  q = arr.find with ( item == item.index );
//        ^^^^ entity.name.function.sv
//             ^^^^ keyword.control.with.sv
//                  ^ punctuation.section.group.begin.sv
//                    ^^^^ variable.other.sv
//                         ^^ keyword.operator.binary.sv
//                            ^^^^ variable.other.sv
//                                ^ punctuation.accessor.dot.sv
//                                 ^^^^^ entity.name.function.sv
//                                       ^ punctuation.section.group.end.sv
  $display(":assert: ((%d == 3) and (%d == 0) and (%d == 1) and (%d == 3))",
    q.size, q[0], q[1], q[2]);
end

endmodule
