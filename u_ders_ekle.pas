unit u_ders_ekle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  Tf_ders_ekle = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery2say: TIntegerField;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ders_ekle: Tf_ders_ekle;

implementation
    uses unit1;
{$R *.dfm}

procedure Tf_ders_ekle.Button1Click(Sender: TObject);
begin
ADOQuery2.Close;
ADOQuery2.Parameters[0].Value:=Edit1.Text;
ADOQuery2.Open;
Label2.Caption:=inttostr(ADOQuery2say.Value);
if ADOQuery2say.Value=0 then
  begin
  ADOQuery1.Close;
  ADOQuery1.Parameters[0].Value:=Edit1.Text;
  ADOQuery1.ExecSQL;
  Edit1.Text:='';
  ShowMessage('Kayýt Yapýldý');

  end
  else
  ShowMessage('Bu ders zaten kayýtlý');
end;

end.
