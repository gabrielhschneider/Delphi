object fraCadastro: TfraCadastro
  Left = 0
  Top = 0
  Width = 400
  Height = 240
  TabOrder = 0
  object Label1: TLabel
    Left = 16
    Top = 21
    Width = 51
    Height = 13
    Caption = 'Opera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Shape1: TShape
    Left = 256
    Top = 18
    Width = 1
    Height = 80
  end
  object btnGravar: TButton
    Left = 288
    Top = 18
    Width = 105
    Height = 80
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object cmbOperacao: TComboBox
    Left = 80
    Top = 18
    Width = 145
    Height = 21
    TabOrder = 1
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object cmbCategoria: TComboBox
    Left = 80
    Top = 45
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edtValor: TEdit
    Left = 80
    Top = 77
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 104
    Width = 390
    Height = 126
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Operacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 168
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      770000009619E0BD010000001800000003000000000003000000770009436174
      65676F72696101004900000001000557494454480200020014000556616C6F72
      080004000000010007535542545950450200490006004D6F6E657900084F7065
      726163616F0100490000000100055749445448020002001E000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 168
    object ClientDataSet1Operacao: TStringField
      FieldName = 'Operacao'
      Size = 30
    end
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
    end
    object ClientDataSet1Valor: TCurrencyField
      FieldName = 'Valor'
    end
  end
end
