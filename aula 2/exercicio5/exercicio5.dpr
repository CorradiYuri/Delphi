program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  altura, pesoIdeal: Real;
  sexo: Char;

begin
  Write('Informe a altura (em metros): ');
  ReadLn(altura);

  Write('Informe o sexo (M para masculino ou F para feminino): ');
  ReadLn(sexo);

  sexo := UpCase(sexo);

  if sexo = 'M' then
  begin
    pesoIdeal := (72.7 * altura) - 58;
    WriteLn('Peso ideal para homem: ', FormatFloat('0.00', pesoIdeal), ' kg');
  end
  else if sexo = 'F' then
  begin
    pesoIdeal := (62.1 * altura) - 44.7;
    WriteLn('Peso ideal para mulher: ', FormatFloat('0.00', pesoIdeal), ' kg');
  end
  else
  begin
    WriteLn('Sexo inválido. Digite apenas M ou F.');
    ReadLn;
  end;
  end.