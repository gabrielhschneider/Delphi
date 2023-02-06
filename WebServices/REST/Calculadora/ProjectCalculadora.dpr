program ProjectCalculadora;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UCalculator in 'UCalculator.pas',
  UCalculatorServiceDefault in 'UCalculatorServiceDefault.pas',
  UCalculatorService;

begin
//Somar
THorse.Get('/somar/:valor1/:valor2',
procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
var
  xValor1,
  xValor2: Double;
  xCalculadora: TCalculatorServiceDefault;
  xResultado: Double;
begin
  if Req.Params.Count <> 2 then
  begin
  Res.Send('Parâmetros Incorretos!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
  begin
  Res.Send('Valor 1 Incorreto!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
  begin
  Res.Send('Valor 2 Incorreto!');
  Exit;
  end;

  xCalculadora := TCalculatorServiceDefault.Create;
  xResultado   := xCalculadora.Sum(xValor1, xValor2);

  Res.Send('Soma: ' + xResultado.ToString);
end);

//Subtrair
THorse.Get('/subtrair/:valor1/:valor2',
procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
var
  xValor1,
  xValor2: Double;
  xCalculadora: TCalculatorServiceDefault;
  xResultado: Double;
begin
  if Req.Params.Count <> 2 then
  begin
  Res.Send('Parâmetros Incorretos!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
  begin
  Res.Send('Valor 1 Incorreto!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
  begin
  Res.Send('Valor 2 Incorreto!');
  Exit;
  end;

  xCalculadora := TCalculatorServiceDefault.Create;
  xResultado   := xCalculadora.Subtract(xValor1, xValor2);

  Res.Send('Subtração: ' + xResultado.ToString);
end);

//Dividir
THorse.Get('/dividir/:valor1/:valor2',
procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
var
  xValor1,
  xValor2: Double;
  xCalculadora: TCalculatorServiceDefault;
  xResultado: Double;
begin
  if Req.Params.Count <> 2 then
  begin
  Res.Send('Parâmetros Incorretos!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
  begin
  Res.Send('Valor 1 Incorreto!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
  begin
  Res.Send('Valor 2 Incorreto!');
  Exit;
  end;

  xCalculadora := TCalculatorServiceDefault.Create;
  xResultado   := xCalculadora.Divide(xValor1, xValor2);

  Res.Send('Subtração: ' + xResultado.ToString);
end);

//Multiplicar
THorse.Get('/multiplicar/:valor1/:valor2',
procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
var
  xValor1,
  xValor2: Double;
  xCalculadora: TCalculatorServiceDefault;
  xResultado: Double;
begin
  if Req.Params.Count <> 2 then
  begin
  Res.Send('Parâmetros Incorretos!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor1'], xValor1) then
  begin
  Res.Send('Valor 1 Incorreto!');
  Exit;
  end;

  if not TryStrToFloat(Req.Params.Items['valor2'], xValor2) then
  begin
  Res.Send('Valor 2 Incorreto!');
  Exit;
  end;

  xCalculadora := TCalculatorServiceDefault.Create;
  xResultado   := xCalculadora.Multiply(xValor1, xValor2);

  Res.Send('Subtração: ' + xResultado.ToString);
end);


THorse.Listen(9000,
procedure(Horse: THorse)
begin
  Writeln('Server is runing on port ' + IntToStr(Horse.Port));
end);

end.
