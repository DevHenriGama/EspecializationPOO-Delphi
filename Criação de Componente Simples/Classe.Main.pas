unit Classe.Main;

interface
    uses System.Classes;
    procedure register;

  type

     TStringWorking = procedure (Sender : TObject) of object;

    TFuncUtils = class(TComponent)
    private
    FVarString: String;
    FWorkString: TStringWorking;
    procedure SetVarString(const Value: String);
    procedure SetWorkString(const Value: TStringWorking);
    procedure OnStringWork;
    public
      function GetLegth(Value : String) : Integer;
    published
      property VarString : String read FVarString write SetVarString;
      property WorkString : TStringWorking read FWorkString write SetWorkString;
    end;

implementation

procedure register;
begin
 RegisterComponentsProc('ComponentUtils',[TFuncUtils]);
end;

{ TFuncUtils }

function TFuncUtils.GetLegth(Value: String): Integer;
begin
 Result := Length(Value);
 OnStringWork;
end;

procedure TFuncUtils.OnStringWork;
begin
 if Assigned(WorkString) then
    WorkString(Self)
end;

procedure TFuncUtils.SetVarString(const Value: String);
begin
  FVarString := Value;
end;

procedure TFuncUtils.SetWorkString(const Value: TStringWorking);
begin
  FWorkString := Value;
end;

end.
