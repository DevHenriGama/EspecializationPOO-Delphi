unit Classe.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OnNotification(Sender : TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classe.Notify;


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var NewNotification : TNotify;
begin
  NewNotification := TNotify.Create;
  try
   NewNotification.ExeNotify := OnNotification;
   NewNotification.OnNotification;
  finally
    NewNotification.Free;
  end;
end;

procedure TForm1.OnNotification(Sender: TObject);
begin
 Memo1.Lines.Add(TNotify(Sender).MessageShow);
end;

end.
