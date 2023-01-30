unit UFabricaPrazos;

interface

uses
  UTipoPrazo, UPrazoMensal, UPrazoAnual;

type
  TFabricaPrazos = class(TInterfacedObject, IFactoryMethod)
  private

  public
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;


implementation

{ TFabricaPrazos }

function TFabricaPrazos.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
begin
  if aPrazo = 'Mensal' then
    Result := TPrazoMensal.Create
  else if aPrazo = 'Anual' then
    Result := TPrazoAnual.Create;
end;

end.
