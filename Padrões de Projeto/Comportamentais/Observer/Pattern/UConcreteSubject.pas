unit UConcreteSubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, USubject, System.Generics.Collections,
  UObserver, UNotificacao, Vcl.ExtCtrls;

type
  TfraCadastro = class(TFrame, ISubject)
    btnGravar: TButton;
    cmbOperacao: TComboBox;
    cmbCategoria: TComboBox;
    edtValor: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Valor: TCurrencyField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ClientDataSet1Operacao: TStringField;
    Shape1: TShape;
    procedure btnGravarClick(Sender: TObject);
    procedure cmbOperacaoChange(Sender: TObject);
  private
    { Private declarations }
    FObserver: TList<IObserver>;
    procedure Notificar;
    procedure CarregarCategoria;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;

    procedure AdicionarObserver(aObserver: IObserver);
    procedure RemoveObserver(aObserver: IObserver);
  end;

implementation

{$R *.dfm}

procedure TfraCadastro.AdicionarObserver(aObserver: IObserver);
begin
  FObserver.Add(aObserver);
end;

procedure TfraCadastro.btnGravarClick(Sender: TObject);
begin
  //Adiciona um registro no DataSet conforme alores informados pelo usuario
  ClientDataSet1.AppendRecord([cmbOperacao.Text, cmbCategoria.Text,
    StrToFloatDef(edtValor.Text, 0)]);

  //Chama o método de notificação
  Self.Notificar;
end;

procedure TfraCadastro.CarregarCategoria;
begin
  cmbCategoria.Clear;

  case cmbOperacao.ItemIndex of
    0:
    begin
      cmbCategoria.Items.Add('Salario');
      cmbCategoria.Items.Add('13°');
      cmbCategoria.Items.Add('Restituição do IR');
      cmbCategoria.Items.Add('Freelancing');
    end;
    1:
    begin
      cmbCategoria.Items.Add('Aluguel');
      cmbCategoria.Items.Add('Supermercado');
      cmbCategoria.Items.Add('Farmacia');
      cmbCategoria.Items.Add('Escola');
      cmbCategoria.Items.Add('Combustivel');
      cmbCategoria.Items.Add('Alimentação');
      cmbCategoria.Items.Add('Roupas');
      cmbCategoria.Items.Add('Viagens');
    end;
  end;
end;

procedure TfraCadastro.cmbOperacaoChange(Sender: TObject);
begin
  Self.CarregarCategoria;
end;

constructor TfraCadastro.Create(AOwner: TComponent);
begin
  inherited;
  FObserver := TList<IObserver>.Create
end;

destructor TfraCadastro.destroy;
begin
  FreeAndNil(FObserver);
  inherited;
end;

procedure TfraCadastro.Notificar;
var
  xNotificacao: TNotificacao;
  xObserver   : IObserver;
begin
  xNotificacao.Operacao  := ClientDataSet1.FieldByName('Operacao').AsString;
  xNotificacao.Categoria := ClientDataSet1.FieldByName('Categoria').AsString;
  xNotificacao.Valor     := ClientDataSet1.FieldByName('Valor').AsFloat;

  for xObserver in FObserver do
    xObserver.Atualizar(xNotificacao);
end;

procedure TfraCadastro.RemoveObserver(aObserver: IObserver);
begin

end;

end.
