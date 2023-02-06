object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumindo Meu Primeiro WS SOAP'
  ClientHeight = 70
  ClientWidth = 435
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
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 280
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 280
    Top = 27
    Width = 76
    Height = 14
    Caption = 'lblResultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnEchoDouble: TBitBtn
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = 'echoDouble'
    TabOrder = 1
    OnClick = btnEchoDoubleClick
  end
  object btnHelloWorld: TBitBtn
    Left = 168
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Hello World'
    TabOrder = 2
    OnClick = btnHelloWorldClick
  end
end
