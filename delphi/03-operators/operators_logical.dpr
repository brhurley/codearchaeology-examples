program OperatorsLogical;

{$APPTYPE CONSOLE}

var
  Age: Integer;
  HasLicense, IsAdult, CanDrive: Boolean;
begin
  Age := 19;
  HasLicense := True;

  IsAdult  := Age >= 18;
  CanDrive := IsAdult and HasLicense;

  WriteLn('Age          = ', Age);
  WriteLn('IsAdult      = ', IsAdult);
  WriteLn('HasLicense   = ', HasLicense);
  WriteLn('CanDrive     = ', CanDrive);
  WriteLn('Not CanDrive = ', not CanDrive);

  // Comparison operators produce Boolean results
  WriteLn('5 = 5  -> ', 5 = 5);    // equality uses single =
  WriteLn('5 <> 4 -> ', 5 <> 4);   // inequality
  WriteLn('5 < 10 -> ', 5 < 10);
  WriteLn('True xor False -> ', True xor False);
end.
