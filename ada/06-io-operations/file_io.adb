with Ada.Text_IO;  use Ada.Text_IO;

procedure File_Io is
   Output : File_Type;
   Input  : File_Type;
   Line   : String (1 .. 200);
   Last   : Natural;
begin
   --  Write three lines to a brand-new file
   Create (File => Output, Mode => Out_File, Name => "notes.txt");
   Put_Line (Output, "Ada was named after Ada Lovelace.");
   Put_Line (Output, "It was standardized in 1983.");
   Put_Line (Output, "GNAT is the GNU Ada compiler.");
   Close (Output);

   Put_Line ("Wrote notes.txt successfully.");

   --  Read the file back, one line at a time
   Open (File => Input, Mode => In_File, Name => "notes.txt");

   Put_Line ("--- Contents of notes.txt ---");
   while not End_Of_File (Input) loop
      Get_Line (Input, Line, Last);
      Put_Line (Line (1 .. Last));
   end loop;

   Close (Input);
end File_Io;
