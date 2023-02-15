program CRUD;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  System.SysUtils,
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.intf in 'Model\DAO\UDAO.intf.pas',
  UDAO.Produtos in 'Model\DAO\UDAO.Produtos.pas',
  UController.Produtos in 'Model\Controller\UController.Produtos.pas';

procedure Registry;
begin
  THorse.Group.Prefix('v1')
    .Get('/produtos', TControllerProdutos.GetProdutos)
    .Get('/produtos/:id', TControllerProdutos.GetProduto)
    .Post('/produtos', TControllerProdutos.InsertProduto)
    .Delete('/produtos/:id', TControllerProdutos.DeleteProduto);
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