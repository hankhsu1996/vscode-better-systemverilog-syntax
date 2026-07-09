// SYNTAX TEST "source-text.sv"

// Real-world patterns for chapter 12 (procedural programming statements)

module test;
  typedef struct {
    int field_1;
    int field_2;
  } my_struct_t;

  // Return with assignment pattern
  function my_struct_t get_struct(input int a);
    return '{ field_1: a, field_2: 0 };
//  ^^^^^^ keyword.control.return.sv
  endfunction

  // Return in case statement
  function my_struct_t case_return(input int sel);
    case (sel)
      0: return '{ field_1: 0, field_2: 1 };
//       ^^^^^^ keyword.control.return.sv
      default: return '{ default: 0 };
//             ^^^^^^ keyword.control.return.sv
    endcase
  endfunction

  // Subroutine call as the single-statement body of a control-flow statement,
  // i.e. immediately after the closing paren of the condition.
  initial begin
    if (flag) do_thing();
//            ^^^^^^^^ entity.name.function.sv
    else do_other();
//       ^^^^^^^^ entity.name.function.sv
    while (flag) do_thing();
//               ^^^^^^^^ entity.name.function.sv
    foreach (arr[i]) do_thing();
//                   ^^^^^^^^ entity.name.function.sv
    repeat (3) do_thing();
//             ^^^^^^^^ entity.name.function.sv
  end

  always @(posedge clk) do_thing();
//                      ^^^^^^^^ entity.name.function.sv
endmodule
