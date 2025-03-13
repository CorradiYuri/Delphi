program exercicio6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  X, Y: Integer;
  Divisao: Real;

begin
  Write('Informe o valor de X (inteiro): ');
  ReadLn(X);

  Write('Informe o valor de Y (inteiro): ');
  ReadLn(Y);

  WriteLn('O valor de X + Y = ', X + Y);
  WriteLn('O valor de X - Y = ', X - Y);
  WriteLn('O valor de X * Y = ', X * Y);

  if Y <> 0 then
  begin
    Divisao := X / Y;
    WriteLn('O valor de X / Y = ', FormatFloat('0.00', Divisao));
    ReadLn;
  end
  else
    WriteLn('Divisão por zero não é permitida.');
    ReadLn;
end.
