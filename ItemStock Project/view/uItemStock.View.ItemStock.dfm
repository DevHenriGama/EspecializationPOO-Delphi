object frmItemStock: TfrmItemStock
  Left = 0
  Top = 0
  Margins.Left = 10
  BorderStyle = bsNone
  Caption = 'Item Stock'
  ClientHeight = 611
  ClientWidth = 1027
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
  object Panel2: TPanel
    Left = 0
    Top = 591
    Width = 1027
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Constraints.MaxHeight = 20
    Constraints.MinHeight = 20
    ParentBackground = False
    TabOrder = 2
  end
  object dbData: TDBGrid
    Left = 0
    Top = 31
    Width = 1027
    Height = 560
    Align = alClient
    DataSource = DataPersistent
    Options = [dgTitles, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = dbDataCellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEMNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Item:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TYPES'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATE'
        Title.Alignment = taCenter
        Title.Caption = 'Estado do Item:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CONTAINER'
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' Box:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PATH'
        Title.Alignment = taCenter
        Title.Caption = 'Imagem:'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = '@Malgun Gothic'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1027
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Inventory'
    Color = 5263440
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
      Left = 1000
      Top = 3
      Width = 24
      Height = 25
      Align = alRight
      AutoSize = True
      Center = True
      Constraints.MinHeight = 25
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000000B1000000B101C62D498D0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000000F54944415478DA9D
        95BB0EC2300C45E3999D2F05065E03AF81F2BB488889388A8B098E63FB4A5652
        B53DA74D9A14D26FCEB9DEB58D649D6B59DB1268E0FBDA3F062408BDD7FE8324
        24E0708A47C2E19422810EDC2391E0B30405AB5C9302D0241A1C73A0218A4886
        F05C173EC91E89098E1D684E6C735D951B77B51D5D73A303102E18BD8996F9C9
        354154F207D7045E89081F09AC922EDC22187D2D1875316A020B7C28E9093C70
        55220922F0AEA4155856E82B39B6152E302FFFE4D85648E081534C1208C2CD12
        149C2AC40BB748261A224962816B123CDEF049E6120F5C92143876DACF14F7F9
        6762FBB933F83F59A4EF7F237D00AB394B270DC92E070000000049454E44AE42
        6082}
      OnClick = imgCloseClick
      ExplicitLeft = 987
    end
    object Image2: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 24
      Height = 25
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000000473424954080808087C0864880000000970
        485973000002AE000002AE016DEC321A0000001974455874536F667477617265
        007777772E696E6B73636170652E6F72679BEE3C1A000000A04944415478DA63
        FCFFFF3F032D0123100B03710E100703312B95CCFD0DC46B81780AC882E9409C
        41230FCC0059F01488A56864C13390059380389746164C06592000C4E90CB489
        83998C344F45C3C3024646464E20DB1188D9A864EE2F20DE0F34FB3B28927D80
        7811100B52D9F1EF81380E64C1492036A351089DA28B05B40D229A47F2F0C807
        34B58081D6851D031D8A6B9A573834AF32695BE9D33A15010097634887DD14BD
        AA0000000049454E44AE426082}
      OnClick = Image2Click
      ExplicitLeft = -2
      ExplicitTop = 0
    end
    object sbItem: TSearchBox
      Tag = 1
      AlignWithMargins = True
      Left = 35
      Top = 3
      Width = 154
      Height = 22
      Margins.Left = 10
      BorderStyle = bsNone
      Constraints.MaxHeight = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PopupMenu = menuTypeSearch
      TabOrder = 0
      OnChange = sbItemChange
      OnKeyDown = sbItemKeyDown
    end
  end
  object spMenu: TSplitView
    Left = 0
    Top = 31
    Width = 0
    Height = 560
    Opened = False
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 3
    object Label2: TLabel
      Left = 7
      Top = 19
      Width = 14
      Height = 15
      Caption = 'ID:'
    end
    object Label7: TLabel
      Left = 7
      Top = 69
      Width = 27
      Height = 15
      Caption = 'Item:'
    end
    object Label3: TLabel
      Left = 7
      Top = 117
      Width = 23
      Height = 15
      Caption = 'Box:'
    end
    object Label6: TLabel
      Left = 7
      Top = 167
      Width = 29
      Height = 15
      Caption = 'Tipo :'
    end
    object Label4: TLabel
      Left = 7
      Top = 217
      Width = 82
      Height = 15
      Caption = 'Estado do Item:'
    end
    object Label5: TLabel
      Left = 7
      Top = 277
      Width = 54
      Height = 15
      Caption = 'Descri'#231#227'o:'
    end
    object edtID: TEdit
      Left = 7
      Top = 40
      Width = 49
      Height = 23
      BorderStyle = bsNone
      NumbersOnly = True
      TabOrder = 0
    end
    object edtItemName: TEdit
      Left = 7
      Top = 88
      Width = 121
      Height = 23
      BorderStyle = bsNone
      TabOrder = 1
    end
    object edtContainer: TEdit
      Left = 7
      Top = 138
      Width = 121
      Height = 23
      BorderStyle = bsNone
      NumbersOnly = True
      TabOrder = 2
    end
    object edtType: TEdit
      Left = 7
      Top = 188
      Width = 169
      Height = 23
      BorderStyle = bsNone
      TabOrder = 3
    end
    object edtState: TEdit
      Left = 7
      Top = 238
      Width = 169
      Height = 23
      BorderStyle = bsNone
      TabOrder = 4
    end
    object edtDescription: TEdit
      Left = 7
      Top = 298
      Width = 169
      Height = 23
      BorderStyle = bsNone
      TabOrder = 5
    end
    object btnNew: TButton
      Tag = 1
      Left = 14
      Top = 362
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = btnNewClick
    end
    object btnSave: TButton
      Left = 114
      Top = 362
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 7
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 114
      Top = 393
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 8
      OnClick = btnCancelClick
    end
    object btnEdit: TButton
      Tag = 1
      Left = 14
      Top = 395
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 9
      OnClick = btnEditClick
    end
    object btnDelete: TButton
      Tag = 1
      Left = 14
      Top = 426
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 10
      OnClick = btnDeleteClick
    end
  end
  object DataPersistent: TDataSource
    Left = 912
    Top = 248
  end
  object menuTypeSearch: TPopupMenu
    Left = 808
    Top = 88
    object Nome1: TMenuItem
      Caption = 'Nome'
      OnClick = Nome1Click
    end
    object ipo1: TMenuItem
      Caption = 'Tipo'
      OnClick = ipo1Click
    end
    object Estado1: TMenuItem
      Caption = 'Estado'
      OnClick = Estado1Click
    end
  end
end
