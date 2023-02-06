object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 468
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline fraCadastro1: TfraCadastro
    Left = -2
    Top = -9
    Width = 400
    Height = 475
    TabOrder = 0
    ExplicitLeft = -2
    ExplicitTop = -9
    ExplicitHeight = 475
    inherited DBGrid1: TDBGrid
      Height = 368
    end
  end
  inline fraHistorico1: TfraHistorico
    Left = 396
    Top = 104
    Width = 338
    Height = 209
    TabOrder = 1
    ExplicitLeft = 396
    ExplicitTop = 104
    ExplicitWidth = 338
    inherited Label1: TLabel
      Left = 96
      ExplicitLeft = 96
    end
    inherited DBGrid1: TDBGrid
      Left = 8
      Width = 321
    end
  end
  inline fraLog1: TfraLog
    Left = 400
    Top = 311
    Width = 330
    Height = 156
    TabOrder = 2
    ExplicitLeft = 400
    ExplicitTop = 311
    ExplicitWidth = 330
    inherited Memo1: TMemo
      Width = 324
      ExplicitWidth = 324
    end
  end
  inline fraSaldo1: TfraSaldo
    Left = 400
    Top = 0
    Width = 330
    Height = 98
    TabOrder = 3
    ExplicitLeft = 400
    ExplicitWidth = 330
  end
end
