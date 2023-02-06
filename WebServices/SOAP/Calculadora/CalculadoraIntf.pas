{ Invokable interface ICalculadora }

unit CalculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type
  { Invokable interfaces must derive from IInvokable }
  ICalculadora = interface(IInvokable)
  ['{1340F530-8AB0-4F8D-865F-217752358416}']

    function Somar(aNumero1, aNumero2: Double): Double;
    function Subtrair(aNumero1, aNumero2: Double): Double;
    function Dividir(aNumero1, aNumero2: Double): Double;
    function Multiplicar(aNumero1, aNumero2: Double): Double;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadora));

end.
