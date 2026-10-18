// SYNTAX TEST "source-text.sv"

// An extern module, interface or program declaration left without its `;`
// ends at the next design element or at the end of the enclosing one.
// A port list left open runs on as it does in any header.

extern module m1 (input a, output b)
module next1;
//<------ storage.type.module.sv
//     ^^^^^ entity.name.type.sv
endmodule
//<--------- storage.type.module.sv

extern interface i1 (input logic clk)
interface next2;
//<--------- storage.type.interface.sv
endinterface
//<------------ storage.type.interface.sv

extern program p1 #(parameter N = 1)
program next3;
//<------- storage.type.program.sv
endprogram
//<---------- storage.type.program.sv

module outer;
  extern module m2 (input a,
endmodule
//<--------- storage.type.module.sv
module next4;
//<------ storage.type.module.sv
endmodule

// An extern subroutine prototype in an interface, left without its `;`
interface with_extern_task;
  extern task t(input int a)
endinterface
//<------------ storage.type.interface.sv
module next5;
//<------ storage.type.module.sv
endmodule
