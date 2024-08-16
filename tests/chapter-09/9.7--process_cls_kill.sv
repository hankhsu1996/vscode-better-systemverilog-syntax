// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: process_cls_kill
:description: process class kill method
:tags: 9.7
*/
module process_tb ();
  task automatic test (int N);
    process job[] = new [N];

    foreach(job[i])
      fork
        automatic int k = i;
        begin
          job[k] = process::self();
          $display("process %d", k);
        end
      join_none

    foreach(job[i])
      wait(job[i] != null);

    job[1].await();

    foreach(job[i])
      if(job[i].status != process::FINISHED)
//                        ^^^^^^^ entity.name.namespace.sv
//                               ^^ punctuation.separator.scope-resolution.sv
//                                 ^^^^^^^^ variable.other.constant.sv
        job[i].kill();
//             ^^^^ entity.name.function.sv
  endtask

  initial begin
    test(8);
  end

endmodule
