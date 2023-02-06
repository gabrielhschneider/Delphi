unit UConcreteCommand;

interface

uses
  UCommand, UReceiver;

type
  {Concrete Command}
  TProcessos = class(TInterfacedObject, ICommand)
  private
    //Variavel para armazenar a referencia do Receiver
    FReceiver: TReceiver;
  public
    constructor Create(aReceiver: TReceiver);

    //Assinatura da interface - Metodo d execução da operação
    procedure Execute;
  end;

  {Concrete Command}
  TProgramas = class(TInterfacedObject, ICommand)
    private
    //Variavel para armazenar a referencia do Receiver
    FReceiver: TReceiver;
  public
    constructor Create(aReceiver: TReceiver);

    //Assinatura da interface - Metodo d execução da operação
    procedure Execute;
  end;

  {Concrete Command}
  TVariaveisAmbiente = class(TInterfacedObject, ICommand)
    private
    //Variavel para armazenar a referencia do Receiver
    FReceiver: TReceiver;
  public
    constructor Create(aReceiver: TReceiver);

    //Assinatura da interface - Metodo d execução da operação
    procedure Execute;
  end;

implementation

{ TProcess }

constructor TProcessos.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProcessos.Execute;
begin
  FReceiver.ExtrairProcessos;
end;

{ TProgramas }

constructor TProgramas.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProgramas.Execute;
begin
  FReceiver.ExtrairProgramas;
end;

{ TVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TVariaveisAmbiente.Execute;
begin
  FReceiver.ExtrairVariaveisAmbiente;
end;

end.
