program ItemCategorize;

uses
  System.StartUpCopy,
  FMX.Forms,
  uCategorize.View.Main in 'view\uCategorize.View.Main.pas' {Form1},
  uCategorize.Model.TItem in 'model\Itens\uCategorize.Model.TItem.pas',
  uCategorize.Model.TItemType in 'model\Itens\uCategorize.Model.TItemType.pas',
  uCategorize.Model.IItem in 'model\Itens\uCategorize.Model.IItem.pas',
  uCategorize.View.Item in 'view\uCategorize.View.Item.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
