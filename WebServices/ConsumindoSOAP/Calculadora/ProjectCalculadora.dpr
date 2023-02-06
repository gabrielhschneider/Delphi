program ProjectCalculadora;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {lblResultad},
  ICalculadora1 in 'ICalculadora1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TlblResultad, lblResultad);
  Application.Run;
end.
