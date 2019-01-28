unit utsedit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, utsadd, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, Vcl.Menus, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit;

type
  TFtsedit = class(TFtsadd)
    procedure FormCreate(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure act_postExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftsedit: TFtsedit;

implementation

uses
  umain, udm;
{$R *.dfm}

procedure TFtsedit.act_closeExecute(Sender: TObject);
begin

Close;
end;

procedure TFtsedit.act_postExecute(Sender: TObject);
begin

   fdatam.fdqry_tsxx.Post;
   Application.MessageBox('图书信息编辑成功！', '提示', MB_OK + MB_ICONINFORMATION);
close;
end;

procedure TFtsedit.FormCreate(Sender: TObject);
begin


  if fdatam.fdqry_tsxx.Active = false then
  begin
    fdatam.fdqry_tsxx.Active := True;
    if fdatam.fdqry_tsxx.RecordCount < 1 then
    begin
      Application.MessageBox('没有品种可以编辑', '提示', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else
    begin
      fdatam.fdqry_tsxx.Edit;
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
      fdatam.fdqry_tsxx.Edit;
    end;

  end;

end;

end.

