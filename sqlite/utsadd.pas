unit utsadd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxClasses,
  cxTextEdit, cxDBEdit, System.Actions, Vcl.ActnList;

type
  TFtsadd = class(TForm)
    actlst1: TActionList;
    act_post: TAction;
    act_close: TAction;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbtxtdt3: TcxDBTextEdit;
    cxdbtxtdt4: TcxDBTextEdit;
    cxdbtxtdt5: TcxDBTextEdit;
    cxdbtxtdt6: TcxDBTextEdit;
    cxdbtxtdt7: TcxDBTextEdit;
    cxdbtxtdt8: TcxDBTextEdit;
    cxdbtxtdt9: TcxDBTextEdit;
    cxdtstylcntrlr1: TcxEditStyleController;
    btnpost: TcxButton;
    btnclose: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure act_postExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftsadd: TFtsadd;

implementation

uses
  umain, udm;
{$R *.dfm}

procedure TFtsadd.act_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure TFtsadd.act_postExecute(Sender: TObject);
begin
  fdatam.fdqry_tsxx.Post;
  Application.MessageBox('图书信息增加成功！', '提示', MB_OK + MB_ICONINFORMATION);
  close;
end;

procedure TFtsadd.cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FindNextControl(ActiveControl, True, false, false).SetFocus;
  end;

end;

procedure TFtsadd.FormCreate(Sender: TObject);
begin
  if fdatam.fdqry_tsxx.Active = false then
  begin
    fdatam.fdqry_tsxx.Active := True;
    fdatam.fdqry_tsxx.Append;
  end
  else
  begin
    fdatam.fdqry_tsxx.Append;
  end;

end;

end.

