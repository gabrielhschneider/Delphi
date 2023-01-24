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
  xStrPricePerHour, xStrPricePerDay: String;
  xPricePerHour, xPricePerDay : Double;
  xRentalService: TRentalService;
begin
  try
    Writeln('Entre com os dados do alugel:');
    Writeln('Modelo do Carro:');
    Readln(xCarModel);

    Writeln('Retirada (dd/mm/yyyy hh:mm):');
    Readln(xStrStart);
    xStart := StrToDateTime(xStrStart);

    Writeln('Retorno (dd/mm/yyyy hh:mm):');
    Readln(xStrFinish);
    xFinish := StrToDateTime(xStrFinish);

    xCarRental := TCarRental.Create(xStart, xFinish, TVeihcle.Create(xCarModel));

    Writeln('Entre com o preço por hora:');
    Readln(xStrPricePerHour);
    xPricePerHour := StrToFloatDef(xStrPricePerHour,0);

    Writeln('Entre com o preço por dia:');
    Readln(xStrPricePerDay);
    xPricePerDay := StrToFloatDef(xStrPricePerDay,0);

    xRentalService := TRentalService.Create(xPricePerDay, xPricePerHour,
      TBrazilTaxService.Create);
    xRentalService.ProcessInvoice(xCarRental);

    Writeln('FATURA:');
    Writeln('Pagamento básico...', xCarRental.Invoice.BasicPayment.ToString);
    Writeln('Imposto............', xCarRental.Invoice.Tax.ToString);
    Writeln('Total..............', xCarRental.Invoice.TotalPayment);

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
