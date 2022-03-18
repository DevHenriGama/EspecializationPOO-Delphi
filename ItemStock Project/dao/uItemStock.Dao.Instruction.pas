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
     procedure InsertItem( Connection : TFDConnection );
   end;

implementation



{ TDaoIntructions }

constructor TDaoIntructions.Create(MyIten  :TItem);
begin
  FItens := MyIten;
  FQuery := TFDQuery.Create(nil);
end;

destructor TDaoIntructions.Destroy;
begin
   FQuery.Free;
  inherited;
end;

procedure TDaoIntructions.InsertItem(Connection: TFDConnection);
begin
  with FQuery do begin
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

end.
