with Ada.Text_IO;

procedure Recursion is

   --  Classic recursive factorial; result is always Positive
   function Factorial (N : Natural) return Positive is
   begin
      if N = 0 then
         return 1;
      else
         return N * Factorial (N - 1);
      end if;
   end Factorial;

   --  Recursive Fibonacci; each call spawns two more
   function Fib (N : Natural) return Natural is
   begin
      if N < 2 then
         return N;
      else
         return Fib (N - 1) + Fib (N - 2);
      end if;
   end Fib;

begin
   Ada.Text_IO.Put_Line ("5! =" & Positive'Image (Factorial (5)));
   Ada.Text_IO.Put_Line ("10! =" & Positive'Image (Factorial (10)));
   Ada.Text_IO.Put_Line ("Fib(10) =" & Natural'Image (Fib (10)));
end Recursion;
