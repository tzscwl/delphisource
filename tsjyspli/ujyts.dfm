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
      Caption = #20511#20070#20154'ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object lbl_jsr: TLabel
      Left = 719
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
    object btnpost: TcxButton
      Left = 976
      Top = 47
      Width = 81
      Height = 47
      Action = act_post
      TabOrder = 8
    end
    object btnpost1: TcxButton
      Left = 976
      Top = 110
      Width = 81
      Height = 47
      Action = act_close
      TabOrder = 9
    end
    object btn1: TcxButton
      Left = 695
      Top = 123
      Width = 18
      Height = 34
      Caption = 'btn1'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000026744558745469746C65005175657374696F6E3B48656C703B446F63
        756D656E746174696F6E3B576861746DE9F9460000022649444154785EA5915F
        48536114C0BF9BB9456414F4143DF4E2C3B096D5A215982F45D8266D7A6916AC
        AD6C3D6881C1DA62A145A56DBEAC55776E6A7738B7D8166EB4B61EC664FD5BE1
        9F4867593ED81F425A324B119B3D9DBECF2E62702F221DF8712F87737E9CEF1C
        04008BC4DE7D478181AF0807C5B10A5340BE1C94BA318ED497E38B3DFF0802FD
        7F9BADA1BEEDD6F0B0BFE5C1F00F67620C6E84DE4C9CB225DA0F9DF3141391D2
        FC905F409AAFFB9ECB1DF1D1FCA34C16AC8101303A5390FE320D6C6A1CB4CD89
        E9F2336E19A913121498D9977DA9F19F70ED7E3FD4DE8C455B23AF630D6D4FE1
        45EE37F806B370B03EF80A0B0A850485A76DC97CF46D16AA2D11D84DB7D24626
        C99A3AD290FC360FCCE02C9419FC792C100B4E506E602D52BA6D68077DC77E58
        63D87CF462E473289383CE915FD0E0FB00722DDB8B0522C11D60569302CC1A73
        C7335B4BCF2878866640618EC19EE3EDE1E203755BC9227905FBF45E24D775A1
        C79FE6894C5C7FABF7FDEDD404284DF1FCB68A2B15444A9AF76ABDFC57909D60
        D1AE9A7B68A7A69308449A4BC1A0B4DA8D77E1B0102186929FEC46187E819476
        23A9DA854821F78C8D984D98B564ECFD7A3FE2E017482A192451DE5DB8466DA3
        47D5E449674CAE2799AAF38C9AE496152C8975676D895C786C0E9AA31F4176CC
        95C3B9A22505CB0A8A54C69EC90BF86C3AD7089428EC9338B77E25025169E555
        5D6915332539629FDA22ABD39325AE44407127DB40E0FE2921C17FF107A751E7
        8D9716647A0000000049454E44AE426082}
      PaintStyle = bpsGlyph
      TabOrder = 10
      OnClick = btn1Click
    end
    object edt_id: TEdit
      Left = 648
      Top = 128
      Width = 41
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
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
