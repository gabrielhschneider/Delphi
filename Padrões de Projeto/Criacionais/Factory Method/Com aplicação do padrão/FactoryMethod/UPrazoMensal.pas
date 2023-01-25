unit UPrazoMensal;

interface

uses
  UTipoPrazo;

type
  TPRazoMensal = class(TInterfacedObject, ITipoPrazo)
    private
      FValorTotal: Real;
    public
      function ConsultaDescricao    : String;
      function ConsultarJuros       : String;
      function ConsultarProjecao(const aValor: Real;
        const aQtdParcelas: Integer): String;
      function ConsultarTotal       : String;
  end;

implementation

uses
  System.SysUtils, System.Classes;

{ TPRazoMensal }

function TPRazoMensal.ConsultaDescricao: String;
begin
  Result := 'Prazo Mensal para Pagamento';
end;

function TPRazoMensal.ConsultarJuros: String;
begin
  Result := 'Juros de 3,5% simples ao mes' + sLineBreak;
end;

function TPRazoMensal.ConsultarProjecao(const aValor: Real;
  const aQtdParcelas: Integer): String;
var
  xProjecao      : TStringList;
  xContador      : smallint;
  xValorAjustado : Real;
  xDataParcela   : TDateTime;
begin
  xValorAjustado := aValor;
  xDataParcela   := Date;
  xProjecao      := TStringList.Create;
  try
    for xContador := 1 to aQtdParcelas do
    begin
      xValorAjustado := xValorAjustado + (aValor * 0.035);
      xDataParcela   := IncMonth(xDataParcela, 1);

      xProjecao.Add(Format('Parcela %.2d (%s): %m',
        [xContador, DateToStr(xDataParcela), xValorAjustado]));

      FValorTotal := FValorTotal + xValorAjustado;
    end;

    Result := xProjecao.Text;
  finally
    FreeAndNil(xProjecao);
  end;
end;

function TPRazoMensal.ConsultarTotal: String;
begin
  Result := 'Total: ' + FormatFloat('###,##0.00', FValorTotal) + sLineBreak;
end;
end.
