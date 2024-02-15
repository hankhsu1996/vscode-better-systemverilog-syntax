// SYNTAX TEST "source-text.sv"

// Fail safe test: test unfinished macro
  `__FILE__
//^^^^^^^^^ meta.preprocessor.macro-name.sv
  `__LINE__
//^^^^^^^^^ meta.preprocessor.macro-name.sv
  `begin_keywords
//^^^^^^^^^^^^^^^ keyword.control.begin-keywords.sv
  `celldefine
//^^^^^^^^^^^ keyword.control.celldefine.sv
  `default_nettype
//^^^^^^^^^^^^^^^^ keyword.control.default-nettype.sv
  `define
//^^^^^^^ keyword.control.define.sv
  `else
//^^^^^ keyword.control.else.sv
  `elsif
//^^^^^ keyword.control.elsif.sv
  `end_keywords
//^^^^^^^^^^^^^ keyword.control.end-keywords.sv
  `endcelldefine
//^^^^^^^^^^^^^^ keyword.control.endcelldefine.sv
  `endif
//^^^^^ keyword.control.endif.sv
  `ifdef
//^^^^^ keyword.control.ifdef.sv
  `ifndef
//^^^^^^ keyword.control.ifndef.sv
  `include
//^^^^^^^ keyword.control.include.sv
  `line
//^^^^ keyword.control.line.sv
  `nounconnected_drive
//^^^^^^^^^^^^^^^^^^^^^ keyword.control.nounconnected-drive.sv
  `pragma
//^^^^^ keyword.control.pragma.sv
  `resetall
//^^^^^^^^ keyword.control.resetall.sv
  `timescale
//^^^^^^^^^ keyword.control.timescale.sv
  `unconnected_drive
//^^^^^^^^^^^^^^^^^^^ keyword.control.unconnected-drive.sv
  `undef
//^^^^^ keyword.control.undef.sv
  `undefineall
//^^^^^^^^^^^^^ keyword.control.undefineall.sv
