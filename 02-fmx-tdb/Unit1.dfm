object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 904
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
    Width = 672
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
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 274
    Width = 904
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 160
    ExplicitWidth = 240
  end
  object DBImage1: TDBImage
    Left = 672
    Top = 0
    Width = 232
    Height = 274
    Align = alRight
    DataField = 'GRAPHIC'
    DataSource = DataSource1
    TabOrder = 2
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'SPECIES_NO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'BIOLIFE'
    TableName = 'BIOLIFE'
    Left = 312
    Top = 152
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\19.0\Sampl' +
        'es\Data\dbdemos.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Left = 176
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 416
    Top = 152
  end
end
