program OEEx1;

uses
  Vcl.Forms,
  Classe.Main in 'Classe.Main.pas' {Main},
  Classe.Notify in 'Classe.Notify.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
