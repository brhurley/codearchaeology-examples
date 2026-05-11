with Ada.Text_IO; use Ada.Text_IO;

procedure Overload is
   type Meters is new Float;

   function "+" (L, R : Meters) return Meters is
   begin
      return Meters (Float (L) + Float (R));
   end "+";

   function Image (M : Meters) return String is
   begin
      return Float'Image (Float (M)) & " m";
   end Image;

   Distance_A : constant Meters := 12.5;
   Distance_B : constant Meters := 7.5;
   Total      : constant Meters := Distance_A + Distance_B;
begin
   Put_Line ("A      = " & Image (Distance_A));
   Put_Line ("B      = " & Image (Distance_B));
   Put_Line ("A + B  = " & Image (Total));
end Overload;
