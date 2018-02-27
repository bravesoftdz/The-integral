program Integral;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
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
writeln(#$9 + 'First Method' + #$ +'Second method');

Write('First integral');
end.

