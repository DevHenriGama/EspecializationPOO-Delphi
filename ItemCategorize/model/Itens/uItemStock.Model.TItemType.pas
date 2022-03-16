unit uItemStock.Model.TItemType;

interface

  type

    TItemType = class

    private

    public
      Class function New : TItemType;
       function GetCPU : String;

    end;

implementation

{ TItemType }

function TItemType.GetCPU: String;
begin
Result := 'AMD';
end;

class function TItemType.New: TItemType;
begin

end;

end.
