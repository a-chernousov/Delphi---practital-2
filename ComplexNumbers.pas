unit ComplexNumbers;

interface

type
  Complex = record
    Re: Extended; // Действительная часть комплексного числа
    Im: Extended; // Мнимая часть комплексного числа
  end;

function Add(a, b: Complex): Complex;
function Subtract(a, b: Complex): Complex;
function Multiply(a, b: Complex): Complex;
function Divide(a, b: Complex): Complex;
function SquareRoot(a: Complex): Complex;

implementation

function Add(a, b: Complex): Complex;
begin
  Result.Re := a.Re + b.Re;
  Result.Im := a.Im + b.Im;
end;

function Subtract(a, b: Complex): Complex;
begin
  Result.Re := a.Re - b.Re;
  Result.Im := a.Im - b.Im;
end;

function Multiply(a, b: Complex): Complex;
begin
  Result.Re := a.Re * b.Re - a.Im * b.Im;
  Result.Im := a.Re * b.Im + a.Im * b.Re;
end;

function Divide(a, b: Complex): Complex;
var
  divisor: Extended;
begin
  divisor := sqr(b.Re) + sqr(b.Im);
  Result.Re := (a.Re * b.Re + a.Im * b.Im) / divisor;
  Result.Im := (a.Im * b.Re - a.Re * b.Im) / divisor;
end;

function SquareRoot(a: Complex): Complex;
var
  realPart, imagPart: Extended;
begin
  if (a.Im = 0) and (a.Re >= 0) then
  begin
    Result.Re := Sqrt(a.Re);
    Result.Im := 0;
  end
  else
  begin
    realPart := Sqrt((Abs(a.Re) + Sqrt(sqr(a.Re) + sqr(a.Im))) / 2);
    if a.Re >= 0 then
      imagPart := Sqrt((-Abs(a.Re) + Sqrt(sqr(a.Re) + sqr(a.Im))) / 2)
    else
      imagPart := -Sqrt((-Abs(a.Re) + Sqrt(sqr(a.Re) + sqr(a.Im))) / 2);
    Result.Re := realPart;
    Result.Im := imagPart;
  end;
end;

end.
