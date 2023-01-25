unit UTipoPrazo;

interface

type
  ITipoPrazo = interface
    ['{F87483F9-223A-4F7F-94E2-E6B7188CF864}']
    function ConsultaDescricao    : String;
    function ConsultarJuros       : String;
    function ConsultarProjecao(const aValor: Real;
      const aQtdParcelas: Integer): String;
    function ConsultarTotal       : String;
  end;

    IFactoryMethod = interface
      ['{3B95121A-D9A3-4537-AA6E-5A5BBBE5BC44}']
      function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
    end;

implementation

end.
