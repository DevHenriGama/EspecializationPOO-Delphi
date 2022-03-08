unit Classe.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
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

uses Classe.GPU;

procedure TMain.Button1Click(Sender: TObject);
var NewGPU : TProductGRPU;
begin
 NewGPU := TProductGRPU.Create;
  try
     case ComboBox1.ItemIndex of
     0:begin
       Memo1.Lines.Add(NewGPU.NVQuadro.Model);
       Memo1.Lines.Add(NewGPU.NVQuadro.Fan);
       Memo1.Lines.Add(IntToStr(NewGPU.NVQuadro.Memory));
      end;

     1:begin
       Memo1.Lines.Add(NewGPU.RTX2060.Model);
       Memo1.Lines.Add(NewGPU.RTX2060.Fan);
       Memo1.Lines.Add(IntToStr(NewGPU.RTX2060.Memory));
      end;

     2:begin
        Memo1.Lines.Add(NewGPU.R930.Model);
       Memo1.Lines.Add(NewGPU.R930.Fan);
       Memo1.Lines.Add(IntToStr(NewGPU.R930.Memory));
      end;
     end;
  finally
    NewGPU.Free;
  end;
end;

end.
