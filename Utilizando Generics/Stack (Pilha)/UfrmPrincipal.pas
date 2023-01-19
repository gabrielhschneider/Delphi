unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    btnPush: TButton;
    btnPop: TButton;
    btnExtract: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnCount: TButton;
    btnCapacity: TButton;
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnPopClick(Sender: TObject);
    procedure btnPushClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FPilha: TStack<String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Capacity.ToString);
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Count.ToString);
end;

procedure TForm1.btnExtractClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Extract);
end;

procedure TForm1.btnPeekClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Peek);
end;

procedure TForm1.btnPopClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Pop);
end;

procedure TForm1.btnPushClick(Sender: TObject);
begin
  FPilha.Push(Edit1.Text);
end;

procedure TForm1.btnTrimExcessClick(Sender: TObject);
begin
  FPilha.TrimExcess;
  Memo1.Lines.Add(FPilha.Capacity.ToString);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPilha.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPilha := TStack<String>.Create;
end;

end.
