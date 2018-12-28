unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxBar, System.Actions, Vcl.ActnList, cxClasses,
  cxLookAndFeels, dxSkinsForm, cxPC, dxBarBuiltInMenu, dxTabbedMDI, cxContainer,
  cxEdit;

type
  TForm1 = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    actlst1: TActionList;
    act1: TAction;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxskncntrlr1: TdxSkinController;
    dxtbdmdmngr1: TdxTabbedMDIManager;
    dxbrmngr1Bar2: TdxBar;
    dxbrsbtm1: TdxBarSubItem;
    dxbrsbtm2: TdxBarSubItem;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    dxbrbtn3: TdxBarButton;
    dxbrbtn4: TdxBarButton;
    dxbrbtn5: TdxBarButton;
    dxbrsbtm3: TdxBarSubItem;
    dxbrbtn6: TdxBarButton;
    dxbrbtn7: TdxBarButton;
    dxbrbtn8: TdxBarButton;
    cxdtstylcntrlr1: TcxEditStyleController;
    procedure act1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
      uses Unit2,Unit3;
{$R *.dfm}

procedure TForm1.act1Execute(Sender: TObject);
begin
     if Not Assigned(Form3) then
         begin
         Form3:=TForm3.Create(self);
         Form3.Show;
         end
     else
         begin
         Application.MessageBox('窗口已经打开，请不要重复打开。', '警告', MB_OK +
           MB_ICONWARNING);
         end;


end;

end.
