object Form1: TForm1
  Left = 384
  Top = 207
  Caption = 
    #304'MYO '#214#287'renci  '#304#351'leri Otomasyonu                                 ' +
    '                     '
  ClientHeight = 216
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Blm1: TMenuItem
      Caption = 'B'#246'l'#252'm'
      object BlmEkle1: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 1'
        OnClick = BlmEkle1Click
      end
      object BlmEkle21: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 2'
        OnClick = BlmEkle21Click
      end
      object BlmEkle31: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 3'
        OnClick = BlmEkle31Click
      end
      object BlmEkle41: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 4'
        OnClick = BlmEkle41Click
      end
    end
    object Ders1: TMenuItem
      Caption = 'Ders'
      object DersEkle1: TMenuItem
        Caption = 'Ders Ekle'
        OnClick = DersEkle1Click
      end
    end
    object renci1: TMenuItem
      Caption = #214#287'renci'
      object renciEkle1: TMenuItem
        Caption = #214#287'renci Ekle'
      end
    end
    object Notlar1: TMenuItem
      Caption = 'Notlar'
      object NotGiri1: TMenuItem
        Caption = 'Not Giri'#351
      end
    end
    object Raporlar1: TMenuItem
      Caption = 'Raporlar'
      object rencininNolar1: TMenuItem
        Caption = #214#287'rencinin Notlar'#305
      end
      object DerstenAlnanNotlar1: TMenuItem
        Caption = 'Dersten Al'#305'nan Notlar'
      end
    end
    object k1: TMenuItem
      Caption = #199#305'k'#305#351
      OnClick = k1Click
    end
  end
  object Timer1: TTimer
    Interval = 250
    OnTimer = Timer1Timer
    Left = 232
    Top = 16
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=gorsel123;Persist Security Info=Tru' +
      'e;User ID=gorsel;Initial Catalog=gorsel2;Data Source=194.27.69.2' +
      '53'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 88
  end
end
