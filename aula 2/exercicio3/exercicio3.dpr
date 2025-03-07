program exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var nomeA, nomeB, nomeC : string;
  IdadeA, idadeB, idadeC, somaIdades : Integer;
begin
Write('Informe o primeiro nome: ');
  ReadLn(NomeA);
Write('Informe a idade de ', NomeA, ': ');
  ReadLn(IdadeA);

Write('Informe o segundo nome: ');
  ReadLn(NomeB);
  Write('Informe a idade de ', NomeB, ': ');
  ReadLn(IdadeB);

Write('Informe o terceiro nome: ');
  ReadLn(NomeC);
  Write('Informe a idade de ', NomeC, ': ');
  ReadLn(IdadeC);

  somaIdades := idadeA + idadeB + idadeC;

WriteLn(NomeA, ' tem ', IdadeA, ' anos.');
WriteLn(NomeB, ' tem ', IdadeB, ' anos.');
WriteLn(NomeC, ' tem ', IdadeC, ' anos.');
Writeln(NomeA, ', ', NomeB, ' e ', NomeC, ' juntos têm ', SomaIdades, ' anos.');

Readln;
end.
