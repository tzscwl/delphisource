inherited fghts: Tfghts
  Caption = #24402#36824#22270#20070
  ClientHeight = 653
  ClientWidth = 1104
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  ExplicitWidth = 1120
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1104
    Height = 193
    Align = alTop
    TabOrder = 4
    ExplicitLeft = -64
    ExplicitWidth = 1134
    object lbl1: TLabel
      Left = 25
      Top = 7
      Width = 112
      Height = 30
      AutoSize = False
      Caption = #20070#21495'/'#26465#30721
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 527
      Top = 7
      Width = 47
      Height = 30
      AutoSize = False
      Caption = #20070#21517
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 27
      Top = 47
      Width = 80
      Height = 30
      AutoSize = False
      Caption = #21830#21697#26631#35782
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 25
      Top = 87
      Width = 56
      Height = 30
      AutoSize = False
      Caption = #23450#20215
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 526
      Top = 47
      Width = 88
      Height = 30
      AutoSize = False
      Caption = #20986#29256#31038
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 527
      Top = 87
      Width = 87
      Height = 30
      AutoSize = False
      Caption = #21360#21047#26102#38388
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 27
      Top = 130
      Width = 54
      Height = 30
      AutoSize = False
      Caption = #29256#27425
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 287
      Top = 130
      Width = 48
      Height = 30
      AutoSize = False
      Caption = #21360#27425
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 527
      Top = 130
      Width = 87
      Height = 30
      AutoSize = False
      Caption = #20511#20070#20154
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 775
      Top = 126
      Width = 34
      Height = 30
      AutoSize = False
      Caption = 'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 131
      Top = 7
      Width = 263
      Height = 30
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edt1KeyDown
    end
    object cxdbtxtdt1: TcxDBTextEdit
      Left = 647
      Top = 7
      AutoSize = False
      DataBinding.DataField = 'sm'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 30
      Width = 360
    end
    object cxdbtxtdt2: TcxDBTextEdit
      Left = 131
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'spbs'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 30
      Width = 263
    end
    object cxdbtxtdt3: TcxDBTextEdit
      Left = 647
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'cbsjc'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 30
      Width = 263
    end
    object cxdbtxtdt4: TcxDBTextEdit
      Left = 131
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'dj'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 30
      Width = 263
    end
    object cxdbtxtdt5: TcxDBTextEdit
      Left = 647
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'ysny'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 30
      Width = 263
    end
    object cxdbtxtdt6: TcxDBTextEdit
      Left = 131
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'bc'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 30
      Width = 101
    end
    object cxdbtxtdt7: TcxDBTextEdit
      Left = 341
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'yc'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 30
      Width = 89
    end
    object btnpost: TcxButton
      Left = 976
      Top = 47
      Width = 81
      Height = 47
      Action = act_ghts
      TabOrder = 1
    end
    object btnpost1: TcxButton
      Left = 976
      Top = 110
      Width = 81
      Height = 47
      Action = act_close
      TabOrder = 2
    end
    object cxdbtxtdtyc: TcxDBTextEdit
      Left = 647
      Top = 130
      AutoSize = False
      DataBinding.DataField = 'jhrgh'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 30
      Width = 82
    end
    object cxdbtxtdtjhrgh: TcxDBTextEdit
      Left = 828
      Top = 126
      AutoSize = False
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = fdatam.ds_ghts
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 30
      Width = 82
    end
  end
  object cxgrd1: TcxGrid [1]
    Left = 0
    Top = 193
    Width = 1104
    Height = 460
    Align = alClient
    TabOrder = 5
    ExplicitLeft = -64
    ExplicitTop = 101
    ExplicitWidth = 1134
    ExplicitHeight = 543
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = fdatam.ds_ghts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #24403#21069#26080#25968#25454#26174#31034
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      object cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn
        Caption = #21830#21697#26631#35782
        DataBinding.FieldName = 'spbs'
        Width = 72
      end
      object cxgrdbclmnGrid1DBTableView1sl: TcxGridDBColumn
        Caption = #25968#37327
        DataBinding.FieldName = 'sl'
        Width = 51
      end
      object cxgrdbclmnGrid1DBTableView1czy: TcxGridDBColumn
        Caption = #25805#20316#20154
        DataBinding.FieldName = 'czy'
        Width = 56
      end
      object cxgrdbclmnGrid1DBTableView1jhrgh: TcxGridDBColumn
        Caption = #20511#20070#20154
        DataBinding.FieldName = 'jhrgh'
        Width = 63
      end
      object cxgrdbclmnGrid1DBTableView1jssj: TcxGridDBColumn
        Caption = #20511#20070#26102#38388
        DataBinding.FieldName = 'jssj'
        Width = 91
      end
      object cxgrdbclmnGrid1DBTableView1hssj: TcxGridDBColumn
        Caption = #36824#20070#26102#38388
        DataBinding.FieldName = 'hssj'
        Width = 79
      end
      object cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn
        Caption = #20070#21495
        DataBinding.FieldName = 'isbn'
        Width = 121
      end
      object cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn
        Caption = #20070#21517
        DataBinding.FieldName = 'sm'
        Width = 266
      end
      object cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn
        Caption = #23450#20215
        DataBinding.FieldName = 'dj'
        Width = 60
      end
      object cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn
        Caption = #20986#29256#31038
        DataBinding.FieldName = 'cbsjc'
        Width = 116
      end
      object cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn
        Caption = #21360#21047#26102#38388
        DataBinding.FieldName = 'ysny'
        Width = 67
      end
      object cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn
        Caption = #29256#27425
        DataBinding.FieldName = 'bc'
        Width = 30
      end
      object cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn
        Caption = #21360#27425
        DataBinding.FieldName = 'yc'
        Width = 30
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  inherited actlst1: TActionList
    Left = 920
    Top = 448
    object act_ghts: TAction
      Caption = #36824#20070
      OnExecute = act_ghtsExecute
    end
    object act_close: TAction
      Caption = #20851#38381
      OnExecute = act_closeExecute
    end
  end
  inherited dxbrmngr1: TdxBarManager
    Left = 824
    Top = 456
    PixelsPerInch = 96
  end
end
