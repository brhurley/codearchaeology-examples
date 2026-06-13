with Ada.Text_IO;

procedure Functions is

   --  A function returns a value and is used as an expression
   function Add (X, Y : Integer) return Integer is
   begin
      return X + Y;
   end Add;

   --  Functions can do real work before returning
   function Square (N : Integer) return Integer is
   begin
      return N * N;
   end Square;

   --  A procedure performs an action but returns no value
   procedure Greet (Name : String) is
   begin
      Ada.Text_IO.Put_Line ("Hello, " & Name & "!");
   end Greet;

   Sum    : constant Integer := Add (3, 4);
   Result : constant Integer := Square (5);

begin
   Ada.Text_IO.Put_Line ("3 + 4 =" & Integer'Image (Sum));
   Ada.Text_IO.Put_Line ("5 squared =" & Integer'Image (Result));
   Greet ("Ada");
end Functions;
