object f_bolum_ekle_4: Tf_bolum_ekle_4
  Left = 384
  Top = 222
  Caption = 'B'#246'l'#252'm Ekle 4'
  ClientHeight = 295
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Bolum Ad'
  end
  object Label1: TLabel
    Left = 254
    Top = 32
    Width = 49
    Height = 13
    Caption = 'Bolum Kod'
  end
  object Label3: TLabel
    Left = 168
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 318
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 318
    Top = 65
    Width = 121
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 84
    Width = 225
    Height = 203
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
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
  object q_bolum_ekle: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'x'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'y'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'insert into bolum values(:x,:y)')
    Left = 246
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from bolum'
      'where bolum_ad like '#39'%'#39'+:x +'#39'%'#39)
    Left = 32
    Top = 64
    object ADOQuery1bolum_kod: TWordField
      FieldName = 'bolum_kod'
    end
    object ADOQuery1bolum_ad: TStringField
      FieldName = 'bolum_ad'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 64
  end
end
