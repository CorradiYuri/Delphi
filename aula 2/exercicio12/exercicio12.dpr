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

  Writeln('Tabela de Preços:');
  Writeln('1 - Refrigerante: R$ 4,00');
  Writeln('2 - Água: R$ 2,50');
  Writeln('3 - Café: R$ 2,00');
  Writeln('4 - Sanduíche: R$ 5,00');
  Writeln('5 - Pão de queijo: R$ 3,50');
  Writeln('6 - Pastel: R$ 4,50');
  Writeln;

  Write('Quantos itens deseja comprar? ');
  Readln(quantidade);

  for i := 1 to quantidade do
  begin
    Write('Código do item: ');
    Readln(codigo);

    if codigo = 1 then total := total + 4.00
    else if codigo = 2 then total := total + 2.50
    else if codigo = 3 then total := total + 2.00
    else if codigo = 4 then total := total + 5.00
    else if codigo = 5 then total := total + 3.50
    else if codigo = 6 then total := total + 4.50
    else Writeln('Código inválido!');
  end;

  Writeln('Total da compra: R$ ', total:0:2);
  Readln;
end.
