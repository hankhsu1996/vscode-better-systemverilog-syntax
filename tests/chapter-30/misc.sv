// SYNTAX TEST "source-text.sv"

// Pulse limit with a space before the semicolon
specify
  specparam PATHPULSE$ = (1, 2) ;
//                              ^ punctuation.terminator.semicolon.sv
  specparam t_rise = 1;
//^^^^^^^^^ storage.modifier.specparam.sv
endspecify
