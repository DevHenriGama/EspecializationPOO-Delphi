unit uItemStock.View.Item;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.ListBox, FMX.Controls.Presentation, FMX.Edit,
  FMX.StdCtrls;

type
  TForm2 = class(TForm)
    edtItemID: TEdit;
    edtStateItem: TEdit;
    edtItemName: TEdit;
    edtContainer: TEdit;
    cbxTypeItem: TComboBox;
    memDescription: TMemo;
    lblPicturePath: TLabel;
    Button1: TButton;
    Button4: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.
