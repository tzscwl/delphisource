unit Uzjkh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit;

type
  Tfzjkh = class(TForm)
    actlst_khbj: TActionList;
    act_post: TAction;
    act_close: TAction;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbtxtdt3: TcxDBTextEdit;
    cbb1: TcxDBComboBox;
    btn_post: TButton;
    btn_close: TButton;
    procedure act_closeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure act_postExecute(Sender: TObject);
    procedure cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fzjkh: Tfzjkh;

implementation

uses
  umain, udm;
{$R *.dfm}

procedure Tfzjkh.act_closeExecute(Sender: TObject);
begin
  fdatam.fdqry_khxx.Cancel; //取消增加
  Close;
end;

procedure Tfzjkh.act_postExecute(Sender: TObject);
begin
    fdatam.fdqry1.Close;
    fdatam.fdqry1.SQL.Clear;
    fdatam.fdqry1.SQL.Add('select * from khxx where xm=:x');
    fdatam.fdqry1.ParamByName('x').Value:=Trim(cxdbtxtdt1.Text);
    fdatam.fdqry1.Open;
    if  fdatam.fdqry1.RecordCount>0 then
    begin
      fdatam.fdqry_khxx.Cancel;
      Application.MessageBox('姓名重复！', '提示', MB_OK + MB_ICONINFORMATION);
      cxdbtxtdt1.SelectAll;
      cxdbtxtdt2.Text:='';
      cxdbtxtdt3.Text:='' ;
      cxdbtxtdt1.SetFocus;
      Exit;
    end
    else
    begin
       fdatam.fdqry_khxx.Post;
  Application.MessageBox('信息增加成功！', '提示', MB_OK + MB_ICONINFORMATION);
  close;
    end;

end;

procedure Tfzjkh.cxdbtxtdt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FindNextControl(ActiveControl, True, false, false).SetFocus;
    fdatam.fdqry1.Close;
    fdatam.fdqry1.SQL.Clear;
    fdatam.fdqry1.SQL.Add('select * from khxx where xm=:x');
    fdatam.fdqry1.ParamByName('x').Value:=Trim(cxdbtxtdt1.Text);
    fdatam.fdqry1.Open;
    if  fdatam.fdqry1.RecordCount>0 then
    begin
      fdatam.fdqry_khxx.Cancel;
      Application.MessageBox('姓名重复！', '提示', MB_OK + MB_ICONINFORMATION);
      cxdbtxtdt1.SelectAll;
      cxdbtxtdt2.Text:='';
      cxdbtxtdt3.Text:='' ;
      cxdbtxtdt1.SetFocus;
    end;
  end;

end;

procedure Tfzjkh.FormCreate(Sender: TObject);
begin
  if fdatam.fdqry_khxx.Active = false then
  begin
    fdatam.fdqry_khxx.Active := True;
    fdatam.fdqry_khxx.Append;
  end
  else
  begin
    fdatam.fdqry_khxx.Append;
  end;

end;

end.

