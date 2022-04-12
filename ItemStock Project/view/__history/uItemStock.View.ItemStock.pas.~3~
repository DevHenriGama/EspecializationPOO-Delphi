unit uItemStock.View.ItemStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  uItemStock.Controller.PersistentData,
  uItemStock.Controller.Interfaces;

type
  TfrmItemStock = class(TForm)
    DBGrid1: TDBGrid;
    DataPersistent: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    PersistentData : IPersistentData;
  public
    { Public declarations }
  end;

var
  frmItemStock: TfrmItemStock;

implementation

{$R *.dfm}

procedure TfrmItemStock.FormCreate(Sender: TObject);
begin
 PersistentData := TPersistentDataControll.Create;
 DataPersistent.DataSet := PersistentData.GetDataPersistent;
end;

end.
