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
  uItemStock.Model.Interfaces in 'model\uItemStock.Model.Interfaces.pas',
  uItemStock.View.ItemStock in 'view\uItemStock.View.ItemStock.pas' {frmItemStock},
  uItemStock.Controller.PersistentData in 'controller\uItemStock.Controller.PersistentData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
