unit Uygadd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.StdCtrls, System.Actions, Vcl.ActnList, cxTextEdit,
  cxDBEdit;

type
  Tfygadd = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure act_postExecute(Sender: TObject);
    procedure act_cancelExecute(Sender: TObject);
    procedure cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fygadd: Tfygadd;

implementation

uses
  umain, udm;
{$R *.dfm}

procedure Tfygadd.act_cancelExecute(Sender: TObject);
begin
  fdatam.fdqry_ygxx.Cancel;
  close;
end;

procedure Tfygadd.act_postExecute(Sender: TObject);
begin
  fdatam.fdqry1.Close;
  fdatam.fdqry1.SQL.Clear;
  fdatam.fdqry1.SQL.Add('select * from pub_yhbmb where dlh=:x');
  fdatam.fdqry1.ParamByName('x').Value := Trim(cxdbtxtdt1.Text);
  fdatam.fdqry1.Open;
  if fdatam.fdqry1.RecordCount > 0 then
  begin
    fdatam.fdqry_khxx.Cancel;
    Application.MessageBox('编号重复！', '提示', MB_OK + MB_ICONINFORMATION);
    cxdbtxtdt1.SelectAll;
    cxdbtxtdt2.Text := '';
    cxdbtxtdt3.Text := '';
    cxdbtxtdt1.SetFocus;
    Exit;
  end
  else
  begin
    fdatam.fdqry_ygxx.Post;
    Application.MessageBox('增加成功！', '提示', MB_OK + MB_ICONINFORMATION);
    close;
  end;

end;

procedure Tfygadd.cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FindNextControl(ActiveControl, True, false, false).SetFocus;
    fdatam.fdqry1.Close;
    fdatam.fdqry1.SQL.Clear;
    fdatam.fdqry1.SQL.Add('select * from pub_yhbmb where dlh=:x');
    fdatam.fdqry1.ParamByName('x').Value := Trim(cxdbtxtdt1.Text);
    fdatam.fdqry1.Open;
    if fdatam.fdqry1.RecordCount > 0 then
    begin
      fdatam.fdqry_khxx.Cancel;
      Application.MessageBox('编号重复！', '提示', MB_OK + MB_ICONINFORMATION);
      cxdbtxtdt1.SelectAll;
      cxdbtxtdt2.Text := '';
      cxdbtxtdt3.Text := '';
      cxdbtxtdt1.SetFocus;
    end;
  end;

end;

procedure Tfygadd.FormCreate(Sender: TObject);
begin
  if fdatam.fdqry_ygxx.Active = false then
  begin
    fdatam.fdqry_ygxx.Active := True;
    fdatam.fdqry_ygxx.Append;
  end
  else
  begin
    fdatam.fdqry_ygxx.Append;
  end;
end;

end.

