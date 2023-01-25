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
  Result := TInspirion.Create;
end;

function TDell.ConsultarDesktop: IDesktop;
begin
  Result := TVostro.Create;
end;

end.
