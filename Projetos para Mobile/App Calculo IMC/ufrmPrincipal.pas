unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    tbCabecalho: TToolBar;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    edtAltura: TEdit;
    Label3: TLabel;
    edtPeso: TEdit;
    lblPesoIdeal: TLabel;
    lytCalcular: TLayout;
    Rectangle2: TRectangle;
    btnCalcular: TSpeedButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularIMC();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
procedure TForm1.CalcularIMC();
var
  xIMC, xPeso, xAltura : Double;
begin
  xPeso := edtPeso.Text.ToDouble;
  xAltura := edtAltura.Text.ToDouble;
  xAltura := xAltura / 100;

  xIMC := xPeso / (xAltura * xAltura);

  if xIMC <= 18.5 then
    lblPesoIdeal.Text := 'Magreza (' + xIMC.ToString + ')'

  else if (xIMC > 18.5) and (xIMC <= 24.9) then
    lblPesoIdeal.Text := 'Normal (' + xIMC.ToString + ')'

  else if (xIMC > 24.9) and (xIMC <= 29.9) then
    lblPesoIdeal.Text := 'Sobrepeso Grau I (' + xIMC.ToString + ')'

  else if (xIMC > 29.9) and (xIMC <= 39.9) then
    lblPesoIdeal.Text := 'Obesidade Grau II (' + xIMC.ToString + ')'

  else
    lblPesoIdeal.Text := 'Obesidade Grau III (' + xIMC.ToString + ')';

end;

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  CalcularIMC();
end;

end.
