with Ada.Text_IO;

procedure Parameters is

   --  'in' parameters are read-only; Exp has a default value of 2
   function Power (Base : Integer; Exp : Integer := 2) return Integer is
      Result : Integer := 1;
   begin
      for I in 1 .. Exp loop
         Result := Result * Base;
      end loop;
      return Result;
   end Power;

   --  'out' parameters return data through the argument list
   procedure Divide (Dividend, Divisor    : in Integer;
                     Quotient, Remainder  : out Integer) is
   begin
      Quotient  := Dividend / Divisor;
      Remainder := Dividend mod Divisor;
   end Divide;

   --  'in out' parameters are read and then modified in place
   procedure Double (Value : in out Integer) is
   begin
      Value := Value * 2;
   end Double;

   Q, R : Integer;
   N    : Integer := 21;

begin
   --  Omit Exp to use its default of 2
   Ada.Text_IO.Put_Line ("5 squared =" & Integer'Image (Power (5)));
   --  Override the default
   Ada.Text_IO.Put_Line ("2 to the 8th =" & Integer'Image (Power (2, 8)));

   Divide (17, 5, Q, R);
   Ada.Text_IO.Put_Line ("17 / 5 =" & Integer'Image (Q) &
                         " remainder" & Integer'Image (R));

   Double (N);
   Ada.Text_IO.Put_Line ("21 doubled =" & Integer'Image (N));
end Parameters;
