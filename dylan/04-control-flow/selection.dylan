Module: hello

// case: first true test wins
let score = 85;
case
  score >= 90 => format-out("Grade: A\n");
  score >= 80 => format-out("Grade: B\n");
  score >= 70 => format-out("Grade: C\n");
  otherwise   => format-out("Grade: F\n");
end case;

// select: compare one value against candidate sets (default test is ==)
let month = 4;
select (month)
  12, 1, 2  => format-out("Season: Winter\n");
  3, 4, 5   => format-out("Season: Spring\n");
  6, 7, 8   => format-out("Season: Summer\n");
  otherwise => format-out("Season: Autumn\n");
end select;

// select on strings needs an explicit equality test: `by \=`
let day = "Sat";
select (day by \=)
  "Sat", "Sun" => format-out("It is the weekend\n");
  otherwise    => format-out("It is a weekday\n");
end select;
