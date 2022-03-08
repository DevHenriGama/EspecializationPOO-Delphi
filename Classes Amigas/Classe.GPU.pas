unit Classe.GPU;

interface
  type
    TGPUChip = class
      Strict Private //Usamos essa diretiz para Limitar a visualização da nossas variaveis .
        const FQuadroCHIP : String = 'QUADRO2X00';
        const FR9280 : String = 'F245X1.2';
        const RTX2060 : String = 'NVIDEA2X96';
      public
        function NVideaQuadroChip : String;
        function R9280xChip : String;
        function RTX2060Chip : String;
    end;

  type
   TGPUCard = class
     strict private
      FMemory: Integer;
      FModel: String;
      FFan: String;
      procedure SetFan(const Value: String);
      procedure SetMemory(const Value: Integer);
      procedure SetModel(const Value: String);
     public
      property Model : String read FModel write SetModel;
      property Fan : String read FFan write SetFan;
      property Memory : Integer read FMemory write SetMemory;
   end;

   TProductGRPU = class(TGPUCard)
     public
     function RTX2060 : TGPUCard;
     function R930 : TGPUCard;
     function NVQuadro : TGPUCard;
   end;

implementation

{ TGPUChip }

function TGPUChip.NVideaQuadroChip: String;
begin
 Result := FQuadroCHIP;
end;

function TGPUChip.R9280xChip: String;
begin
Result := FR9280;
end;

function TGPUChip.RTX2060Chip: String;
begin
Result := RTX2060;
end;

{ TGPUCard }

procedure TGPUCard.SetFan(const Value: String);
begin
  FFan := Value;
end;

procedure TGPUCard.SetMemory(const Value: Integer);
begin
  FMemory := Value;
end;

procedure TGPUCard.SetModel(const Value: String);
begin
  FModel := Value;
end;

{ TProductGRPU }

function TProductGRPU.NVQuadro: TGPUCard;
begin
 Model := 'NVQUADRO';
 Fan := 'TERMALTEK';
  Memory := 4;
  Result := Self;
end;

function TProductGRPU.R930: TGPUCard;
begin
  Model := 'R930';
 Fan := 'corsair';
  Memory := 6;
  Result := Self;
end;

function TProductGRPU.RTX2060: TGPUCard;
begin
   Model := 'RTX2060';
 Fan := 'NZERO';
  Memory := 12;
  Result := Self;
end;

end.
