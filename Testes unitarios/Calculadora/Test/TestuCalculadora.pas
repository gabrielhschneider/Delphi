unit TestuCalculadora;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, uCalculadora;

type
  // Test methods for class TCalculadora

  TestTCalculadora = class(TTestCase)
  strict private
    FCalculadora: TCalculadora;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestSomar;
    procedure TestSubtrair;
    procedure TestMultiplicar;
    procedure TestDividir;
  end;

implementation

procedure TestTCalculadora.SetUp;
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TestTCalculadora.TearDown;
begin
  FCalculadora.Free;
  FCalculadora := nil;
end;

procedure TestTCalculadora.TestSomar;
var
  ReturnValue: Double;
  aNum2: Double;
  aNum1: Double;
begin
  aNum1 := 1;
  aNum2 := 2;

  ReturnValue := FCalculadora.Somar(aNum1, aNum2);
  CheckEquals(3, ReturnValue, 'Erro no m?todo somar');

end;

procedure TestTCalculadora.TestSubtrair;
var
  ReturnValue: Double;
  aNum2: Double;
  aNum1: Double;
begin
  aNum1 := 2;
  aNum2 := 1;
  ReturnValue := FCalculadora.Subtrair(aNum1, aNum2);
  CheckEquals(1, ReturnValue, 'Erro no m?todo subtrair');
end;

procedure TestTCalculadora.TestMultiplicar;
var
  ReturnValue: Double;
  aNum2: Double;
  aNum1: Double;
begin
  aNum1 := 2;
  aNum2 := 1;
  ReturnValue := FCalculadora.Multiplicar(aNum1, aNum2);
  CheckEquals(2, ReturnValue, 'Erro no m?todo multiplicar');
end;

procedure TestTCalculadora.TestDividir;
var
  ReturnValue: Double;
  aNum2: Double;
  aNum1: Double;
begin
  aNum1 := 4;
  aNum2 := 2;
  ReturnValue := FCalculadora.Dividir(aNum1, aNum2);
  CheckEquals(2, ReturnValue, 'Erro no m?todo dividir');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTCalculadora.Suite);
end.

