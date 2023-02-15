program CRUD;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  System.SysUtils,
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.intf in 'Model\DAO\UDAO.intf.pas',
  UDAO.UnMedida in 'Model\DAO\UDAO.UnMedida.pas',
  UController.UnMedida in 'Model\Controller\UController.UnMedida.pas';

procedure Registry;
begin
  THorse.Group.Prefix('v1')
    .Get('/undmedida', TControllerUnMedida.GetProdutos)
    .Get('/undmedida/:id', TControllerUnMedida.GetProduto)
    .Post('/undmedida', TControllerUnMedida.InsertProduto)
    .Delete('/undmedida/:id', TControllerUnMedida.DeleteProduto);
end;

begin
  THorse.Use(Jhonson);
  THorse.Use(Query);

  Registry;



  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.