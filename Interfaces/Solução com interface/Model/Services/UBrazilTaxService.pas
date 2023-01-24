unit UBrazilTaxService;

interface

uses
  UTaxService;

type
  TBrazilTaxService = class(TInterfacedObject, ITaxService)
    private

    public
      function Tax(const aMount: Double): Double;
  end;

implementation

{ TBrazilTaxService }

function TBrazilTaxService.Tax(const aMount: Double): Double;
begin
  if (aMount <= 100) then
    Result := aMount * 0.2
  else
    Result := aMount * 0.15;
end;

end.
