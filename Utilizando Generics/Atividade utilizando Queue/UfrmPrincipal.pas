unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Generics.Collections, UPaciente, UControladora;

type
  TfrmPrincipal = class(TForm)
    Panel_Cadastro: TPanel;
    Panel_ControleFila: TPanel;
    Panel_ImgLogo: TPanel;
    Img_Logo: TImage;
    img_LogoPerfil: TImage;
    edtCPF: TEdit;
    edtEspecialidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblNomeAtual: TLabel;
    lblCpfAtual: TLabel;
    lblNomeAnterior: TLabel;
    lblCpfAnterior: TLabel;
    pnGravar: TPanel;
    pnSair: TPanel;
    pnProximo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure pnGravarClick(Sender: TObject);
    procedure pnProximoClick(Sender: TObject);
    procedure pnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    gControladora : TControladora;
    procedure Cadastrar_Paciente;
    procedure Proximo_Paciente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

//CLOSE
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(gControladora);
end;

//CREATE
procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  gControladora := TControladora.Create;
end;

//BOTÃO PROXIMO
procedure TfrmPrincipal.pnProximoClick(Sender: TObject);
begin
  Proximo_Paciente;
end;

//BOTÃO GRAVAR
procedure TfrmPrincipal.pnGravarClick(Sender: TObject);
begin
    Cadastrar_Paciente;
end;

//BOTÃO SAIR
procedure TfrmPrincipal.pnSairClick(Sender: TObject);
begin
  frmPrincipal.Close;
end;

//CADASTRAR PACIENTE
procedure TfrmPrincipal.Cadastrar_Paciente;
var
  xPaciente : TPaciente;
begin
  //Instanciando um Paciente
  xPaciente := TPaciente.Create;
  xPaciente.Nome := edtNome.Text;
  xPaciente.CPF := edtCPF.Text;
  xPaciente.Especialidade := edtEspecialidade.Text;

  //Cadastrando na Lista
  gControladora.Adicionar_Paciente(xPaciente);
end;

//PROXIMO PACIENTE
procedure TfrmPrincipal.Proximo_Paciente;
var
  xPaciente : TPaciente;
begin

  //Verificando se existe alguem na fila
  if gControladora.Verificar_Fila then
  begin
    //Verificando e nao alterando o anterior
    if lblNomeAtual.Caption = 'Não á pessoas na fila' then
    begin
          //Instanciando as Classes
    xPaciente := TPaciente.Create;

    //Buscando o proximo paciente
    xPaciente := gControladora.Proximo;

    //Alterando o Atual
    lblNomeAtual.Caption := xPaciente.Nome;
    lblCpfAtual.Caption := xPaciente.CPF;
    end

    //Verificando e alterando o anterior
    else
    begin
    lblNomeAnterior.Caption := lblNomeAtual.Caption;
    lblCpfAnterior.Caption := lblCpfAtual.Caption;

    //Instanciando as Classes
    xPaciente := TPaciente.Create;

    //Buscando o proximo paciente
    xPaciente := gControladora.Proximo;

    //Alterando o Atual
    lblNomeAtual.Caption := xPaciente.Nome;
    lblCpfAtual.Caption := xPaciente.CPF;
  end;

  end

  else
  begin
    if lblNomeAtual.Caption <> 'Não á pessoas na fila' then
    begin
      lblNomeAnterior.Caption := lblNomeAtual.Caption;
      lblCpfAnterior.Caption := lblCpfAtual.Caption;

      lblNomeAtual.Caption := 'Não á pessoas na fila';
      lblCpfAtual.Caption  := ' ';
    end;

  end;

end;

end.
