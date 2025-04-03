program projetovisualTelacadastro;

uses
  Vcl.Forms,
  telacadastro in 'telacadastro.pas' {khj};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.Run;
end.
