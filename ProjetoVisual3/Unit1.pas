unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
  FContador: Integer;
  FImagemSelecionada: TImage;
    function sortearImagem: string;
   procedure EventoAoEntrarNaImagem(Sender: Tobject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Uses
  Math;

procedure TForm1.EventoAoEntrarNaImagem(Sender: Tobject);
var
 Stream: TFileStream;
begin
  Stream := TFileStream.Create(sortearImagem, 0);
  try
    TImage(Sender).Picture.LoadFromStream(Stream);
    TImage(Sender).Repaint;
    FImagemSelecionada := TImage(Sender);
    Inc(FContador);
    Self.Caption := 'Trocas:' + FContador.ToString;
  finally
    Stream.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FContador :=0;
end;

procedure TForm1.FormShow(Sender: TObject);
const
  QTD_COLUNAS = 10;
  QTD_LINHAS = 10;
  BTN_SIZE = 64;
var
  Button: TImage;
  Stream: TFileStream;
begin
  for var ColIndex := 1 to QTD_COLUNAS do
  begin
    for var linIndex := 1 to QTD_LINHAS do
    begin
      Stream := TFileStream.create(sortearImagem, 0);
      try
        Button := TImage.create(Self);
        Button.Parent := Self;
        Button.Height := BTN_SIZE;
        Button.Width := BTN_SIZE;
        Button.Picture.LoadfromStream(Stream);
        Button.Left := (ColIndex - 1) * BTN_SIZE;
        Button.Top := (linIndex - 1) * BTN_SIZE;
        Button.OnMouseEnter := EventoAoEntrarNaImagem;
      finally
        Stream.Free;
      end;
    end;

  end;

end;

function TForm1.sortearImagem: string;
const
  DIR = 'C:\Users\USUARIO\Github\delphi\ProjetoVisual3\';
  EXT = '.PNG';
var
  Index: Integer;
begin
  Index := RandomRange(1, 6);

  Result := DIR + 'imagem' + Index.ToString + EXT;

end;

procedure TForm1.TimerTimer(Sender: TObject);
var
Stream: TFileStream;
begin
  if Assigned(FImagemSelecionada) then
  begin
    Stream := TFileStream.Create(SortearImagem, 0);
    try
      FImagemSelecionada.Picture.Assign(nil);
      FImagemSelecionada.Picture.LoadFromStream(Stream);
      FImagemSelecionada.Repaint;
    finally
       Stream.free;
    end;
  end;
end;

end.
