unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnExecutar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmProgramas: TMemo;
    mmProcessos: TMemo;
    mmVariaveis: TMemo;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UReceiver, UInvoker, UConcreteCommand;

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xReceiver: TReceiver;
  xInvoker: TInvoker;
begin
  //cria o receiver (objeto que contem a codificação das operações)
  xReceiver := TReceiver.Create;

  // Cria o Invoker (objeto que armazena os comandos para executa-los)
  xInvoker := TInvoker.Create;
  try
    //Armazena o comando de extração de programas no invoker
    xInvoker.Add(TProgramas.Create(xReceiver));

    //Armazena o comando de extração de processos no invoker
    xInvoker.Add(TProcessos.Create(xReceiver));

    //Armazena o comando de extração dar variaveis de ambiente no invoker
    xInvoker.Add(TVariaveisAmbiente.Create(xReceiver));

    //Solicita ao Invoker que execute todos os comandor armazenados
    xInvoker.ExtrairInformacoes;
  finally
    //Libera os objetos da memoria
    FreeAndNil(xInvoker);
    FreeAndNil(xReceiver);
  end;
  mmProgramas.lines.loadFromFile(GetCurrentDir + '\Programas.txt');
  mmProcessos.lines.loadFromFile(GetCurrentDir + '\Processos.txt');
  mmVariaveis.lines.loadFromFile(GetCurrentDir + '\Variaveis.txt');
end;

end.
