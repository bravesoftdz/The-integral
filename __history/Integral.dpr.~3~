program Integral;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, math;
type
  TFormula = function(x:real):Real;

function Formula_1(x:Real):Real;
begin
  Result := Sqrt(0.8*x*x + 1)/(x + Sqrt(1.5*x*x + 2));
end;

function Formula_2(x:real):real;
begin
  Result := sin(x+1.4)/(0.8 + cos(2*x*x));
end;

function Formula_3(x:Real):Real;
begin
  Result := 1/sqrt(2*x*X + 1.3);
end;

function Formula_4(x:real):Real;
begin
  Result := Tan(x*x)/(x*x + 1)
end;

procedure writeTableHead;
begin
 Writeln('+---------+-------------------------------+-------------------------------+');
  Writeln('|         |        Firrst Method          |          Secont Method        |');
  Writeln('|         +---------------+---------------+---------------+---------------+');
  Writeln('|         |  e = 0.01     |  e = 0.001    |  e = 0.01     |  e = 0.001    |');
  Writeln('+---------+---------------+---------------+---------------+---------------+');
  Writeln('|         | Value |   N   | Value |   N   | Value |   N   | Value |   N   |');
  Writeln('+---------+---------------+---------------+---------------+---------------+');
end;

procedure writeTableRow(y1:real;n1:integer;y2:real;n2:Integer;y3:Real;n3:integer;y4:Real;n4:Integer);
begin
  Writeln('+---------+---------------+---------------+---------------+---------------+');
  Writeln('|         |', y1:7:3,  '|', n1:8, '|', y2:7:3, '|', n2:8, '|', y3:7:3, '|', n1:8, '|', y4:7:3, '   N   |');
  Writeln('+---------+---------------+---------------+---------------+---------------+');

end;

begin
  // Первый метод



end.
