program ProjectTest;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {TesteComponentForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTesteComponentForm, TesteComponentForm);
  Application.Run;
end.
