object fdatam: Tfdatam
  OldCreateOrder = False
  Height = 286
  Width = 350
  object ds1: TDataSource
    DataSet = fdqry1
    Left = 48
    Top = 96
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=G:\'#31243#24207#28304#25991#20214'\Delphi\sqlite\xinhuadb.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object fdqry1: TFDQuery
    Connection = con1
    Left = 8
    Top = 88
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 16
  end
  object fdphysqltdrvrlnk1: TFDPhysSQLiteDriverLink
    Left = 144
    Top = 24
  end
  object fdqry_tsxx: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from bm_jbxxk'
      'LIMIT  100')
    Left = 8
    Top = 152
  end
  object ds_tsxx: TDataSource
    DataSet = fdqry_tsxx
    Left = 56
    Top = 152
  end
end
