program Volcan;
uses crt;

var
  anchoMax, ast, i: integer;

begin
  clrscr;
  anchoMax := 64;
  ast := 2;

  while ast <= anchoMax do
  begin
    for i := 1 to (anchoMax - ast) div 2 do
      write(' ');

    for i := 1 to ast do
      write('*');

    writeln;

    ast := ast * 2;
  end;

  readln;
end.