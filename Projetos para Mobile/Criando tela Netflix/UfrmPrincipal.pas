unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D;

type
  TLayout = class(TForm)
    imgCartaz: TImage;
    Image1: TImage;
    imgLogo: TImage;
    lytGenero: TLayout;
    Image2: TImage;
    Label1: TLabel;
    Layout1: TLayout;
    Image3: TImage;
    imgDegrade: TImage;
    Label2: TLabel;
    Image5: TImage;
    Layout2: TLayout;
    Image4: TImage;
    Label3: TLabel;
    Layout3: TLayout;
    Image6: TImage;
    Label4: TLabel;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
    Layout4: TLayout;
    Image7: TImage;
    Layout5: TLayout;
    Label5: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Layout: TLayout;

implementation

{$R *.fmx}
procedure TLayout.Image2Click(Sender: TObject);
begin
  lytMenu.Visible := True;
end;

procedure TLayout.Image7Click(Sender: TObject);
begin
  lytMenu.Visible := False;

end;

end.
