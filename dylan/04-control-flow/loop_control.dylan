Module: hello

// "break": wrap the loop and exit it early by calling the exit function
block (stop)
  for (i from 1 to 10)
    if (i = 5)
      format-out("Stopping at %d\n", i);
      stop();
    end if;
    format-out("Visiting %d\n", i);
  end for;
end block;

// "continue": wrap each iteration; calling next() skips the rest of the body
for (i from 1 to 6)
  block (next)
    if (even?(i))
      next();
    end if;
    format-out("Odd: %d\n", i);
  end block;
end for;

// Often a guard condition is clearer than an explicit skip
for (i from 1 to 6)
  if (odd?(i))
    format-out("Guarded odd: %d\n", i);
  end if;
end for;
