program exercicio2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var nome : string;
     idadefutura, idade: Integer;

begin
 write('Digite o seu nome: ');
 Readln(nome);

 write('Digite o sua idade: ');
 Readln(idade);

 idadefutura := idade + 5;
write('Ol� ', Nome, '. Atualmente voc� possui ', idade, ' anos.');
Write('Daqui a 5 anos voc� ter� ', Idadefutura, ' anos.');
Readln

end.
