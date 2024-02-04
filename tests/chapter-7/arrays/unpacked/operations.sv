// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: operations-on-unpacked-arrays-rw
:description: Test unpacked arrays operations support (R & W)
:tags: 7.4.3
:type: simulation elaboration parsing
*/
module top ();

bit arr [7:0];

initial begin
  arr = '{0, 0, 0, 0, 0, 0, 0, 0};
  $display(":assert: ('%b%b%b%b_%b%b%b%b' == '0000_0000')",
    arr[7], arr[6], arr[5], arr[4], arr[3], arr[2], arr[1], arr[0]);

  arr = '{1, 1, 0, 1, 1, 1, 1, 0 };
  $display(":assert: ('%b%b%b%b_%b%b%b%b' == '1101_1110')",
    arr[7], arr[6], arr[5], arr[4], arr[3], arr[2], arr[1], arr[0]);

  arr = '{1, 0, 1, 0, 1, 1, 0, 1 };
  $display(":assert: ('%b%b%b%b_%b%b%b%b' == '1010_1101')",
    arr[7], arr[6], arr[5], arr[4], arr[3], arr[2], arr[1], arr[0]);
end

endmodule
