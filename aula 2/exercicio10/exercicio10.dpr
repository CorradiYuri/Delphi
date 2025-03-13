program exercicio10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  a, b: Real;
  opcao: Integer;
begin
  Write('Digite o primeiro n�mero: ');
  Readln(a);
  Write('Digite o segundo n�mero: ');
  Readln(b);

  Writeln('Escolha uma op��o:');
  Writeln('1 - Subtrair (a - b)');
  Writeln('2 - Somar (a + b)');
  Writeln('3 - Multiplicar (a * b)');
  Writeln('4 - Mostrar o maior n�mero');
  Write('Digite a op��o: ');
  Readln(opcao);

  case opcao of
    1: Writeln('Resultado: ', a - b:0:2);
    2: Writeln('Resultado: ', a + b:0:2);
    3: Writeln('Resultado: ', a * b:0:2);
    4: if a > b then
         Writeln('Maior n�mero: ', a:0:2)
       else
         Writeln('Maior n�mero: ', b:0:2);
    else
      Writeln('Op��o inv�lida!');
  end;

  Readln;
end.
