program ProjectAtividadeFinal;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.Commons,
  System.JSON,
  System.SysUtils,
  UEntidadeProduto in 'Classes\UEntidadeProduto.pas',
  UControladoraProdutos in 'Controladores\UControladoraProdutos.pas',
  UDadosGerais in 'Classes\UDadosGerais.pas';


procedure SwaggerConfig;
begin
  //Programação Funcional
  //Usa interfaces
  Swagger
    .Register
      .SchemaOnError(TAPIError)
    .&End
    .Info
      .Title('Entidade Produto')
      .Description('API Horse')
      .Contact
        .Name('Gabriel Schneider')
        .Email('email@hotmail.com')
        .URL('http://www.mypage.com.br')
      .&End
    .&End
    .BasePath('v1');
 end;

procedure Registry;
begin
  //v1 - Versionamento da API
  THorse.Group.Prefix('v1')
  .Get('/produtos',  TProdutoController.GetProduto)
  .Post('/produtos',  TProdutoController.InsertProduto)
  .Delete('/produtos/:id',  TProdutoController.DeleteProduto);
end;

begin
  THorse
    .Use(CORS)
    .Use(HorseSwagger)
    .Use(Jhonson());

    THorse
      .Use(HorseBasicAuthentication(
        function(const aUserName, aPassword: String): Boolean
        begin
          //Aqui teria nossa logica para validar o usuario do banco de dados

            Result := aUserName.Equals('user') and
                      aPassword.Equals('password');
        end));

    //http://localhost:9002/swagger/doc/html
    SwaggerConfig;
    THorseGBSwaggerRegister.RegisterPath(TProdutoController);

    Registry;


  THorse.Listen(9002,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);

end.