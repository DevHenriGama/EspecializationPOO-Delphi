unit uItemStock.Controller.ControllViewData;

interface

uses
  FireDAC.Comp.Client, uItemStock.Dao.DataModule, uItemStock.Dao.Instruction,
  uItemStock.Controller.Interfaces, uItemStock.Utils.SysUtils;
  type
    TControllViewData = class(TInterfacedObject,IViewData)

    private
       _Dataset : TFDQuery;
       DAO : TDaoIntructions;
    public
      constructor Create;
      destructor Destroy;override;
      function GetDataSet : TFDQuery;
      procedure SerchToIndex(_Value :String;_Index : Integer);
      procedure SearchToTName(_Value, TableName : String);
      procedure ListAll;
    end;

implementation

{ TControllViewData }

constructor TControllViewData.Create;
begin
  DAO := TDaoIntructions.Create;
  _Dataset := DAO.PersitentData;
end;

destructor TControllViewData.Destroy;
begin
   DAO.Free;
  inherited;
end;

function TControllViewData.GetDataSet: TFDQuery;
begin
 Result := _Dataset;
end;


procedure TControllViewData.ListAll;
begin
 DAO.ListAll;
end;

procedure TControllViewData.SearchToTName(_Value, TableName: String);
begin
 DAO.SerchInDatabase(_Value,TableName);
end;

procedure TControllViewData.SerchToIndex(_Value: String; _Index: Integer);
begin
 //DAO.SerchInDatabase(_Value,TUtils.IndexToSr(_Index));
end;

end.
