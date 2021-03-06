unit Classe.Notify;

interface

  type
    TNewNotify = procedure(Value : String) of Object;

    TNotify = class
  private
    FNotify: TNewNotify;
    procedure SetNotify(const Value: TNewNotify);

  public
    property Notify : TNewNotify read FNotify write SetNotify;
    procedure Notificar;

    end;

implementation

{ TNotify }

procedure TNotify.Notificar;
begin
Notify('Ol? Bem vindo Ao Sistema');
end;

procedure TNotify.SetNotify(const Value: TNewNotify);
begin
  FNotify := Value;
  end;

end.
