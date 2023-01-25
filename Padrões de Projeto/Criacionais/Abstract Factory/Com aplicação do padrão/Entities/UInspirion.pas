unit UInspirion;

interface

uses
  UInterfaces;

type
  TInspiron = class(TInterfacedObject, IDesktop)
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHD      : String;
  end;

implementation

{ TInspiron }

function TInspiron.BuscarNomeProcessador: String;
begin
  Result := 'Intel Core i5';
end;

function TInspiron.BuscarTamanhoHD: String;
begin
  Result := '1 TB';
end;

end.
