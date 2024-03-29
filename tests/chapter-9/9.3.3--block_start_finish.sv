// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: block_start_finish
:description: block start finish check
:tags: 9.3.3
*/
module block_tb ();
  reg [3:0] a = 0;
  initial begin
    fork
      #200 a = 'h1;
      #150 a = 'h2;
      #100 a = 'h3;
      #50  a = 'h4;
    join

    fork
      #200 a = 'h5;
      #150 a = 'h6;
      #100 a = 'h7;
      #50  a = 'h8;
    join
  end
endmodule
