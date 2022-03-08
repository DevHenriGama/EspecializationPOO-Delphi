unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Memo1: TMemo;
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

uses Classe.Perifericos;

procedure TMain.Button1Click(Sender: TObject);
var Periferico : TPeriferico;
begin
  Periferico := TPeriferico.Create;
  try
    with Periferico do begin
     Nome := Edit1.Text;
     Modelo := Edit2.Text;
     Material := SelecionarMaterial.GetMaterialPlastic;
     NovoPerifireco;
     Memo1.Lines.LoadFromFile(Nome + '.txt');
    end;
  finally
     Periferico.Free;
  end;
end;

end.
