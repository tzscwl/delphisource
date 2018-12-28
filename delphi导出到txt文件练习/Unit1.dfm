object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 40
    Top = 24
    Width = 73
    Height = 33
    Caption = #26597#35810
    TabOrder = 0
  end
  object btn2: TButton
    Left = 136
    Top = 24
    Width = 73
    Height = 33
    Caption = #23548#20986
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 24
    Width = 81
    Height = 33
    Caption = #23548#20837
    TabOrder = 2
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 80
    Width = 265
    Height = 321
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mmo1: TMemo
    Left = 312
    Top = 80
    Width = 233
    Height = 313
    Lines.Strings = (
      'mmo1')
    TabOrder = 4
  end
  object pb1: TProgressBar
    Left = 16
    Top = 407
    Width = 529
    Height = 25
    TabOrder = 5
  end
  object ds1: TDataSource
    DataSet = fdqry1
    Left = 552
    Top = 32
  end
  object dlgOpen1: TOpenDialog
    Filter = #25991#26412#25991#20214'|*.txt'
    Left = 408
    Top = 24
  end
  object dlgSave1: TSaveDialog
    FileName = #26410#21629#21517'.txt'
    Filter = #25991#26412#25991#20214'(text)|*.txt'
    Left = 448
    Top = 24
  end
  object fdqry1: TFDQuery
    Active = True
    Connection = con1
    SQL.Strings = (
      'select * from test')
    Left = 600
    Top = 32
  end
  object fdgxwtcrsr1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 648
    Top = 32
  end
  object fdphysmscsdrvrlnk1: TFDPhysMSAccessDriverLink
    Left = 496
    Top = 24
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=G:\'#31243#24207#28304#25991#20214'\Delphi\delphi'#23548#20986#21040'txt'#25991#20214#32451#20064'\test.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 360
    Top = 24
  end
end
