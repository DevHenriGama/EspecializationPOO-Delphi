unit uItemStock.View.ItemStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  uItemStock.Controller.PersistentData,
  uItemStock.Controller.Interfaces, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TfrmItemStock = class(TForm)
    DBGrid1: TDBGrid;
    DataPersistent: TDataSource;
    Panel1: TPanel;
    imgClose: TImage;
    edtID: TEdit;
    edtItemName: TEdit;
    edtDescription: TEdit;
    edtContainer: TEdit;
    edtState: TEdit;
    edtType: TEdit;
    sbItem: TSearchBox;
    rgTypeSearch: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    CrudState : Integer;
    PersistentData : IPersistentData;
    procedure FieldControlls(State : Boolean);
    procedure ClerFields;
  public
    { Public declarations }
  end;

var
  frmItemStock: TfrmItemStock;

implementation

uses
  uItemStock.Controller.Classitem;

{$R *.dfm}

procedure TfrmItemStock.Button1Click(Sender: TObject);
begin
CrudState := 1;
end;

procedure TfrmItemStock.Button2Click(Sender: TObject);
begin
  case CrudState of
  1:TControllerItem.New.
    ID(StrToInt(edtID.Text)).
      Item(edtItemName.Text).
        State(edtState.Text).
          Description(edtDescription.Text).
            Container(StrToInt(edtContainer.Text)).
              TypeItem(edtType.Text).
                Add;

  2:TControllerItem.New.
    ID(StrToInt(edtID.Text)).
      Item(edtItemName.Text).
        State(edtState.Text).
          Description(edtDescription.Text).
            Container(StrToInt(edtContainer.Text)).
              TypeItem(edtType.Text).
                Edit;

  3:TControllerItem.New.
    ID(StrToInt(edtID.Text)).
      Item(edtItemName.Text).
        State(edtState.Text).
          Description(edtDescription.Text).
            Container(StrToInt(edtContainer.Text)).
              TypeItem(edtType.Text).
                Remove;
  end;
end;

procedure TfrmItemStock.Button4Click(Sender: TObject);
begin
CrudState := 2;
end;

procedure TfrmItemStock.Button5Click(Sender: TObject);
begin
CrudState := 3;
end;

procedure TfrmItemStock.ClerFields;
var
  I: Integer;
begin
 for I := 0 to ComponentCount -1 do begin
 if Components[I] is TEdit then
    (Components[I] as TEdit).Clear;
 end;
end;

procedure TfrmItemStock.FieldControlls(State: Boolean);
var I : Integer;
begin
 for I := 0 to ComponentCount -1 do begin

   if Components[I] is TEdit then begin
      (Components[I] as TEdit).Enabled := State;
   end
   else
   if Components[I] is TButton then begin
      if (Components[I] as TButton).Tag = 1 then begin
        (Components[I] as TButton).Enabled :=  State;
      end
      else
      begin
        (Components[I] as TButton).Enabled := not State;
      end;
   end;

 end;
end;

procedure TfrmItemStock.FormCreate(Sender: TObject);
begin
 PersistentData := TPersistentDataControll.Create;
 DataPersistent.DataSet := PersistentData.GetDataPersistent;
end;

procedure TfrmItemStock.FormShow(Sender: TObject);
begin
//  FieldControlls(False);
end;

procedure TfrmItemStock.imgCloseClick(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmItemStock.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  const SG = $F012;
begin
 ReleaseCapture;
 Perform(WM_SYSCOMMAND,SG,0);
end;

end.
