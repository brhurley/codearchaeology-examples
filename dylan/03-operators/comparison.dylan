Module: hello

let x = 10;
let y = 20;

format-out("x = y?  %=\n", x = y);
format-out("x < y?  %=\n", x < y);
format-out("x <= y? %=\n", x <= y);
format-out("x > y?  %=\n", x > y);
format-out("x ~= y? %=\n", x ~= y);

let s1 = "hello";
let s2 = "hello";
format-out("s1 = s2 (similar)?  %=\n", s1 = s2);
format-out("s1 == s2 (identical)? %=\n", s1 == s2);

let in-range? = (x > 0) & (x < 100);
let extreme?  = (x < 0) | (x > 1000);
format-out("0 < x < 100? %=\n", in-range?);
format-out("extreme x?   %=\n", extreme?);
format-out("not extreme: %=\n", ~extreme?);

format-out("0 truthy?  %s\n", if (0) "yes" else "no" end);
format-out("\"\" truthy? %s\n", if ("") "yes" else "no" end);
format-out("#f truthy? %s\n", if (#f) "yes" else "no" end);
