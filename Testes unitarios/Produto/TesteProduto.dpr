program TesteProduto;

uses
  Vcl.Forms,
  UfrmTeste in 'UfrmTeste.pas' {edtQuantidade},
  UProduto in 'UProduto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TedtQuantidade, edtQuantidade);
  Application.Run;
end.
