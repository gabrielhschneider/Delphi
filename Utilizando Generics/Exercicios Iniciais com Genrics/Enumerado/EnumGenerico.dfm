object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 32
    Top = 40
    Width = 171
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object btnMes: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'M'#234's'
    TabOrder = 1
    OnClick = btnMesClick
  end
  object btnDias: TButton
    Left = 128
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Dias'
    TabOrder = 2
    OnClick = btnDiasClick
  end
end
