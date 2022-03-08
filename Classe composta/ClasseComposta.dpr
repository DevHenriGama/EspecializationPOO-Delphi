program ClasseComposta;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  Classe.Item in 'Classe.Item.pas',
  Classe.Cabos in 'Classe.Cabos.pas',
  Classe.State in 'Classe.State.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
