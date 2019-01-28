unit Utsxxcx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tftsxxcx = class(TForm)
    cbb1: TcxComboBox;
    cxtxtdt1: TcxTextEdit;
    btncx: TcxButton;
    btnclose: TcxButton;
    actlst1: TActionList;
    act_cx: TAction;
    act_close: TAction;
    procedure act_closeExecute(Sender: TObject);
    procedure act_cxExecute(Sender: TObject);
    procedure cbb1PropertiesChange(Sender: TObject);
    procedure cxtxtdt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftsxxcx: Tftsxxcx;

implementation

uses
  udm, utsxx;
{$R *.dfm}

procedure Tftsxxcx.act_closeExecute(Sender: TObject);
begin
  Close;
end;

procedure Tftsxxcx.act_cxExecute(Sender: TObject);
var
  tj, yj: string;
begin
  if cxtxtdt1.Text <> '' then
  begin
    tj := Trim(cxtxtdt1.Text);
    case cbb1.ItemIndex of
      0:
        begin
          fdatam.fdqry_tsxx.SQL.Clear;
         // fdatam.fdqry_tsxx.SQL.Add('select * from bm_jbxxk where isbn=' + tj);
          fdatam.fdqry_tsxx.SQL.Add('select * from bm_jbxxk where isbn=' +QuotedStr(tj)) ;
          fdatam.fdqry_tsxx.Open;
        end;
      1:
        begin
          fdatam.fdqry_tsxx.SQL.Clear;
          fdatam.fdqry_tsxx.SQL.Add('select * from bm_jbxxk where tm=' + QuotedStr(tj));
          fdatam.fdqry_tsxx.Prepare;
          fdatam.fdqry_tsxx.Open;
        end;
      2:
        begin
          tj := '%' + tj + '%';
          yj := 'select * from bm_jbxxk where sm like ' + '''' + tj + '''';        //单引号可以使用两个单引号来输入
          fdatam.fdqry_tsxx.SQL.Clear;
          fdatam.fdqry_tsxx.SQL.Add(yj);
          fdatam.fdqry_tsxx.Prepare;
          fdatam.fdqry_tsxx.Open;
        end;
      3:
        begin
          tj := '%' + tj + '%';
          yj := 'select * from bm_jbxxk where cbsjc like ' + QuotedStr(tj);     //使用quotedstr()函数来实现输入‘
          fdatam.fdqry_tsxx.SQL.Clear;
          fdatam.fdqry_tsxx.SQL.Add(yj);
          fdatam.fdqry_tsxx.Prepare;
          fdatam.fdqry_tsxx.Open;
        end;

    end;
  {  case cbb1.ItemIndex of
      0:
        fdatam.fdqry_tsxx.Locate('isbn', tj, []);       //9787508684604  7560017231
      1:
        fdatam.fdqry_tsxx.Locate('isbn', tj, []);
      2:
        fdatam.fdqry_tsxx.Locate('isbn', tj, []);
      4:
        fdatam.fdqry_tsxx.Locate('isbn', tj, []);
    end;  }
  end
  else
  begin
    Application.MessageBox('条件不能为空！', '提示', MB_OK + MB_ICONWARNING);
    cxtxtdt1.SetFocus;
  end;

end;

procedure Tftsxxcx.cbb1PropertiesChange(Sender: TObject);
begin
 cxtxtdt1.Text:=string.Empty;
 cxtxtdt1.SetFocus;
end;

procedure Tftsxxcx.cxtxtdt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_RETURN then
        begin
       btncx.Click;
        end;

end;

end.

