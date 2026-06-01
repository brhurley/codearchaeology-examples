Module: hello

let temperature = 18;

// if / elseif / else as a statement
if (temperature > 30)
  format-out("It is hot\n");
elseif (temperature >= 15)
  format-out("It is mild\n");
else
  format-out("It is cold\n");
end if;

// if used as an expression: its value is bound to `label`
let label = if (temperature >= 15) "comfortable" else "chilly" end;
format-out("Today is %s\n", label);

// Combining conditions with & (and). Comparison binds tighter than &,
// so this reads as (temperature >= 15) & humid?
let humid? = #t;
if (temperature >= 15 & humid?)
  format-out("Mild and humid\n");
end if;
