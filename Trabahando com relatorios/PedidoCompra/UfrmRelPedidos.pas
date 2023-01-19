unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UdmPedidos, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TfrmRelPedidos = class(TForm)
    GroupBox1: TGroupBox;
    label1: TLabel;
    btnExportar: TButton;
    btnVisuaizar: TButton;
    DBLookupComprador: TDBLookupComboBox;
    DBLookupFornecedor: TDBLookupComboBox;
    Label2: TLabel;
    dtsLookUpComprador: TDataSource;
    LookUpComprador: TFDTable;
    dtsLookUpFornecedor: TDataSource;
    LookUpFornecedor: TFDTable;
    QryPedido: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    QryItemCompra: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisuaizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

procedure TfrmRelPedidos.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
  ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Pedidos.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelPedidos.btnVisuaizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  QryPedido.Close;
  //QryItemCompra.Close;

  LookUpComprador.Close;
  LookUpFornecedor.Close;
end;

procedure TfrmRelPedidos.FormCreate(Sender: TObject);
begin
  LookUpComprador.Open;
  LookUpFornecedor.Open;
end;

procedure TfrmRelPedidos.PrepararFiltro;
begin
  QryPedido.Close;
  QryPedido.ParamByName('IDCOMPRADOR').AsInteger  := 0;
  QryPedido.ParamByName('IDFORNECEDOR').AsInteger := 0;

  if DBLookUpComprador.Text <> EmptyStr then
    QryPedido.ParamByName('IDCOMPRADOR').AsInteger  :=
      LookUpComprador.FieldByName('ID').AsInteger;

  if DBLookUpFornecedor.Text <> EmptyStr then
    QryPedido.ParamByName('IDFORNECEDOR').AsInteger :=
      LookUpFornecedor.FieldByName('ID').AsInteger;

end;

end.
