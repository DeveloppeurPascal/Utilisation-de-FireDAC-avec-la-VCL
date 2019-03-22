object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 632
    Height = 274
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBImage1: TDBImage
    Left = 632
    Top = 0
    Width = 268
    Height = 274
    Align = alRight
    DataField = 'Graphic'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 274
    Width = 900
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'C:\Users\Public\Documents\Embarcadero\Studio\19.0\Samples\Data'
    TableName = 'biolife.db'
    Left = 312
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 384
    Top = 152
  end
end
