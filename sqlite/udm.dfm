object fdatam: Tfdatam
  OldCreateOrder = False
  Height = 348
  Width = 374
  object ds1: TDataSource
    DataSet = fdqry1
    Left = 56
    Top = 96
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
      'select  top 100 * from bm_jbxxk'
      '')
    Left = 16
    Top = 152
  end
  object ds_tsxx: TDataSource
    DataSet = fdqry_tsxx
    Left = 64
    Top = 152
  end
  object fdqry_tsxxj: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from bm_jbxxk j'
      'where j.tm=:t or j.isbn=:t')
    Left = 16
    Top = 208
    ParamData = <
      item
        Name = 'T'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_tsxxj: TDataSource
    DataSet = fdqry_tsxxj
    Left = 72
    Top = 216
  end
  object ds_js: TDataSource
    DataSet = fdqry_js
    Left = 168
    Top = 208
  end
  object fdqry_js: TFDQuery
    Active = True
    Connection = con1
    SQL.Strings = (
      'select * from jhsb')
    Left = 136
    Top = 200
  end
  object fdqry_ygxx: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from pub_yhbmb'
      'where bm='#39'03'#39)
    Left = 184
    Top = 136
  end
  object ds_ygxx: TDataSource
    DataSet = fdqry_ygxx
    Left = 240
    Top = 136
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=G:\'#31243#24207#28304#25991#20214'\Delphi\sqlite\tsjy.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 88
  end
  object ds_ghts: TDataSource
    DataSet = fdqry_ghts
    Left = 280
    Top = 216
  end
  object fdqry_ghts: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from jhsb  h,bm_jbxxk j'
      
        'where h.spbs=j.spbs and h.hssj is null  and ( j.isbn=:t or j.tm=' +
        ':t) '
      '')
    Left = 232
    Top = 208
    ParamData = <
      item
        Name = 'T'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object fdqry_hscz: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from jhsb  h where h.id=:i'
      '')
    Left = 232
    Top = 280
    ParamData = <
      item
        Name = 'I'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
