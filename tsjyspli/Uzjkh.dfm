object fzjkh: Tfzjkh
  Left = 0
  Top = 0
  Caption = #22686#21152#23458#25143
  ClientHeight = 260
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 45
    Top = 68
    Width = 107
    Height = 25
    Caption = #30005#35805'('#24517#22635')'#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 45
    Top = 25
    Width = 107
    Height = 25
    Caption = #22995#21517'('#24517#22635')'#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 45
    Top = 111
    Width = 95
    Height = 25
    Caption = #20250#21592#21345#21495#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 45
    Top = 154
    Width = 95
    Height = 25
    Caption = #20351#29992#29366#24577#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object cxdbtxtdt1: TcxDBTextEdit
    Left = 150
    Top = 17
    AutoSize = False
    DataBinding.DataField = 'xm'
    DataBinding.DataSource = fdatam.ds_khxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyDown = cxdbtxtdt1KeyDown
    Height = 33
    Width = 185
  end
  object cxdbtxtdt2: TcxDBTextEdit
    Left = 150
    Top = 60
    AutoSize = False
    DataBinding.DataField = 'dh'
    DataBinding.DataSource = fdatam.ds_khxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    OnKeyDown = cxdbtxtdt1KeyDown
    Height = 33
    Width = 185
  end
  object cxdbtxtdt3: TcxDBTextEdit
    Left = 150
    Top = 103
    AutoSize = False
    DataBinding.DataField = 'hykh'
    DataBinding.DataSource = fdatam.ds_khxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    OnKeyDown = cxdbtxtdt1KeyDown
    Height = 33
    Width = 185
  end
  object cbb1: TcxDBComboBox
    Left = 150
    Top = 146
    DataBinding.DataField = 'syzt'
    DataBinding.DataSource = fdatam.ds_khxx
    ParentFont = False
    Properties.Items.Strings = (
      'true'
      'false')
    Properties.Nullstring = 'true'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    OnKeyDown = cxdbtxtdt1KeyDown
    Width = 185
  end
  object btn_post: TButton
    Left = 112
    Top = 200
    Width = 57
    Height = 33
    Action = act_post
    TabOrder = 4
  end
  object btn_close: TButton
    Left = 224
    Top = 200
    Width = 57
    Height = 33
    Action = act_close
    TabOrder = 5
  end
  object actlst_khbj: TActionList
    Left = 296
    Top = 200
    object act_post: TAction
      Caption = #20445#23384
      OnExecute = act_postExecute
    end
    object act_close: TAction
      Caption = #20851#38381
      OnExecute = act_closeExecute
    end
  end
end
