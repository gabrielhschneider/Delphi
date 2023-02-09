unit UController.Cargo;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UPessoa;

type
  [SwagPath('cargo', 'Cargos')]
  TCargoController = class
    private
    public
      [SwagGET('Listar Cargos', True)]
      [SwagParamQuery('id', 'id do cargo')]
      [SwagResponse(200, TPessoa, 'Informações do cargo', True)]
      class procedure GetCargos(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagGET('{id}', 'Procurar um Cargo')]
      [SwagParamPath('id', 'id do Cargo')]
      [SwagResponse(200, TPessoa, 'Informações do cargo')]
      [SwagResponse(404)]
      class procedure FindCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPOST('Adicionar Novo Cargo')]
      [SwagParamBody('Informações do Cargo', TPessoa)]
      [SwagResponse(201, TPessoa)]
      [SwagResponse(400)]
      class procedure InsertCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPUT('{id}', 'Atualizar um Cargo')]
      [SwagParamPath('id', 'Id do Cargo')]
      [SwagParamBody('Informações do Cargo', TPessoa)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagDELETE('{id}', 'Deletar um Cargo')]
      [SwagParamPath('id', 'Id do Cargo')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteCargo(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TPessoaController }


{ TPessoaController }

class procedure TCargoController.DeleteCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

class procedure TCargoController.FindCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('{"id": 1, "cargo": "Militar"}');
end;

class procedure TCargoController.GetCargos(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send('[{"id": 1, "cargo": "Militar"}]');
end;

class procedure TCargoController.InsertCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Send(Req.Body).Status(THTTPStatus.Created);
end;

class procedure TCargoController.UpdateCargo(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  Res.Status(THTTPStatus.NoContent);
end;

end.
