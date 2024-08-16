// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: cast_func
:description: $cast function test
:tags: 8.16
*/
module class_tb ();
  typedef enum { aaa, bbb, ccc, ddd, eee } values;
  initial begin
    values val;
    if(!$cast(val, 5))
//      ^^^^^ entity.name.function.sv
      $display("$cast failed");
    $display(val);
  end
endmodule
