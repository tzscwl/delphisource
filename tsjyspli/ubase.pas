unit ubase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  cxClasses, dxBar, System.Actions, Vcl.ActnList;

type
  Tfbase = class(TForm)
    actlst1: TActionList;
    dxbrmngr1: TdxBarManager;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbase: Tfbase;

implementation

{$R *.dfm}

end.
