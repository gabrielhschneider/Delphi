// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:1010/wsdl/ICalculadora
// Version  : 1.0
// (03/02/2023 19:47:26 - - $Rev: 103843 $)
// ************************************************************************ //

unit ICalculadora1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:double          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:CalculadoraIntf-ICalculadora
  // soapAction: urn:CalculadoraIntf-ICalculadora#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : ICalculadorabinding
  // service   : ICalculadoraservice
  // port      : ICalculadoraPort
  // URL       : http://localhost:1010/soap/ICalculadora
  // ************************************************************************ //
  ICalculadora = interface(IInvokable)
  ['{E66E1709-D4FD-53FF-B516-9DF0139B4A7B}']
    function  Somar(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Subtrair(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Dividir(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Multiplicar(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
  end;

function GetICalculadora(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICalculadora;


implementation
  uses System.SysUtils;

function GetICalculadora(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICalculadora;
const
  defWSDL = 'http://localhost:1010/wsdl/ICalculadora';
  defURL  = 'http://localhost:1010/soap/ICalculadora';
  defSvc  = 'ICalculadoraservice';
  defPrt  = 'ICalculadoraPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ICalculadora);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { ICalculadora }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadora), 'urn:CalculadoraIntf-ICalculadora', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICalculadora), 'urn:CalculadoraIntf-ICalculadora#%operationName%');

end.