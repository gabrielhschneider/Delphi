unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    btnListar: TBitBtn;
    btnCapacity: TBitBtn;
    btnCount: TBitBtn;
    btnNotify: TBitBtn;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnNotifyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FListaNum : TList<Integer>;
    procedure Notificacao (Sender: TObject; const aitem: Integer;
      aAction: TcollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FListaNum.Add(StrToIntDef(Edit1.Text, 0));
end;

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Capacity.ToString);
  //o delphi vai aumentando a capacidade por conta propria
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Count.ToString);
end;

procedure TForm1.btnListarClick(Sender: TObject);
var
  I : Integer;
begin
  Memo1.Lines.Clear;
  for I := 0 to Pred(FListaNum.Count) do
  begin
    Memo1.Lines.Add(FListaNum[I].ToString);
  end;
end;

procedure TForm1.btnNotifyClick(Sender: TObject);
begin
  FListaNum.OnNotify := Notificacao;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  FListaNum.Delete(Pred(FListaNum.Count));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(FListaNum);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FListaNum := TList<Integer>.Create;
end;

procedure TForm1.Notificacao(Sender: TObject; const aitem: Integer;
  aAction: TcollectionNotification);
begin
  case aAction of
    cnAdded: Memo1.Lines.Add('O item ' + aItem.ToString + ' foi adicionado.');
    cnRemoved: Memo1.Lines.Add('O item ' + aItem.ToString + ' foi removido.');
  end;
end;

end.
