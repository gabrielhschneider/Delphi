object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
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
  object Memo1: TMemo
    Left = 184
    Top = 24
    Width = 201
    Height = 238
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 137
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnEnqueue: TButton
    Left = 8
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 2
    OnClick = btnEnqueueClick
  end
  object btnDequeue: TButton
    Left = 8
    Top = 82
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = btnDequeueClick
  end
  object btnExtract: TButton
    Left = 8
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
  end
  object btnPeek: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
  end
  object btnTrimExcess: TButton
    Left = 8
    Top = 175
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
  end
  object btnCount: TButton
    Left = 8
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 8
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = btnCapacityClick
  end
end
