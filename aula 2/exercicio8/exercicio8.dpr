program exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  X, i, num, maior, menor: Integer;

begin
  Write('Informe a quantidade de valores que deseja digitar: ');
  ReadLn(X);

  if X <= 0 then
  begin
    WriteLn('Quantidade inválida.');

  end;

  Write('Digite o valor 1: ');
  ReadLn(num);
  maior := num;
  menor := num;

  for i := 2 to X do
  begin
    Write('Digite o valor ', i, ': ');
    ReadLn(num);

    if num > maior then
      maior := num;

    if num < menor then
      menor := num;
  end;

  WriteLn('Maior valor: ', maior);
  WriteLn('Menor valor: ', menor);
  Readln;
end.
