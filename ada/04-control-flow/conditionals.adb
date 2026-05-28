with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Conditionals is
   Score : constant Integer := 87;
   Grade : Character;
begin
   if Score >= 90 then
      Grade := 'A';
   elsif Score >= 80 then
      Grade := 'B';
   elsif Score >= 70 then
      Grade := 'C';
   elsif Score >= 60 then
      Grade := 'D';
   else
      Grade := 'F';
   end if;

   Ada.Text_IO.Put ("Score: ");
   Ada.Integer_Text_IO.Put (Score, Width => 0);
   Ada.Text_IO.Put_Line (" -> Grade " & Grade);

   if Score >= 60 and Score <= 100 then
      Ada.Text_IO.Put_Line ("Result: Passing");
   end if;
end Conditionals;
