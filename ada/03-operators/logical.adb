with Ada.Text_IO; use Ada.Text_IO;

procedure Logical is
   Age      : constant Integer := 25;
   Has_ID   : constant Boolean := True;
   Is_Adult : constant Boolean := Age >= 18;
begin
   Put_Line ("Relational results:");
   Put_Line ("  Age = 25, Age >= 18 -> " & Boolean'Image (Is_Adult));
   Put_Line ("  10 /= 10            -> " & Boolean'Image (10 /= 10));
   Put_Line ("  'A' < 'B'           -> " & Boolean'Image ('A' < 'B'));

   New_Line;
   Put_Line ("Boolean combinators:");
   Put_Line ("  Has_ID and Is_Adult        -> "
             & Boolean'Image (Has_ID and Is_Adult));
   Put_Line ("  Has_ID and then Is_Adult   -> "
             & Boolean'Image (Has_ID and then Is_Adult));
   Put_Line ("  False or else (1 / 0 > 0)  -> short-circuit avoids divide-by-zero");
   Put_Line ("  not Is_Adult               -> "
             & Boolean'Image (not Is_Adult));

   --  xor is a real logical operator in Ada
   Put_Line ("  True xor False             -> "
             & Boolean'Image (True xor False));
end Logical;
