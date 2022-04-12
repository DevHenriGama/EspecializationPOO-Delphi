unit uItemStock.Controller.PersistentData;

interface

uses uItemStock.Controller.Interfaces,
  uItemStock.Dao.DataModule, FireDAC.Comp.Client;

  type
    TPersistentDataControll = class(TInterfacedObject, IPersistentData)
    private
      Query : TFDQuery;
      Connection : TFDConnection;
      Data : TdmDados;
    public
      constructor Create;
      destructor Destroy;override;
      function GetDataPersistent : TFDQuery;
    end;

implementation

{ TPersistentDataControll }

constructor TPersistentDataControll.Create;
begin
 Query := TFDQuery.Create(nil);
  Data := TdmDados.Create(nil);
  Connection := Data.Connection;
end;

destructor TPersistentDataControll.Destroy;
begin
  Data.Free;
   Query.Free;
  inherited;
end;

function TPersistentDataControll.GetDataPersistent: TFDQuery;
begin
 Query.Connection := Connection;
 with Query do begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM ITENS');
   Open;
 end;

 Result := Query;
end;

end.
