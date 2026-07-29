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
