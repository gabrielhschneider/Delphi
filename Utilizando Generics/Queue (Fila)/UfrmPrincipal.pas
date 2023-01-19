unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Generics.Collections;

type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    btnEnqueue: TButton;
    btnDequeue: TButton;
    btnExtract: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnCount: TButton;
    btnCapacity: TButton;
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnDequeueClick(Sender: TObject);
    procedure btnEnqueueClick(Sender: TObject);
  private
    { Private declarations }
    FFila: TQueue<String>;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Capacity.ToString);
end;

procedure TfrmPrincipal.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Count.ToString);
end;

procedure TfrmPrincipal.btnDequeueClick(Sender: TObject);
begin
  Memo1.Lines.Add(FFila.Dequeue);
end;

procedure TfrmPrincipal.btnEnqueueClick(Sender: TObject);
begin
  FFila.Enqueue(Edit1.Text);
end;

end.
