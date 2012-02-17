object fCadastroPrincipal: TfCadastroPrincipal
  Left = 208
  Top = 178
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
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bInserir: TBitBtn
    Left = 768
    Top = 16
    Width = 129
    Height = 25
    Caption = 'F1 - Inserir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = bInserirClick
  end
  object bRemover: TBitBtn
    Left = 768
    Top = 136
    Width = 129
    Height = 25
    Caption = 'F4 - Remover'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object bPrimeiro: TBitBtn
    Left = 768
    Top = 176
    Width = 129
    Height = 25
    Caption = 'F9 - Primeiro'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bPrimeiroClick
  end
  object bAnterior: TBitBtn
    Left = 768
    Top = 216
    Width = 129
    Height = 25
    Caption = 'F10 - Anterior'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = bAnteriorClick
  end
  object bProximo: TBitBtn
    Left = 768
    Top = 256
    Width = 129
    Height = 25
    Caption = 'F11 - Proximo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bProximoClick
  end
  object bUltimo: TBitBtn
    Left = 768
    Top = 296
    Width = 129
    Height = 25
    Caption = 'F12 - Ultimo'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = bUltimoClick
  end
  object bSalvar: TBitBtn
    Left = 768
    Top = 96
    Width = 129
    Height = 25
    Caption = 'F3 - Salvar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bSalvarClick
  end
  object bEditar: TBitBtn
    Left = 768
    Top = 56
    Width = 129
    Height = 25
    Caption = 'F2 - Editar'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = bEditarClick
  end
  object bSair: TButton
    Left = 768
    Top = 336
    Width = 129
    Height = 25
    Caption = 'F8 - Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = bSairClick
  end
  object adoQuery: TADOQuery
    Connection = fMain.ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from produto;')
    Left = 280
    Top = 104
  end
  object dsQuery: TDataSource
    DataSet = adoQuery
    Left = 128
    Top = 120
  end
end
