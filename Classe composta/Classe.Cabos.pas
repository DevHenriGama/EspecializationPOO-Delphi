unit Classe.Cabos;
{* A composi��o de Classe Acontece quando ultilizamos outras classe para montar outra
Exemplo bem simple , mas poderiamos evolui-lo e colocar fun��o de busca em um DB paran
Buscar outros Estdos de objetos *}
interface

uses
  Classe.Item,   Classe.State;

type
  TCabos = class(TItem)
    private
        NewState : TStates;
    public
      constructor Create;
      destructor Destroy ;override;
      procedure AddNewCable;
  end;

implementation

uses
  Vcl.Dialogs;


{ TCabos }

procedure TCabos.AddNewCable;
begin
 with Self do begin
   ID := 1;
   ItemName := 'VGA Cable';
   State := NewState.Good;
   ContainerNumber := 1;
 end;
  ShowMessage('New Cable Added');
 end;

constructor TCabos.Create;
begin
  NewState := TStates.Create;
end;

destructor TCabos.Destroy;
begin
  inherited;
  NewState.Free;
end;



end.
