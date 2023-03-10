unit UControladoraProdutos;

interface

uses
  System.JSON,
  System.Classes,
  System.SysUtils,
  Horse,
  GBSwagger.Path.Attributes,
  UEntidadeProduto,
  UDadosGerais;

type
  [SwagPath('produto', 'Produtos')]

  TProdutoController = class
    private
    public
      [SwagGET('Listar Produtos', True)]
      [SwagParamQuery('id', 'id do produto')]
      [SwagResponse(200, TEntidadeProduto, 'Informações do produto', True)]
      class procedure GetProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

      [SwagPOST('Adicionar Novo produto')]
      [SwagParamBody('Informações do produto', TEntidadeProduto)]
      [SwagResponse(201, TEntidadeProduto)]
      [SwagResponse(400)]
      class procedure InsertProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);


      [SwagDELETE('{id}', 'Deletar um produto')]
      [SwagParamPath('id', 'Id do produto')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TProdutoController }

//Delete
class procedure TProdutoController.DeleteProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xId: Integer;
  xDadosPessoas: TDadosGerais;
begin
  xDadosPessoas := TDadosGerais.Create('Produto.json');
  try
    xId := Req.Params.Items['id'].ToInteger;

    if xDadosPessoas.RemoverRegistro(xId) then
      Res.Status(THTTPStatus.NoContent)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosPessoas.Free;
  end;
end;

//Listar
class procedure TProdutoController.GetProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosPessoas : TDadosGerais;
begin
  xDadosPessoas := TDadosGerais.Create('Produto.json');
  try
    Res.Send<TJSONArray>(xDadosPessoas.JSON);
  finally
    xDadosPessoas.Free;
  end;

end;

//Inserir
class procedure TProdutoController.InsertProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDadosPessoas : TDadosGerais;
begin
  xDadosPessoas := TDadosGerais.Create('Produto.json');
  try
    if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
      Res.Status(THTTPStatus.Created)
    else
      Res.Status(THTTPStatus.InternalServerError);
  finally
    xDadosPessoas.Free;
  end;
end;

end.
