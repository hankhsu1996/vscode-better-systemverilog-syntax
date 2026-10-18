// SYNTAX TEST "source-text.sv"

// The decryption envelope example of LRM 34.3.1, written with the "raw" encoding
module secret (a, b);
  input a;
  output b;

`pragma protect encoding=(enctype="raw")
`pragma protect data_method="x-caesar", data_keyname="rot13",
begin_protected
`pragma protect encoding=(enctype="raw", bytes=190), data_block
//<------- keyword.control.pragma.sv
`centzn cebgrpg ehagvzr_yvprafr=(yvoenel="yvp.fb",srngher="ehaFrperg",
//<---------------------------------------------------------------------- meta.encoded-block.sv string.unquoted.encoded.sv
ragel="pux",zngpu=42)
//<--------------------- string.unquoted.encoded.sv
   ert o;
//^^^^^^^^ string.unquoted.encoded.sv

     vavgvny
        ortva
           o = 0;
//         ^^^^^^ string.unquoted.encoded.sv
        raq

   nyjnlf
      ortva
         #5 o = n;
//       ^^^^^^^^^ string.unquoted.encoded.sv
      raq
`pragma protect end_protected
//<------- keyword.control.pragma.sv - meta.encoded-block.sv
`pragma reset protect
//<------- keyword.control.pragma.sv

endmodule // secret
//<--------- storage.type.module.sv
