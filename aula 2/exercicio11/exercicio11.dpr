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
    'Acre', 'Alagoas', 'Amapá', 'Amazonas', 'Bahia', 'Ceará', 'Distrito Federal',
    'Espírito Santo', 'Goiás', 'Maranhão', 'Mato Grosso', 'Mato Grosso do Sul',
    'Minas Gerais', 'Pará', 'Paraíba', 'Paraná', 'Pernambuco', 'Piauí',
    'Rio de Janeiro', 'Rio Grande do Norte', 'Rio Grande do Sul', 'Rondônia',
    'Roraima', 'Santa Catarina', 'São Paulo', 'Sergipe', 'Tocantins');

  Capitais: array[1..NumEstados] of string = (
    'Rio Branco', 'Maceió', 'Macapá', 'Manaus', 'Salvador', 'Fortaleza', 'Brasília',
    'Vitória', 'Goiânia', 'São Luís', 'Cuiabá', 'Campo Grande',
    'Belo Horizonte', 'Belém', 'João Pessoa', 'Curitiba', 'Recife', 'Teresina',
    'Rio de Janeiro', 'Natal', 'Porto Alegre', 'Porto Velho',
    'Boa Vista', 'Florianópolis', 'São Paulo', 'Aracaju', 'Palmas');

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
    WriteLn('Sigla inválida. Verifique e tente novamente.');

  ReadLn;
end.