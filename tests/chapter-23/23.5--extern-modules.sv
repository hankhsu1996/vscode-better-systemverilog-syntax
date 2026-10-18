// SYNTAX TEST "source-text.sv"

// The second example of LRM 23.5
extern module m (a,b,c,d);
//<------ storage.modifier.extern.sv
//     ^^^^^^ storage.type.module.sv
//            ^ entity.name.type.sv
//               ^ variable.other.sv
//                       ^ punctuation.terminator.semicolon.sv
extern module a #(parameter size = 8, parameter type TP = logic [7:0])
//            ^ entity.name.type.sv
//                ^^^^^^^^^ storage.modifier.parameter.sv
                (input [size:0] a, output TP b);
//               ^^^^^ storage.modifier.input.sv
//                                 ^^^^^^ storage.modifier.output.sv
//                                             ^ punctuation.terminator.semicolon.sv

module m (.*);
//<------ storage.type.module.sv
//     ^ entity.name.type.sv
  input a,b,c;
  output d;
endmodule
//<--------- storage.type.module.sv

module a (.*);
//<------ storage.type.module.sv
endmodule
