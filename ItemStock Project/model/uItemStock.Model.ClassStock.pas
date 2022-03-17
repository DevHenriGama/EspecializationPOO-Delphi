unit uItemStock.Model.ClassStock;

interface

uses
  uItemStock.Model.Interfaces, uItemStock.Model.ClassItem;

  type
    TStockItem = class (TInterfacedObject, IStockItem)
      private

      public
       function MyItens : IItem;
    end;

implementation

{ TStockItem }

function TStockItem.MyItens: IItem;
begin
 Result := TItem.MyItens;
end;

end.
