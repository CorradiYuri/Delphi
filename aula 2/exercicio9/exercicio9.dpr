program exercicio9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  idade, menor, maior, soma, contador: Integer;
  media: Real;

begin
  soma := 0;
  contador := 0;
  menor := 9999;
  maior := 0;

  WriteLn('Digite as idades dos alunos (digite 0 para finalizar):');

  repeat
    ReadLn(idade);

    if idade <> 0 then
    begin
      soma := soma + idade;
      contador := contador + 1;

      if idade > maior then
        maior := idade;

      if idade < menor then
        menor := idade;
    end;

  until idade = 0;

  if contador > 0 then
  begin
    media := soma / contador;
    WriteLn('Menor idade: ', menor);
    WriteLn('Maior idade: ', maior);
    WriteLn('Média das idades: ', media:0:2);
  end
  else
    WriteLn('Nenhuma idade foi informada.');
ReadLn;

end.
