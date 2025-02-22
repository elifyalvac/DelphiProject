unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Blm1: TMenuItem;
    BlmEkle1: TMenuItem;
    renci1: TMenuItem;
    renciEkle1: TMenuItem;
    Ders1: TMenuItem;
    DersEkle1: TMenuItem;
    Notlar1: TMenuItem;
    NotGiri1: TMenuItem;
    Raporlar1: TMenuItem;
    rencininNolar1: TMenuItem;
    DerstenAlnanNotlar1: TMenuItem;
    k1: TMenuItem;
    Label1: TLabel;
    Timer1: TTimer;
    BlmEkle21: TMenuItem;
    ADOConnection1: TADOConnection;
    BlmEkle31: TMenuItem;
    BlmEkle41: TMenuItem;
    procedure k1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BlmEkle1Click(Sender: TObject);
    procedure BlmEkle21Click(Sender: TObject);
    procedure BlmEkle31Click(Sender: TObject);
    procedure BlmEkle41Click(Sender: TObject);
    procedure DersEkle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
     uses u_bolum_ekle_1,u_bolum_ekle_2,
     u_bolum_ekle_3,u_bolum_ekle_4,
     u_ders_ekle;
{$R *.dfm}

procedure TForm1.BlmEkle1Click(Sender: TObject);
begin
Application.CreateForm(Tf_bolum_ekle_1, f_bolum_ekle_1);
f_bolum_ekle_1.ShowModal;
f_bolum_ekle_1.Free;
end;

procedure TForm1.BlmEkle21Click(Sender: TObject);
begin
  Application.CreateForm(Tf_bolum_ekle_2, f_bolum_ekle_2);
  f_bolum_ekle_2.showmodal;
  f_bolum_ekle_2.free;
end;

procedure TForm1.BlmEkle31Click(Sender: TObject);
begin
  Application.CreateForm(Tf_bolum_ekle_3, f_bolum_ekle_3);
  f_bolum_ekle_3.showmodal;
  f_bolum_ekle_3.free;
end;

procedure TForm1.BlmEkle41Click(Sender: TObject);
begin
   Application.CreateForm(Tf_bolum_ekle_4, f_bolum_ekle_4);
   f_bolum_ekle_4.showmodal;
   f_bolum_ekle_4.free;
end;

procedure TForm1.DersEkle1Click(Sender: TObject);
begin
  Application.CreateForm(Tf_ders_ekle, f_ders_ekle);
  f_ders_ekle.showmodal;
  f_ders_ekle.free;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var cevap:word;
begin
{cevap:=Application.MessageBox('Eminmisiniz','Çýkýþ',MB_YESNO+MB_ICONWARNING+MB_DEFBUTTON2);
if cevap=mrNo then
   Action:=caNone;   }
end;

procedure TForm1.k1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var s1,s2:string[100];
x:integer;
begin
//MainMenu1.Items[0].Caption:=label1.Caption;
Label1.Caption:=TimeToStr(now);
   x:=Length(form1.Caption);
   s1:=copy(form1.Caption,1,1);
   s2:=copy(form1.Caption,2,x-1);
   form1.Caption:=s2+s1;
end;

end.
