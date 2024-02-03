// SYNTAX TEST "source-text.sv"
//
// Original source code by The SymbiFlow Authors under ISC License.
// Modifications by Shou-Li Hsu under MIT License.
// For full license information, see LICENSE file in the project root.
//
// vscode-tmgrammar-test annotations added by Shou-Li Hsu


// -*- coding: utf-8 -*-
// SPDX-License-Identifier: ISC
//
// Copyright (C) 2020 The SymbiFlow Authors.
//
// Use of this source code is governed by a ISC-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/ISC
/*
:name: function_recursive
:description: recursive function test
:tags: 13.4.2
:type: simulation elaboration parsing
*/
module top();

  function automatic int factorial(int val);
//^^^^^^^^ storage.type.function.sv
//         ^^^^^^^^^ storage.modifier.automatic.sv
    if(val == 0) return 1;
    return factorial(val-1) * val;
//         ^^^^^^^^^ entity.name.function.sv
  endfunction

initial
  begin
    $display(":assert: (%d == 1)", factorial(0));
    $display(":assert: (%d == 1)", factorial(1));
    $display(":assert: (%d == 2)", factorial(2));
    $display(":assert: (%d == 120)", factorial(5));
    $display(":assert: (%d == 39916800)", factorial(11));
  end
endmodule
