unit UCarRental;

interface

uses
  UVeihcle, UInvoice;

type
  TCarRental = class
    private
    FVeihcle: TVeihcle;
    FFinish:  TDateTime;
    FStart:   TDateTime;
    FInvoice: TInvoice;

    procedure SetFinish(const Value: TDateTime);
    procedure SetInvoice(const Value: TInvoice);
    procedure SetStart(const Value: TDateTime);
    procedure SetVeihcle(const Value: TVeihcle);

    function GetStart: TDateTime;
    function getFinish: TDateTime;
    function GetVeihcle : TVeihcle;
    function GetInvoice : TInvoice;

    public
      constructor Create(const aStart, aFinish :TDateTime; aVeihcle: TVeihcle);

      property Start: TDateTime read GetStart write SetStart;
      property Finish: TDateTime read GetFinish write SetFinish;
      property Veihcle: TVeihcle read GetVeihcle write SetVeihcle;
      property Invoice: TInvoice read GetInvoice write SetInvoice;
  end;

implementation

{ TCarRental }

constructor TCarRental.Create(const aStart, aFinish: TDateTime;
  aVeihcle: TVeihcle);
begin
  FStart  := aStart;
  FFinish := aFinish
end;

function TCarRental.getFinish: TDateTime;
begin
  Result := FFinish;
end;

function TCarRental.GetInvoice: TInvoice;
begin
  Result := FInvoice
end;

function TCarRental.GetStart: TDateTime;
begin
  Result := FStart;
end;

function TCarRental.GetVeihcle: TVeihcle;
begin
  Result := FVeihcle;
end;

procedure TCarRental.SetFinish(const Value: TDateTime);
begin
  FFinish := Value;
end;

procedure TCarRental.SetInvoice(const Value: TInvoice);
begin
  FInvoice := Value;
end;

procedure TCarRental.SetStart(const Value: TDateTime);
begin
  FStart := Value;
end;

procedure TCarRental.SetVeihcle(const Value: TVeihcle);
begin
  FVeihcle := Value;
end;

end.
