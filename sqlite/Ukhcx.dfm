object fkhcx: Tfkhcx
  Left = 0
  Top = 0
  Caption = #23458#25143#26597#35810
  ClientHeight = 489
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cbb1: TcxComboBox
    Left = 24
    Top = 16
    ParentFont = False
    Properties.Items.Strings = (
      #22995#21517
      #30005#35805
      #20250#21592#21345#21495)
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.ButtonStyle = bts3D
    Style.IsFontAssigned = True
    TabOrder = 0
    Text = #22995#21517
    Width = 177
  end
  object cxtxtdt1: TcxTextEdit
    Left = 216
    Top = 16
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = GB2312_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 33
    Width = 265
  end
  object btncx: TcxButton
    Left = 487
    Top = 15
    Width = 97
    Height = 33
    Action = act_cx
    TabOrder = 2
  end
  object btnclose: TcxButton
    Left = 590
    Top = 15
    Width = 97
    Height = 33
    Action = act_close
    TabOrder = 3
  end
  object cxgrd1: TcxGrid
    Left = 0
    Top = 66
    Width = 986
    Height = 423
    Align = alBottom
    TabOrder = 4
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = fdatam.ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = #24403#21069#26080#25968#25454#21487#26174#31034
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      object cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
      end
      object cxgrdbclmnGrid1DBTableView1xm: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'xm'
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
      end
      object cxgrdbclmnGrid1DBTableView1dh: TcxGridDBColumn
        Caption = #30005#35805
        DataBinding.FieldName = 'dh'
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
      end
      object cxgrdbclmnGrid1DBTableView1hykh: TcxGridDBColumn
        Caption = #20250#21592#21345#21495
        DataBinding.FieldName = 'hykh'
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
      end
      object cxgrdbclmnGrid1DBTableView1syzt: TcxGridDBColumn
        Caption = #20351#29992#29366#24577
        DataBinding.FieldName = 'syzt'
        HeaderAlignmentHorz = taCenter
        Styles.Header = Fmain.cxstyl_head
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
  object actlst1: TActionList
    Left = 440
    Top = 80
    object act_cx: TAction
      Caption = #26597#35810
      OnExecute = act_cxExecute
    end
    object act_close: TAction
      Caption = #36864#20986
      OnExecute = act_closeExecute
    end
  end
end
