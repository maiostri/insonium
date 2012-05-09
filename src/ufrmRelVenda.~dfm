object frmRelVenda: TfrmRelVenda
  Left = 501
  Top = 261
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de vendas'
  ClientHeight = 202
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ldata1: TLabel
    Left = 232
    Top = 8
    Width = 38
    Height = 18
    Caption = 'Data 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object ldata2: TLabel
    Left = 232
    Top = 64
    Width = 38
    Height = 18
    Caption = 'Data 2'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object lmes: TLabel
    Left = 16
    Top = 128
    Width = 23
    Height = 18
    Caption = 'M'#234's'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object lano: TLabel
    Left = 168
    Top = 128
    Width = 22
    Height = 18
    Caption = 'Ano'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object bVisualizar: TBitBtn
    Left = 240
    Top = 120
    Width = 97
    Height = 25
    Caption = 'Visualizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bVisualizarClick
  end
  object rOpcoes: TRadioGroup
    Left = 16
    Top = 8
    Width = 209
    Height = 105
    Caption = 'Op'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Di'#225'rio'
      'Mensal'
      'Especificar intervalo')
    ParentFont = False
    TabOrder = 1
    OnClick = rOpcoesClick
  end
  object dt1: TDateTimePicker
    Left = 232
    Top = 24
    Width = 105
    Height = 26
    Date = 41027.700818981480000000
    Format = 'dd/MM/yyyy'
    Time = 41027.700818981480000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dt2: TDateTimePicker
    Left = 232
    Top = 80
    Width = 105
    Height = 26
    Date = 41027.700818981480000000
    Format = 'dd/MM/yyyy'
    Time = 41027.700818981480000000
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cbMes: TComboBox
    Left = 16
    Top = 152
    Width = 137
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ItemHeight = 18
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'Janeiro'
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object eAno: TEdit
    Left = 168
    Top = 152
    Width = 57
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object bSair: TBitBtn
    Left = 240
    Top = 152
    Width = 97
    Height = 25
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = bSairClick
  end
  object adoQuery: TADOQuery
    Connection = fMain.ADOConn
    Parameters = <>
    Left = 368
    Top = 80
  end
  object dsQuery: TDataSource
    DataSet = adoQuery
    Left = 368
    Top = 120
  end
end
