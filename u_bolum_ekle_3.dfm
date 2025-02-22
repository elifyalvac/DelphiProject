object f_bolum_ekle_3: Tf_bolum_ekle_3
  Left = 370
  Top = 222
  Caption = 'B'#246'l'#252'm Ekle 3'
  ClientHeight = 128
  ClientWidth = 254
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
    Top = 57
    Width = 44
    Height = 13
    Caption = 'Bolum Ad'
  end
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 49
    Height = 13
    Caption = 'Bolum Kod'
  end
  object Edit1: TEdit
    Left = 88
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 81
    Width = 121
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 2
    OnClick = Button1Click
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
    Left = 16
    Top = 80
  end
end
