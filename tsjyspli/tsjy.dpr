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
  utjfx in 'utjfx.pas' {ftjfx},
  Ukh in 'Ukh.pas' {fkh},
  Uzjkh in 'Uzjkh.pas' {fzjkh},
  Ukhbj in 'Ukhbj.pas' {fkhbj},
  Ukhcx in 'Ukhcx.pas' {fkhcx},
  Uygxx in 'Uygxx.pas' {fygxx},
  Uygadd in 'Uygadd.pas' {fygadd},
  Uygedit in 'Uygedit.pas' {fygedit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '̨�����ͼ��軹ϵͳ';
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(Tfdatam, fdatam);
  Application.Run;
end.