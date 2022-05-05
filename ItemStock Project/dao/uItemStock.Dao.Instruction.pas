unit uItemStock.Dao.Instruction;

interface

uses
  uItemStock.Model.ClassItem, uItemStock.Dao.Interfaces,FireDAC.Comp.Client;

type
   TDaoIntructions = class(TInterfacedObject,IDaoInstruction)

   private
      FItens : TItem;
      FQuery : TFDQuery;
   public
     constructor Create(MyIten  :TItem);
     destructor Destroy; override;
     class function NewInstruction( MyClassItem : TItem) : IDaoInstruction;
     procedure InsertItem( Myconnection : TFDConnection );
     procedure UpdateItem(MyConnection : TFDConnection);
     procedure DeleteItem(MyConnection : TFDConnection);
     procedure  SerchInDatabase(_Value , SB_By : String; Conn :TFDConnection );
   end;

implementation

uses
  System.SysUtils;



{ TDaoIntructions }

constructor TDaoIntructions.Create(MyIten  :TItem);
begin
  FItens := MyIten;
  FQuery := TFDQuery.Create(nil);
end;

procedure TDaoIntructions.DeleteItem(MyConnection: TFDConnection);
begin
  with FQuery do begin
    Connection := Myconnection;
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ITENS WHERE ID = :id');
    ParamByName('id').AsInteger := FItens.ID;
    ExecSQL;
  end;
end;

destructor TDaoIntructions.Destroy;
begin
   FQuery.Free;
  inherited;
end;

procedure TDaoIntructions.InsertItem(Myconnection: TFDConnection);
begin
  with FQuery do begin
    Connection := Myconnection;
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO ITENS (ITEMNAME, STATE, DESCRIPTION, TYPES, CONTAINER, PATH) ' +
      'VALUES (:name, :state, :des , :type , :cont , :path)');
    with FItens do begin
      ParamByName('name').AsString := Item;
      ParamByName('state').AsString := State;
      ParamByName('des').AsString := Description;
      ParamByName('type').AsString := TypeItem;
      ParamByName('cont').AsInteger :=  Container;
      ParamByName('path').AsString := PicturePath;
    end;
    ExecSQL;
  end;
end;

class function TDaoIntructions.NewInstruction(
  MyClassItem: TItem): IDaoInstruction;
begin
  Result := TDaoIntructions.Create(MyClassItem);
end;


procedure TDaoIntructions.SerchInDatabase(_Value, SB_By: String;
  Conn: TFDConnection);
begin
 with FQuery do begin

   Connection := Conn;
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM ITENS WHERE ' + SB_By + ' LIKE  '+ QuotedStr('%'+_Value+'%'));
   Open;
   Refresh;
 end;
end;

procedure TDaoIntructions.UpdateItem(MyConnection: TFDConnection);
begin
  with FQuery do begin
    Connection := Myconnection;
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ITENS  SET ITEMNAME = :name, STATE = :state, ' +
      ' DESCRIPTION = :desc ,TYPES = :type,  CONTAINER = :cont, PATH = :path '+
      'WHERE ID = :id');
    with FItens do begin
      ParamByName('id').AsInteger := ID;
      ParamByName('name').AsString := Item;
      ParamByName('state').AsString := State;
      ParamByName('desc').AsString := Description;
      ParamByName('type').AsString := TypeItem;
      ParamByName('cont').AsInteger :=  Container;
      ParamByName('path').AsString := PicturePath;
    end;
    ExecSQL;
  end;
end;

end.
