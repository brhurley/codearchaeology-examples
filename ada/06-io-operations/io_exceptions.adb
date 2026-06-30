with Ada.Text_IO;  use Ada.Text_IO;

procedure Io_Exceptions is
   Input : File_Type;
   Line  : String (1 .. 200);
   Last  : Natural;
begin
   begin
      Open (File => Input, Mode => In_File, Name => "missing.txt");
      Get_Line (Input, Line, Last);
      Put_Line (Line (1 .. Last));
      Close (Input);
   exception
      when Name_Error =>
         Put_Line ("Error: the file does not exist.");
      when End_Error =>
         Put_Line ("Error: reached the end of the file unexpectedly.");
      when others =>
         Put_Line ("Error: an unexpected I/O problem occurred.");
   end;

   Put_Line ("Program continues after handling the error.");
end Io_Exceptions;
