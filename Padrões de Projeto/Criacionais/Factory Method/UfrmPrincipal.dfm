object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Factory Method'
  ClientHeight = 455
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 5
    Width = 56
    Height = 13
    Caption = 'Valor Atual:'
  end
  object Label2: TLabel
    Left = 32
    Top = 51
    Width = 69
    Height = 13
    Caption = 'Qtd. Parcelas:'
  end
  object Label3: TLabel
    Left = 208
    Top = 5
    Width = 103
    Height = 13
    Caption = 'Prazo de Pagamento:'
  end
  object edtValor: TEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtQtdParcelas: TEdit
    Left = 32
    Top = 69
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object cmbPrazoPagamento: TComboBox
    Left = 192
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Mensal'
      'Anual')
  end
  object btnGerar: TButton
    Left = 208
    Top = 51
    Width = 121
    Height = 41
    Caption = 'Gerar proje'#231#227'o'
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object mmRegistro: TMemo
    Left = 16
    Top = 98
    Width = 337
    Height = 335
    TabOrder = 4
  end
end
