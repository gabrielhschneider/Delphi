unit UApple;

interface

uses
  UInterfaces;

type
  TApple = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

uses
  UIMac, UMacBook;

{ TApple }

function TApple.ConsultarNotebook: INotebook;
begin
  Result := TMacBook.Create;
end;

function TApple.ConsultarDesktop: IDesktop;
begin
  Result := TIMac.Create;
end;

end.
