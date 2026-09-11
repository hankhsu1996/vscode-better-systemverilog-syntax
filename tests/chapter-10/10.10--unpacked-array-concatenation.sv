// SYNTAX TEST "source-text.sv"

/*
:name: unpacked_array_concatenation
:description: unpacked array concatenation test
:tags: 10.10
*/

module top;

  int a3 [1:3];
  int a9 [1:9];
  int q [$];

  initial begin

    a3 = {1, 2, 3};
//       ^ meta.concatenation.sv punctuation.section.braces.begin.sv
//        ^ constant.numeric.integer.sv
//         ^ punctuation.separator.comma.sv
//               ^ punctuation.section.braces.end.sv

    // An item may itself be an array
    a9 = {a3, 4, 5, a3, 6};
//       ^ meta.concatenation.sv punctuation.section.braces.begin.sv
//        ^^ variable.other.sv
//          ^ punctuation.separator.comma.sv
//                       ^ punctuation.section.braces.end.sv

    // An empty list denotes an array value with no elements
    q = {};
//      ^ meta.concatenation.sv punctuation.section.braces.begin.sv
//       ^ punctuation.section.braces.end.sv

  end

endmodule
