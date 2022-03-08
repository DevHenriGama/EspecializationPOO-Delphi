unit Classe.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.DB;

type
  TMain = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    Settings : IBDSettings;
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.Button1Click(Sender: TObject);
begin
Settings := TSQLServe.Create;
Settings.Exibir;
Memo1.Lines.Add(Settings.Load);
end;

procedure TMain.Button2Click(Sender: TObject);
begin
Settings := TMYSQL.Create;
Settings.Exibir;
Memo1.Lines.Add(Settings.Load);
end;

end.
