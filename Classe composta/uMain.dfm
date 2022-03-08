object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 154
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 265
    Height = 89
    TabOrder = 0
  end
  object Button1: TButton
    Left = 304
    Top = 64
    Width = 97
    Height = 25
    Caption = 'Add / View Item'
    TabOrder = 1
    OnClick = Button1Click
  end
end
