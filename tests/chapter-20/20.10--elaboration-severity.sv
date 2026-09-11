// SYNTAX TEST "source-text.sv"

/*
:name: elaboration_severity_system_task
:description: severity system tasks used as elaboration-time module items
:tags: 20.10
*/

module top;

  $fatal(1, "unsupported configuration");
//^^^^^^ entity.name.function.sv
//      ^ punctuation.section.group.begin.sv
//       ^ constant.numeric.integer.sv
//        ^ punctuation.separator.comma.sv
//          ^ string.quoted.double.sv

  $error("bad parameter");
//^^^^^^ entity.name.function.sv
//      ^ punctuation.section.group.begin.sv
//       ^ string.quoted.double.sv
//                      ^ punctuation.section.group.end.sv
//                       ^ punctuation.terminator.semicolon.sv

  $warning("deprecated");
//^^^^^^^^ entity.name.function.sv

  // The argument list is optional
  $info;
//^^^^^ entity.name.function.sv
//     ^ punctuation.terminator.semicolon.sv

endmodule
