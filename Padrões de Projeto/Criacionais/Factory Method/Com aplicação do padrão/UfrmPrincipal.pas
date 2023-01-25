unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtValor: TEdit;
    edtQtdParcelas: TEdit;
    cmbPrazoPagamento: TComboBox;
    btnGerar: TButton;
    mmRegistro: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UFabricaPrazos, UTipoPrazo;

{$R *.dfm}



procedure TForm1.btnGerarClick(Sender: TObject);
var
  xFabrica     : IFactoryMethod;
  xTipoPrazo   : ITipoPrazo;

  xPrazo       : String;
  xQtdParcelas : Integer;
  xValorAtual  : Real;
begin
  //Definindo os parametros
  xPrazo := cmbPrazoPagamento.Text;
  xQtdParcelas := StrToInt(edtQtdParcelas.Text);
  xValorAtual := StrToFloat(edtValor.Text);

  //Instanciando as interfaces
  xFabrica := TFabricaPrazos.Create;
  xTipoPrazo := xFabrica.ConsultarPrazo(xPrazo);

  //Registrando para o usuario
  mmRegistro.Lines.Add(xTipoPrazo.ConsultaDescricao);
  mmRegistro.Lines.Add(xTipoPrazo.ConsultarJuros);
  mmRegistro.Lines.Add(xTipoPrazo.ConsultarProjecao(xValorAtual, xQtdParcelas));
  mmRegistro.Lines.Add(xTipoPrazo.ConsultarTotal);

end;

end.
