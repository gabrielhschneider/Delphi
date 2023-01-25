unit UVostro;

interface

uses
  UInterfaces;

type
  TVostro = class(TInterfacedObject, INoteBook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam : String;
  end;

implementation

{ TVostro }

function TVostro.BuscarMemoriaRam: String;
begin
 Result := '3GB DDR3';
end;

function TVostro.BuscarTamanhoTela: String;
begin
 Result := '14 Polegadas';
end;

end.
