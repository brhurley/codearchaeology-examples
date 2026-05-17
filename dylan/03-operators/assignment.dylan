Module: hello

let counter = 0;
format-out("initial counter = %d\n", counter);

counter := counter + 1;
counter := counter + 1;
counter := counter * 10;
format-out("after updates  = %d\n", counter);

let total = 100;
total := total - 25;
format-out("total = %d\n", total);

let v = make(<vector>, size: 3, fill: 0);
v[0] := 7;
v[1] := 8;
v[2] := 9;
format-out("vector contents: %d %d %d\n", v[0], v[1], v[2]);
