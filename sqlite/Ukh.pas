unit Ukh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxTextEdit;

type
  Tfkh = class(Tfbase)
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    dxbrlrgbtn6: TdxBarLargeButton;
    act_khzl: TAction;
    act_khadd: TAction;
    act_khdel: TAction;
    act_khedit: TAction;
    act_khcx: TAction;
    act_khclose: TAction;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1xm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1dh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hykh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1syzt: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure act_khcloseExecute(Sender: TObject);
    procedure act_khzlExecute(Sender: TObject);
    procedure act_khaddExecute(Sender: TObject);
    procedure act_khdelExecute(Sender: TObject);
    procedure act_kheditExecute(Sender: TObject);
    procedure act_khcxExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkh: Tfkh;

implementation

uses
  umain, udm,Uzjkh,Ukhbj,Ukhcx;
{$R *.dfm}

procedure Tfkh.act_khaddExecute(Sender: TObject);
begin
  inherited;
  fzjkh := TFzjkh.Create(self);
  fzjkh.ShowModal;
  fzjkh.Free;
end;

procedure Tfkh.act_khcloseExecute(Sender: TObject);      //关闭
begin
  inherited;
  Close;
end;

procedure Tfkh.act_khcxExecute(Sender: TObject);
begin
  inherited;
           //客户查询
             fkhcx := Tfkhcx.Create(self);
  fkhcx.ShowModal;
  fkhcx.Free;
end;

procedure Tfkh.act_khdelExecute(Sender: TObject);
begin
  inherited;
      if fdatam.fdqry_khxx.Active = false then
  begin
    fdatam.fdqry_khxx.Active := True;
    if fdatam.fdqry_khxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以删除', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      case Application.MessageBox('是否确认要删除？', '提示', MB_OKCANCEL + MB_ICONQUESTION) of
        IDOK:
          begin
            fdatam.fdqry_khxx.Delete;
          end;
        IDCANCEL:
          begin
            Fmain.dxlrtwndwmngr1.Show('提示', '删除操作取消');
          end;
      end;

    end;
  end
  else

  begin
    if fdatam.fdqry_khxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以删除', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      case Application.MessageBox('是否确认要删除？', '提示', MB_OKCANCEL + MB_ICONQUESTION) of
        IDOK:
          begin
            fdatam.fdqry_khxx.Delete;
          end;
        IDCANCEL:
          begin
            Fmain.dxlrtwndwmngr1.Show('提示', '删除操作取消');
          end;
      end;

    end;

  end;
end;

procedure Tfkh.act_kheditExecute(Sender: TObject);    //客户资料编辑
begin
  inherited;
  fkhbj := Tfkhbj.Create(self);
  fkhbj.ShowModal;
  fkhbj.Free;
end;

procedure Tfkh.act_khzlExecute(Sender: TObject);       //客户资料
begin
  inherited;
  fdatam.fdqry_khxx.Close;
  fdatam.fdqry_khxx.Open;
end;

procedure Tfkh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure Tfkh.FormCreate(Sender: TObject);    //检测用户登录
begin
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('当前没有员工登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    fdatam.fdqry_khxx.Close;
    fdatam.fdqry_khxx.Open;
  end;

end;

procedure Tfkh.FormDestroy(Sender: TObject);
begin
  inherited;
  fkh := nil;
end;

end.

