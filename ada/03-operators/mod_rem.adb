with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Mod_Rem is
   procedure Show (A, B : Integer) is
   begin
      Put ("A = "); Put (A, Width => 3);
      Put ("  B = "); Put (B, Width => 3);
      Put ("  A mod B = "); Put (A mod B, Width => 3);
      Put ("  A rem B = "); Put (A rem B, Width => 3);
      New_Line;
   end Show;
begin
   Show ( 13,  5);
   Show (-13,  5);
   Show ( 13, -5);
   Show (-13, -5);
end Mod_Rem;
