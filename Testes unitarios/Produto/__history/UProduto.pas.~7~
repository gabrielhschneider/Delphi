unit UProduto;

interface

type
  TProduto = Class
    private
      FNomeProduto   : String;
      FQuantidade    : Integer;
      FPrecoUnitario : Double;
      FValorTotal    : Double;

      procedure SetNomeProduto(const Value: String);
      procedure SetPrecoUnitario(const Value: Double);
      procedure SetQuantidade(const Value: Integer);
      procedure SetValorTotal(const Value: Double);

      function GetNomeProduto: String;
      function GetQuantidade: Integer;
      function GetPrecoUnitario: Double;
      function GetValorTotal: Double;

    public
      property NomeProduto   :String read FNomeProduto write SetNomeProduto;
      property Quantidade    :Integer read FQuantidade write SetQuantidade;
      property PrecoUnitario :Double read FPrecoUnitario write SetPrecoUnitario;
      property ValorTotal    :Double read FValorTotal write SetValorTotal;
      function RetornarValorTotal(): Double;
 End;

implementation

{ TProduto }

//Metodos Get
function TProduto.GetNomeProduto: String;
begin
  Result := FNomeProduto;
end;

function TProduto.GetPrecoUnitario: Double;
begin
  Result := FPrecoUnitario;
end;

function TProduto.GetQuantidade: Integer;
begin
Result := FQuantidade;
end;

function TProduto.GetValorTotal: Double;
begin
Result := FValorTotal;
end;

//Metodos Set
procedure TProduto.SetNomeProduto(const Value: String);
begin
  FNomeProduto := Value;
end;

procedure TProduto.SetPrecoUnitario(const Value: Double);
begin
  FPrecoUnitario := Value;
end;

procedure TProduto.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
end;

procedure TProduto.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
end;

//Função para Retornar o valor Total
function TProduto.RetornarValorTotal(): Double;
begin
  //Calculando valor Total sem Descontos
  ValorTotal := Quantidade * PrecoUnitario;

  //Calculando Desconto
  if Quantidade <= 10 then
  begin
    Result := ValorTotal
  end

  //10% de Desconto
  else  if (Quantidade > 10) and (Quantidade <= 50) then
  begin
    Result := (ValorTotal - (ValorTotal * 0.10))
  end

  //25% de Desconto
  else if Quantidade > 50 then
  begin
    Result := (ValorTotal - (ValorTotal * 0.25));
  end;
end;

end.
