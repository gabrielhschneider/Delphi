unit UInvoice;

interface

type
  TInvoice = class
    private
      FBasicPayment: Double;
      FTax : Double;

    procedure SetBasicPayment(const Value: Double);
    procedure SetTax(const Value: Double);
    function getBasicPayment: Double;
    function GetTax: Double;


    public
      constructor Create(aBasicPayment, aTax: Double);

      function TotalPayment: Double;

      property BasicPayment: Double read GetBasicPayment write SetBasicPayment;
      property Tax : Double  read GetTax write SetTax;

  end;

implementation

{ TInvoice }

constructor TInvoice.Create(aBasicPayment, aTax: Double);
begin
  FBasicPayment := aBasicPayment;
  FTax := aTax;
end;

function TInvoice.getBasicPayment: Double;
begin
  Result := FBasicPayment
end;

function TInvoice.GetTax: Double;
begin
  Result := FTax;
end;

procedure TInvoice.SetBasicPayment(const Value: Double);
begin
  FBasicPayment := Value;
end;

procedure TInvoice.SetTax(const Value: Double);
begin
  FTax := Value;
end;

function TInvoice.TotalPayment: Double;
begin
  Result := GetBasicPayment + GetTax;
end;

end.
