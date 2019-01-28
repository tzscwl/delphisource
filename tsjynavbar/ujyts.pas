unit ujyts;

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
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, Vcl.StdCtrls, Vcl.Menus,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ExtCtrls;

type
  TFjyts = class(Tfbase)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    pnl1: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    cxdbtxtdt1: TcxDBTextEdit;
    lbl2: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    lbl3: TLabel;
    cxdbtxtdt3: TcxDBTextEdit;
    lbl4: TLabel;
    cxdbtxtdt4: TcxDBTextEdit;
    lbl5: TLabel;
    cxdbtxtdt5: TcxDBTextEdit;
    lbl6: TLabel;
    cxdbtxtdt6: TcxDBTextEdit;
    lbl7: TLabel;
    cxdbtxtdt7: TcxDBTextEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    btnpost: TcxButton;
    act_post: TAction;
    act_close: TAction;
    btnpost1: TcxButton;
    cxgrdbclmnGrid1DBTableView1isbn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1spbs: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1sm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1dj: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cbsjc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ysny: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1bc: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1yc: TcxGridDBColumn;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    btn1: TcxButton;
    lbl_jsr: TLabel;
    edt_id: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure act_postExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fjyts: TFjyts;

implementation

uses
  umain, udm, Ukhcx, utsadd;
{$R *.dfm}

procedure TFjyts.act_closeExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFjyts.act_postExecute(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    Application.MessageBox('����������ţ�', '����', MB_OK + MB_ICONSTOP);
    edt1.Text := string.Empty;
    edt1.SetFocus;
    cxdbtxtdt1.Text := string.Empty;
    cxdbtxtdt2.Text := string.Empty;
    cxdbtxtdt3.Text := string.Empty;
    cxdbtxtdt4.Text := string.Empty;
    cxdbtxtdt5.Text := string.Empty;
    cxdbtxtdt6.Text := string.Empty;
    cxdbtxtdt7.Text := string.Empty;
  end
  else
  begin
    if fdatam.fdqry_tsxxj.RecordCount > 0 then
    begin
      fdatam.fdqry_js.FieldByName('spbs').Value := cxdbtxtdt2.Text;
      fdatam.fdqry_js.FieldByName('sl').Value := 1;
      fdatam.fdqry_js.FieldByName('czy').Value := Fmain.stat1.Panels[0].Text;
      fdatam.fdqry_js.FieldByName('jhrgh').Value := edt_id.Text;
      fdatam.fdqry_js.FieldByName('jssj').Value := now;
      fdatam.fdqry_js.Post;
      case Application.MessageBox('�����ɹ����Ƿ��������?', '��ʾ', MB_OKCANCEL + MB_ICONQUESTION) of
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
            fdatam.fdqry_js.Append;
          end;
        IDCANCEL:
          begin
            Close;
          end;
      end;
    end

  end;

end;

procedure TFjyts.btn1Click(Sender: TObject);
begin
  inherited;
  //��ʾ�ͻ���ѯ����
  fkhcx := Tfkhcx.Create(Self);
  fkhcx.ShowModal;
  fkhcx.Free;
end;

procedure TFjyts.edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    if edt1.Text <> '' then
    begin
      fdatam.fdqry_tsxxj.Close;
      fdatam.fdqry_tsxxj.ParamByName('t').Value := Trim(edt1.text);
      fdatam.fdqry_tsxxj.Prepare;
      fdatam.fdqry_tsxxj.Open;
      if fdatam.fdqry_tsxxj.RecordCount > 0 then
      begin
        fkhcx := Tfkhcx.Create(Self);
        fkhcx.ShowModal;
        fkhcx.Free;
      end
      else
      begin
        case Application.MessageBox('û�������Ż����룬������ͼ����Ϣ��', '����', MB_YESNO + MB_ICONQUESTION) of
          IDYES:
            begin
              Ftsadd := TFtsadd.Create(Self);
              Ftsadd.ShowModal;
              Ftsadd.Free;
            end;
          IDNO:
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
            end;
        end;

      end;
    end
    else
    begin
      Application.MessageBox('��Ż����벻��Ϊ�գ�', '��ʾ', MB_OK + MB_ICONSTOP);
      edt1.SetFocus;
    end;
  end;
end;

procedure TFjyts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFjyts.FormCreate(Sender: TObject);
begin
  inherited;
  if not fdatam.fdqry_js.active then
  begin
    fdatam.fdqry_js.active := True;
    fdatam.fdqry_js.Append;
  end;
end;

procedure TFjyts.FormDestroy(Sender: TObject);
begin
  inherited;
  Fjyts := nil;
end;

end.
