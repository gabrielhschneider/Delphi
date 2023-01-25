program ProjectComAbstract;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UInterfaces in 'Factorys\UInterfaces.pas',
  UDell in 'Factorys\UDell.pas',
  UApple in 'Factorys\UApple.pas',
  UIMac in 'Entities\UIMac.pas',
  UInspirion in 'Entities\UInspirion.pas',
  UMacBook in 'Entities\UMacBook.pas',
  UVostro in 'Entities\UVostro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
