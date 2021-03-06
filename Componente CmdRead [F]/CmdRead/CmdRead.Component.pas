unit CmdRead.Component;

interface

  uses System.Classes, IHandle, Handle;

procedure register;

  type

  TOnExecute = procedure(Value : String) of Object;
    TCmdRead = class(TComponent)

    private
    FTempFileName: String;
    FScriptPath: String;
    FiHandle : IHandleCmd;
    FOnExecute: TOnExecute;

    procedure SetScriptPath(const Value: String);
    procedure SetTempFileName(const Value: String);
    procedure SetOnExecute(const Value: TOnExecute);
    public
        constructor Create;
        procedure ProcessingInCMD;
    published
      property TempFileName : String read FTempFileName write SetTempFileName;
      property ScriptPath : String read FScriptPath write SetScriptPath;
      property OnExecute  :TOnExecute read FOnExecute write SetOnExecute;


    end;

implementation

procedure Register;
begin
 RegisterComponents('DevHenriComp',[TCmdRead]);
end;

{ TCmdRead }



constructor TCmdRead.Create;
begin

end;

procedure TCmdRead.ProcessingInCMD;
var
 TemString : String;
begin
  TemString :=THandleCmd.New.TempFileName(FTempFileName).PathScript(FScriptPath).Handle;
 OnExecute(TemString);
end;

procedure TCmdRead.SetOnExecute(const Value: TOnExecute);
begin
  FOnExecute := Value;
end;

procedure TCmdRead.SetScriptPath(const Value: String);
begin
  FScriptPath := Value;
end;

procedure TCmdRead.SetTempFileName(const Value: String);
begin
  FTempFileName := Value;
end;

end.
