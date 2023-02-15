unit UController.Produtos;

interface

uses
  Horse;

type
  TControllerProdutos = class
    private

    public
    class procedure GetProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure GetProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure InsertProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  UDAO.intf, UDAO.Produtos, System.JSON, System.SysUtils;
{ TControllerProdutos }

class procedure TControllerProdutos.DeleteProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOProdutos.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerProdutos.GetProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOProdutos.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;

class procedure TControllerProdutos.GetProdutos(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOProdutos.Create;

  Res.Send<TJSONArray>(xDAO.ObterRegistros);
end;

//POST
class procedure TControllerProdutos.InsertProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOProdutos.Create;

  if xDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPStatus.Created)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

end.
