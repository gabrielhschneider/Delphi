unit UInterfaceViaCEP;

interface

type
  IWebServiceViaCEP = Interface
    ['{B6D399ED-8998-4594-AEF2-9051C4117F01}']
    procedure ConsultarEnderecoWebService(const aCep: String);
    function ObeterLogradouro: String;
    function ObterBairro     : String;
    function ObterCidade     : String;
  End;

implementation

end.
