unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfmrPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    rect_valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblTituloProduto: TLabel;
    lblCentavoProduto: TLabel;
    lblReaisProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    Label2: TLabel;
    lytParcelas: TLayout;
    lblTituloVezes: TLabel;
    lblCentavosParcelas: TLabel;
    linhaEnvio: TLine;
    lblReaisParcelas: TLabel;
    lyt_Botao_Compra: TLayout;
    Rectangle1: TRectangle;
    btn_Comprar: TSpeedButton;
    lyt_compra_ok: TLayout;
    imgOk: TImage;
    lyt_loading_compra: TLayout;
    rect_fundo: TRectangle;
    Label1: TLabel;
    rect_barra: TRectangle;
    rect_fundo_branco_top: TRectangle;
    lyt_detalhes: TLayout;
    rect_fundo_branco_bottom: TRectangle;
    Circle1: TCircle;
    lblProduto: TLabel;
    lblQuantidade: TLabel;
    CirculoEndereco: TCircle;
    lblComprador: TLabel;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    linhaProduto: TLine;
    Line2: TLine;
    procedure btn_ComprarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLoop : String;

    procedure LoadingCompra(aInd: Boolean);
    procedure Comprar_SW;
  public
    { Public declarations }
  end;

var
  fmrPrincipal: TfmrPrincipal;

implementation

{$R *.fmx}

{ TfmrPrincipal }

procedure TfmrPrincipal.LoadingCompra(aInd: Boolean);
begin
  rect_fundo_branco_top.Visible := aInd;
  rect_fundo_branco_bottom.Visible := aInd;

  lyt_botao_compra.Visible := not aInd;
  lyt_loading_compra.Visible := aInd;
  lyt_compra_ok.Visible := False;
  lyt_compra_ok.Opacity := 0;
end;

procedure TfmrPrincipal.btn_ComprarClick(Sender: TObject);
begin
  Self.LoadingCompra(True);
  rect_barra.Margins.Right := rect_fundo.Width;
  FLoop := 'S';

  self.Comprar_SW;

  TThread.CreateAnonymousThread(procedure
  begin
    while Floop = 'S' do
    begin
      if rect_barra.Margins.Right <= 0 then
         rect_barra.Margins.Right := rect_fundo.Width;

      Sleep(150);

      TThread.Synchronize(nil, procedure
      begin
        rect_barra.Margins.Right := rect_barra.Margins.Right -1;
      end);
    end;

      //Finalizou com sucesso...
      if Floop = 'OK' then
      begin
        TThread.Synchronize(nil procedure
        begin
          lyt_loading_compra.AnimateFloat('margins.Left', 150, 0.3);
          lyt_loading_compra.AnimateFloat('margins.Right', 150, 0.3);
          lyt_loading_compra.AnimateFloat('Opacity', 0, 0.3);
        end);

        Sleep(450);

        TThread.Synchronize(nil, procedure
        begin
          lyt_compra_ok.Visible := True;
          lyt_compra_ok.AnimateFloat('Opacity, 1, 0.4);
        end;

        Sleep(1000);

        TThread.Synchronize(nil, procedure
        begin
          ShowMessage('Compra realizada com sucesso');
        end);
      end;
  end;
end;


procedure TfmrPrincipal.Comprar_SW;
begin
  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(5000);
    //...
    //...
    //...
    Floop := 'Ok';
    end).Start;
end;

procedure TfmrPrincipal.FormShow(Sender: TObject);
begin
  Self.LoadingComopra(False);
end;

end.
