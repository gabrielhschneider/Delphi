unit UDell;

interface

uses
  UInterfaces;

type
  TDell = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

uses
  UInspirion, UVostro;

{ TDell }

function TDell.ConsultarNotebook: INotebook;
begin
  Result := TVostro.Create;
end;

function TDell.ConsultarDesktop: IDesktop;
begin
  Result := TInspiron.Create;
end;

end.
