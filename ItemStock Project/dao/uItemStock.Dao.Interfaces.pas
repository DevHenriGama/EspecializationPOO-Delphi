unit uItemStock.Dao.Interfaces;

interface

uses
  FireDAC.Comp.Client;

  type
  IDaoInstruction = interface
    ['{9346DA1C-07D5-4528-AA77-E9B53CA0405D}']
     procedure InsertItem( Connection : TFDConnection );
  end;

  iConnection = interface
    ['{C1AEC28A-C47B-4AF6-B783-D83AA71262D5}']
    function fdConnection : TFDConnection;
  end;

implementation

end.
