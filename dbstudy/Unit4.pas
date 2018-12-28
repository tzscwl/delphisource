unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, dxGDIPlusClasses;

type
  TForm_addshangpin = class(TForm)
    btn1: TcxDBButtonEdit;
    cxlbl1: TcxLabel;
    btn2: TcxDBButtonEdit;
    cxlbl2: TcxLabel;
    btn3: TcxDBButtonEdit;
    cxlbl3: TcxLabel;
    btn4: TcxDBButtonEdit;
    cxlbl4: TcxLabel;
    btn5: TcxDBButtonEdit;
    cxlbl5: TcxLabel;
    pnl1: TPanel;
    btnpost: TcxButton;
    btnclose: TcxButton;
    actlst1: TActionList;
    act_post: TAction;
    act_close: TAction;
    pnl2: TPanel;
    img1: TImage;
    procedure act_postExecute(Sender: TObject);
    procedure act_closeExecute(Sender: TObject);
    procedure btn1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_addshangpin: TForm_addshangpin;

implementation
  uses Unit2,Unit1;
{$R *.dfm}

procedure TForm_addshangpin.act_closeExecute(Sender: TObject);
begin
Close;
end;

procedure TForm_addshangpin.act_postExecute(Sender: TObject);
begin
  DataModule2.ado1.Post;
  DataModule2.alert.Show('提示','保存成功') ;
  Close;
end;

procedure TForm_addshangpin.btn1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then
   FindNextControl(ActiveControl,True,False,false).SetFocus;

end;

end.
