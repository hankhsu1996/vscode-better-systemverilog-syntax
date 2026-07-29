// SYNTAX TEST "source-text.sv"

// Preprocessor conditionals inside a module instantiation port list. The port
// connection right after `else must still be highlighted, even when the last
// connection before the directive has no trailing comma (IEEE 1800 23.3.2).

module top ();

blk #(
  .P(1),
`ifdef SYNTH
  .W(8)
`else
  .W(4)
//^ punctuation.definition.named-parameter-assignment.sv
// ^ variable.parameter.sv
`endif
) u_p ();

blk u_i (
  .clk(clk),
`ifdef SYNTH
  .a(w_a)
`else
  .a(),
//^ punctuation.definition.named-port-connection.sv
// ^ variable.parameter.sv
  .b()
//^ punctuation.definition.named-port-connection.sv
// ^ variable.parameter.sv
`endif
);

endmodule
