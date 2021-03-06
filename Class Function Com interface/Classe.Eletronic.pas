unit Classe.Eletronic;

interface

  type
    IEletronic = Interface
      ['{717BB24B-6C23-4C4E-9B3E-9E782E25AEAD}']
             procedure AddEletronic;
    End;

    TEletronic = class(TInterfacedObject, IEletronic)
      private

      public
      constructor Create;
        class function New : IEletronic;
        procedure AddEletronic;
    end;
implementation

uses
  Vcl.Dialogs;

{ TEletronic }

 procedure TEletronic.AddEletronic;
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
