unit Handle;

interface

uses IHandle;

  type
    THandleCmd = class(TInterfacedObject, IHandleCmd)
    private
       FTempFileName : String;
       FPathSript : String;
    public
      constructor Create;
      destructor Destroy;override;
      Class function New : IHandleCmd;
      function TempFileName( FileName : String) : IHandleCmd; overload;
       function TempFileName : String;overload;
       function PathScript(PathFile : String) :IHandleCmd; overload;
       function PathScript : String;overload;
       function Handle : String;
    end;

implementation

uses
  Winapi.Windows, System.Classes, System.SysUtils, vcl.Forms;

{ THandleCmd }

constructor THandleCmd.Create;
begin

end;

destructor THandleCmd.Destroy;
begin

  inherited;
end;

function THandleCmd.Handle: String;
var
  Start: TStartupInfo;
  procInfo: TProcessInformation;
  tmpName: string;
  tmp: Winapi.Windows.THandle;
  tmpSec: TSecurityAttributes;
  res: TStringList;
  return: Cardinal;
begin
  try

    tmpName := TempFileName;
    FillChar(tmpSec, SizeOf(tmpSec), #0);
    tmpSec.nLength := SizeOf(tmpSec);
    tmpSec.bInheritHandle := true;
    tmp := Winapi.Windows.CreateFile(PChar(tmpName),
      Generic_Write, File_Share_Write,
      @tmpSec, Create_Always, File_Attribute_Normal, 0);

    try

      FillChar(Start, SizeOf(Start), #0);
      Start.cb := SizeOf(Start);
      Start.hStdOutput := tmp;
      Start.dwFlags := StartF_UseStdHandles or StartF_UseShowWindow;
      Start.wShowWindow := SW_MINIMIZE;
      // Start the program
      if CreateProcess(nil, PChar('cmd.exe' + ' ' + '/c python ' + FPathSript), nil, nil, true,
        0, nil, PChar('C:/'), Start, procInfo) then

      begin
        SetPriorityClass(procInfo.hProcess, Idle_Priority_Class);
        WaitForSingleObject(procInfo.hProcess, Infinite);
        GetExitCodeProcess(procInfo.hProcess, return);
        //Result := (return = 0);
        CloseHandle(procInfo.hThread);
        CloseHandle(procInfo.hProcess);
        Winapi.Windows.CloseHandle(tmp);
        // Add the output
        res := TStringList.Create;
        try
          res.LoadFromFile(tmpName);
          Result := res.Strings[0];

        finally
          res.Free;
        end;

        Winapi.Windows.DeleteFile(PChar(tmpName));
      end
      else
        Application.MessageBox(PChar(SysErrorMessage(GetLastError())),
          'RunCaptured Error', MB_OK);
    except
      Winapi.Windows.CloseHandle(tmp);
      Winapi.Windows.DeleteFile(PChar(tmpName));
      raise;

    end;

  finally

  end;

end;

class function THandleCmd.New: IHandleCmd;
begin
 Result := THandleCmd.Create;
end;

function THandleCmd.PathScript(PathFile: String): IHandleCmd;
begin
  Result := Self;
  FPathSript := PathFile;
end;

function THandleCmd.PathScript: String;
begin
 Result := FPathSript;
end;

function THandleCmd.TempFileName(FileName: String): IHandleCmd;
begin
Result := Self;
FTempFileName := FileName;
end;

function THandleCmd.TempFileName: String;
begin
 if FTempFileName <> '' then
  Result := 'DelphiTemp.temp'
 else
  Result := FTempFileName + '.temp';
  end;

end.
