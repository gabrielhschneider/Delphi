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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 200
    Top = 24
    Width = 201
    Height = 220
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 129
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnAdd: TBitBtn
    Left = 24
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnRemove: TBitBtn
    Left = 24
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 3
    OnClick = btnRemoveClick
  end
  object btnListar: TBitBtn
    Left = 24
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btnListarClick
  end
  object btnCapacity: TBitBtn
    Left = 24
    Top = 157
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 5
    OnClick = btnCapacityClick
  end
  object btnCount: TBitBtn
    Left = 24
    Top = 188
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = btnCountClick
  end
  object btnNotify: TBitBtn
    Left = 24
    Top = 219
    Width = 75
    Height = 25
    Caption = 'Notify'
    TabOrder = 7
    OnClick = btnNotifyClick
  end
end
