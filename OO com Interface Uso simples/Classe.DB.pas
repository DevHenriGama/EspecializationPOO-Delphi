unit Classe.DB;

interface
  type
    IBDSettings = interface
      ['{D252599A-D8B7-458D-83D7-693873B2F3A9}']
        procedure Exibir;
        function Load : String;
    end;

    TSQLServe = class(TInterfacedObject, IBDSettings)
      procedure Exibir;
      function Load : String;
    end;

    TMySQL = class(TInterfacedObject, IBDSettings)
      procedure Exibir;
      function Load : String;
    end;
implementation

uses
  Vcl.Dialogs;

{ TMySQL }

procedure TMySQL.Exibir;
begin
 ShowMessage('mySQL DB');
end;

function TMySQL.Load: String;
begin
Result := 'Confgurações MYSQL';
end;

{ TSQLServe }

procedure TSQLServe.Exibir;
begin
ShowMessage('SQL SERVER DB');
end;

function TSQLServe.Load: String;
begin
 Result := 'Confgurações SQL SERVER';
end;

end.
