program exercicio12;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  codigo, quantidade, i: Integer;
  total: Real;

begin
  total := 0;

  Writeln('Tabela de Pre�os:');
  Writeln('1 - Refrigerante: R$ 4,00');
  Writeln('2 - �gua: R$ 2,50');
  Writeln('3 - Caf�: R$ 2,00');
  Writeln('4 - Sandu�che: R$ 5,00');
  Writeln('5 - P�o de queijo: R$ 3,50');
  Writeln('6 - Pastel: R$ 4,50');
  Writeln;

  Write('Quantos itens deseja comprar? ');
  Readln(quantidade);

  for i := 1 to quantidade do
  begin
    Write('C�digo do item: ');
    Readln(codigo);

    if codigo = 1 then total := total + 4.00
    else if codigo = 2 then total := total + 2.50
    else if codigo = 3 then total := total + 2.00
    else if codigo = 4 then total := total + 5.00
    else if codigo = 5 then total := total + 3.50
    else if codigo = 6 then total := total + 4.50
    else Writeln('C�digo inv�lido!');
  end;

  Writeln('Total da compra: R$ ', total:0:2);
  Readln;
end.
