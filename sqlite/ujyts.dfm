inherited Fjyts: TFjyts
  Caption = #20511#38405#22270#20070
  ClientHeight = 736
  ClientWidth = 1134
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1150
  ExplicitHeight = 775
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrd1: TcxGrid [0]
    Left = 0
    Top = 193
    Width = 1134
    Height = 543
    Align = alClient
    TabOrder = 0
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = fdatam.ds_tsxxj
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #24403#21069#26080#25968#25454#26174#31034
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      Styles.ContentEven = cxstyl1
      Styles.ContentOdd = cxstyl1
      object cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn
        Caption = #20070#21495
        DataBinding.FieldName = 'isbn'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 150
      end
      object cxgrdbclmnGrid1DBTableView1tm: TcxGridDBColumn
        Caption = #26465#30721
        DataBinding.FieldName = 'tm'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 150
      end
      object cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn
        Caption = #21830#21697#26631#35782
        DataBinding.FieldName = 'spbs'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 100
      end
      object cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn
        Caption = #20070#21517
        DataBinding.FieldName = 'sm'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 400
      end
      object cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn
        Caption = #23450#20215
        DataBinding.FieldName = 'dj'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 80
      end
      object cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn
        Caption = #20986#29256#31038
        DataBinding.FieldName = 'cbsjc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 150
      end
      object cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn
        Caption = #21360#21047#24180#26376
        DataBinding.FieldName = 'ysny'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 150
      end
      object cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn
        Caption = #29256#27425
        DataBinding.FieldName = 'bc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 50
      end
      object cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn
        Caption = #21360#27425
        DataBinding.FieldName = 'yc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
        Width = 50
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1134
    Height = 193
    Align = alTop
    TabOrder = 1
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
      Top = 127
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
      Top = 127
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
      Top = 127
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
      DataBinding.DataSource = fdatam.ds_tsxxj
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 30
      Width = 360
    end
    object cxdbtxtdt2: TcxDBTextEdit
      Left = 131
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'spbs'
      DataBinding.DataSource = fdatam.ds_tsxxj
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #26032#23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 30
      Width = 263
    end
    object cxdbtxtdt3: TcxDBTextEdit
      Left = 647
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'cbsjc'
      DataBinding.DataSource = fdatam.ds_tsxxj
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
      Width = 263
    end
    object cxdbtxtdt4: TcxDBTextEdit
      Left = 131
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'dj'
      DataBinding.DataSource = fdatam.ds_tsxxj
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
    object cxdbtxtdt5: TcxDBTextEdit
      Left = 647
      Top = 87
      AutoSize = False
      DataBinding.DataField = 'ysny'
      DataBinding.DataSource = fdatam.ds_tsxxj
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
    object cxdbtxtdt6: TcxDBTextEdit
      Left = 131
      Top = 127
      AutoSize = False
      DataBinding.DataField = 'bc'
      DataBinding.DataSource = fdatam.ds_tsxxj
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
      Width = 101
    end
    object cxdbtxtdt7: TcxDBTextEdit
      Left = 341
      Top = 127
      AutoSize = False
      DataBinding.DataField = 'yc'
      DataBinding.DataSource = fdatam.ds_tsxxj
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
      Width = 89
    end
    object cbb1: TcxLookupComboBox
      Left = 648
      Top = 127
      AutoSize = False
      Properties.KeyFieldNames = 'xm'
      Properties.ListColumns = <
        item
          FieldName = 'xm'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = fdatam.ds_khxx
      TabOrder = 8
      Height = 30
      Width = 257
    end
    object btnpost: TcxButton
      Left = 976
      Top = 47
      Width = 81
      Height = 47
      Action = act_post
      TabOrder = 9
    end
    object btnpost1: TcxButton
      Left = 976
      Top = 110
      Width = 81
      Height = 47
      Action = act_close
      TabOrder = 10
    end
  end
  inherited actlst1: TActionList
    Left = 1040
    Top = 288
    object act_post: TAction
      Caption = #20511#20070
      OnExecute = act_postExecute
    end
    object act_close: TAction
      Caption = #20851#38381
      OnExecute = act_closeExecute
    end
  end
  inherited dxbrmngr1: TdxBarManager
    Left = 984
    Top = 272
    PixelsPerInch = 96
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 904
    Top = 304
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
    end
  end
end
