unit UEUATaxService;

interface

uses
  UTaxService;

type
  TEUATaxService = class(TInterfacedObject, ITaxService)
    private

    public
      function Tax(const aMount: Double): Double;
  end;

implementation

{ TBrazilTaxService }

function TEUATaxService.Tax(const aMount: Double): Double;
begin
  if (aMount <= 100) then
    Result := aMount * 0.3
  else
    Result := aMount * 0.20;
end;

end.
