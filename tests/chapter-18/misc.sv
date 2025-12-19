// SYNTAX TEST "source-text.sv"

// std::randomize in task declaration
task my_task();
  int x;
  std::randomize(x) with {x > 0;};
//^^^ entity.name.namespace.sv
//   ^^ punctuation.separator.scope-resolution.sv
//     ^^^^^^^^^ entity.name.function.sv
//               ^ variable.other.sv
//                  ^^^^ keyword.other.with.sv
//                        ^ variable.other.sv
endtask

// Constraint if-else with braces (not covered in LRM examples)
class test_constraint_braces;
    rand int a, b, c;

    // if with braces on same line
    constraint c1 {
        if (a > 0) { b == 1; }
//      ^^ keyword.control.if.sv
//                 ^ punctuation.section.braces.begin.sv
//                   ^ variable.other.sv
//                           ^ punctuation.section.braces.end.sv
    }

    // if-else both with braces
    constraint c2 {
        if (a > 0) {
//      ^^ keyword.control.if.sv
//                 ^ punctuation.section.braces.begin.sv
            b == 1;
        } else {
//      ^ punctuation.section.braces.end.sv
//        ^^^^ keyword.control.else.sv
//             ^ punctuation.section.braces.begin.sv
            b == 2;
        }
//      ^ punctuation.section.braces.end.sv
    }

    // if with brace on next line
    constraint c3 {
        if (a > 0)
//      ^^ keyword.control.if.sv
        {
//      ^ punctuation.section.braces.begin.sv
            b == 1;
        }
//      ^ punctuation.section.braces.end.sv
    }

    // nested if-else with braces
    constraint c4 {
        if (a > 0) {
//      ^^ keyword.control.if.sv
            if (b > 0) {
//          ^^ keyword.control.if.sv
                c == 1;
            } else {
//            ^^^^ keyword.control.else.sv
                c == 2;
            }
        }
    }

    // soft constraint with if-else and braces
    constraint c5 {
        soft a > 0;
//      ^^^^ keyword.other.soft.sv
//           ^ variable.other.sv
        if (a > 0) {
//      ^^ keyword.control.if.sv
            soft b == 1;
//          ^^^^ keyword.other.soft.sv
        } else {
//        ^^^^ keyword.control.else.sv
            soft b == 2;
//          ^^^^ keyword.other.soft.sv
        }
    }

    // soft with hierarchical path
    constraint c5a {
        soft obj.value > 0;
//      ^^^^ keyword.other.soft.sv
//           ^^^ variable.other.sv
//              ^ punctuation.accessor.dot.sv
//               ^^^^^ variable.other.sv
        soft this.count > 0;
//      ^^^^ keyword.other.soft.sv
//           ^^^^ variable.language.this.sv
//               ^ punctuation.accessor.dot.sv
//                ^^^^^ variable.other.sv
        soft super.limit == 10;
//      ^^^^ keyword.other.soft.sv
//           ^^^^^ variable.language.super.sv
    }

    // solve...before (only valid at constraint block level, not inside constraint_set)
    constraint c6 {
        solve a before b;
//      ^^^^^ keyword.control.solve.sv
//            ^ variable.other.sv
//              ^^^^^^ keyword.control.before.sv
//                     ^ variable.other.sv
        solve foo.bar before foo.baz;
//      ^^^^^ keyword.control.solve.sv
//            ^^^ variable.other.sv
//               ^ punctuation.accessor.dot.sv
//                ^^^ variable.other.sv
//                    ^^^^^^ keyword.control.before.sv
//                           ^^^ variable.other.sv
//                              ^ punctuation.accessor.dot.sv
//                               ^^^ variable.other.sv
    }

    // foreach in constraint with braces
    rand int arr[10];
    constraint c7 {
        foreach (arr[i]) {
//      ^^^^^^^ keyword.control.foreach.sv
//               ^^^ variable.other.sv
            arr[i] > 0;
        }
    }

    // unique constraint
    constraint c8 {
        unique {a, b, c};
//      ^^^^^^ keyword.other.unique.sv
    }

    // disable soft
    constraint c9 {
        disable soft a;
//      ^^^^^^^ keyword.control.disable.sv
//              ^^^^ keyword.other.soft.sv
//                   ^ variable.other.sv
    }

    // implication with braces
    constraint c10 {
        (a > 0) -> {
//              ^^ keyword.operator.constraint.sv
//                 ^ punctuation.section.braces.begin.sv
            b == 1;
            c == 2;
        };
//      ^ punctuation.section.braces.end.sv
    }

    // soft with dist
    rand int mode;
    constraint c11 {
        soft mode dist { 0 := 10, 1 := 20, 2 := 30 };
//      ^^^^ keyword.other.soft.sv
//           ^^^^ variable.other.sv
//                ^^^^ keyword.other.dist.sv
    }

    // soft with inside
    constraint c12 {
        soft mode inside { 0, 1, 2, 3 };
//      ^^^^ keyword.other.soft.sv
//           ^^^^ variable.other.sv
//                ^^^^^^ keyword.other.inside.sv
    }
endclass
