unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtCEP: TEdit;
    GroupBox1: TGroupBox;
    pnConsultarCorreios: TPanel;
    pnConsultarViaCep: TPanel;
    Label1: TLabel;
    lblLogradouro: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure pnConsultarViaCepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UWebServiceViaCEP, UTarget, UInterfaceViaCEP;

{$R *.dfm}

procedure TForm1.pnConsultarViaCepClick(Sender: TObject);
var
  xWebServiceViaCEP: IWebServiceViaCEP;
  xComunicador     : TComunicador;
  xRetorno         : TStringList;
begin
  //Instancia o objeto da classe de consulta
  xWebServiceViaCEP := TWebServiceViaCEP.Create;

  //Instancia o comunicador (target), injetado o objeto na consulta
  xComunicador := TComunicador.Create(xWebServiceViaCEP);

  xRetorno := TStringList.Create;
  try
    //O Target consulta o endereco (utilizando o objeto injetado) e retorna os dados
    xRetorno := xComunicador.ConsultarEndereco(edtCEP.Text);

    lblLogradouro.Caption := xRetorno.Values['Logradouro'];
    lblBairro.Caption     := xRetorno.Values['Bairro'];
    lblCidade.Caption     := xRetorno.Values['Cidade'];
  finally
    FreeAndNil(xRetorno);
    FreeAndNil(xComunicador);

  end;

end;

end.
