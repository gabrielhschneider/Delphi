unit UController.UnMedida;

interface

uses
  Horse;

type
  TControllerUnMedida = class
    private

    public
    class procedure GetProdutos(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure GetProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure InsertProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    class procedure DeleteProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  UDAO.intf, UDAO.UnMedida, System.JSON, System.SysUtils;
{ TControllerProdutos }

class procedure TControllerUnMedida.DeleteProduto(Req: THorseRequest;
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

  xDAO := TDAOUnMedida.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerUnMedida.GetProduto(Req: THorseRequest;
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

  xDAO := TDAOUnMedida.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;

class procedure TControllerUnMedida.GetProdutos(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnMedida.Create;

  Res.Send<TJSONArray>(xDAO.ObterRegistros);
end;

//POST
class procedure TControllerUnMedida.InsertProduto(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnMedida.Create;

  if xDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPStatus.Created)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

end.
