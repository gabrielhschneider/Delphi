object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 378
  ClientWidth = 528
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
  object Label1: TLabel
    Left = 169
    Top = 8
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label2: TLabel
    Left = 313
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object edtCPF: TEdit
    Left = 169
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtCPF'
  end
  object edtNome: TEdit
    Left = 313
    Top = 24
    Width = 207
    Height = 21
    TabOrder = 1
    Text = 'edtNome'
  end
  object Memo1: TMemo
    Left = 169
    Top = 66
    Width = 351
    Height = 293
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnAdd: TButton
    Left = 8
    Top = 22
    Width = 130
    Height = 25
    Caption = 'btnAdd'
    TabOrder = 3
    OnClick = btnAddClick
  end
  object btnTryGetValue: TButton
    Left = 8
    Top = 53
    Width = 130
    Height = 25
    Caption = 'btnTryGetValue'
    TabOrder = 4
    OnClick = btnTryGetValueClick
  end
  object btnRemove: TButton
    Left = 8
    Top = 84
    Width = 130
    Height = 25
    Caption = 'btnRemove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object btnTrimExcess: TButton
    Left = 8
    Top = 115
    Width = 130
    Height = 25
    Caption = 'btnTrimExcess'
    TabOrder = 6
    OnClick = btnTrimExcessClick
  end
  object btnAddOrSetValue: TButton
    Left = 8
    Top = 146
    Width = 130
    Height = 25
    Caption = 'btnAddOrSetValue'
    TabOrder = 7
  end
  object btnListaValue: TButton
    Left = 8
    Top = 241
    Width = 130
    Height = 25
    Caption = 'btnListaValue'
    TabOrder = 8
    OnClick = btnListaValueClick
  end
  object btnClear: TButton
    Left = 8
    Top = 272
    Width = 130
    Height = 25
    Caption = 'btnClear'
    TabOrder = 9
    OnClick = btnClearClick
  end
  object OnKeyNotify: TButton
    Left = 8
    Top = 303
    Width = 130
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 10
  end
  object OnValueNotify: TButton
    Left = 8
    Top = 334
    Width = 130
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 11
  end
  object btnListaKey: TButton
    Left = 8
    Top = 210
    Width = 130
    Height = 25
    Caption = 'ListaKey'
    TabOrder = 12
    OnClick = btnListaKeyClick
  end
  object btnContainsKey: TButton
    Left = 8
    Top = 177
    Width = 130
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 13
    OnClick = btnContainsKeyClick
  end
end
