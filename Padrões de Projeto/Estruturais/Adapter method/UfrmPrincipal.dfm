object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 339
  ClientWidth = 309
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
    Left = 32
    Top = 20
    Width = 27
    Height = 14
    Caption = 'CEP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCEP: TEdit
    Left = 32
    Top = 40
    Width = 233
    Height = 29
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 148
    Width = 293
    Height = 183
    Caption = 'Endere'#231'o:'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object lblLogradouro: TLabel
      Left = 83
      Top = 32
      Width = 3
      Height = 13
    end
    object lblBairro: TLabel
      Left = 80
      Top = 88
      Width = 3
      Height = 13
    end
    object lblCidade: TLabel
      Left = 80
      Top = 152
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 3
      Top = 32
      Width = 76
      Height = 13
      Caption = '- Logradouro:'
    end
    object Label3: TLabel
      Left = 11
      Top = 90
      Width = 45
      Height = 13
      Caption = '- Bairro:'
    end
    object Label4: TLabel
      Left = 11
      Top = 154
      Width = 49
      Height = 13
      Caption = '- Cidade:'
    end
  end
  object pnConsultarCorreios: TPanel
    Left = 8
    Top = 88
    Width = 127
    Height = 38
    Caption = 'Consultar Correios'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object pnConsultarViaCep: TPanel
    Left = 168
    Top = 88
    Width = 133
    Height = 38
    Caption = 'Consultar ViaCEP'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnClick = pnConsultarViaCepClick
  end
end
