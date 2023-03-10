unit UConcreteObserver_Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UObserver, UNotificacao;

type
  TfraLog = class(TFrame, IObserver)
    Memo1: TMemo;
    lbl: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TFrame1 }

procedure TfraLog.Atualizar(aNotificacao: TNotificacao);
var
  xTextoLog: String;
begin
  xTextoLog := Format('Uma opera??o de %s de %.2f foi adicionada',
    [aNotificacao.Operacao, aNotificacao.Valor]);

  memo1.lines.Add(xTextoLog);
end;

end.
