program Project_Interface;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UVeihcle in 'Model\Entities\UVeihcle.pas',
  UCarRental in 'Model\Entities\UCarRental.pas',
  UInvoice in 'Model\Entities\UInvoice.pas',
  UBrazilTaxService in 'Model\Services\UBrazilTaxService.pas',
  URentalServices in 'Model\Services\URentalServices.pas';

var
  xCarModel: String;
  xStrStart, xStrFinish: String;
  xStart, xFinish: TDateTime;
  xCarRental: TCarRental;
  xStrPricePerHour, xStrPricePerDay: Double;
  xRentalService: TRentalService;
begin
  try
    Writeln('Entre com os dados do alugel:');
    Writeln('Modelo do Carro:');
    Readln(xCarModel);

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
