unit UfrmMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UfrmRelatorioAtores, UfrmRelatorioCidades,
  UfrmRelatorioFilmes;

type
  TfrmMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Ex1: TMenuItem;
    Exercicio11: TMenuItem;
    Exercicio21: TMenuItem;
    Exercicio22: TMenuItem;
    procedure Exercicio11Click(Sender: TObject);
    procedure Exercicio21Click(Sender: TObject);
    procedure Exercicio22Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainMenu: TfrmMainMenu;

implementation

{$R *.dfm}

// Exercicio 1
procedure TfrmMainMenu.Exercicio11Click(Sender: TObject);
begin
  if not Assigned(frmRelatorioAtores) then
    frmRelatorioAtores := TfrmRelatorioAtores.Create(Self);

  frmRelatorioAtores.Show;
end;

// Exercicio 2
procedure TfrmMainMenu.Exercicio21Click(Sender: TObject);
begin
  if not Assigned(frmRelatorioCidades) then
    frmRelatorioCidades := TfrmRelatorioCidades.Create(Self);

  frmRelatorioCidades.Show;
end;

// Exercicio 3
procedure TfrmMainMenu.Exercicio22Click(Sender: TObject);
begin
  if not Assigned(frmRelatorioFilmes) then
    frmRelatorioFilmes := TfrmRelatorioFilmes.Create(Self);

  frmRelatorioFilmes.Show;

end;


end.
