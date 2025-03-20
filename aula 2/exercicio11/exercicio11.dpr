program exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

const
  NumEstados = 27;

var
  Siglas: array[1..NumEstados] of string = (
    'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO',
    'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI',
    'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO');

  Estados: array[1..NumEstados] of string = (
    'Acre', 'Alagoas', 'Amap�', 'Amazonas', 'Bahia', 'Cear�', 'Distrito Federal',
    'Esp�rito Santo', 'Goi�s', 'Maranh�o', 'Mato Grosso', 'Mato Grosso do Sul',
    'Minas Gerais', 'Par�', 'Para�ba', 'Paran�', 'Pernambuco', 'Piau�',
    'Rio de Janeiro', 'Rio Grande do Norte', 'Rio Grande do Sul', 'Rond�nia',
    'Roraima', 'Santa Catarina', 'S�o Paulo', 'Sergipe', 'Tocantins');

  Capitais: array[1..NumEstados] of string = (
    'Rio Branco', 'Macei�', 'Macap�', 'Manaus', 'Salvador', 'Fortaleza', 'Bras�lia',
    'Vit�ria', 'Goi�nia', 'S�o Lu�s', 'Cuiab�', 'Campo Grande',
    'Belo Horizonte', 'Bel�m', 'Jo�o Pessoa', 'Curitiba', 'Recife', 'Teresina',
    'Rio de Janeiro', 'Natal', 'Porto Alegre', 'Porto Velho',
    'Boa Vista', 'Florian�polis', 'S�o Paulo', 'Aracaju', 'Palmas');

var
  sigla: string;
  i: Integer;
  encontrado: Boolean;

begin
  Write('Digite a sigla do estado (ex: SP, RJ): ');
  ReadLn(sigla);
  sigla := UpperCase(Trim(sigla));
  encontrado := False;

  for i := 1 to NumEstados do
  begin
    if sigla = Siglas[i] then
    begin
      WriteLn(Estados[i], ', ', Capitais[i]);
      encontrado := True;
      Break;
    end;
  end;

  if not encontrado then
    WriteLn('Sigla inv�lida. Verifique e tente novamente.');

  ReadLn;
end.