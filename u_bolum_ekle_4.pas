unit u_bolum_ekle_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tf_bolum_ekle_4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label1: TLabel;
    q_bolum_ekle: TADOQuery;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1bolum_kod: TWordField;
    ADOQuery1bolum_ad: TStringField;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bolum_ekle_4: Tf_bolum_ekle_4;

implementation
    uses unit1;
{$R *.dfm}

procedure Tf_bolum_ekle_4.Button1Click(Sender: TObject);
begin
if ADOQuery1.RecordCount=0 then
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
end
else
ShowMessage('BDGridde veri var');
end;

procedure Tf_bolum_ekle_4.Edit2Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=Edit2.Text;
ADOQuery1.Open;
label3.Caption:=inttostr(ADOQuery1.RecordCount);
end;

end.
