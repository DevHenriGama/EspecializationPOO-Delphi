unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Cabos;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
var Cable : TCabos;
begin
 Cable := TCabos.Create;
  try
    with Cable do begin
    AddNewCable;
    Memo1.Lines.Add(IntToStr(ID));
    Memo1.Lines.Add(ItemName);
    Memo1.Lines.Add(State);
    Memo1.Lines.Add(IntToStr(ContainerNumber));
    end;
  finally
    Cable.Free;
  end;
end;

end.
