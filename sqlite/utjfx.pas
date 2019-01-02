unit utjfx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ubase, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, cxClasses, dxBar, System.Actions, Vcl.ActnList;

type
  Tftjfx = class(Tfbase)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
