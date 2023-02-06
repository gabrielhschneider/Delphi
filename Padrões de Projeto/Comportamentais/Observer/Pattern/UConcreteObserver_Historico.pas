unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UObserver, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, UNotificacao;

type
  TfraHistorico = class(TFrame, IObserver)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Total: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

procedure  TfraHistorico.Atualizar(aNotificacao: TNotificacao);
begin
  if aNotificacao.Operacao = 'Crédito' then
    Exit;

  //Encontra a categoria de débito para somar o valor
  if ClientDataSet1.Locate('Categoria', aNotificacao.Categoria, []) then
  begin
    ClientDataSet1.Edit;
    ClientDataSet1.FieldByName('Total').AsFloat :=
      ClientDataSet1.FieldByName('Total').asFloat + aNotificacao.Valor;
    ClientDataSet1.Post;

    Exit;
  end;

  //Cadastra a categoria caso ela ainda nao exista no agrupamento
  ClientDataSet1.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);

end;

end.
