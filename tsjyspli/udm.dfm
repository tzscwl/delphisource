object fdatam: Tfdatam
  OldCreateOrder = False
  Height = 348
  Width = 374
  object ds1: TDataSource
    DataSet = fdqry1
    Left = 206
    Top = 8
  end
  object fdqry1: TFDQuery
    Connection = con1
    Left = 176
    Top = 8
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 60
    Top = 16
  end
  object fdphysqltdrvrlnk1: TFDPhysSQLiteDriverLink
    Left = 99
    Top = 16
  end
  object fdqry_tsxx: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select  top 100 * from bm_jbxxk'
      '')
    Left = 12
    Top = 64
  end
  object ds_tsxx: TDataSource
    DataSet = fdqry_tsxx
    Left = 48
    Top = 64
  end
  object fdqry_tsxxj: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from bm_jbxxk j'
      'where j.tm=:t or j.isbn=:t')
    Left = 10
    Top = 120
    ParamData = <
      item
        Name = 'T'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object ds_tsxxj: TDataSource
    DataSet = fdqry_tsxxj
    Left = 42
    Top = 128
  end
  object ds_js: TDataSource
    DataSet = fdqry_js
    Left = 141
    Top = 64
  end
  object fdqry_js: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from jhsb')
    Left = 105
    Top = 64
  end
  object fdqry_ygxx: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from pub_yhbmb'
      'where bm='#39'03'#39
      'order by dlh')
    Left = 191
    Top = 64
  end
  object ds_ygxx: TDataSource
    DataSet = fdqry_ygxx
    Left = 237
    Top = 64
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=G:\'#31243#24207#28304#25991#20214'\Delphi\tsjy.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 14
    Top = 8
  end
  object ds_ghts: TDataSource
    DataSet = fdqry_ghts
    Left = 296
    Top = 8
  end
  object fdqry_ghts: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select * from jhsb  h,bm_jbxxk j'
      
        'where h.spbs=j.spbs and h.hssj is null  and ( j.isbn=:t or j.tm=' +
        ':t) '
      '')
    Left = 257
    Top = 8
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
    Left = 299
    Top = 64
    ParamData = <
      item
        Name = 'I'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object ds_whts: TDataSource
    DataSet = fdqry_whts
    Left = 126
    Top = 128
  end
  object fdqry_whts: TFDQuery
    Connection = con1
    SQL.Strings = (
      
        'select j.isbn as '#20070#21495',j.sm as '#20070#21517',j.dj as '#23450#20215',j.cbsjc as '#20986#29256#31038',h.jhrgh' +
        ' as '#20511#20070#20154' from jhsb  h,bm_jbxxk j'
      'where h.spbs=j.spbs and h.hssj is null')
    Left = 96
    Top = 128
  end
  object ds_khxx: TDataSource
    DataSet = fdqry_khxx
    Left = 214
    Top = 136
  end
  object fdqry_khxx: TFDQuery
    Connection = con1
    SQL.Strings = (
      'select top 100  *  from khxx')
    Left = 176
    Top = 128
  end
  object ds4: TDataSource
    DataSet = fdqry4
    Left = 302
    Top = 128
  end
  object fdqry4: TFDQuery
    Connection = con1
    Left = 272
    Top = 128
  end
  object ds5: TDataSource
    DataSet = fdqry5
    Left = 38
    Top = 200
  end
  object fdqry5: TFDQuery
    Connection = con1
    Left = 8
    Top = 200
  end
  object ds6: TDataSource
    DataSet = fdqry6
    Left = 134
    Top = 192
  end
  object fdqry6: TFDQuery
    Connection = con1
    Left = 96
    Top = 192
  end
end
