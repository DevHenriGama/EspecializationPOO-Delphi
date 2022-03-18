unit uItemStock.View.Stock;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  uItemStock.Controller.ClassStock, uItemStock.Controller.Interfaces,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Stock : IControllerStock;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy;override;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
 Stock.StockItem
  .ID(StrToInt(Edit1.Text))
  .Item(Edit2.Text)
  .State(Edit3.Text)
  .Description(Edit4.Text)
  .PicturePath(Edit5.Text)
  .Container(StrToInt(Edit6.Text))
  .Add;

end;

constructor TForm2.Create;
begin

end;

destructor TForm2.Destroy;
begin

  inherited;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
 Stock := TControllerStock.Create;
end;

end.
