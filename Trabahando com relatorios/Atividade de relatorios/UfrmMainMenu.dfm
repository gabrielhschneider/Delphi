object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  Caption = 'frmMainMenu'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 296
    Top = 8
    object Ex1: TMenuItem
      Caption = 'MainMenu'
      object Exercicio11: TMenuItem
        Caption = 'Exercicio 1'
        OnClick = Exercicio11Click
      end
      object Exercicio21: TMenuItem
        Caption = 'Exercicio 2'
        OnClick = Exercicio21Click
      end
      object Exercicio22: TMenuItem
        Caption = 'Exercicio 3'
        OnClick = Exercicio22Click
      end
    end
  end
end
