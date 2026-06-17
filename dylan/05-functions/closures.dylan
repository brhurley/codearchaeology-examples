Module: closures

// A higher-order function: `f` is itself a function.
define function apply-twice (f :: <function>, x) => (result)
  f(f(x))
end function;

// A closure: `make-adder` returns a method that captures `n`.
define function make-adder (n :: <integer>) => (adder :: <function>)
  method (x :: <integer>) => (sum :: <integer>)
    x + n
  end method
end function;

let add5 = make-adder(5);

format-out("add5(10) = %d\n", add5(10));
format-out("apply-twice(add5, 10) = %d\n", apply-twice(add5, 10));

let nums = #(1, 2, 3, 4, 5);

// `map` applies a function to every element, returning a new sequence.
let squares = map(method (x) x * x end, nums);
format-out("squares = %=\n", squares);

// `reduce` folds a sequence into one value: (function, initial-value, sequence).
// `\+` refers to the `+` operator as a first-class function value.
let total = reduce(\+, 0, nums);
format-out("sum = %d\n", total);

// `choose` keeps only the elements matching a predicate (like filter).
let evens = choose(even?, nums);
format-out("evens = %=\n", evens);
