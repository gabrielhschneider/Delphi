program ProjectOberver;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UObserver in 'Pattern\UObserver.pas',
  UConcreteObserver_Log in 'Pattern\UConcreteObserver_Log.pas' {fraLog: TFrame},
  UConcreteObserver_Historico in 'Pattern\UConcreteObserver_Historico.pas' {fraHistorico: TFrame},
  UConcreteObserver_Saldo in 'Pattern\UConcreteObserver_Saldo.pas' {fraSaldo: TFrame},
  UConcreteSubject in 'Pattern\UConcreteSubject.pas' {fraCadastro: TFrame},
  USubject in 'Pattern\USubject.pas',
  UNotificacao in 'Pattern\UNotificacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
