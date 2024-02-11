// SYNTAX TEST "source-text.sv"

// Fail safe test: when we code a begin/end block in a second level element (task, function, checker, class, covergroup, property, sequence) and is not finished, the second level element should be able to close the block and continue parsing the next elements.



// begin/end in function
function my_func();
//<-------- storage.type.function.sv
  begin
//^^^^^ keyword.control.begin.sv
endfunction
//<--------- storage.type.function.sv
