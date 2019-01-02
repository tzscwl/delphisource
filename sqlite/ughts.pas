unit ughts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, Vcl.ExtCtrls;

type
  Tfghts = class(Tfbase)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TEdit;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    cxdbtxtdt3: TcxDBTextEdit;
    cxdbtxtdt4: TcxDBTextEdit;
    cxdbtxtdt5: TcxDBTextEdit;
    cxdbtxtdt6: TcxDBTextEdit;
    cxdbtxtdt7: TcxDBTextEdit;
    btnpost: TcxButton;
    btnpost1: TcxButton;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    act_ghts: TAction;
    act_close: TAction;
    cxdbtxtdtyc: TcxDBTextEdit;
    cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sl: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1czy: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jhrgh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jssj: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hssj: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn;
    lbl10: TLabel;
    cxdbtxtdtjhrgh: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure act_ghtsExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fghts: Tfghts;

implementation

uses
  umain, udm, utsxx;
{$R *.dfm}

procedure Tfghts.act_closeExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfghts.act_ghtsExecute(Sender: TObject);
begin
  inherited;
   //fdatam.fdqry_hscz  ;
  if edt1.Text <> '' then
  begin
    if fdatam.fdqry_ghts.RecordCount > 0 then
    begin
      fdatam.fdqry_hscz.Close;
      fdatam.fdqry_hscz.ParamByName('i').Value := cxdbtxtdtjhrgh.Text;
      fdatam.fdqry_hscz.Prepare;
      fdatam.fdqry_hscz.Open;
      fdatam.fdqry_hscz.Edit;
      fdatam.fdqry_hscz.FieldByName('hssj').Value := Now;
      fdatam.fdqry_hscz.Post;
      fdatam.fdqry_ghts.Close;
      fdatam.fdqry_ghts.ParamByName('t').Value := Trim(edt1.text);
      fdatam.fdqry_ghts.Prepare;
      fdatam.fdqry_ghts.Open;

      case Application.MessageBox('操作成功，是否继续还书?', '提示', MB_OKCANCEL + MB_ICONQUESTION) of
        IDOK:
          begin
            edt1.Text := string.Empty;
            edt1.SetFocus;
            cxdbtxtdt1.Text := string.Empty;
            cxdbtxtdt2.Text := string.Empty;
            cxdbtxtdt3.Text := string.Empty;
            cxdbtxtdt4.Text := string.Empty;
            cxdbtxtdt5.Text := string.Empty;
            cxdbtxtdt6.Text := string.Empty;
            cxdbtxtdt7.Text := string.Empty;
            cxdbtxtdtyc.Text := string.Empty;
            cxdbtxtdtjhrgh.Text := string.Empty;
          end;
        IDCANCEL:
          begin
            Close;
          end;
      end;

    end;

  end;
end;

procedure Tfghts.edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if edt1.Text <> '' then
    begin
      fdatam.fdqry_ghts.Close;
      fdatam.fdqry_ghts.ParamByName('t').Value := Trim(edt1.text);
      fdatam.fdqry_ghts.Prepare;
      fdatam.fdqry_ghts.Open;
      btnpost.SetFocus;
    end
    else
    begin
      Application.MessageBox('书号或条码不能为空！', '提示', MB_OK + MB_ICONSTOP);
      edt1.SetFocus;
    end;
  end;
end;

procedure Tfghts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure Tfghts.FormDestroy(Sender: TObject);
begin
  inherited;
  fghts := nil;
end;

end.

