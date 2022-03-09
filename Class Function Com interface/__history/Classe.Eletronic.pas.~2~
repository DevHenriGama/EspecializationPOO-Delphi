unit Classe.Eletronic;

interface

  type
    IEletronic = Interface
      ['{717BB24B-6C23-4C4E-9B3E-9E782E25AEAD}']

    End;

    TEletronic = class(TInterfacedObject, IEletronic)
      private

      public
      constructor Create;
        class function New : IEletronic;
        class procedure AddEletronic;
    end;
implementation

uses
  Vcl.Dialogs;

{ TEletronic }

class procedure TEletronic.AddEletronic;
begin
 Showmessage('New Eletronic Added');
end;

constructor TEletronic.Create;
begin

end;

class function TEletronic.New: IEletronic;
begin
Result := TEletronic.Create;
end;

end.
