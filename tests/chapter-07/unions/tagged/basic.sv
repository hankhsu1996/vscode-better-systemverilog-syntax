// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: basic-tagged-union
:description: Test basic tagged union support
:tags: 7.3.2
:type: simulation elaboration parsing
*/

// The 'union tagged' construct is similar to an Enum in Rust. Its members resemble enum members, and a 'union tagged' can contain values based on the member type. Thus, we should annotate the member as an enum member. However, due to current grammar limitations, we can only annotate the member as 'variable.other.sv' within the 'union tagged' declaration. In the 'union tagged' assignment, though, we can annotate the member as 'variable.other.enummember.sv'.

module top ();

  union tagged {
//^^^^^ storage.type.union.sv
//      ^^^^^^ storage.modifier.tagged.sv
  void invalid;
//^^^^ entity.name.type.sv
  bit [3:0] valid;
} un;

initial begin
  un = tagged valid (10);
//     ^^^^^^ keyword.other.tagged.sv
//            ^^^^^ variable.other.enummember.sv
  $display(":assert: ('%p' == ''{valid:valid:10})'", un);
end

endmodule
