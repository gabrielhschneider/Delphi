unit UCalculatorService;

interface

uses
  UCalculatorServiceDefault, UCalculator;

type
    TTypeCalc = (OpSum, OpSub, OpMult, opDiv);

    TCalculatorService = class
    private
      FNum1, FNum2 : Double;

      FCaculatorService :ICalculatorService;
    public
      function ProcessoCalc(aTypeCalc: TTypeCalc): Double;

      constructor Create(aNum1, aNum2: Double;
        aCalculatorService :ICalculatorService);
    end;

implementation

{ TCalculatorService }

constructor TCalculatorService.Create(aNum1, aNum2: Double;
  aCalculatorService: ICalculatorService);
begin
  Fnum1 := aNum1;
  Fnum2 := aNum2;
  FCaculatorService := aCalculatorService;
end;

function TCalculatorService.ProcessoCalc(aTypeCalc: TTypeCalc): Double;
begin
  case aTypeCalc of
    OpSum : Result := FCaculatorService.Sum(FNum1,FNum2);
    OpSub : Result := FCaculatorService.Subtract(FNum1,FNum2);
    OpMult: Result := FCaculatorService.Multiply(FNum1,FNum2);
    opDiv : Result := FCaculatorService.Divide(FNum1,FNum2);
  end;
end;

end.
