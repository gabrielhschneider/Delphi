unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    edtValor: TEdit;
    Label1: TLabel;
    btnEchoDouble: TBitBtn;
    btnHelloWorld: TBitBtn;
    Label2: TLabel;
    lblResultado: TLabel;
    procedure btnEchoDoubleClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
    procedure EchoDouble;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  IHello_World1;

procedure TForm1.btnEchoDoubleClick(Sender: TObject);
begin
  Self.EchoDouble;
end;

procedure TForm1.btnHelloWorldClick(Sender: TObject);
begin
  lblResultado.Caption := GetIHello_World.echoHelloWorld;
end;

procedure TForm1.EchoDouble;
var
  xValor    : Double;
  xResultado: Double;
begin
  if not TryStrToFloat(edtValor.Text, xValor) then
    raise Exception.Create('Valor inválido!');

  xResultado := GetIHello_World.echoDouble(xValor);
  lblResultado.Caption := 'Resultado: ' + xResultado.ToString;
end;

end.
