object f_bolum_ekle_2: Tf_bolum_ekle_2
  Left = 370
  Top = 222
  Caption = 'B'#246'l'#252'm Ekle 2'
  ClientHeight = 241
  ClientWidth = 271
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 32
    Top = 144
    Width = 49
    Height = 13
    Caption = 'Bolum Kod'
  end
  object Label2: TLabel
    Left = 32
    Top = 177
    Width = 44
    Height = 13
    Caption = 'Bolum Ad'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 225
    Height = 120
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
  object Edit1: TEdit
    Left = 96
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 201
    Width = 121
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 96
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 112
    Top = 40
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
end
