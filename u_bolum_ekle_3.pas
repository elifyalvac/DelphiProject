unit u_bolum_ekle_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  Tf_bolum_ekle_3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label1: TLabel;
    q_bolum_ekle: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bolum_ekle_3: Tf_bolum_ekle_3;

implementation
    uses unit1;
{$R *.dfm}

procedure Tf_bolum_ekle_3.Button1Click(Sender: TObject);
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
  q_bolum_ekle.Close;
  q_bolum_ekle.Parameters[0].Value:=strtoint(Edit1.Text);
  q_bolum_ekle.Parameters[1].Value:=Edit2.Text;
  q_bolum_ekle.ExecSQL;
  Edit1.Text:='';
  Edit2.Text:='';
  ShowMessage('Kayýt Tamamlandý');
  end
  else
  ShowMessage('Hatalý Giriþ');
end;

end.
