object dmDados: TdmDados
  Height = 489
  Width = 631
  PixelsPerInch = 96
  object Connection: TFDConnection
    Params.Strings = (
      
        'Database=F:\Progama'#231#227'o\Projects\Delphi\Estudos\EspecializationPO' +
        'O-Delphi\ItemStock Project\dao\database\database.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 160
  end
  object queryDataPersistent: TFDQuery
    Connection = Connection
    Left = 176
    Top = 240
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 152
    Top = 48
  end
end
