// SYNTAX TEST "source-text.sv"

// Fail safe test: test unfinished anonymous program code

package pkg;
  program
//^^^^^^^ storage.type.program.sv
endpackage
// <---------- storage.type.package.sv


package pkg;
  program;
//^^^^^^^ storage.type.program.sv
endpackage
// <---------- storage.type.package.sv


package pkg;
  program;
    function int f(
endpackage
// <---------- storage.type.package.sv


package pkg;
  program;
    function int f();
endpackage
// <---------- storage.type.package.sv


package pkg;
  program;
    class C;
endpackage
// <---------- storage.type.package.sv


program;
  function int f();
  endfunction
module m;
// <------ meta.module-declaration.sv storage.type.module.sv
//     ^ entity.name.type.sv
endmodule
// <--------- meta.module-declaration.sv storage.type.module.sv
