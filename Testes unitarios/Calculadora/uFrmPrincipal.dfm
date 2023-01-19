object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'frmCalculadora'
  ClientHeight = 241
  ClientWidth = 185
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
    Left = 16
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Numero 1:'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Numero 2:'
  end
  object Label3: TLabel
    Left = 16
    Top = 122
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object lblResultado: TLabel
    Left = 16
    Top = 220
    Width = 59
    Height = 13
    Caption = 'RESULTADO'
  end
  object edtNum1: TEdit
    Left = 16
    Top = 27
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object edtNum2: TEdit
    Left = 16
    Top = 83
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object cmbOperacao: TComboBox
    Left = 16
    Top = 141
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'Selecione'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnCalcular: TButton
    Left = 40
    Top = 181
    Width = 97
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
