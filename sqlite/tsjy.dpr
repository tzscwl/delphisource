program tsjy;

uses
  Vcl.Forms,
  udm in 'udm.pas' {fdatam: TDataModule},
  umain in 'umain.pas' {Fmain},
  ubase in 'ubase.pas' {fbase},
  utsxx in 'utsxx.pas' {ftsxx},
  Uygdl in 'Uygdl.pas' {fygdl},
  utsadd in 'utsadd.pas' {Ftsadd},
  utsedit in 'utsedit.pas' {Ftsedit},
  Utsxxcx in 'Utsxxcx.pas' {ftsxxcx},
  ujyts in 'ujyts.pas' {Fjyts},
  ughts in 'ughts.pas' {fghts},
  utjfx in 'utjfx.pas' {ftjfx};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '̨�����ͼ��軹ϵͳ';
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(Tfdatam, fdatam);
  Application.CreateForm(Tfbase, fbase);
  Application.Run;
end.