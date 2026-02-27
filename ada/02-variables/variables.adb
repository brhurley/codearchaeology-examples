with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;

procedure Variables is
   -- Integer types
   Count     : Integer := 42;
   Max_Size  : Integer := 1_000_000;  -- underscores improve readability
   Negative  : Integer := -17;

   -- Floating point types
   Pi          : Float := 3.14159;
   Temperature : Float := 98.6;

   -- Boolean type
   Is_Active : Boolean := True;
   Is_Done   : Boolean := False;

   -- Character type
   Letter : Character := 'A';
   Digit  : Character := '7';

   -- String type (fixed-length in Ada)
   Name    : String (1 .. 5) := "Ada  ";
   Greeting : String := "Hello";

   -- Natural and Positive subtypes
   Index : Natural := 0;     -- Natural: 0 .. Integer'Last
   Size  : Positive := 1;    -- Positive: 1 .. Integer'Last

begin
   Ada.Text_IO.Put_Line ("=== Basic Variables ===");
   Ada.Text_IO.Put ("Count     = ");
   Ada.Integer_Text_IO.Put (Count, Width => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put ("Max_Size  = ");
   Ada.Integer_Text_IO.Put (Max_Size, Width => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put ("Negative  = ");
   Ada.Integer_Text_IO.Put (Negative, Width => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Floating Point ===");
   Ada.Text_IO.Put ("Pi          = ");
   Ada.Float_Text_IO.Put (Pi, Fore => 1, Aft => 5, Exp => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put ("Temperature = ");
   Ada.Float_Text_IO.Put (Temperature, Fore => 2, Aft => 1, Exp => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Boolean ===");
   Ada.Text_IO.Put_Line ("Is_Active = " & Boolean'Image (Is_Active));
   Ada.Text_IO.Put_Line ("Is_Done   = " & Boolean'Image (Is_Done));

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Character ===");
   Ada.Text_IO.Put_Line ("Letter = " & Letter);
   Ada.Text_IO.Put_Line ("Digit  = " & Digit);

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== String ===");
   Ada.Text_IO.Put_Line ("Name     = """ & Name & """");
   Ada.Text_IO.Put_Line ("Greeting = """ & Greeting & """");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Subtypes ===");
   Ada.Text_IO.Put ("Index (Natural)  = ");
   Ada.Integer_Text_IO.Put (Index, Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Size  (Positive) = ");
   Ada.Integer_Text_IO.Put (Size, Width => 0);
   Ada.Text_IO.New_Line;
end Variables;
