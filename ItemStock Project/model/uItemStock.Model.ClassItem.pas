unit uItemStock.Model.ClassItem;

interface

uses
  uItemStock.Model.Interfaces;

  type
    TItem = class
      private
        FContainer: Integer;
        FPicturePath: String;
        FTypeItem: ITypeItens;
        FState: String;
        FID: Integer;
        FDescription: String;
        FItem: String;
        procedure SetContainer(const Value: Integer);
        procedure SetDescription(const Value: String);
        procedure SetID(const Value: Integer);
        procedure SetItem(const Value: String);
        procedure SetPicturePath(const Value: String);
        procedure SetState(const Value: String);
        procedure SetTypeItem(const Value: ITypeItens);
      public
        property ID : Integer read FID write SetID;
        property Item : String read FItem write SetItem;
        property Description : String read FDescription write SetDescription;
        property PicturePath : String read FPicturePath write SetPicturePath;
        property TypeItem : ITypeItens read FTypeItem write SetTypeItem;
        property State : String read FState write SetState;
        property Container : Integer read FContainer write SetContainer;
        procedure Insert;
    end;

implementation

uses
  FMX.Dialogs;

{ TItem }

procedure TItem.Insert;
begin
ShowMessage(FItem);
end;


procedure TItem.SetContainer(const Value: Integer);
begin
  FContainer := Value;
end;

procedure TItem.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TItem.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TItem.SetItem(const Value: String);
begin
  FItem := Value;
end;

procedure TItem.SetPicturePath(const Value: String);
begin
  FPicturePath := Value;
end;

procedure TItem.SetState(const Value: String);
begin
  FState := Value;
end;

procedure TItem.SetTypeItem(const Value: ITypeItens);
begin
  FTypeItem := Value;
end;

end.
