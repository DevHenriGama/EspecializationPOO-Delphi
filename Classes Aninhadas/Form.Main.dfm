object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 256
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 185
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 56
    Width = 185
    Height = 23
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 104
    Width = 185
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 422
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 144
    Width = 481
    Height = 89
    TabOrder = 4
  end
end
