with Ada.Text_IO;

procedure Case_Example is
   type Day_Of_Week is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
   Today : constant Day_Of_Week := Wed;
begin
   case Today is
      when Mon | Tue | Wed | Thu | Fri =>
         Ada.Text_IO.Put_Line ("It's a weekday - time to work");
      when Sat | Sun =>
         Ada.Text_IO.Put_Line ("It's the weekend - relax!");
   end case;

   case Today is
      when Mon =>
         Ada.Text_IO.Put_Line ("Start of the work week");
      when Fri =>
         Ada.Text_IO.Put_Line ("Almost the weekend");
      when others =>
         Ada.Text_IO.Put_Line ("A regular day");
   end case;
end Case_Example;
