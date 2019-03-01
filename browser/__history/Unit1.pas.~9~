unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    wb1: TWebBrowser;
    lbl1: TLabel;
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
var
  mm: string;
begin
  mm := InputBox('注意!', '请输入密码', '');
  if mm = '03333' then
  begin
    Form1.WindowState:=wsMaximized;

    wb1.Navigate('http://192.32.9.3/lyb');
  end
  else
  begin
    Application.MessageBox('非法操作,程序自动退出!', '警告', MB_OK + MB_ICONWARNING);
    Application.Terminate;
  end;

end;

procedure TForm1.img1Click(Sender: TObject);
begin
  wb1.Navigate('http://192.32.9.3/lyb');
end;

procedure TForm1.img2Click(Sender: TObject);
begin
  wb1.GoBack;
end;

procedure TForm1.img3Click(Sender: TObject);
begin
  wb1.Stop;
end;

procedure TForm1.img4Click(Sender: TObject);
begin
  wb1.GoForward;
end;

procedure TForm1.img5Click(Sender: TObject);
begin
  wb1.Refresh;
end;

end.

