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

{$R *.dfm}

procedure TForm1.btnExibirClick(Sender: TObject);
begin
  //Dados do NootBook
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
  begin
    lblTamanhoTela.Caption := 'Tela de 14 polegadas';
    lblMemoriaRam.Caption  := '3GB DDR3';
  end
  else
  begin
    lblTamanhoTela.Caption := '11,6 polegadas';
    lblMemoriaRam.Caption  := '4GB DDR3'
  end;

  //Dados do Desktop
  if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
  begin
    lblProcessador.Caption := 'Inter Core i5';
    lblTamanhoHd.Caption   := '1 TB';
  end
  else
  begin
    lblProcessador.Caption := 'Inter Core i7';
    lblTamanhoHd.Caption   := '500 TB';
  end;
end;

end.
