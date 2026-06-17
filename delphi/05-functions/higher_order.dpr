program HigherOrder;

{$APPTYPE CONSOLE}

uses
  SysUtils;  // for IntToStr and Trim

type
  // A procedural type: any function taking an Integer and returning an Integer.
  TIntFunc = function(X: Integer): Integer;

function Square(X: Integer): Integer;
begin
  Result := X * X;
end;

function Cube(X: Integer): Integer;
begin
  Result := X * X * X;
end;

// MapRange takes a function as a parameter and applies it across a range.
function MapRange(Func: TIntFunc; Lo, Hi: Integer): string;
var
  I: Integer;
begin
  Result := '';
  for I := Lo to Hi do
    Result := Result + IntToStr(Func(I)) + ' ';
  Result := Trim(Result);
end;

begin
  WriteLn('Squares: ', MapRange(Square, 1, 5));
  WriteLn('Cubes:   ', MapRange(Cube, 1, 5));
end.
