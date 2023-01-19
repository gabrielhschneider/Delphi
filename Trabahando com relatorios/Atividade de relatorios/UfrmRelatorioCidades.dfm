object frmRelatorioCidades: TfrmRelatorioCidades
  Left = 0
  Top = 0
  Caption = 'frmRelatorioCidades'
  ClientHeight = 329
  ClientWidth = 424
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
    Left = 16
    Top = 8
    Width = 281
    Height = 153
    Caption = 'Filtros'
    TabOrder = 0
    object label1: TLabel
      Left = 16
      Top = 21
      Width = 80
      Height = 13
      Caption = 'Nome da cidade:'
    end
    object btnExportar: TButton
      Left = 16
      Top = 112
      Width = 81
      Height = 25
      Caption = 'Exportar'
      TabOrder = 0
      OnClick = btnExportarClick
    end
    object btnVisuaizar: TButton
      Left = 174
      Top = 112
      Width = 83
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = btnVisuaizarClick
    end
    object DBLookupCidade: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 249
      Height = 21
      KeyField = 'city_id'
      ListField = 'city'
      ListSource = dtsLookUpCidade
      TabOrder = 2
    end
  end
  object dtsLookUpCidade: TDataSource
    DataSet = LookUpCidade
    Left = 344
    Top = 40
  end
  object LookUpCidade: TFDTable
    IndexFieldNames = 'city_id'
    Connection = DataModule1.FDConexao
    TableName = 'sakila.city'
    Left = 350
    Top = 96
  end
  object QryCidade: TFDQuery
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      
        'SELECT CITY, CITY_ID FROM SAKILA.CITY WHERE (CITY LIKE :CITY) OR' +
        ' (COALESCE(:CITY, '#39#39')='#39#39')')
    Left = 216
    Top = 192
    ParamData = <
      item
        Name = 'CITY'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryCidade
    BCDToCurrency = False
    Left = 120
    Top = 192
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44937.814583958300000000
    ReportOptions.LastChange = 44939.792324780100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 192
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 168.189085000000000000
          Top = 11.338590000000000000
          Width = 381.732530000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Cidades')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'os:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = -15.118120000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '________________________________________________________________' +
              '________________________________________________________________' +
              '____')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'CITY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CITY"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2ADDRESS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 7.559060000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."ADDRESS"]')
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
    Left = 312
    Top = 192
  end
  object QryEndereco: TFDQuery
    IndexFieldNames = 'city_id'
    MasterSource = DataSource1
    MasterFields = 'city_id'
    Connection = DataModule1.FDConexao
    SQL.Strings = (
      'SELECT ADDRESS, CITY_ID '
      '  FROM ADDRESS')
    Left = 72
    Top = 256
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = QryEndereco
    BCDToCurrency = False
    Left = 176
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = QryCidade
    Left = 264
    Top = 256
  end
end
