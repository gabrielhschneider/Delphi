program AdapterProject;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UWebServiceCorreios in 'Adapter\UWebServiceCorreios.pas',
  UInterfaceViaCEP in 'Adapter\UInterfaceViaCEP.pas',
  UTarget in 'Adapter\UTarget.pas',
  UWebServiceViaCEP in 'Adapter\UWebServiceViaCEP.pas',
  UAdaptee in 'Adapter\UAdaptee.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
