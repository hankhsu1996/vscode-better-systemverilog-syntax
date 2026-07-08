// SYNTAX TEST "source-text.sv"

// Cast operator with the various casting types (IEEE 1800 6.24.1, A.2.2.1):
//   casting_type ::= simple_type | constant_primary | signing | string | const
// Every casting type keyword must be highlighted, not just the integer atom
// types. `void'(...)` in statement position must also be highlighted.

module top ();

initial begin
  a = bit'(x);
//    ^^^ entity.name.type.sv
//       ^ punctuation.definition.casting.sv
  a = logic'(x);
//    ^^^^^ entity.name.type.sv
//         ^ punctuation.definition.casting.sv
  a = reg'(x);
//    ^^^ entity.name.type.sv
//       ^ punctuation.definition.casting.sv
  a = int'(x);
//    ^^^ entity.name.type.sv
//       ^ punctuation.definition.casting.sv
  a = real'(x);
//    ^^^^ entity.name.type.sv
//        ^ punctuation.definition.casting.sv
  a = shortreal'(x);
//    ^^^^^^^^^ entity.name.type.sv
//             ^ punctuation.definition.casting.sv
  a = realtime'(x);
//    ^^^^^^^^ entity.name.type.sv
//            ^ punctuation.definition.casting.sv
  a = string'(x);
//    ^^^^^^ entity.name.type.sv
//          ^ punctuation.definition.casting.sv
  a = unsigned'(x);
//    ^^^^^^^^ storage.modifier.unsigned.sv
//            ^ punctuation.definition.casting.sv
  a = signed'(x);
//    ^^^^^^ storage.modifier.signed.sv
//          ^ punctuation.definition.casting.sv
  a = const'(x);
//    ^^^^^ storage.modifier.const.sv
//         ^ punctuation.definition.casting.sv
  void'(x);
//^^^^ entity.name.type.sv
//    ^ punctuation.definition.casting.sv
  void'(f(a, b));
//^^^^ entity.name.type.sv
//    ^ punctuation.definition.casting.sv
end

endmodule
