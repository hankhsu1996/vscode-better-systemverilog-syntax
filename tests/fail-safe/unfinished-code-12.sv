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

// Extern and pure virtual method prototypes in a class, left without their `;`
class with_extern_new;
  extern function new(int a)
endclass
//<-------- storage.type.class.sv
class with_extern_method;
  extern function void f()
endclass
//<-------- storage.type.class.sv
virtual class with_pure_method;
  pure virtual function void g()
endclass
//<-------- storage.type.class.sv
interface class with_interface_method;
  pure virtual function void h()
endclass
//<-------- storage.type.class.sv
module next6;
//<------ storage.type.module.sv
endmodule
