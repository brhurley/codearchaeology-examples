with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;

procedure Variables_Types is
   -- Derived types: new types incompatible with their parent
   type Meters is new Float;
   type Feet   is new Float;

   -- You cannot add Meters and Feet without explicit conversion
   Distance_M : Meters := 100.0;
   Distance_F : Feet   := 328.0;

   -- Range types: compiler and runtime enforce bounds
   type Percentage is range 0 .. 100;
   type Day_Of_Month is range 1 .. 31;

   Score : Percentage := 85;
   Today : Day_Of_Month := 15;

   -- Enumeration types
   type Color is (Red, Green, Blue, Yellow);
   type Direction is (North, South, East, West);

   Favorite  : Color := Blue;
   Heading   : Direction := North;

   -- Subtypes: constrained views of existing types
   subtype Small_Int is Integer range -100 .. 100;
   subtype Uppercase is Character range 'A' .. 'Z';

   Offset : Small_Int := 42;
   Initial : Uppercase := 'B';

   -- Constants
   Max_Retries : constant Integer := 3;
   Pi_Const    : constant Float := 3.14159_26535;
   App_Name    : constant String := "CodeArchaeology";

   -- Modular (unsigned) types
   type Byte is mod 256;  -- wraps around: 255 + 1 = 0

   Data : Byte := 200;

   -- Type conversions
   Int_Value   : Integer := 42;
   Float_Value : Float;

   -- Packages for derived type I/O
   package Meters_IO is new Ada.Text_IO.Float_IO (Meters);
   package Feet_IO is new Ada.Text_IO.Float_IO (Feet);
   package Percentage_IO is new Ada.Text_IO.Integer_IO (Percentage);
   package Day_IO is new Ada.Text_IO.Integer_IO (Day_Of_Month);
   package Byte_IO is new Ada.Text_IO.Modular_IO (Byte);

begin
   Ada.Text_IO.Put_Line ("=== Derived Types ===");
   Ada.Text_IO.Put ("Distance_M = ");
   Meters_IO.Put (Distance_M, Fore => 3, Aft => 1, Exp => 0);
   Ada.Text_IO.Put_Line (" meters");

   Ada.Text_IO.Put ("Distance_F = ");
   Feet_IO.Put (Distance_F, Fore => 3, Aft => 1, Exp => 0);
   Ada.Text_IO.Put_Line (" feet");

   -- Convert Meters to Feet: explicit conversion required
   Distance_F := Feet (Float (Distance_M) * 3.28084);
   Ada.Text_IO.Put ("100m in feet = ");
   Feet_IO.Put (Distance_F, Fore => 3, Aft => 1, Exp => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Range Types ===");
   Ada.Text_IO.Put ("Score (0..100)  = ");
   Percentage_IO.Put (Score, Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Today (1..31)   = ");
   Day_IO.Put (Today, Width => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Enumeration Types ===");
   Ada.Text_IO.Put_Line ("Favorite  = " & Color'Image (Favorite));
   Ada.Text_IO.Put_Line ("Heading   = " & Direction'Image (Heading));
   Ada.Text_IO.Put_Line ("Next color = " & Color'Image (Color'Succ (Favorite)));

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Subtypes ===");
   Ada.Text_IO.Put ("Offset  (Small_Int) = ");
   Ada.Integer_Text_IO.Put (Integer (Offset), Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Initial (Uppercase) = " & Initial);

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Constants ===");
   Ada.Text_IO.Put ("Max_Retries = ");
   Ada.Integer_Text_IO.Put (Max_Retries, Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Pi_Const    = ");
   Ada.Float_Text_IO.Put (Pi_Const, Fore => 1, Aft => 11, Exp => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("App_Name    = " & App_Name);

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Modular Type ===");
   Ada.Text_IO.Put ("Data = ");
   Byte_IO.Put (Data, Width => 0);
   Ada.Text_IO.New_Line;
   Data := Data + 100;  -- wraps: 200 + 100 = 44 (mod 256)
   Ada.Text_IO.Put ("Data + 100 = ");
   Byte_IO.Put (Data, Width => 0);
   Ada.Text_IO.Put_Line (" (wraps mod 256)");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Type Conversions ===");
   Float_Value := Float (Int_Value);
   Ada.Text_IO.Put ("Integer 42 as Float = ");
   Ada.Float_Text_IO.Put (Float_Value, Fore => 2, Aft => 1, Exp => 0);
   Ada.Text_IO.New_Line;

   Int_Value := Integer (3.7);  -- rounds to nearest: 4
   Ada.Text_IO.Put ("Float 3.7 as Integer = ");
   Ada.Integer_Text_IO.Put (Int_Value, Width => 0);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("=== Type Attributes ===");
   Ada.Text_IO.Put ("Integer'First = ");
   Ada.Integer_Text_IO.Put (Integer'First, Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Integer'Last  = ");
   Ada.Integer_Text_IO.Put (Integer'Last, Width => 0);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put ("Integer'Size  = ");
   Ada.Integer_Text_IO.Put (Integer'Size, Width => 0);
   Ada.Text_IO.Put_Line (" bits");
end Variables_Types;
