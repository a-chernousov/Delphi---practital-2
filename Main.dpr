program Main;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  windows,
  ComplexNumbers in 'ComplexNumbers.pas';
var
  a, b, c, X, result: Complex;

function CalculateQuadraticEquation(a, b, c, X: Complex): Complex;
var
  temp: Complex;
begin
  temp := Multiply(X, X); // X^2
  temp := Multiply(temp, a); // a * X^2
  temp := Add(temp, Multiply(b, X)); // a * X^2 + b * X
  temp := Add(temp, c); // a * X^2 + b * X + c
  Result := temp;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);
  a.Re := 1; // �������������� ����� ������������ a
  a.Im := 2; // ������ ����� ������������ a
  b.Re := -3; // �������������� ����� ������������ b
  b.Im := 4; // ������ ����� ������������ b
  c.Re := 5; // �������������� ����� ������������ c
  c.Im := -6; // ������ ����� ������������ c
  X.Re := 7; // �������������� ����� ����������� ����� X
  X.Im := 8; // ������ ����� ����������� ����� X

  result := CalculateQuadraticEquation(a, b, c, X);

  WriteLn('Result: ', result.Re, ' + ', result.Im, 'i');
  readln;
end.
 