program exercicio10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  a, b: Real;
  opcao: Integer;
begin
  Write('Digite o primeiro número: ');
  Readln(a);
  Write('Digite o segundo número: ');
  Readln(b);

  Writeln('Escolha uma opção:');
  Writeln('1 - Subtrair (a - b)');
  Writeln('2 - Somar (a + b)');
  Writeln('3 - Multiplicar (a * b)');
  Writeln('4 - Mostrar o maior número');
  Write('Digite a opção: ');
  Readln(opcao);

  case opcao of
    1: Writeln('Resultado: ', a - b:0:2);
    2: Writeln('Resultado: ', a + b:0:2);
    3: Writeln('Resultado: ', a * b:0:2);
    4: if a > b then
         Writeln('Maior número: ', a:0:2)
       else
         Writeln('Maior número: ', b:0:2);
    else
      Writeln('Opção inválida!');
  end;

  Readln;
end.
