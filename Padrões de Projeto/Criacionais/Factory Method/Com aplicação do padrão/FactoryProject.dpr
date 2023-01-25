program FactoryProject;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UTipoPrazo in 'FactoryMethod\UTipoPrazo.pas',
  UPrazoMensal in 'FactoryMethod\UPrazoMensal.pas',
  UPrazoAnual in 'FactoryMethod\UPrazoAnual.pas',
  UFabricaPrazos in 'FactoryMethod\UFabricaPrazos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
