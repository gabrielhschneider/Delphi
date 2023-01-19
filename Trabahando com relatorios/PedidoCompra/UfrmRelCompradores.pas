unit UfrmRelCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TfrmRelCompradores = class(TForm)
    GroupBox1: TGroupBox;
    label1: TLabel;
    btnExportar: TButton;
    btnVisuaizar: TButton;
    edtDescricao: TEdit;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure btnVisuaizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepararFiltro;
  end;

var
  frmRelCompradores: TfrmRelCompradores;

implementation

{$R *.dfm}

procedure TfrmRelCompradores.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Compradores.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelCompradores.btnVisuaizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelCompradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelCompradores := nil;
end;

procedure TfrmRelCompradores.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('NOME').AsString := '';
  if Trim(edtDescricao.Text) <> EmptyStr then
    FDQuery1.ParamByName('NOME').AsString := '%' + Trim(edtDescricao.Text) + '%';
  FDQuery1.Open;
end;

end.
