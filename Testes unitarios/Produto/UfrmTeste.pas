unit UfrmTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TedtQuantidade = class(TForm)
    btnCalcular: TButton;
    edtQuantidade: TEdit;
    edtPrecoUnitario: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblResultado: TLabel;
    Label6: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  edtQuantidade: TedtQuantidade;

implementation

{$R *.dfm}

uses UProduto, System.SysUtils;

procedure TedtQuantidade.btnCalcularClick(Sender: TObject);
var
  xProduto : TProduto;
begin
  try
    xProduto := TProduto.Create;
    xProduto.NomeProduto := 'Agua';
    xProduto.Quantidade  := StrToInt(edtQuantidade.Text);
    xProduto.PrecoUnitario := StrToFloat(edtPrecoUnitario.Text);
    lblResultado.Caption := FloatToStr(xProduto.RetornarValorTotal(
    xProduto.Quantidade, xProduto.PrecoUnitario));
  finally
    FreeAndNil(xProduto);
end;


end;

end.
