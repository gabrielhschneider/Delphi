unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TPessoa = record
    CPF, Nome: String;
  end;

  TfrmPrincipal = class(TForm)
    btnAdd: TButton;
    btnTryGetValue: TButton;
    btnRemove: TButton;
    btnTrimExcess: TButton;
    btnContainsKey: TButton;
    btnAddOrSetValue: TButton;
    btnListaKey: TButton;
    btnListaValue: TButton;
    btnClear: TButton;
    btnOnKeyNotiy: TButton;
    btnOnValueNotift: TButton;
    edtCPF: TEdit;
    edtNome: TEdit;
    Memo1: TMemo;
    lblNome: TLabel;
    lblCPF: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnContainsKeyClick(Sender: TObject);
    procedure btnListaKeyClick(Sender: TObject);
    procedure btnListaValueClick(Sender: TObject);
    procedure btnOnKeyNotiyClick(Sender: TObject);
    procedure btnOnValueNotiftClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure btnTryGetValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDicionario : TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender: TObject; const aItem: String;
      aAction: TCollectionNotification);

    procedure ValueNotify(Sender: TObject; const aItem: TPessoa;
      aAction: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnAddClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtCPF.Text;
  xPessoa.Nome := edtNome.Text;

  //Atualizar
  FDicionario.AddOrSetValue(xPessoa.CPF, xPessoa);
end;

procedure TfrmPrincipal.btnClearClick(Sender: TObject);
begin
  FDicionario.Clear;
end;

procedure TfrmPrincipal.btnContainsKeyClick(Sender: TObject);
begin
  if FDicionario.ContainsKey(edtCPF.Text) then
    Memo1.Lines.Add('Usu�rio encontrado')
  else
    Memo1.Lines.Add('Usu�rio n�o encontrado');
end;

procedure TfrmPrincipal.btnListaKeyClick(Sender: TObject);
var
  xKey: String;
begin
  for xKey in FDicionario.Keys do
    Memo1.Lines.Add(xKey);
end;

procedure TfrmPrincipal.btnListaValueClick(Sender: TObject);
var
  xValue: TPessoa;
begin
  for xValue in FDicionario.Values do
    Memo1.Lines.Add(xValue.Nome);

end;

procedure TfrmPrincipal.btnOnKeyNotiyClick(Sender: TObject);
begin
  FDicionario.OnKeyNotify := KeyNotify;
end;

procedure TfrmPrincipal.btnOnValueNotiftClick(Sender: TObject);
begin
  FDicionario.OnValueNotify := ValueNotify;
end;

procedure TfrmPrincipal.btnRemoveClick(Sender: TObject);
begin
  FDicionario.Remove(edtCPF.Text);
end;

procedure TfrmPrincipal.btnTrimExcessClick(Sender: TObject);
begin
  FDicionario.TrimExcess;
end;

procedure TfrmPrincipal.btnTryGetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  if FDicionario.TryGetValue(edtCPF.Text, xPessoa) then
    Memo1.Lines.Add(xPessoa.Nome   ' - '   xPessoa.CPF)
  else
    Memo1.Lines.Add('Usu�rio n�o encontrado');
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDicionario.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FDicionario := TDictionary<String, TPessoa>.Create;
end;

procedure TfrmPrincipal.KeyNotify(Sender: TObject; const aItem: String;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('A chave '   aItem   ' foi adicionada.');

    cnExtracted:
      Memo1.Lines.Add('A chave '   aItem   ' foi extra�da.');

    cnRemoved:
      Memo1.Lines.Add('A chave '   aItem   ' foi removida.');
  end;
end;

procedure TfrmPrincipal.ValueNotify(Sender: TObject; const aItem: TPessoa;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('O Value '   aItem.Nome   ' foi adicionado.');

    cnExtracted:
      Memo1.Lines.Add('O Value '   aItem.Nome   ' foi extra�do.');

    cnRemoved:
      Memo1.Lines.Add('O Value '   aItem.Nome   ' foi removido.');
  end;
end;

end.
