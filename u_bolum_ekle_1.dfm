object f_bolum_ekle_1: Tf_bolum_ekle_1
  Left = 370
  Top = 222
  Caption = 'B'#246'l'#252'm Ekle 1'
  ClientHeight = 187
  ClientWidth = 298
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 225
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bolum_kod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bolum_ad'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 144
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'bolum'
    Left = 48
    Top = 32
    object ADOTable1bolum_kod: TWordField
      FieldName = 'bolum_kod'
    end
    object ADOTable1bolum_ad: TStringField
      FieldName = 'bolum_ad'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 112
    Top = 40
  end
end
