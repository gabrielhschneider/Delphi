object fraHistorico: TfraHistorico
  Left = 0
  Top = 0
  Width = 334
  Height = 209
  TabOrder = 0
  object Label1: TLabel
    Left = 88
    Top = 5
    Width = 157
    Height = 13
    Caption = 'D'#233'bitos agrupados por categoria'
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 24
    Width = 320
    Height = 177
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Width = 200
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 256
    Top = 120
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0009436174
      65676F726961010049000000010005574944544802000200640005546F74616C
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 120
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object ClientDataSet1Total: TCurrencyField
      FieldName = 'Total'
    end
  end
end
