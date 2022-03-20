program ItemStockProject;

uses
  Vcl.Forms,
  uItemStock.View.Main in 'view\uItemStock.View.Main.pas' {frmMain},
  uItemStock.Controller.Classitem in 'controller\uItemStock.Controller.Classitem.pas',
  uItemStock.Controller.ClassStock in 'controller\uItemStock.Controller.ClassStock.pas',
  uItemStock.Controller.Interfaces in 'controller\uItemStock.Controller.Interfaces.pas',
  uItemStock.Dao.DataModule in 'dao\uItemStock.Dao.DataModule.pas' {dmDados: TDataModule},
  uItemStock.Dao.Instruction in 'dao\uItemStock.Dao.Instruction.pas',
  uItemStock.Dao.Interfaces in 'dao\uItemStock.Dao.Interfaces.pas',
  uItemStock.Model.ClassItem in 'model\uItemStock.Model.ClassItem.pas',
  uItemStock.Model.ClassTypeItens in 'model\uItemStock.Model.ClassTypeItens.pas',
  uItemStock.Model.Interfaces in 'model\uItemStock.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
