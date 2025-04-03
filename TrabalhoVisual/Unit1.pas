unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Grids,
  Vcl.WinXCalendars, System.RegularExpressions;

type
  TForm1 = class(TForm)
    Nome: TEdit;
    Telefone: TMaskEdit;
    Usuario: TMemo;
    CPF: TEdit;
    DataNascimento: TCalendarPicker;
    Senha: TEdit;
    Email: TEdit;
    RepitaaSenha: TEdit;
    Inserir: TButton;
    Administrador: TRadioButton;
    Normal: TRadioButton;
    Tabela: TStringGrid;

    procedure FormCreate(Sender: TObject);
    procedure InserirClick(Sender: TObject);
  private
    rowIndex: Integer;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 rowIndex := 0;
 Tabela.ColCount := 7;
//  Tabela.RowCount := 1;
//  Tabela.FixedRows := 1;
//  Tabela.Options := Tabela.Options + [goColSizing, goRowSelect, goVertLine,
//    goHorzLine];
  Tabela.DefaultColWidth := 120;
  Tabela.ScrollBars := ssVertical;
  Tabela.Cells[0, 0] := 'Nome';
  Tabela.Cells[1, 0] := 'Telefone';
  Tabela.Cells[2, 0] := 'CPF';
  Tabela.Cells[3, 0] := 'Data Nasc.';
  Tabela.Cells[4, 0] := 'Senha';
  Tabela.Cells[5, 0] := 'Repita a Senha';
  Tabela.Cells[6, 0] := 'Inserir';
end;

procedure TForm1.InserirClick(Sender: TObject);
var
  userType: String;
begin

  if (Nome.Text = '') or (Email.Text = '') or (Telefone.Text = '') or
    (Senha.Text = '') or (RepitaaSenha.Text = '') then
  begin
    ShowMessage('Por favor, preencha todos os campos.');
    Exit;
  end;

  if Senha.Text <> RepitaaSenha.Text then
  begin
    ShowMessage('As senhas não coincidem!');
    Exit;
  end;

  if Administrador.Checked then
    userType := 'Administrador'

  else if Normal.Checked then
    userType := 'Normal'
  else
  begin
    ShowMessage('Selecione um tipo de usuário!');
    Exit;
  end;

  Inc(rowIndex);

  Tabela.Cells[0, rowIndex] := Nome.Text;
  Tabela.Cells[1, rowIndex] := CPF.Text;
  Tabela.Cells[2, rowIndex] := Email.Text;
  Tabela.Cells[3, rowIndex] := Telefone.Text;
  Tabela.Cells[4, rowIndex] := DateToStr(DataNascimento.Date);
  Tabela.Cells[5, rowIndex] := '******'; // Não exibir senha real
  Tabela.Cells[6, rowIndex] := userType;

  Tabela.Repaint;
  ShowMessage('Cadastro realizado com sucesso!');;
end;

end.
