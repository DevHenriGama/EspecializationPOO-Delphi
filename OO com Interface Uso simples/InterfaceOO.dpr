program InterfaceOO;

uses
  Vcl.Forms,
  Classe.Main in 'Classe.Main.pas' {Main},
  Classe.DB in 'Classe.DB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
