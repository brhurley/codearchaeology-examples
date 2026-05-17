program OperatorsBitwise;

{$APPTYPE CONSOLE}

{$BOOLEVAL OFF}  // ensure short-circuit boolean evaluation (the default)

uses
  SysUtils;

var
  Flags, Mask: Word;
  Divisor: Integer;
begin
  Flags := $0F;   // binary 0000 1111
  Mask  := $33;   // binary 0011 0011

  WriteLn(Format('Flags        = $%2.2x', [Flags]));
  WriteLn(Format('Mask         = $%2.2x', [Mask]));
  WriteLn(Format('Flags and Mask = $%2.2x', [Flags and Mask]));
  WriteLn(Format('Flags or  Mask = $%2.2x', [Flags or  Mask]));
  WriteLn(Format('Flags xor Mask = $%2.2x', [Flags xor Mask]));
  WriteLn(Format('Flags shl 2    = $%2.2x', [Flags shl 2]));
  WriteLn(Format('Flags shr 1    = $%2.2x', [Flags shr 1]));

  // Short-circuit evaluation prevents the divide-by-zero
  Divisor := 0;
  if (Divisor <> 0) and (10 div Divisor > 1) then
    WriteLn('Branch taken')
  else
    WriteLn('Short-circuit skipped the second test');
end.
