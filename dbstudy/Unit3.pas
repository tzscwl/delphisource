unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, System.Actions,
  Vcl.ActnList, dxBar, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1mingcheng: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1guige: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1danwei: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1beizhu: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1lingshoujia: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tiaoma: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1pinyinma: TcxGridDBColumn;
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    actlst1: TActionList;
    new: TAction;
    edit: TAction;
    delete: TAction;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrlrgbtn3: TdxBarLargeButton;
    procedure newExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Unit2,Unit4;
{$R *.dfm}

procedure TForm3.newExecute(Sender: TObject);
begin
    Form4:=Tform4.Create(Application);
    DataModule2.ado1.Append;
    Form4.ShowModal;
    Form4.Free;
end;

end.
