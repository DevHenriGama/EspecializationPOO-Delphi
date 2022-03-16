program ItemStock;

uses
  System.StartUpCopy,
  FMX.Forms,
  uItemStock.View.Main in 'view\uItemStock.View.Main.pas' {Form1},
  uItemStock.Model.TItem in 'model\Itens\uItemStock.Model.TItem.pas',
  uItemStock.Model.TItemType in 'model\Itens\uItemStock.Model.TItemType.pas',
  uItemStock.Model.IItem in 'model\Itens\uItemStock.Model.IItem.pas',
  uItemStock.View.Item in 'view\uItemStock.View.Item.pas' {Form2},
  uItemStock.Controller.Interfaces in 'controller\uItemStock.Controller.Interfaces.pas',
  uItemStock.Controller.TItemStock in 'controller\uItemStock.Controller.TItemStock.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
