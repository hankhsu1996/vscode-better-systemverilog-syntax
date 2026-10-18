// SYNTAX TEST "source-text.sv"

// A class property declared with two or more unpacked dimensions (e.g. an
// associative array of queues) must highlight the property name as a variable,
// not a type (IEEE 1800 8.5).

class c;
  t_e_t gvar[int][$];
//      ^^^^ variable.other.sv
  local t_e_t hvar[int][int][$];
//            ^^^^ variable.other.sv
  t_e_t svar[$];
//      ^^^^ variable.other.sv
endclass

// An extern constructor prototype names `new` (LRM 8.24, A.1.9
// class_constructor_prototype)
class with_extern_new;
  extern function new(int a);
//^^^^^^ storage.modifier.extern.sv
//       ^^^^^^^^ storage.type.function.sv
//                ^^^ entity.name.function.sv
//                    ^^^ entity.name.type.sv
//                        ^ variable.other.sv
//                         ^ punctuation.section.group.end.sv
//                          ^ punctuation.terminator.semicolon.sv
  extern function void f();
//                     ^ entity.name.function.sv
  int x;
//    ^ meta.class-body.sv variable.other.sv
endclass
//<-------- storage.type.class.sv
