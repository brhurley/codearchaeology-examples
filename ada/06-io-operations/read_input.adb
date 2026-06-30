with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

procedure Read_Input is
   Name : String (1 .. 100);
   Last : Natural;
   Age  : Integer;
begin
   Put ("Enter your name: ");
   Get_Line (Name, Last);

   Put ("Enter your age: ");
   Get (Age);

   Put_Line ("Hello, " & Name (1 .. Last) & "!");
   Put ("Next year you will be ");
   Put (Age + 1, Width => 0);
   New_Line;
end Read_Input;
