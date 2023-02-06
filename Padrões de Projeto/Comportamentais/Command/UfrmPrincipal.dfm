object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Command'
  ClientHeight = 349
  ClientWidth = 681
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
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Programas:'
  end
  object Label2: TLabel
    Left = 248
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Processos:'
  end
  object Label3: TLabel
    Left = 488
    Top = 64
    Width = 110
    Height = 13
    Caption = 'Variaveis de Ambiente:'
  end
  object btnExecutar: TButton
    Left = 256
    Top = 8
    Width = 163
    Height = 41
    Caption = 'btnExecutar'
    TabOrder = 0
    OnClick = btnExecutarClick
  end
  object mmProgramas: TMemo
    Left = 8
    Top = 83
    Width = 185
    Height = 258
    Lines.Strings = (
      'mmProgramas')
    TabOrder = 1
  end
  object mmProcessos: TMemo
    Left = 248
    Top = 83
    Width = 185
    Height = 258
    Lines.Strings = (
      'mmProcessos')
    TabOrder = 2
  end
  object mmVariaveis: TMemo
    Left = 488
    Top = 83
    Width = 185
    Height = 258
    Lines.Strings = (
      'mmVariaveis')
    TabOrder = 3
  end
end
