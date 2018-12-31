unit utsxx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxGridExportLink;

type
  Tftsxx = class(Tfbase)
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrlrgbtn4: TdxBarLargeButton;
    act_add: TAction;
    act_edit: TAction;
    act_delete: TAction;
    act_select: TAction;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn;
    dxbrlrgbtn5: TdxBarLargeButton;
    act_export: TAction;
    dlgSave1: TSaveDialog;
    dxbrlrgbtn6: TdxBarLargeButton;
    act_close: TAction;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure act_exportExecute(Sender: TObject);
    procedure act_addExecute(Sender: TObject);
    procedure act_editExecute(Sender: TObject);
    procedure act_deleteExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure act_selectExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftsxx: Tftsxx;

implementation

uses
  udm, umain, utsadd, utsedit,Utsxxcx;
{$R *.dfm}

procedure Tftsxx.act_addExecute(Sender: TObject);
begin
  inherited;
  ftsadd := TFtsadd.Create(self);
  Ftsadd.ShowModal;
  Ftsadd.Free;
end;

procedure Tftsxx.act_closeExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure Tftsxx.act_deleteExecute(Sender: TObject);
begin
  inherited;
  if fdatam.fdqry_tsxx.Active = false then
  begin
    fdatam.fdqry_tsxx.Active := True;
    if fdatam.fdqry_tsxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以删除', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      case Application.MessageBox('是否确认要删除？', '提示', MB_OKCANCEL + MB_ICONQUESTION) of
        IDOK:
          begin
            fdatam.fdqry_tsxx.Delete;
          end;
        IDCANCEL:
          begin
            Fmain.dxlrtwndwmngr1.Show('提示','删除操作取消');
          end;
      end;

    end;
  end
  else

  begin
    if fdatam.fdqry_tsxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以编辑', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      case Application.MessageBox('是否确认要删除？', '提示', MB_OKCANCEL + MB_ICONQUESTION) of
        IDOK:
          begin
            fdatam.fdqry_tsxx.Delete;
          end;
        IDCANCEL:
          begin
            Fmain.dxlrtwndwmngr1.Show('提示','删除操作取消');
          end;
      end;

    end;

  end;
end;

procedure Tftsxx.act_editExecute(Sender: TObject);
begin
  inherited;
  Ftsedit := TFtsedit.Create(self);
  Ftsedit.ShowModal;
  Ftsedit.Free;
end;

procedure Tftsxx.act_exportExecute(Sender: TObject);
begin
  inherited;

  dlgSave1.Execute;
  ExportGridToXLSX(dlgSave1.FileName, cxgrd1);

end;

procedure Tftsxx.act_selectExecute(Sender: TObject);
begin
  inherited;
  ftsxxcx:=Tftsxxcx.Create(self);
  ftsxxcx.ShowModal;
  ftsxxcx.Free;
end;

procedure Tftsxx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
        Action := caFree;
end;

procedure Tftsxx.FormCreate(Sender: TObject);
begin
  inherited;
  if (Fmain.stat1.Panels[0].text = '') then
  begin
    Application.MessageBox('当前没有员工登录！', '警告', MB_OK + MB_ICONWARNING);
    Exit;
  end
  else
  begin
    fdatam.fdqry_tsxx.Open;
  end;

end;

procedure Tftsxx.FormDestroy(Sender: TObject);
begin
  inherited;
ftsxx:=nil;
end;

end.

