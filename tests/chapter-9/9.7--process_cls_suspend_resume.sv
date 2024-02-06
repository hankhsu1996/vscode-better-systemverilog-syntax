// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: process_control
:description: process control
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
          job[k].suspend();
//               ^^^^^^^ entity.name.function.sv
          $display("process %d", k);
        end
      join_none

    foreach(job[i])
      wait(job[i] != null);

    foreach(job[i])
      job[i].resume();
//           ^^^^^^ entity.name.function.sv

    job[1].await();
//         ^^^^^ entity.name.function.sv

    foreach(job[i])
      if(job[i].status != process::FINISHED)
        job[i].kill();
  endtask

  initial begin
    test(8);
  end

endmodule
