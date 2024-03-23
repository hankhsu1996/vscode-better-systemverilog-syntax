// SYNTAX TEST "source-text.sv"

// std::randomize in task declaration
task my_task();
  int x;
  std::randomize(x) with {x > 0;};
//^^^ entity.name.namespace.sv
//   ^^ punctuation.separator.scope-resolution.sv
//     ^^^^^^^^^ entity.name.function.sv
//               ^ variable.other.sv
//                  ^^^^ keyword.control.with.sv
//                        ^ variable.other.sv
endtask
