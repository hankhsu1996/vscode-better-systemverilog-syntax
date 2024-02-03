// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: forever_loop
:description: A module testing forever loop
:tags: 12.7.6
*/
module foreach_tb ();
  initial begin
    forever begin : loop
//  ^^^^^^^ keyword.control.forever.sv
      disable loop;
    end
  end
endmodule
