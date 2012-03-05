object fCadastroPrincipal: TfCadastroPrincipal
  Left = 208
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fCadastroPrincipal'
  ClientHeight = 446
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bInserir: TBitBtn
    Left = 16
    Top = 16
    Width = 145
    Height = 25
    Caption = 'F1 - Inserir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = bInserirClick
  end
  object bRemover: TBitBtn
    Left = 496
    Top = 16
    Width = 145
    Height = 25
    Caption = 'F4 - Remover'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = bRemoverClick
  end
  object bPrimeiro: TBitBtn
    Left = 16
    Top = 48
    Width = 145
    Height = 25
    Caption = 'F9 - Primeiro'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bPrimeiroClick
  end
  object bAnterior: TBitBtn
    Left = 176
    Top = 48
    Width = 145
    Height = 25
    Caption = 'F10 - Anterior'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = bAnteriorClick
  end
  object bProximo: TBitBtn
    Left = 336
    Top = 48
    Width = 145
    Height = 25
    Caption = 'F11 - Proximo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bProximoClick
  end
  object bUltimo: TBitBtn
    Left = 496
    Top = 48
    Width = 145
    Height = 25
    Caption = 'F12 - Ultimo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = bUltimoClick
  end
  object bSalvar: TBitBtn
    Left = 336
    Top = 16
    Width = 145
    Height = 25
    Caption = 'F3 - Salvar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bSalvarClick
  end
  object bEditar: TBitBtn
    Left = 176
    Top = 16
    Width = 145
    Height = 25
    Caption = 'F2 - Editar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = bEditarClick
  end
  object bSair: TButton
    Left = 656
    Top = 16
    Width = 145
    Height = 25
    Caption = 'F8 - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object bCancelar: TButton
    Left = 656
    Top = 48
    Width = 145
    Height = 25
    Caption = 'F7 - Cancelar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = bCancelarClick
  end
  object adoQuery: TADOQuery
    Connection = fMain.ADOConn
    CursorLocation = clUseServer
    Parameters = <>
    SQL.Strings = (
      'select * from produto;')
    Left = 280
    Top = 104
  end
  object dsQuery: TDataSource
    DataSet = adoQuery
    OnStateChange = dsQueryStateChange
    Left = 240
    Top = 104
  end
end
