with Ada.Text_IO;        use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Arithmetic is
   A : constant Integer := 17;
   B : constant Integer := 5;

   X : constant Float := 17.0;
   Y : constant Float := 5.0;
begin
   Put_Line ("Integer arithmetic:");
   Put ("  17 + 5  = "); Put (A + B, Width => 0); New_Line;
   Put ("  17 - 5  = "); Put (A - B, Width => 0); New_Line;
   Put ("  17 * 5  = "); Put (A * B, Width => 0); New_Line;
   Put ("  17 / 5  = "); Put (A / B, Width => 0); New_Line;
   Put ("  17 mod 5 = "); Put (A mod B, Width => 0); New_Line;
   Put ("  17 rem 5 = "); Put (A rem B, Width => 0); New_Line;
   Put ("  2 ** 10  = "); Put (2 ** 10, Width => 0); New_Line;

   New_Line;
   Put_Line ("Float arithmetic:");
   Put ("  17.0 / 5.0 = ");
   Put (X / Y, Fore => 1, Aft => 2, Exp => 0); New_Line;
end Arithmetic;
