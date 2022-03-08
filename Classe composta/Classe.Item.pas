unit Classe.Item;

interface

  type
    TItem = class
      private
    FState: String;
        FID: Integer;
        FContainerNumber: Integer;
        FItemName: String;
        procedure SetContainerNumber(const Value: Integer);
        procedure SetID(const Value: Integer);
        procedure SetItemName(const Value: String);
        procedure SetState(const Value: String);
      public
        property ID : Integer read FID write SetID;
        property ItemName : String read FItemName write SetItemName;
        property State : String read FState write SetState;
        property ContainerNumber : Integer read FContainerNumber write SetContainerNumber;

    end;

implementation

{ TItem }

procedure TItem.SetContainerNumber(const Value: Integer);
begin
  FContainerNumber := Value;
end;

procedure TItem.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TItem.SetItemName(const Value: String);
begin
  FItemName := Value;
end;

procedure TItem.SetState(const Value: String);
begin
  FState := Value;
end;

end.
