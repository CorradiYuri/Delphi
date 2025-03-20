program exercicio13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  i, N: Integer;
  precoCusto, precoVenda, totalCusto, totalVenda, mediaCusto, mediaVenda: Real; // Declara��o das vari�veis mediaCusto e mediaVenda

begin
  totalCusto := 0;
  totalVenda := 0;

  Write('Quantos produtos foram produzidos? ');
  Readln(N);

  for i := 1 to N do
  begin
    Write('Pre�o de custo do produto ', i, ': ');
    Readln(precoCusto);

    Write('Pre�o de venda do produto ', i, ': ');
    Readln(precoVenda); // Corre��o: pr�-venda para precoVenda

    totalCusto := totalCusto + precoCusto;
    totalVenda := totalVenda + precoVenda;
  end;

  Writeln;
  Writeln('M�dia do pre�o de custo: R$ ', (totalCusto / N):0:2);
  Writeln('M�dia do pre�o de venda: R$ ', (totalVenda / N):0:2);

  mediaCusto := totalCusto / N;
  mediaVenda := totalVenda / N;

  if mediaVenda > mediaCusto then
    Writeln('Lucro!')
  else if mediaVenda < mediaCusto then
    Writeln('Preju�zo!')
  else
    Writeln('Empate!');

  Readln;
end.
