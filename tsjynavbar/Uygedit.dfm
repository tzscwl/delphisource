object fygedit: Tfygedit
  Left = 0
  Top = 0
  Caption = #36164#26009#32534#36753
  ClientHeight = 261
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 24
    Width = 57
    Height = 25
    Caption = #32534#21495#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 67
    Width = 57
    Height = 25
    Caption = #37096#38376#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 110
    Width = 76
    Height = 25
    Caption = #29992#25143#21517#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 153
    Width = 57
    Height = 25
    Caption = #21475#20196#65306
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object cxdbtxtdt1: TcxDBTextEdit
    Left = 128
    Top = 16
    DataBinding.DataField = 'dlh'
    DataBinding.DataSource = fdatam.ds_ygxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyDown = cxdbtxtdt1KeyDown
    Width = 129
  end
  object cxdbtxtdt2: TcxDBTextEdit
    Left = 128
    Top = 59
    DataBinding.DataField = 'bm'
    DataBinding.DataSource = fdatam.ds_ygxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 1
    OnKeyDown = cxdbtxtdt1KeyDown
    Width = 129
  end
  object cxdbtxtdt3: TcxDBTextEdit
    Left = 128
    Top = 102
    DataBinding.DataField = 'yhm'
    DataBinding.DataSource = fdatam.ds_ygxx
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    OnKeyDown = cxdbtxtdt1KeyDown
    Width = 129
  end
  object cxdbtxtdt4: TcxDBTextEdit
    Left = 128
    Top = 145
    DataBinding.DataField = 'kl'
    DataBinding.DataSource = fdatam.ds_ygxx
    ParentFont = False
    Properties.PasswordChar = '*'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    OnKeyDown = cxdbtxtdt1KeyDown
    Width = 129
  end
  object btnpost: TButton
    Left = 40
    Top = 200
    Width = 97
    Height = 41
    Action = act_post
    TabOrder = 4
  end
  object btncancel: TButton
    Left = 160
    Top = 200
    Width = 97
    Height = 41
    Action = act_cancel
    TabOrder = 5
  end
  object actlst1: TActionList
    Left = 160
    Top = 200
    object act_post: TAction
      Caption = #20445#23384
      OnExecute = act_postExecute
    end
    object act_cancel: TAction
      Caption = #21462#28040
      OnExecute = act_cancelExecute
    end
  end
end
