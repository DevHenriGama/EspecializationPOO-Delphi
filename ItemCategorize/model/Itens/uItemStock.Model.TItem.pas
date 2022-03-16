unit uItemStock.Model.TItem;

interface

uses uItemStock.Model.IItem, uItemStock.Model.TItemType;

 type
    TItemClass = class(TInterfacedObject, IItem)

    private
        FItem : String;
        FState : String;
        FDescription : String;
        FPicturePath : String;
        FContainer : integer;
        FType : TItemType;
    public
      constructor Create;
      destructor Destroy; override;
        class function New : IItem;
        function Item( ItemName : String) : IItem;
        function State( StateItem : String) : IItem;
        function Description( Desc : String) : IItem;
        function PicturePath( Path : String) : IItem;
        function Container( ContainerNumber : Integer) :IItem;
        function TypeItem( SelectType : TItemType) : IItem;
        procedure NewItem;

    end;

implementation


{ TItemClass }

function TItemClass.Container(ContainerNumber: Integer): IItem;
begin
 Result := Self;
 FContainer := ContainerNumber;
end;

constructor TItemClass.Create;
begin

end;

function TItemClass.Description(Desc: String): IItem;
begin
 Result := Self;
  FDescription := Desc;
end;

destructor TItemClass.Destroy;
begin

  inherited;
end;



function TItemClass.Item(ItemName: String): IItem;
begin
  Result := Self;
  FItem := ItemName;
end;

class function TItemClass.New: IItem;
begin
 Result := TItemClass.Create;
end;

procedure TItemClass.NewItem;
begin
// Acesso aos dados
end;

function TItemClass.PicturePath(Path: String): IItem;
begin
 Result := Self;
 FPicturePath := Path;
end;

function TItemClass.State(StateItem: String): IItem;
begin
 Result := Self;
 FState := StateItem;
end;

function TItemClass.TypeItem(SelectType: TItemType): IItem;
begin
 Result := Self;
 FType := SelectType;
end;

end.
