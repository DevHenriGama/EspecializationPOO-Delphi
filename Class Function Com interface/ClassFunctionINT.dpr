program ClassFunctionINT;

uses
  Vcl.Forms,
  Classe.Main in 'Classe.Main.pas' {Main},
  Classe.Eletronic in 'Classe.Eletronic.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
