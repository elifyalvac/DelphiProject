unit u_bolum_ekle_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tf_bolum_ekle_1 = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1bolum_kod: TWordField;
    ADOTable1bolum_ad: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bolum_ekle_1: Tf_bolum_ekle_1;

implementation
    uses unit1;
{$R *.dfm}

procedure Tf_bolum_ekle_1.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

procedure Tf_bolum_ekle_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
end;

end.
