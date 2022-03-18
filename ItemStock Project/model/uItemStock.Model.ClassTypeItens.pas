unit uItemStock.Model.ClassTypeItens;

interface

uses uItemStock.Model.Interfaces, System.Classes;

  type
    TTypeItens = class(TInterfacedObject,ITypeItens)
    private

    public
      function GetTypeItens : TStringList;
    end;

implementation

{ TTypeItens }

function TTypeItens.GetTypeItens: TStringList;
begin

end;

end.
