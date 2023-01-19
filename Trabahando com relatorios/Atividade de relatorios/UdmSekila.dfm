object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 166
  Width = 311
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=sakila'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\mysql\Documents\libmysql.dll'
    Left = 192
    Top = 54
  end
end
