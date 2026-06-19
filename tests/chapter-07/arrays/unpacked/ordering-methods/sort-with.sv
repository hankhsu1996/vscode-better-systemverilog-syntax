// SYNTAX TEST "source-text.sv"

// Array ordering method `sort`/`rsort` with a `with` clause (IEEE 1800 7.12.2).
// The `with` clause must be highlighted correctly even when the call appears
// as a standalone statement (not on the right-hand side of an assignment).

module top ();

int a_key[];

initial begin
  a_key.sort with (10 - item);
//      ^^^^ entity.name.function.sv
//           ^^^^ keyword.other.with.sv
//                ^ punctuation.section.group.begin.sv
//                 ^^ constant.numeric.integer.sv
//                    ^ keyword.operator.binary.sv
//                      ^^^^ variable.other.sv
//                          ^ punctuation.section.group.end.sv
  a_key.rsort with (item);
//      ^^^^^ entity.name.function.sv
//            ^^^^ keyword.other.with.sv
//                 ^ punctuation.section.group.begin.sv
//                  ^^^^ variable.other.sv
//                      ^ punctuation.section.group.end.sv
end

endmodule
