// SYNTAX TEST "source-text.sv"

// Encoded data follows key_block, digest_block and data_block from the next
// line up to the next pragma (LRM 34.5.15, 34.5.22, 34.5.27). It is never read
// as code, whatever characters the encoding uses.

// base64, as most encrypting tools write it, at the top level of a file
`pragma protect begin_protected
`pragma protect encrypt_agent="tool", encrypt_agent_info="1.0"
`pragma protect key_keyowner="Vendor", key_keyname="key1", key_method="rsa"
`pragma protect encoding=(enctype="base64", line_length=64, bytes=4)
`pragma protect key_block
//<------- keyword.control.pragma.sv
//      ^^^^^^^ entity.other.attribute-name.sv
a2V5cw==
//<-------- meta.encoded-block.sv string.unquoted.encoded.sv
`pragma protect digest_block
ZGln/*ZXN0
//<---------- string.unquoted.encoded.sv
`pragma protect data_method="aes128-cbc"
//<------- keyword.control.pragma.sv - meta.encoded-block.sv
`pragma protect encoding=(enctype="base64", line_length=64, bytes=24)
`pragma protect data_block
d29ybGQgaGVsbG8=
//<---------------- string.unquoted.encoded.sv
aGVsbG8gd29ybGQ//
//<----------------- string.unquoted.encoded.sv
`pragma protect end_protected
//<------- keyword.control.pragma.sv - meta.encoded-block.sv

module after_base64;
//<------ storage.type.module.sv
//     ^^^^^^^^^^^^ entity.name.type.sv
endmodule
//<--------- storage.type.module.sv

// uuencode, whose alphabet holds quotes, a backtick and comment openers,
// inside a module
module wrapper;
`pragma protect begin_protected
`pragma protect encoding=(enctype="uuencode", bytes=12)
`pragma protect data_block
,:&5L;&\@=V]R;&0*
//<----------------- string.unquoted.encoded.sv
"`/*'
//<----- string.unquoted.encoded.sv
`pragma protect end_protected
  logic x;
//      ^ meta.module-body.sv variable.other.sv
endmodule
//<--------- storage.type.module.sv

// An empty block. data_block in upper case, or inside a string, is not the keyword
`pragma protect data_block
`pragma protect end_protected
//<------- keyword.control.pragma.sv - meta.encoded-block.sv
`pragma protect DATA_BLOCK
module after_upper;
//<------ storage.type.module.sv
endmodule
`pragma protect comment="the payload follows data_block"
module after_empty;
//<------ storage.type.module.sv
endmodule
