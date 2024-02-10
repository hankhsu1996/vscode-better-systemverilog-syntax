// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: coverage_routines
:description: coverage routine test
:tags: 20.14
:type: simulation elaboration parsing
*/

module DUT;
endmodule

module top();
    int unsigned i;
    real r;
    DUT unit1();
    DUT unit2();

    initial begin
        i = $coverage_control(`SV_COV_CHECK, `SV_COV_TOGGLE, `SV_COV_HIER, $root);
//          ^^^^^^^^^^^^^^^^^ entity.name.function.sv
//                            ^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                           ^^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                           ^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                                         ^^^^^ variable.language.root.sv
        i = $coverage_control(`SV_COV_RESET, `SV_COV_TOGGLE, `SV_COV_MODULE, "DUT");
//          ^^^^^^^^^^^^^^^^^ entity.name.function.sv
//                            ^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                           ^^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                           ^^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                                           ^^^^^ string.quoted.double.sv
        i = $coverage_control(`SV_COV_RESET, `SV_COV_TOGGLE, `SV_COV_MODULE, $root.top.unit1);
//          ^^^^^^^^^^^^^^^^^ entity.name.function.sv
//                            ^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                           ^^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                           ^^^^^^^^^^^^^^ meta.preprocessor.macro-name.sv
//                                                                           ^^^^^ variable.language.root.sv
//                                                                                 ^^^ variable.other.sv
//                                                                                     ^^^^^ variable.other.sv
        i = $coverage_control(`SV_COV_STOP,  `SV_COV_TOGGLE, `SV_COV_HIER, $root.top.unit2);
        i = $coverage_control(`SV_COV_START, `SV_COV_TOGGLE, `SV_COV_HIER, "DUT");
        i = $coverage_get_max(`SV_COV_TOGGLE, `SV_COV_HIER, "DUT");
        r = $coverage_get(`SV_COV_STATEMENT, `SV_COV_HIER, $root.top.unit1);
        i = $coverage_merge(`SV_COV_ASSERTION, "some_name");
        i = $coverage_save(`SV_COV_FSM_STATE, "some_name");
        $set_coverage_db_name("coverage.db");
        $load_coverage_db("coverage.db");
        r = $get_coverage();
    end
endmodule
