program exercicio13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  i, N: Integer;
  precoCusto, precoVenda, totalCusto, totalVenda, mediaCusto, mediaVenda: Real; // Declaração das variáveis mediaCusto e mediaVenda

begin
  totalCusto := 0;
  totalVenda := 0;

  Write('Quantos produtos foram produzidos? ');
  Readln(N);

  for i := 1 to N do
  begin
    Write('Preço de custo do produto ', i, ': ');
    Readln(precoCusto);

    Write('Preço de venda do produto ', i, ': ');
    Readln(precoVenda); // Correção: pré-venda para precoVenda

    totalCusto := totalCusto + precoCusto;
    totalVenda := totalVenda + precoVenda;
  end;

  Writeln;
  Writeln('Média do preço de custo: R$ ', (totalCusto / N):0:2);
  Writeln('Média do preço de venda: R$ ', (totalVenda / N):0:2);

  mediaCusto := totalCusto / N;
  mediaVenda := totalVenda / N;

  if mediaVenda > mediaCusto then
    Writeln('Lucro!')
  else if mediaVenda < mediaCusto then
    Writeln('Prejuízo!')
  else
    Writeln('Empate!');

  Readln;
end.
