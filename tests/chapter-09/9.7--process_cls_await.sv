// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: process_cls_await
:description: process class await method
:tags: 9.7
*/
module process_tb ();
  task automatic test (int N);
    process job[] = new [N];
//  ^^^^^^^ entity.name.type.sv
//                  ^^^ entity.name.function.sv

    foreach(job[i])
      fork
        automatic int k = i;
//      ^^^^^^^^^ storage.modifier.automatic.sv
//                ^^^ entity.name.type.int.sv
        begin
          job[k] = process::self();
//                 ^^^^^^^ entity.name.namespace.sv
//                        ^^ punctuation.separator.scope-resolution.sv
//                          ^^^^ entity.name.function.sv
          $display("process %d", k);
        end
      join_none

    foreach(job[i])
      wait(job[i] != null);
//                   ^^^^ constant.language.null.sv

    job[1].await();
//  ^^^ variable.other.sv
//      ^ constant.numeric.integer.sv
//         ^^^^^ entity.name.function.sv
  endtask

  initial begin
    test(8);
  end

endmodule
