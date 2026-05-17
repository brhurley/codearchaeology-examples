Module: hello

let r1 = 2 + 3 * 4;
let r2 = 2 + (3 * 4);
let r3 = (2 + 3) * 4;
format-out("2 + 3 * 4   = %d (Dylan: left-to-right)\n", r1);
format-out("2 + (3 * 4) = %d\n", r2);
format-out("(2 + 3) * 4 = %d\n", r3);

let prefix-sum     = \+(10, 20);
let prefix-compare = \<(5, 9);
format-out("\\+(10, 20)  = %d\n", prefix-sum);
format-out("\\<(5, 9)    = %=\n", prefix-compare);

let nums = #(1, 2, 3, 4, 5);
let total = reduce(\+, 0, nums);
format-out("sum of #(1,2,3,4,5) via reduce(\\+, ...) = %d\n", total);
