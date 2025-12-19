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
endmodule
