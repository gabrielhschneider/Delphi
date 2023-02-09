program ProjectConsumindoJWT;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  Horse.JWT;

begin
  THorse
    .Use(HorseJWT('key'));

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9001);
end.