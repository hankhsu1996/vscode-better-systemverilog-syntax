// SYNTAX TEST "source-text.sv"

// Parameter/localparam with keyword-containing expressions
// NOTE: LRM formal syntax (Annex A) does not include inside_expression or
// tagged_union_expression in constant_expression. However, most tools accept
// these in parameter contexts.

// Tagged union type for testing
typedef union tagged {
    void Invalid;
    int Valid;
} tagged_int;

module test_param_expressions;

    // tagged_union_expression: tagged member_identifier [ primary ]
    localparam tagged_int p1 = tagged Invalid;
//  ^^^^^^^^^^ storage.modifier.localparam.sv
//             ^^^^^^^^^^ entity.name.type.sv
//                        ^^ variable.other.constant.sv
//                           ^ keyword.operator.assignment.sv
//                             ^^^^^^ keyword.other.tagged.sv
//                                    ^^^^^^^ variable.other.enummember.sv

    localparam tagged_int p2 = tagged Valid(42);
//  ^^^^^^^^^^ storage.modifier.localparam.sv
//                        ^^ variable.other.constant.sv
//                             ^^^^^^ keyword.other.tagged.sv
//                                    ^^^^^ variable.other.enummember.sv
//                                         ^ punctuation.section.group.begin.sv
//                                          ^^ constant.numeric.integer.sv
//                                            ^ punctuation.section.group.end.sv

    // inside_expression: expression inside { range_list }
    localparam int val = 5;

    // inside WITHOUT parentheses
    localparam int in_range = val inside {1, 2, 3, 4, 5};
//  ^^^^^^^^^^ storage.modifier.localparam.sv
//                 ^^^^^^^^ variable.other.constant.sv
//                            ^^^ variable.other.constant.sv
//                                ^^^^^^ keyword.other.inside.sv

    // parameter with tagged expression
    parameter tagged_int q1 = tagged Invalid;
//  ^^^^^^^^^ storage.modifier.parameter.sv
//                       ^^ variable.other.constant.sv
//                            ^^^^^^ keyword.other.tagged.sv
//                                   ^^^^^^^ variable.other.enummember.sv

    parameter tagged_int q2 = tagged Valid(100);
//  ^^^^^^^^^ storage.modifier.parameter.sv
//                            ^^^^^^ keyword.other.tagged.sv
//                                   ^^^^^ variable.other.enummember.sv

endmodule
