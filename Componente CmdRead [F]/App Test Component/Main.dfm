object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object SpeedButton1: TSpeedButton
    Left = 120
    Top = 224
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 32
    Width = 584
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Execute'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CmdRead1: TCmdRead
    OnExecute = CmdRead1Execute
    Left = 256
    Top = 256
  end
  object OpenDialog1: TOpenDialog
    Left = 304
    Top = 224
  end
end
