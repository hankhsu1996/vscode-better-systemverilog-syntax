// SYNTAX TEST "source-text.sv"

// An anonymous program inside a package (LRM 24.6, A.1.11 anonymous_program)
package pkg;
  localparam int Base = 10;

  program;
//^^^^^^^ meta.anonymous-program.sv storage.type.program.sv
//       ^ meta.anonymous-program.sv punctuation.terminator.semicolon.sv
    function automatic int thrice(int x);
//  ^^^^^^^^ meta.anonymous-program.sv meta.function-declaration.sv storage.type.function.sv
//                         ^^^^^^ entity.name.function.sv
      return 3 * x;
    endfunction

    task automatic read_after_edge(ref logic clk, ref logic q, output logic seen);
//  ^^^^ meta.anonymous-program.sv meta.task-declaration.sv storage.type.task.sv
//                 ^^^^^^^^^^^^^^^ entity.name.function.sv
      @(posedge clk) seen = q;
    endtask

    class Box;
//  ^^^^^ meta.anonymous-program.sv meta.class-header.sv storage.type.class.sv
//        ^^^ entity.name.type.sv
      int v;
    endclass

    // An interface class is not a design element and does not end the program
    interface class Shape;
//  ^^^^^^^^^ meta.anonymous-program.sv
      pure virtual function int area();
    endclass
  endprogram
//^^^^^^^^^^ meta.anonymous-program.sv storage.type.program.sv

  function automatic int plus_base(int x);
//^^^^^^^^ meta.package-body.sv meta.function-declaration.sv storage.type.function.sv
    return x + Base;
  endfunction
endpackage
// <---------- storage.type.package.sv

// An anonymous program in a compilation-unit scope
program;
// <------- meta.anonymous-program.sv storage.type.program.sv
//     ^ meta.anonymous-program.sv punctuation.terminator.semicolon.sv
  function automatic int thrice(int x);
//^^^^^^^^ meta.anonymous-program.sv meta.function-declaration.sv storage.type.function.sv
    return 3 * x;
  endfunction
endprogram
// <---------- meta.anonymous-program.sv storage.type.program.sv

// A named program is not taken for an anonymous one
program p;
// <------- storage.type.program.sv
//      ^ entity.name.type.sv
endprogram
// <---------- storage.type.program.sv

program automatic q;
// <------- storage.type.program.sv
//      ^^^^^^^^^ storage.modifier.automatic.sv
//                ^ entity.name.type.sv
endprogram

module after;
// <------ meta.module-declaration.sv storage.type.module.sv
//     ^^^^^ entity.name.type.sv
endmodule
