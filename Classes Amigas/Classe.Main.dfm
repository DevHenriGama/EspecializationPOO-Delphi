object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 209
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object ComboBox1: TComboBox
    Left = 8
    Top = 151
    Width = 145
    Height = 23
    TabOrder = 0
    Text = 'Selecione Sua GPU'
    Items.Strings = (
      'NVQuadro'
      'RTX2060'
      'R9280')
  end
  object Button1: TButton
    Left = 168
    Top = 151
    Width = 75
    Height = 25
    Caption = 'Criar GPU'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 385
    Height = 129
    TabOrder = 2
  end
end
