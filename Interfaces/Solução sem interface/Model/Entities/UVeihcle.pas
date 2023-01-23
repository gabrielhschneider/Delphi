unit UVeihcle;

interface

type
  TVeihcle = class
    private
      FModel: String;

    function  GetModel: String;
    procedure SetModel(const Value: String);

    public
      constructor Create(const aModel: String);
      property Model: String read FModel write SetModel;
  end;

implementation

{ TVehicle }

constructor TVeihcle.Create(const aModel: String);
begin
  FModel := aModel;
end;

function TVeihcle.GetModel: String;
begin
  Result := FModel;
end;

procedure TVeihcle.SetModel(const Value: String);
begin
  FModel := Value;
end;

end.

