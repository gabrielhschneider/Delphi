program TelaNetflix;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Layout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLayout, Layout);
  Application.Run;
end.
