object lblResultad: TlblResultad
  Left = 0
  Top = 0
  Caption = 'lblResultad'
  ClientHeight = 281
  ClientWidth = 161
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
    Left = 8
    Top = 201
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object lblResultado: TLabel
    Left = 29
    Top = 220
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 108
    Height = 13
    Caption = 'Selecione a Opera'#231#227'o:'
  end
  object Label4: TLabel
    Left = 8
    Top = 66
    Width = 50
    Height = 13
    Caption = 'Numero 1:'
  end
  object Label5: TLabel
    Left = 8
    Top = 112
    Width = 50
    Height = 13
    Caption = 'Numero 2:'
  end
  object edtNum1: TEdit
    Left = 8
    Top = 85
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 8
    Top = 131
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 8
    Top = 166
    Width = 129
    Height = 29
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object cmbOperacao: TComboBox
    Left = 8
    Top = 27
    Width = 129
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
end
