program ProejctCompression;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.Compression,
  Horse.Commons,
  System.JSON,
  System.SysUtils,
  UDadosGerais in 'model\services\UDadosGerais.pas';

begin
  //Ao utilizar o compression ele tem que vir antes do jhonson
  THorse
    .Use(Compression());

  THorse
    .Use(Jhonson());


    THorse
      .Use(HorseBasicAuthentication(
        function(const aUserName, aPassword: String): Boolean
        begin
          //Aqui teria nossa logica para validar o usuario do banco de dados

            Result := aUserName.Equals('user') and
                      aPassword.Equals('password');
        end));

  //Testando o Compression
  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      I: Integer;
      LPong: TJSONArray;
    begin
      LPong := TJSONArray.Create;
      for I := 0 to 1000 do
        LPong.Add(TJSONObject.Create(TJSONPair.Create('ping', 'pong')));
      Res.Send(LPong);
    end);

  //Pessoas
  THorse.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas : TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;

    end);

  THorse.Post('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas : TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Pessoa.json');
      try
        if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.Created)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

  THorse.Delete('/users/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xId: Integer;
        xDadosPessoas: TDadosGerais;
      begin
        xDadosPessoas := TDadosGerais.Create('Pessoa.json');
        try
          xId := Req.Params.Items['id'].ToInteger;

          if xDadosPessoas.RemoverRegistro(xId) then
            Res.Status(THTTPStatus.NoContent)
          else
            Res.Status(THTTPStatus.InternalServerError);
        finally
          xDadosPessoas.Free;
        end;
      end);


    //Cargo
    THorse.Get('/cargo',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas : TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Cargo.json');
      try
        Res.Send<TJSONArray>(xDadosPessoas.JSON);
      finally
        xDadosPessoas.Free;
      end;

    end);

      THorse.Post('/cargo',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xDadosPessoas : TDadosGerais;
    begin
      xDadosPessoas := TDadosGerais.Create('Cargo.json');
      try
        if xDadosPessoas.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.Created)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xDadosPessoas.Free;
      end;
    end);

      THorse.Delete('cargo/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xId: Integer;
        xDadosPessoas: TDadosGerais;
      begin
        xDadosPessoas := TDadosGerais.Create('Cargo.json');
        try
          xId := Req.Params.Items['id'].ToInteger;

          if xDadosPessoas.RemoverRegistro(xId) then
            Res.Status(THTTPStatus.NoContent)
          else
            Res.Status(THTTPStatus.InternalServerError);
        finally
          xDadosPessoas.Free;
        end;
      end);



  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.