// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


/*
:name: randc_modifier
:description: randc modifier test
:tags: 18.4.2
*/

class a;
    randc int b;
//  ^^^^^ storage.modifier.randc.sv
//        ^^^ entity.name.type.int.sv
//            ^ variable.other.sv
endclass
