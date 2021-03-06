unit umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, cxClasses, cxLookAndFeels,
  dxSkinsForm, Vcl.ExtCtrls, dxBar, System.Actions, Vcl.ActnList, cxPC,
  dxBarBuiltInMenu, dxTabbedMDI, cxLookAndFeelPainters, cxGraphics,
  dxAlertWindow, cxStyles;

type
  TFmain = class(TForm)
    stat1: TStatusBar;
    dxskncntrlr1: TdxSkinController;
    dxbrmngr1: TdxBarManager;
    tmr1: TTimer;
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    actlst1: TActionList;
    act_tsxx: TAction;
    act_dl: TAction;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxtbdmdmngr1: TdxTabbedMDIManager;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    dxbrlrgbtn6: TdxBarLargeButton;
    act_jieyue: TAction;
    act_guihuan: TAction;
    act_tongji: TAction;
    act_tuichu: TAction;
    dxlrtwndwmngr1: TdxAlertWindowManager;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl_head: TcxStyle;
    dxbrlrgbtn7: TdxBarLargeButton;
    act_custom: TAction;
    dxbrlrgbtn8: TdxBarLargeButton;
    act_employee: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr1Timer(Sender: TObject);
    procedure act_tsxxExecute(Sender: TObject);
    procedure act_dlExecute(Sender: TObject);
    procedure act_tuichuExecute(Sender: TObject);
    procedure act_jieyueExecute(Sender: TObject);
    procedure act_guihuanExecute(Sender: TObject);
    procedure act_tongjiExecute(Sender: TObject);
    procedure act_customExecute(Sender: TObject);
    procedure act_employeeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmain: TFmain;

implementation

uses
  utsxx, udm, Uygdl, ujyts, ughts, utjfx, ukh, Uygxx;
{$R *.dfm}


procedure TFmain.act_customExecute(Sender: TObject);
begin

  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if not Assigned( fkh) then
    begin
      fkh := Tfkh.Create(self);
      fkh.Show;
    end
    else
    begin
      Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;

end;

procedure TFmain.act_dlExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text <> '') then
  begin
    Application.MessageBox('有员工已经登录，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    fygdl := Tfygdl.Create(Self);
    fygdl.ShowModal;
    fygdl.Free;
  end;

end;

procedure TFmain.act_employeeExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if (Fmain.stat1.Panels[0].text = '03029') then
    begin
      if not Assigned(fygxx) then
      begin
        fygxx := Tfygxx.Create(self);
        fygxx.Show;
      end
      else
      begin
        Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end
    else
    begin
      Application.MessageBox('您没有权限进行操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
end;

procedure TFmain.act_guihuanExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if not Assigned(fghts) then
    begin
      fghts := Tfghts.Create(self);
      fghts.Show;
    end
    else
    begin
      Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
end;

procedure TFmain.act_jieyueExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if not Assigned(fjyts) then
    begin
      fjyts := Tfjyts.Create(self);
      fjyts.Show;
    end
    else
    begin
      Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;

end;

procedure TFmain.act_tongjiExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if not Assigned(ftjfx) then
    begin
      ftjfx := Tftjfx.Create(self);
      ftjfx.Show;
    end
    else
    begin
      Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
end;

procedure TFmain.act_tsxxExecute(Sender: TObject);
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('没有员工登录，请先登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if not Assigned(ftsxx) then
    begin
      ftsxx := Tftsxx.Create(self);
      ftsxx.Show;
    end
    else
    begin
      Application.MessageBox('已经打开了窗口，请勿重复操作！', '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
end;

procedure TFmain.act_tuichuExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFmain.tmr1Timer(Sender: TObject);
begin
  stat1.Panels[3].Text := DateTimeToStr(Now);
end;

end.

