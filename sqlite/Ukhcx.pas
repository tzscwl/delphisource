unit Ukhcx;

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
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  Tfkhcx = class(TForm)
    cbb1: TcxComboBox;
    cxtxtdt1: TcxTextEdit;
    btncx: TcxButton;
    btnclose: TcxButton;
    actlst1: TActionList;
    act_cx: TAction;
    act_close: TAction;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1xm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1dh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hykh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1syzt: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    procedure act_cxExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkhcx: Tfkhcx;

implementation

uses
  umain, udm;
{$R *.dfm}

procedure Tfkhcx.act_closeExecute(Sender: TObject);
begin
Close;
end;

procedure Tfkhcx.act_cxExecute(Sender: TObject);
var
  tj, yj: string;
begin
  if cxtxtdt1.Text <> '' then
  begin
    tj := Trim(cxtxtdt1.Text);
    case cbb1.ItemIndex of
      0:
        begin
          fdatam.fdqry1.SQL.Clear;
         // fdatam.fdqry_tsxx.SQL.Add('select * from bm_jbxxk where isbn=' + tj);
          fdatam.fdqry1.SQL.Add('select * from khxx where xm=' + QuotedStr(tj));
          fdatam.fdqry1.Open;
        end;
      1:
        begin
          fdatam.fdqry1.SQL.Clear;
          fdatam.fdqry1.SQL.Add('select * from khxx where dh=' + QuotedStr(tj));
          fdatam.fdqry1.Prepare;
          fdatam.fdqry1.Open;
        end;
      2:
        begin
          fdatam.fdqry1.SQL.Clear;
          fdatam.fdqry1.SQL.Add('select * from khxx where hykh=' + QuotedStr(tj));
          fdatam.fdqry1.Prepare;
          fdatam.fdqry1.Open;
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

end.

