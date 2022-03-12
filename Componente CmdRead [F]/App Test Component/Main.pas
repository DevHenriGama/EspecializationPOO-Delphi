unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  CmdRead.Component;

type
  TForm1 = class(TForm)
    CmdRead1: TCmdRead;
    Memo1: TMemo;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CmdRead1Execute(Value: string);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
CmdRead1.ProcessingInCMD;
end;

procedure TForm1.CmdRead1Execute(Value: string);
begin
Memo1.Lines.Add(Value);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  CmdRead1.ScriptPath := OpenDialog1.FileName;

end;

end.
