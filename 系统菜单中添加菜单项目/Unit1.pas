unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure sysmenu(var msg:TWMMenuSelect); message wm_syscommand;
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
 i:Integer;
begin
 i:=GetSystemMenu(Handle,False);
 AppendMenu(i,MF_SEPARATOR,0,nil);
 AppendMenu(i,MF_STRING,100,'�ҵĲ˵�(&E)');
end;

procedure TForm1.sysmenu(var msg:TWMMenuSelect);
begin
    if msg.IDItem=100 then
       ShowMessage('��ѡ�����Լ���ӵĲ˵���')
    else
    inherited;
end;
end.
