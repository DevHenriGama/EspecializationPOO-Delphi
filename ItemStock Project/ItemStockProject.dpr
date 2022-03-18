program ItemStockProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  uItemStock.view.Main in 'view\uItemStock.view.Main.pas' {Form1},
  uItemStock.Model.ClassItem in 'model\uItemStock.Model.ClassItem.pas',
  uItemStock.Model.Interfaces in 'model\uItemStock.Model.Interfaces.pas',
  uItemStock.Model.ClassTypeItens in 'model\uItemStock.Model.ClassTypeItens.pas',
  uItemStock.Controller.Interfaces in 'controller\uItemStock.Controller.Interfaces.pas',
  uItemStock.Controller.ClassStock in 'controller\uItemStock.Controller.ClassStock.pas',
  uItemStock.Controller.Classitem in 'controller\uItemStock.Controller.Classitem.pas',
  uItemStock.View.Stock in 'view\uItemStock.View.Stock.pas' {Form2},
  uItemStock.Dao.Instruction in 'dao\uItemStock.Dao.Instruction.pas',
  uItemStock.Dao.Interfaces in 'dao\uItemStock.Dao.Interfaces.pas',
  uItemStock.Dao.DataModule in 'dao\uItemStock.Dao.DataModule.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.