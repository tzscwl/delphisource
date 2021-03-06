unit Uygedit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.StdCtrls, System.Actions, Vcl.ActnList, cxTextEdit,
  cxDBEdit;

type
  Tfygedit = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbtxtdt3: TcxDBTextEdit;
    cxdbtxtdt4: TcxDBTextEdit;
    actlst1: TActionList;
    act_post: TAction;
    act_cancel: TAction;
    btnpost: TButton;
    btncancel: TButton;
    procedure act_postExecute(Sender: TObject);
    procedure act_cancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fygedit: Tfygedit;

implementation
  uses
   umain,udm;
{$R *.dfm}

procedure Tfygedit.act_cancelExecute(Sender: TObject);
begin
close;
end;

procedure Tfygedit.act_postExecute(Sender: TObject);
begin
  fdatam.fdqry_ygxx.Post;
  Application.MessageBox('修改成功！', '提示', MB_OK + MB_ICONINFORMATION);
  close;
end;

procedure Tfygedit.cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FindNextControl(ActiveControl, True, false, false).SetFocus;
  end;

end;

procedure Tfygedit.FormCreate(Sender: TObject);
begin

  if fdatam.fdqry_ygxx.Active = false then
  begin
    fdatam.fdqry_ygxx.Active := True;
    if fdatam.fdqry_ygxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以编辑', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      fdatam.fdqry_ygxx.Edit;
    end;
  end

  else
  begin
    if fdatam.fdqry_ygxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以编辑', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      fdatam.fdqry_ygxx.Edit;
    end;

  end;
end;

end.
