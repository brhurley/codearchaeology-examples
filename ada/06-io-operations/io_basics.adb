with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;    use Ada.Float_Text_IO;

procedure Io_Basics is
   Count : constant Integer := 42;
   Price : constant Float   := 19.95;
begin
   Put_Line ("=== Console Output in Ada ===");

   --  Put writes with no trailing newline; New_Line adds one
   Put ("No newline here... ");
   Put ("still the same line");
   New_Line;

   --  Integer'Image yields a leading space for non-negative values
   Put_Line ("Count is" & Integer'Image (Count));

   --  Ada.Integer_Text_IO.Put gives column-width control
   Put ("Right-aligned in width 6: [");
   Put (Count, Width => 6);
   Put_Line ("]");

   --  Ada.Float_Text_IO.Put with a fixed format (no exponent)
   Put ("Price: ");
   Put (Price, Fore => 1, Aft => 2, Exp => 0);
   New_Line;
end Io_Basics;
