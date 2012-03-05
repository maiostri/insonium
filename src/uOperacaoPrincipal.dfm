object fOperacaoPrincipal: TfOperacaoPrincipal
  Left = 180
  Top = 36
  Width = 931
  Height = 603
  BorderIcons = [biSystemMenu]
  Caption = 'fOperacaoPrincipal'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -37
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 46
  object Label1: TLabel
    Left = 16
    Top = 80
    Width = 64
    Height = 27
    Caption = 'Codigo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 80
    Width = 51
    Height = 27
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 488
    Top = 72
    Width = 107
    Height = 27
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 720
    Top = 112
    Width = 97
    Height = 26
    Caption = 'Valor Pago'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 720
    Top = 224
    Width = 48
    Height = 26
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 720
    Top = 344
    Width = 52
    Height = 26
    Caption = 'Troco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 784
    Top = 472
    Width = 42
    Height = 23
    Caption = 'Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 696
    Top = 472
    Width = 62
    Height = 23
    Caption = 'Codigo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object bInserir: TButton
    Left = 16
    Top = 16
    Width = 147
    Height = 33
    Caption = 'F1 - Inserir'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bInserirClick
  end
  object bRemover: TButton
    Left = 184
    Top = 16
    Width = 147
    Height = 33
    Caption = 'F4 - Remover'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bRemoverClick
  end
  object bFinalizar: TButton
    Left = 352
    Top = 16
    Width = 147
    Height = 33
    Caption = 'F3 - Finalizar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bFinalizarClick
  end
  object bNovoItem: TButton
    Left = 720
    Top = 16
    Width = 147
    Height = 33
    Caption = '+ Novo Item'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bNovoItemClick
  end
  object bExcluirItem: TButton
    Left = 720
    Top = 72
    Width = 147
    Height = 33
    Caption = '- Excluir Item'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object bSair: TButton
    Left = 520
    Top = 16
    Width = 147
    Height = 33
    Caption = 'F8 - Sair'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object eTotal: TDBEdit
    Left = 720
    Top = 256
    Width = 153
    Height = 54
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object eValorPago: TEdit
    Left = 720
    Top = 136
    Width = 153
    Height = 54
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyDown = eValorPagoKeyDown
    OnKeyPress = eValorPagoKeyPress
  end
  object eTroco: TEdit
    Left = 720
    Top = 376
    Width = 153
    Height = 54
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object bOK: TButton
    Left = 592
    Top = 104
    Width = 75
    Height = 33
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = bOKClick
  end
  object eCodigo: TEdit
    Left = 16
    Top = 104
    Width = 73
    Height = 35
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnExit = eCodigoExit
  end
  object eNome: TEdit
    Left = 112
    Top = 104
    Width = 353
    Height = 35
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object eQuantidade: TEdit
    Left = 488
    Top = 104
    Width = 81
    Height = 35
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnKeyDown = eQuantidadeKeyDown
  end
  object bPrimeiro: TButton
    Left = 16
    Top = 504
    Width = 147
    Height = 33
    Caption = 'F9 - Primeiro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = bPrimeiroClick
  end
  object bAnterior: TButton
    Left = 184
    Top = 504
    Width = 147
    Height = 33
    Caption = 'F10 - Anterior'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = bAnteriorClick
  end
  object bProximo: TButton
    Left = 352
    Top = 504
    Width = 147
    Height = 33
    Caption = 'F11 - Proximo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = bProximoClick
  end
  object bUltimo: TButton
    Left = 520
    Top = 504
    Width = 147
    Height = 33
    Caption = 'F12 - Ultimo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = bUltimoClick
  end
  object dbCodigo: TDBEdit
    Left = 696
    Top = 504
    Width = 73
    Height = 34
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object eData: TDBEdit
    Left = 784
    Top = 504
    Width = 121
    Height = 34
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object dItem: TDBGrid
    Left = 16
    Top = 152
    Width = 649
    Height = 329
    DataSource = dsQueryItem
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -37
    TitleFont.Name = 'Trebuchet MS'
    TitleFont.Style = []
  end
  object adoQuery: TADOQuery
    Connection = fMain.ADOConn
    CursorLocation = clUseServer
    Parameters = <>
    Left = 544
    Top = 448
  end
  object dsQuery: TDataSource
    DataSet = adoQuery
    Left = 512
    Top = 448
  end
  object adoQueryItem: TADOQuery
    Connection = fMain.ADOConn
    Parameters = <>
    Left = 592
    Top = 448
  end
  object dsQueryItem: TDataSource
    DataSet = adoQueryItem
    Left = 624
    Top = 448
  end
  object adoQueryProduto: TADOQuery
    Connection = fMain.ADOConn
    Parameters = <>
    Left = 400
    Top = 448
  end
end
