with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Loops is
   Counter : Integer := 1;
   Sum     : Integer := 0;
begin
   --  Plain loop with exit
   Ada.Text_IO.Put_Line ("Plain loop counting to 3:");
   loop
      Ada.Integer_Text_IO.Put (Counter, Width => 0);
      Ada.Text_IO.New_Line;
      exit when Counter >= 3;
      Counter := Counter + 1;
   end loop;

   --  While loop accumulating a sum
   Counter := 1;
   while Counter <= 5 loop
      Sum := Sum + Counter;
      Counter := Counter + 1;
   end loop;
   Ada.Text_IO.Put ("Sum 1..5 = ");
   Ada.Integer_Text_IO.Put (Sum, Width => 0);
   Ada.Text_IO.New_Line;

   --  For loop with a range
   Ada.Text_IO.Put_Line ("Squares from 1 to 4:");
   for I in 1 .. 4 loop
      Ada.Integer_Text_IO.Put (I * I, Width => 0);
      Ada.Text_IO.New_Line;
   end loop;

   --  Reverse for loop
   Ada.Text_IO.Put_Line ("Counting down:");
   for I in reverse 1 .. 3 loop
      Ada.Integer_Text_IO.Put (I, Width => 0);
      Ada.Text_IO.New_Line;
   end loop;
end Loops;
