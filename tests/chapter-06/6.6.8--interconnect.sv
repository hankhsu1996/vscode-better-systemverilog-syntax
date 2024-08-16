// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: interconnect
:description: generic interconnect tests
:tags: 6.6.8
*/
module top();
  interconnect bus;
//^^^^^^^^^^^^ entity.name.type.interconnect.sv

  mod_i m1(bus);
  mod_o m2(bus);
endmodule

module mod_i(input in);

endmodule

module mod_o(output out);

endmodule
