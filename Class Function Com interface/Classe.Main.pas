unit Classe.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Classe.Eletronic, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.Button1Click(Sender: TObject);
begin
  TEletronic.New.AddEletronic;

// TEletronic.AddEletronic;
end;

end.
