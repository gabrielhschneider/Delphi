object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 231
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 97
    Height = 13
    Caption = 'Escolha a opera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 24
    Top = 61
    Width = 55
    Height = 13
    Caption = '1'#186' Numero:'
  end
  object Label3: TLabel
    Left = 24
    Top = 117
    Width = 55
    Height = 13
    Caption = '2'#186' Numero:'
  end
  object Label4: TLabel
    Left = 8
    Top = 224
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object lblResultado: TLabel
    Left = 80
    Top = 224
    Width = 65
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmbOperacao: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
    Text = '(Selecione)'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object edtNum1: TEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtNum2: TEdit
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 40
    Top = 176
    Width = 105
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
