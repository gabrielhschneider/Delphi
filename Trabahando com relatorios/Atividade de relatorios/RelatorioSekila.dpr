program RelatorioSekila;

uses
  Vcl.Forms,
  UfrmMainMenu in 'UfrmMainMenu.pas' {frmMainMenu},
  UfrmRelatorioAtores in 'UfrmRelatorioAtores.pas' {frmRelatorioAtores},
  UdmSekila in 'UdmSekila.pas' {DataModule1: TDataModule},
  UfrmRelatorioCidades in 'UfrmRelatorioCidades.pas' {frmRelatorioCidades},
  UfrmRelatorioFilmes in 'UfrmRelatorioFilmes.pas' {frmRelatorioFilmes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.CreateForm(TfrmRelatorioAtores, frmRelatorioAtores);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmRelatorioCidades, frmRelatorioCidades);
  Application.CreateForm(TfrmRelatorioFilmes, frmRelatorioFilmes);
  Application.Run;
end.
