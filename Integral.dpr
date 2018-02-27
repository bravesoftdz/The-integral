program Integral;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, math;
type
  TFormula = function(x:real):Real;
const eps1 = 0.01;
      eps2 = 0.001;

var N1,N2,N3,N4:integer;
    y1,y2,y3,y4:real;
    func1,func2,func3,func4:real;

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
  Writeln('|         |         First Method          |          Second Method        |');
  Writeln('|         +---------------+---------------+---------------+---------------+');
  Writeln('|         |  e = 0.01     |  e = 0.001    |  e = 0.01     |  e = 0.001    |');
  Writeln('+---------+---------------+---------------+---------------+---------------+');
  Writeln('|         | Value |   N   | Value |   N   | Value |   N   | Value |   N   |');
  Writeln('+---------+---------------+---------------+---------------+---------------+');
end;

procedure writeTableRow(y1:real;n1:integer;y2:real;n2:Integer;y3:Real;n3:integer;y4:Real;n4:Integer);
begin
  Writeln('+---------+---------------+---------------+---------------+---------------+');
  Writeln('|         |', y1:7:3,  '|', n1:7, '|', y2:7:3, '|', n2:7, '|', y3:7:3, '|', n1:7, '|', y4:7:3, '|', n4:7, '|');
  Writeln('+---------+---------------+---------------+---------------+---------------+');

end;
function CentMethod(var N:integer; const eps:real; a, b:real; kek:Tformula):real;
var i:integer;
    h,L,LastL,xi,lol:real;
begin
N:=0;
LastL:=kek(a)*(b-a);
  repeat
  inc(N,5);
  L:=0;
  h:=(b-a)/n;
  for i := 0 to N-1 do
    begin
    xi:=a+i*h+h/2;
    L:=L+kek(xi);
    end;
  L:=L*h;
  lol:=abs(L-LastL);
  LastL:=L;
  until lol<=eps;
Result:=LastL;
end;

function Second_method(var n:Integer; const eps:Real; a, b:real; kek:TFormula):real;
var
  h:real;
  xi:real;
  LastL:Real;
  L:real;
  lol:real;
  i:integer;
begin
N:=0;
LastL:=kek(a)*(b-a);
repeat
  Inc(N,5);
  L:=0;
  h:=(b-a)/n;
  for i := 1 to N do
    begin
    xi:=a+i*h;
    L:=L+kek(xi);
    end;
    L:=L*h;
  lol:=Abs(L-LastL);
  LastL:=L
until lol<=eps ;

result:=LastL;
end;

begin
  // ������ �����
  writeTableHead;
  y1 := CentMethod(n1, eps1, 0.8, 1.8, Formula_1);
  y2 := CentMethod(n2, eps2, 0.8, 1.8, Formula_1);
  y3 := Second_method(n3, eps1, 0.8, 1.8, Formula_1);
  y4 := Second_method(n4, eps2, 0.8, 1.8, Formula_1);
  writeTableRow(y1,n1,y2,n2,y3,n3,y4,N4);
  y1 := CentMethod(n1, eps1, 0.4, 1, Formula_2);
  y2 := CentMethod(n2, eps2, 0.4, 1, Formula_2);
  y3 := Second_method(n3, eps1, 0.4, 1, Formula_2);
  y4 := Second_method(n4, eps2, 0.4, 1, Formula_2);
  writeTableRow(y1,n1,y2,n2,y3,n3,y4,N4);
  y1 := CentMethod(n1, eps1, 1,2, Formula_3);
  y2 := CentMethod(n2, eps2, 1,2, Formula_3);
  y3 := Second_method(n3, eps1,  1,2, Formula_3);
  y4 := Second_method(n4, eps2, 1,2, Formula_3);
  writeTableRow(y1,n1,y2,n2,y3,n3,y4,N4);
  y1 := CentMethod(n1, eps1, 0.2, 1, Formula_4);
  y2 := CentMethod(n2, eps2, 0.2, 1, Formula_4);
  y3 := Second_method(n3, eps1, 0.2, 1, Formula_4);
  y4 := Second_method(n4, eps2, 0.2, 1, Formula_4);
  writeTableRow(y1,n1,y2,n2,y3,n3,y4,N4);
  readln(N1);
end.
