object edtQuantidade: TedtQuantidade
  Left = 0
  Top = 0
  Caption = 'edtQuantidade'
  ClientHeight = 175
  ClientWidth = 316
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
    Left = 96
    Top = 8
    Width = 135
    Height = 23
    Caption = 'Teste Unit'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 48
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label4: TLabel
    Left = 24
    Top = 100
    Width = 70
    Height = 13
    Caption = 'Pre'#231'o unit'#225'rio:'
  end
  object lblResultado: TLabel
    Left = 200
    Top = 89
    Width = 85
    Height = 19
    Caption = '                 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 200
    Top = 70
    Width = 55
    Height = 13
    Caption = 'Valor Total:'
  end
  object btnCalcular: TButton
    Left = 184
    Top = 111
    Width = 103
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object edtQuantidade: TEdit
    Left = 24
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtPrecoUnitario: TEdit
    Left = 24
    Top = 119
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
