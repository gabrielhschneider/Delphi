program DevsBets_frontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmLogin in 'model\views\UfrmLogin.pas' {frmLogin},
  UfrmLogin.Registry in 'model\views\UfrmLogin.Registry.pas' {frmLoginRegistry},
  UfrmLogin.Authentication in 'model\views\UfrmLogin.Authentication.pas' {frmLoginAuthentication},
  UEntity.Bets in '..\backend\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\backend\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\backend\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\backend\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\backend\model\entities\UEntity.Users.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
