program projectInterface;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UCalculator in 'Services\UCalculator.pas',
  UCalculatorServiceDefault in 'Services\UCalculatorServiceDefault.pas',
  UCalculatorService in 'Services\UCalculatorService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
