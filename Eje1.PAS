program TrianguloNumeros;

uses crt;

const
  N = 10;

var
  i, j, k, num: integer;
  triangulo: array[1..N, 1..(2*N-1)] of char;

begin
  clrscr;

  for i := 1 to N do
    for j := 1 to (2*N-1) do
      triangulo[i, j] := ' ';

  for i := 1 to N do
  begin
    num := i mod 10;
  
    for j := 1 to i do
    begin
      triangulo[i, N - i + j] := chr(ord('0') + num);
      num := (num + 1) mod 10;
    end;

    num := (num - 2 + 10) mod 10;
    for k := i-1 downto 1 do
    begin
      triangulo[i, N + (i - k)] := chr(ord('0') + num);
      num := (num - 1 + 10) mod 10;
    end;
  end;

  for i := 1 to N do
  begin
    for j := 1 to (2*N-1) do
      write(triangulo[i, j]);
    writeln;
  end;

  readln;
end.

