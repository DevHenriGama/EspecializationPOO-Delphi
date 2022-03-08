unit Classe.State;

interface
  type

    TStates = Class
      private
        const _GOOD : String = 'Good';
        const _BAD : String = 'Bad';
        const _NDF : String = 'Not Defined';
      public
        function Good : String;
        function Bad : String;
        function NotDefined  :String;
    End;

implementation

{ TStates }

function TStates.Bad: String;
begin
 Result := _BAD;
end;

function TStates.Good: String;
begin
 Result := _GOOD;
end;

function TStates.NotDefined: String;
begin
 Result := _NDF;
end;

end.
