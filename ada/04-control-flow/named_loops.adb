with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Named_Loops is
   Target  : constant Integer := 42;
   Found_R : Integer := 0;
   Found_C : Integer := 0;
   Grid    : constant array (1 .. 3, 1 .. 3) of Integer :=
     ((10, 20, 30),
      (40, 42, 50),
      (60, 70, 80));
begin
   Search :
   for Row in Grid'Range (1) loop
      for Col in Grid'Range (2) loop
         if Grid (Row, Col) = Target then
            Found_R := Row;
            Found_C := Col;
            exit Search;
         end if;
      end loop;
   end loop Search;

   if Found_R /= 0 then
      Ada.Text_IO.Put ("Found ");
      Ada.Integer_Text_IO.Put (Target, Width => 0);
      Ada.Text_IO.Put (" at row ");
      Ada.Integer_Text_IO.Put (Found_R, Width => 0);
      Ada.Text_IO.Put (", col ");
      Ada.Integer_Text_IO.Put (Found_C, Width => 0);
      Ada.Text_IO.New_Line;
   else
      Ada.Text_IO.Put_Line ("Not found");
   end if;
end Named_Loops;
