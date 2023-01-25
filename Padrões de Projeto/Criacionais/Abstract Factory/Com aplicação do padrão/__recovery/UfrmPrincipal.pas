unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cmbMarca: TComboBox;
    btnExibir: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblTamanhoTela: TLabel;
    lblMemoriaRam: TLabel;
    lblProcessador: TLabel;
    lblTamanhoHD: TLabel;
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UInterfaces, UDell, UApple;

{$R *.dfm}

procedure TForm1.btnExibirClick(Sender: TObject);
var
  xMarca   : IFactoryMarca;
  xNoteBook: INotebook;
  xDesktop : IDesktop;
begin
  //Instancia e marca -> unico IF da aplicação
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
    xMarca := TDell.Create
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
    xMarca := TApple.Create;

  //Consulta (cosntroi) os objetos
  xNoteBook := xMarca.ConsultarNotebook;
  xDesktop := xMarca.ConsultarDesktop;

  //Exibe os dados
  lblTamanhoTela.Caption := xNoteBook.BuscarTamanhoTela;
  lblMemoriaRam.Caption  := xNoteBook.BuscarMemoriaRam;

  lblProcessador.Caption := xDesktop.BuscarNomeProcessador;
  lblTamanhoHD.Caption   := xDesktop.BuscarTamanhoHD;

  //Detalhe importante como usamos interface para as variaveis
  //nao precisamos destruir seus objetos. O delphi faz isso por nos.
end;

end.
