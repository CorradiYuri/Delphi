program exercicio14;

{$APPTYPE CONSOLE}

{$R *.res}
uses
  SysUtils;

const
  MAX = 100;

type
  TProduto = record
    Codigo: Integer;
    Descricao: string;
    Valor: Real;
  end;

var
  Produtos: array[1..MAX] of TProduto;
  Total, Opcao, Codigo, i: Integer;
  Encontrado: Boolean;

begin
  Total := 0;

  repeat
    Writeln('1 - Cadastrar Produto');
    Writeln('2 - Listar Produtos');
    Writeln('3 - Pesquisar Produto');
    Writeln('4 - Excluir Produto');
    Writeln('5 - Sair');
    Write('Escolha: ');
    Readln(Opcao);

    case Opcao of
      1: begin
        if Total < MAX then
        begin
          Write('Código: ');
          Readln(Codigo);

          Encontrado := False;
          for i := 1 to Total do
            if Produtos[i].Codigo = Codigo then
              Encontrado := True;

          if Encontrado then
            Writeln('Código já existe!')
          else
          begin
            Inc(Total);
            Produtos[Total].Codigo := Codigo;
            Write('Descrição: ');
            Readln(Produtos[Total].Descricao);
            Write('Valor: ');
            Readln(Produtos[Total].Valor);
            Writeln('Produto cadastrado!');
          end;
        end;
      end;

      2: begin
        for i := 1 to Total do
          Writeln(Produtos[i].Codigo, ' - ', Produtos[i].Descricao, ' - R$', Produtos[i].Valor:0:2);
      end;

      3: begin
        Write('Código do produto: ');
        Readln(Codigo);
        Encontrado := False;
        for i := 1 to Total do
          if Produtos[i].Codigo = Codigo then
          begin
            Writeln(Produtos[i].Descricao, ' - R$', Produtos[i].Valor:0:2);
            Encontrado := True;
          end;
        if not Encontrado then
          Writeln('Produto não encontrado!');
      end;

      4: begin
        Write('Código do produto para excluir: ');
        Readln(Codigo);
        Encontrado := False;
        for i := 1 to Total do
          if Produtos[i].Codigo = Codigo then
          begin
            Produtos[i] := Produtos[Total];
            Dec(Total);
            Encontrado := True;
            Writeln('Produto excluído!');
          end;
        if not Encontrado then
          Writeln('Produto não encontrado!');
      end;
    end;

  until Opcao = 5;

  Writeln('Saindo...');
  Readln;
end.

ou esse

uses
  SysUtils;

const
  MAX = 100;

type
  TProduto = record
    Codigo: Integer;
    Descricao: string;
    Valor: Real;
  end;

var
  Produtos: array[1..MAX] of TProduto;
  Total, Opcao, Codigo, i: Integer;

begin
  Total := 0;

  repeat
    Writeln('1 - Cadastrar Produto');
    Writeln('2 - Listar Produtos');
    Writeln('3 - Sair');
    Write('Escolha: ');
    Readln(Opcao);

    case Opcao of
      1: begin
        Inc(Total);
        Write('Código: ');
        Readln(Produtos[Total].Codigo);
        Write('Descrição: ');
        Readln(Produtos[Total].Descricao);
        Write('Valor: ');
        Readln(Produtos[Total].Valor);
        Writeln('Produto cadastrado!');
      end;

      2: begin
        for i := 1 to Total do
          Writeln(Produtos[i].Codigo, ' - ', Produtos[i].Descricao, ' - R$', Produtos[i].Valor:0:2);
      end;
    end;

  until Opcao = 3;

  Writeln('Saindo...');
  Readln;
end.
