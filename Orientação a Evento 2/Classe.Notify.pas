unit Classe.Notify;

interface
    uses System.Classes;
  type
    TNewNotify = procedure (Sender : TObject) of object;

    TNotify = class
  private
    FExeNotify: TNewNotify;
    FMessageShow: String;
    procedure SetExeNotify(const Value: TNewNotify);
       procedure ExEvent;
    procedure SetNewno(const Value: String);
    public
      property MessageShow : String read FMessageShow write SetNewno;
      property ExeNotify : TNewNotify  read FExeNotify write SetExeNotify;
      procedure OnNotification;
    end;

implementation

{ TNotify }

procedure TNotify.ExEvent;
begin
 if Assigned(ExeNotify) then
  ExeNotify(Self);
end;

procedure TNotify.OnNotification;
begin
 MessageShow := 'Bem Vindo ao Sistema';
 ExEvent;
end;


procedure TNotify.SetExeNotify(const Value: TNewNotify);
begin
  FExeNotify := Value;
end;

procedure TNotify.SetNewno(const Value: String);
begin
  FMessageShow := Value;
end;

end.
