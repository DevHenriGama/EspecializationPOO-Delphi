program ClassesAninhadas;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {Main},
  Classe.Perifericos in 'Classe.Perifericos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
