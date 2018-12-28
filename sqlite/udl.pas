unit udl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  Tfdl = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btndl: TcxButton;
    btnqx: TcxButton;
    actlst1: TActionList;
    act_dl: TAction;
    act_qx: TAction;
    lbl3: TLabel;
    procedure act_dlExecute(Sender: TObject);
    procedure act_qxExecute(Sender: TObject);
  private
    { Private declarations }
  public
  var
    { Public declarations }
  end;

var
  fdl: Tfdl;

implementation

uses
  udm, umain;
{$R *.dfm}

procedure Tfdl.act_dlExecute(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    Application.MessageBox('工号不能为空！', '警告', MB_OK + MB_ICONWARNING);
    edt1.Text := '';
    edt1.SetFocus;
    Exit;
  end;
  if edt2.Text = '' then
  begin
    Application.MessageBox('密码不能为空！', '警告', MB_OK + MB_ICONWARNING);
    edt2.Text := '';
    edt2.SetFocus;
    Exit;
  end;
  fdatam.fdqry1.Close;
  with fdatam.fdqry1 do
  try
    sql.Clear;
    SQL.Add('select * from pub_yhbmb where dlh=:yh and kl=:mm');
    ParamByName('yh').Value:=Trim(edt1.Text);
    ParamByName('mm').Value:= Trim(edt2.Text);
    Prepare;
    Open;
  finally

  end;
  if fdatam.fdqry1.RecordCount>0 then
  begin
     fmain.stat1.Panels[0].Text:=fdl.edt1.Text;
     Fmain.stat1.Panels[1].Text:=fdatam.fdqry1.FieldByName('yhm').AsString;
     Fmain.Show;
     Self.hide;
  end;
end;

procedure Tfdl.act_qxExecute(Sender: TObject);
begin
Application.Terminate;
end;

end.

