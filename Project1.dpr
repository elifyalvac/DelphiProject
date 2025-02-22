program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  u_bolum_ekle_1 in 'u_bolum_ekle_1.pas' {f_bolum_ekle_1},
  u_bolum_ekle_2 in 'u_bolum_ekle_2.pas' {f_bolum_ekle_2},
  u_bolum_ekle_3 in 'u_bolum_ekle_3.pas' {f_bolum_ekle_3},
  u_bolum_ekle_4 in 'u_bolum_ekle_4.pas' {f_bolum_ekle_4},
  u_ders_ekle in 'u_ders_ekle.pas' {f_ders_ekle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
