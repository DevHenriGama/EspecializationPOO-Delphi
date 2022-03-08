program ClassesAmigas;

uses
  Vcl.Forms,
  Classe.Main in 'Classe.Main.pas' {Main},
  Classe.GPU in 'Classe.GPU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
