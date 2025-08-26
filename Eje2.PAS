program DecimalARomano;
uses crt;

const
  valores: array[1..13] of integer = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
  romanos: array[1..13] of string = ('M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I');

var
  numero, i: integer;
  resultado: string;

begin
  clrscr;
  write('Ingrese un numero decimal: ');
  readln(numero);

  resultado := '';
  i := 1;

  while numero > 0 do
  begin
    if numero >= valores[i] then
    begin
      numero := numero - valores[i];
      resultado := resultado + romanos[i];
    end
    else
      i := i + 1;
  end;

  writeln('Numero romano: ', resultado);
  readln;
end.
