unit UEntidadeProduto;

interface

uses
  GBSwagger.Model.Attributes;

type

  TEntidadeProduto = Class
    private
      FID           : Integer;
      FDescricao    : String;
      FUnidadeMedida: String;
      FPrecoVenda   : Real;
    public
      [SwagProp('Produto id', True)]
      property id: Integer  read FID   write FID;

      [SwagProp('Produto Descricao', True)]
      property Descricao: String read FDescricao write FDescricao;

      [SwagProp('Produto Un Medida', True)]
      property UnidadeMedida: String read FUnidadeMedida write FUnidadeMedida;

      [SwagProp('Produto Preço de venda', True)]
      property PrecoVenda: Real read FPrecoVenda write FPrecoVenda;
  end;


  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.
