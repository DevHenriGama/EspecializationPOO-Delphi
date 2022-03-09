unit Classe.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Notificar(aValue : String);
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses Classe.Notify;

procedure TMain.Button1Click(Sender: TObject);
var NT : TNotify;
begin
 NT := TNotify.Create;
 try
   NT.Notify := Notificar;
   NT.Notificar;
 finally
    NT.Free;
 end;
end;

procedure TMain.Notificar(aValue: String);
begin
Memo1.Lines.Add(aValue);
end;

end.
