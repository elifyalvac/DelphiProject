unit u_bolum_ekle_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  Tf_bolum_ekle_2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1bolum_kod: TWordField;
    ADOTable1bolum_ad: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bolum_ekle_2: Tf_bolum_ekle_2;

implementation
    uses unit1;
{$R *.dfm}

procedure Tf_bolum_ekle_2.Button1Click(Sender: TObject);
var sayi,kod:integer;
begin

//val(Edit1.Text,sayi,kod);

if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
  ADOTable1.Insert;
  ADOTable1bolum_kod.Value:=strtoint(Edit1.Text);
  ADOTable1bolum_ad.Value:=Edit2.Text;
  ADOTable1.Post;
  Edit1.Text:='';
  Edit2.Text:='';
  end
  else
  ShowMessage('Hatalý Giriþ');
end;

procedure Tf_bolum_ekle_2.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

procedure Tf_bolum_ekle_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
end;

end.
