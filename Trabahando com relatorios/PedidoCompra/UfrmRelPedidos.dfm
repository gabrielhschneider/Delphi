object frmRelPedidos: TfrmRelPedidos
  Left = 0
  Top = 0
  Caption = 'frmRelPedidos'
  ClientHeight = 338
  ClientWidth = 542
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 209
    Caption = 'Filtros'
    TabOrder = 0
    object label1: TLabel
      Left = 16
      Top = 21
      Width = 53
      Height = 13
      Caption = 'Comprador'
    end
    object Label2: TLabel
      Left = 16
      Top = 85
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object btnExportar: TButton
      Left = 88
      Top = 168
      Width = 81
      Height = 25
      Caption = 'Exportar'
      TabOrder = 0
      OnClick = btnExportarClick
    end
    object btnVisuaizar: TButton
      Left = 182
      Top = 168
      Width = 83
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = btnVisuaizarClick
    end
    object DBLookupComprador: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 249
      Height = 21
      KeyField = 'Id'
      ListField = 'Nome'
      ListSource = dtsLookUpComprador
      TabOrder = 2
    end
    object DBLookupFornecedor: TDBLookupComboBox
      Left = 16
      Top = 104
      Width = 249
      Height = 21
      KeyField = 'Id'
      ListField = 'Nome'
      ListSource = dtsLookUpFornecedor
      TabOrder = 3
    end
  end
  object dtsLookUpComprador: TDataSource
    DataSet = LookUpComprador
    Left = 344
    Top = 32
  end
  object LookUpComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = DataModule1.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 456
    Top = 40
  end
  object dtsLookUpFornecedor: TDataSource
    DataSet = LookUpFornecedor
    Left = 344
    Top = 104
  end
  object LookUpFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = DataModule1.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 456
    Top = 104
  end
  object QryPedido: TFDQuery
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      'Select  pedidocompra.id,'
      #9'pedidocompra.numero,'
      #9'pedidocompra.datapedido,'
      '        comprador.nome comprador,'
      '        comprador.cargo,'
      '        fornecedor.nome fornecedor,'
      #9'fornecedor.cnpj'
      ' from pedidocompra'
      ' left join comprador on pedidocompra.idcomprador = comprador.id'
      
        ' left join fornecedor on pedidocompra.idfornecedor = fornecedor.' +
        'id'
      
        'where (idcomprador = :idcomprador or coalesce(:idcomprador,0) = ' +
        '0)'
      
        '  and (idfornecedor = :idfornecedor or coalesce(:idfornecedor, 0' +
        ') = 0);')
    Left = 304
    Top = 232
    ParamData = <
      item
        Name = 'IDCOMPRADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryPedido
    BCDToCurrency = False
    Left = 232
    Top = 232
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.856786898100000000
    ReportOptions.LastChange = 44938.888472592600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 232
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 187.086735000000000000
          Top = 15.118120000000000000
          Width = 343.937230000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio Pedidos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."id"]')
        end
        object frxDBDataset1datapedido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'datapedido'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."datapedido"]')
        end
        object frxDBDataset1comprador: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 49.133890000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'comprador'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."comprador"]')
        end
        object frxDBDataset1fornecedor: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 49.133890000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'fornecedor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."fornecedor"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Comprador:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Numero:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '____________________________________________________________')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Id Produto:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2IDPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'IDPRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."IDPRODUTO"]')
        end
        object frxDBDataset2PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRODUTO"]')
        end
        object frxDBDataset2QUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."QUANTIDADE"]')
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 72
    Top = 232
  end
  object QryItemCompra: TFDQuery
    IndexFieldNames = 'IdPedidoCompra'
    MasterSource = DataSource1
    MasterFields = 'id'
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      'SELECT ITEMCOMPRA.IdPedidoCompra,'
      '       ITEMCOMPRA.IDPRODUTO,'
      '       PRODUTO.DESCRICAO PRODUTO,'
      '       ITEMCOMPRA.QUANTIDADE'
      '  FROM ITEMCOMPRA'
      '  LEFT JOIN PRODUTO ON PRODUTO.ID = ITEMCOMPRA.IDPRODUTO')
    Left = 144
    Top = 288
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = QryItemCompra
    BCDToCurrency = False
    Left = 232
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = QryPedido
    Left = 376
    Top = 232
  end
end
