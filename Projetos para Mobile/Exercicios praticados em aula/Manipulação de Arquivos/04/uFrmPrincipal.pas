unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    mmLeitura: TMemo;
    XMLDocument1: TXMLDocument;
    btnLeitura: TButton;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLeituraClick(Sender: TObject);
var
  xAplicacao :IXMLNode;
  xExecutaveis :IXMLNode;
  xExecutavel :IXMLNode;
  xBibliotecas :IXMLNode;
  xBiblioteca :IXMLNode;
  xVersao :IXMLNode;
  xDescricao :IXMLNode;
  xInfNo :IXMLNodeList;
  i :Integer;
begin
   mmLeitura.Clear;

   //Ativa o XMLDocument para podemos ler as informa��es do xml
   XMLDocument1.Active := true;

   //Busco o n� principal do xml
   xAplicacao := XMLDocument1.DocumentElement;

   //Busca o n� onde est� a lista de execut�veis
   xExecutaveis := xAplicacao.ChildNodes.FindNode('executaveis');

   //Busca o n� onde est� a lista de bibliotecas
   xBibliotecas := xAplicacao.ChildNodes.FindNode('bibliotecas');

   mmLeitura.Lines.Add('[EXECUTAVEIS]');
   mmLeitura.Lines.Add('');

   //Percorre todos os execut�veis da lista
   for i := 0 to xExecutaveis.ChildNodes.Count - 1 do
   begin
      xExecutavel := xExecutaveis.ChildNodes[i];
      //recupera os atributos do n� executavel
      xInfNo      := xExecutavel.AttributeNodes;

      mmLeitura.Lines.Add(xExecutavel.Text);
      mmLeitura.Lines.Add('-------------------------');
      mmLeitura.Lines.Add('vers�o: '+ xInfNo.FindNode('versao').Text);
      mmLeitura.Lines.Add('descri��o: '+ xInfNo.FindNode('descricao').Text);
      mmLeitura.Lines.Add('');
   end;

   mmLeitura.Lines.Add('');
   mmLeitura.Lines.Add('[BIBLIOTECAS]');
   mmLeitura.Lines.Add('');

   //Percorre todas as bibliotecas
   for i := 0 to xBibliotecas.ChildNodes.Count - 1 do
   begin
      xBiblioteca := xBibliotecas.ChildNodes[i];

      //recupera os atributos do n� biblioteca
      xInfNo      := xBiblioteca.AttributeNodes;

      mmLeitura.Lines.Add(xBiblioteca.Text);
      mmLeitura.Lines.Add('-------------------------');
      mmLeitura.Lines.Add('vers�o: '+ xInfNo.FindNode('versao').Text);
      mmLeitura.Lines.Add('descri��o: '+ xInfNo.FindNode('descricao').Text);
      mmLeitura.Lines.Add('');
   end;
end;

end.
