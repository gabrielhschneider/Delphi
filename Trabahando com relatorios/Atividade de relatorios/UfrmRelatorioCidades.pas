unit UfrmRelatorioCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, UdmSekila;

type
  TfrmRelatorioCidades = class(TForm)
    GroupBox1: TGroupBox;
    label1: TLabel;
    btnExportar: TButton;
    btnVisuaizar: TButton;
    DBLookupCidade: TDBLookupComboBox;
    dtsLookUpCidade: TDataSource;
    LookUpCidade: TFDTable;
    QryCidade: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    QryEndereco: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisuaizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelatorioCidades: TfrmRelatorioCidades;

implementation

{$R *.dfm}

procedure TfrmRelatorioCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LookUpCidade.Close;
  Action := caFree;
  QryCidade.Close;

  frmRelatorioCidades := nil;
end;

procedure TfrmRelatorioCidades.FormCreate(Sender: TObject);
begin
  LookUpCidade.Open;
end;

procedure TfrmRelatorioCidades.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Atores.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelatorioCidades.btnVisuaizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelatorioCidades.PrepararFiltro;
begin
  QryCidade.Close;
  QryCidade.ParamByName('CITY').AsString := '';
  if DBLookUpCidade.Text <> EmptyStr then
    QryCidade.ParamByName('CITY').AsString := DBLookUpCidade.Text;
  QryCidade.Open;
end;

end.
