program Integral;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const eps1 = 0.01 : real;
      eps2 = 0.001 : real;

var N1,N2,N3,N4:integer;
    func1,func2,func3,func4:real;


function CentMethod(var N:integer; eps:real; a, b:integer; kek:Tformula);
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
  lol:=abs(L-LastL);
  LastL:=L;
  until lol<=eps;
Result:=LastL;
end;

function Second_method(var n:Integer;eps:Real; a, b:Integer; kek:TFormula):real;
  var
  h:real;
  xi:real;
  LastL:Real;
  I,L:real;
  lol:real;
  begin
   N:=0;
   LastL:=kek(a)*(b-a);
  repeat
  Inc(N,5);
  L:=0;
  h:=(b-a)/2;
   for i := 1 to N do
   begin
   xi:=a+i*h;
   L:=L+kek(xi);
   end;
  lol:=Abs(L-LastL);
  LastL:=L


  until Abs(lol)>eps ;


  end;


begin
writeTable;


end.
