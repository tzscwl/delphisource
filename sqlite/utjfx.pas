unit utjfx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  Tftjfx = class(Tfbase)
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    act_whts: TAction;
    act_yhts: TAction;
    act_rstj: TAction;
    act_sjtj: TAction;
    act_tstj: TAction;
    dxbrlrgbtn6: TdxBarLargeButton;
    act_close: TAction;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure act_whtsExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftjfx: Tftjfx;

implementation
    uses umain,udm;
{$R *.dfm}

procedure Tftjfx.act_closeExecute(Sender: TObject);
begin
  inherited;
       Close;
end;

procedure Tftjfx.act_whtsExecute(Sender: TObject);
begin
  inherited;
  fdatam.fdqry_whts.Close;
  fdatam.fdqry_whts.Prepare;
  fdatam.fdqry_whts.Open;
end;

procedure Tftjfx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
Action:=caFree;
end;

procedure Tftjfx.FormDestroy(Sender: TObject);
begin
  inherited;
  ftjfx:=nil;
end;

end.
