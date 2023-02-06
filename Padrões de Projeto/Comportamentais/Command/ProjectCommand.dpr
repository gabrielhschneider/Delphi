program ProjectCommand;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UCommand in 'Pattern\UCommand.pas',
  UConcreteCommand in 'Pattern\UConcreteCommand.pas',
  UInvoker in 'Pattern\UInvoker.pas',
  UReceiver in 'Pattern\UReceiver.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
