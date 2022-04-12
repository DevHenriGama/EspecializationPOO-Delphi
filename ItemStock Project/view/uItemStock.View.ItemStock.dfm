object frmItemStock: TfrmItemStock
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Item Stock'
  ClientHeight = 611
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 1014
    Height = 472
    Align = alTop
    DataSource = DataPersistent
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Inventory'
    Color = 5263440
    Constraints.MaxHeight = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = Panel1MouseDown
    object imgClose: TImage
      AlignWithMargins = True
      Left = 987
      Top = 3
      Width = 24
      Height = 19
      Align = alRight
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000000B1000000B101C62D498D0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A0000016F4944415478DAA5
        963D4BC4401086672DCECEC2D25F203636F6B6EAF9815AA887B5BDC575A28860
        6121B69662251A2DFC0205C1AFCA1F60EF3F50141183F80E97C012677627EBC0
        7390CCE47DC8257B7B8E887AC10E180467600DE49456DD60150C837BB0EEF0B1
        0F16BDA123D002DF09E12760D43BB7C98267D05F19CEC0420D8914CE75C3826D
        B02C5C740CE60D122D9C6B85050D700826858173300BBE94F046F1954E083DCE
        6C396F50935C801941120D07B9AB5CA0492EC1B4273185F381AB346312BE931F
        6BB8248849AEA8F3D09B96704D1093482586870475246A784C504A78D18D2B7D
        5E2B7314F869B10838A4A9F4AFC114F84C11845E45B324F4902DE165DD1677F9
        611184C2B3A22FF5EE0AC97B486059A15DA4BF5D7F24AE6678EECD6A12DE68C6
        4A894B08A73A1297186E913CB08405BB60491838A0CE561ADB9F79C3C9485E2B
        7B2C78053D89E131C91B0B9EC0D03FC2439247160C802DD0074EC14642B82FE1
        BF3D23E005B47F019D856E69AA4146EA0000000049454E44AE426082}
      OnClick = imgCloseClick
      ExplicitLeft = 999
      ExplicitTop = 6
      ExplicitHeight = 24
    end
  end
  object edtID: TEdit
    Left = 16
    Top = 520
    Width = 49
    Height = 23
    TabOrder = 2
    Text = 'edtID'
  end
  object edtItemName: TEdit
    Left = 88
    Top = 520
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'edtItemName'
  end
  object edtDescription: TEdit
    Left = 16
    Top = 568
    Width = 337
    Height = 23
    TabOrder = 4
    Text = 'edtDescription'
  end
  object edtContainer: TEdit
    Left = 232
    Top = 520
    Width = 121
    Height = 23
    TabOrder = 5
    Text = 'edtContainer'
  end
  object edtState: TEdit
    Left = 376
    Top = 520
    Width = 169
    Height = 23
    TabOrder = 6
    Text = 'edtState'
  end
  object edtType: TEdit
    Left = 376
    Top = 568
    Width = 169
    Height = 23
    TabOrder = 7
    Text = 'edtType'
  end
  object sbItem: TSearchBox
    Left = 813
    Top = 520
    Width = 193
    Height = 23
    TabOrder = 8
    Text = 'sbItem'
  end
  object rgTypeSearch: TRadioGroup
    Left = 813
    Top = 549
    Width = 193
    Height = 59
    Caption = 'Buscar por:'
    Columns = 3
    Items.Strings = (
      'Nome'
      'Container'
      'Tipo')
    ShowFrame = False
    TabOrder = 9
  end
  object Button1: TButton
    Tag = 1
    Left = 560
    Top = 519
    Width = 75
    Height = 25
    Caption = 'New'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 560
    Top = 567
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 727
    Top = 567
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 12
  end
  object Button4: TButton
    Tag = 1
    Left = 641
    Top = 519
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 13
    OnClick = Button4Click
  end
  object Button5: TButton
    Tag = 1
    Left = 641
    Top = 567
    Width = 80
    Height = 25
    Caption = 'Delete'
    TabOrder = 14
    OnClick = Button5Click
  end
  object DataPersistent: TDataSource
    Left = 912
    Top = 248
  end
end
