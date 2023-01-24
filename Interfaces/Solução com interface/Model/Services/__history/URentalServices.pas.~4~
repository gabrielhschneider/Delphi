unit URentalServices;

interface

uses
  UBrazilTaxService, UCarRental;

type
  TRentalService = class
    private
     FPricePerDay: Double;
     FPricePerHour: Double;
     FTaxService : TBrazilTaxService;

    public
      constructor Create(const aPricePerDay, aPricePerHour: Double;
        aTaxService: TBrazilTaxService);
      destructor Destroy; override;

      procedure ProcessInvoice(aCarRental: TCarRental);
  end;

implementation

{ TRentalServices }

uses
  Math, DateUtils, UInvoice, System.SysUtils;

constructor TRentalService.Create(const aPricePerDay, aPricePerHour: Double;
  aTaxService: TBrazilTaxService);
begin
  FPricePerDay := aPricePerDay;
  FPricePerHour := aPricePerHour;
  FTaxService := aTaxService;
end;

destructor TRentalService.Destroy;
begin
  FreeAndNil(FTaxService);
  inherited;
end;

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
  xHours: Double;
  xBasicPayment: Double;
  xTax : Double;
begin
  xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start)
  / 1000 / 60 / 60;

  if xHours <= 12 then
    xBasicPayment := FPricePerHour * Math.Ceil(xHours)

  else
    xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

    xTax := FTaxService.Tax(xBasicPayment);

    aCarRental.Invoice := TInvoice.Create(xBasicPayment, xTax);

end;

end.
