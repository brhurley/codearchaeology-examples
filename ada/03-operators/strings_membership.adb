with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Strings_Membership is
   First : constant String := "Ada";
   Last  : constant String := "Lovelace";
   Full  : constant String := First & " " & Last;

   Score : constant Integer := 87;
begin
   Put_Line ("Concatenated: " & Full);
   Put_Line ("Length: " & Integer'Image (Full'Length));

   if Score in 0 .. 100 then
      Put_Line (Integer'Image (Score) & " is a valid percentage");
   end if;

   if Score in 90 .. 100 | 80 .. 89 then
      Put_Line ("Grade: A or B");
   end if;

   if Score not in 0 .. 59 then
      Put_Line ("Passing grade");
   end if;
end Strings_Membership;
