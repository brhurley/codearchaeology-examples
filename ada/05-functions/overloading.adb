with Ada.Text_IO;

procedure Overloading is

   --  Two subprograms share a name but differ by parameter type
   function Describe (Value : Integer) return String is
   begin
      return "integer" & Integer'Image (Value);
   end Describe;

   function Describe (Value : Boolean) return String is
   begin
      return "boolean " & Boolean'Image (Value);
   end Describe;

   --  Named association lets callers pass arguments in any order
   function Build_Range (Low : Integer; High : Integer) return String is
   begin
      return Integer'Image (Low) & " .." & Integer'Image (High);
   end Build_Range;

begin
   --  The compiler chooses the matching Describe by argument type
   Ada.Text_IO.Put_Line (Describe (42));
   Ada.Text_IO.Put_Line (Describe (True));

   --  Arguments passed by name; order no longer matters
   Ada.Text_IO.Put_Line ("Range:" & Build_Range (High => 100, Low => 1));
end Overloading;
