unit uItemStock.View.Stock;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  uItemStock.Controller.ClassStock, uItemStock.Controller.Interfaces,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, FMX.ListBox;

type
  TForm2 = class(TForm)
    edtID: TEdit;
    edtContainer: TEdit;
    edtItem: TEdit;
    edtDescription: TEdit;
    edtState: TEdit;
    Button1: TButton;
    lblD: TLabel;
    lblContainer: TLabel;
    lblType: TLabel;
    lblItem: TLabel;
    lblDescription: TLabel;
    lblState: TLabel;
    lblPath: TLabel;
    cbxTypeitens: TComboBox;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  .ID(StrToInt(edtID.Text))
  .Item(edtItem.Text)
  .State(edtState.Text)
  .Description(edtDescription.Text)
  .PicturePath(lblPath.Text)
  .Container(StrToInt(edtContainer.Text))
  .TypeItenm(cbxTypeitens.Items.Text)
  .Add;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 Stock.StockItem
  .ID(StrToInt(edtID.Text))
  .Item(edtItem.Text)
  .State(edtState.Text)
  .Description(edtDescription.Text)
  .PicturePath(lblPath.Text)
  .Container(StrToInt(edtContainer.Text))
  .TypeItenm(cbxTypeitens.Items.Text)
  .Remove;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Stock.StockItem
  .ID(StrToInt(edtID.Text))
  .Item(edtItem.Text)
  .State(edtState.Text)
  .Description(edtDescription.Text)
  .PicturePath(lblPath.Text)
  .Container(StrToInt(edtContainer.Text))
  .TypeItenm(cbxTypeitens.Items.Text)
  .Edit;
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
