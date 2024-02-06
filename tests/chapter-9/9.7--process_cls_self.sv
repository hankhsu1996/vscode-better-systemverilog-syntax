// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: process_cls_self
:description: process class self method
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
  endtask

  initial begin
    test(8);
  end

endmodule
