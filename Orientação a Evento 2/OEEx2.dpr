program OEEx2;

uses
  Vcl.Forms,
  Classe.Main in 'Classe.Main.pas' {Form1},
  Classe.Notify in 'Classe.Notify.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
