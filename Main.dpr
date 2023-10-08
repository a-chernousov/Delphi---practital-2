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
  a.Re := 1; // Действительная часть коэффициента a
  a.Im := 2; // Мнимая часть коэффициента a
  b.Re := -3; // Действительная часть коэффициента b
  b.Im := 4; // Мнимая часть коэффициента b
  c.Re := 5; // Действительная часть коэффициента c
  c.Im := -6; // Мнимая часть коэффициента c
  X.Re := 7; // Действительная часть комплексной точки X
  X.Im := 8; // Мнимая часть комплексной точки X

  result := CalculateQuadraticEquation(a, b, c, X);

  WriteLn('Result: ', result.Re, ' + ', result.Im, 'i');
  readln;
end.
 