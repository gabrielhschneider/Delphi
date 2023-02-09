program ProjectSwagger;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoa in 'Model\entities\UPessoa.pas',
  UController.Pessoa in 'Model\controllers\UController.Pessoa.pas';

procedure SwaggerConfig;
begin
  //Programação Funcional
  //Usa interfaces
  Swagger
    .Register
      .SchemaOnError(TAPIError)
    .&End
    .Info
      .Title('Minha primeira API Documentada')
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
  .Get('/pessoas', TPessoaController.GetPessoas)
  .Get('/pessoas/:id', TPessoaController.FindUser)
  .Post('/pessoas', TPessoaController.InsertUser)
  .Put('/pessoas/:id', TPessoaController.UpdateUser)
  .Delete('/pessoas/:id', TPessoaController.DeleteUser);
  end;

begin
  THorse
    .Use(CORS)
    .Use(HorseSwagger);

    //http://localhost:9000/swagger/doc/html
    SwaggerConfig;
    THorseGBSwaggerRegister.RegisterPath(TPessoaController);

    Registry;

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.