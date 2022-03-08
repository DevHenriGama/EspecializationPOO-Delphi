unit Classe.Perifericos;
(*As classes Aninhadas são classes criadas dentro de outras classes, assim permitindo Uma melhor
Abstração. Nesse Exemplo Criei um classe do tipo TMaterial para poder definir a Materia Prima
do Periferico , Assim Criei ela como Strict , e , tambem defini suas variavel Stritas para melhor
encapsulamento.*)
interface

  type
    TPeriferico = class
    Strict private
      Type
        TMaterial = class
          Strict private
            const FCarbon : String = 'Carbon';
            const FPlastic : String = 'Plastic';
          public
          function GetMaterialPlastic : String;
          function GetMaterialCarbon : String ;
      end;

       private
          FModelo: String;
          FNome: String;
    FMaterial: String;
          procedure SetModelo(const Value: String);
          procedure SetNome(const Value: String);
    procedure SetMaterial(const Value: String);
      public
          property Nome : String read FNome write SetNome;
          property Modelo : String read FModelo write SetModelo;
          property Material : String read FMaterial write SetMaterial;
          function SelecionarMaterial : TMaterial;
          procedure NovoPerifireco;

    end;

implementation

uses
  System.Classes;

{ TPeriferico }


function TPeriferico.SelecionarMaterial: TMaterial;
begin
  Result := TMaterial.Create;
end;

procedure TPeriferico.NovoPerifireco;
var FileText : TStringList;
begin
  FileText := TStringList.Create;
    with FileText do begin
      Add('Nome: ' + FNome );
      Add('Modelo:' + FModelo);
      Add('Material: ' + FMaterial);
      SaveToFile(FNome+'.txt');
      Free;
    end;
end;

procedure TPeriferico.SetMaterial(const Value: String);
begin
  FMaterial := Value;
end;

procedure TPeriferico.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TPeriferico.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPeriferico.TMaterial }

function TPeriferico.TMaterial.GetMaterialCarbon: String;
begin
 Result := FCarbon;
end;

function TPeriferico.TMaterial.GetMaterialPlastic: String;
begin
 Result := FPlastic;
end;

end.
