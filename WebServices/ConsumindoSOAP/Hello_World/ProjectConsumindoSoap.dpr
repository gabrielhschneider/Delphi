program ProjectConsumindoSoap;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  IHello_World1 in 'IHello_World1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
