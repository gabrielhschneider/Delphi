program ProjectHorse;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils;

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

    THorse.Get('/HelloWorld',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('HelloWorld! Devs2Blu2022');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.
