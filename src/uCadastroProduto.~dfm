inherited fCadastroProduto: TfCadastroProduto
  Left = 253
  Caption = 'Cadastro de produtos'
  ClientHeight = 371
  ClientWidth = 695
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lCodigo: TLabel [0]
    Left = 16
    Top = 24
    Width = 72
    Height = 24
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lNome: TLabel [1]
    Left = 16
    Top = 96
    Width = 58
    Height = 24
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lQuantidade: TLabel [2]
    Left = 16
    Top = 168
    Width = 116
    Height = 24
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lPreco: TLabel [3]
    Left = 16
    Top = 240
    Width = 59
    Height = 24
    Caption = 'Pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited bInserir: TBitBtn
    Left = 552
    Top = 8
  end
  inherited bRemover: TBitBtn
    Left = 552
    Top = 128
    OnClick = bRemoverClick
  end
  inherited bPrimeiro: TBitBtn
    Left = 552
    Top = 168
  end
  inherited bAnterior: TBitBtn
    Left = 552
    Top = 208
  end
  inherited bProximo: TBitBtn
    Left = 552
    Top = 248
  end
  inherited bUltimo: TBitBtn
    Left = 552
    Top = 288
  end
  inherited bSalvar: TBitBtn
    Left = 552
    Top = 88
  end
  inherited bEditar: TBitBtn
    Left = 552
    Top = 48
  end
  inherited bSair: TButton
    Left = 552
    Top = 328
  end
  object eCodigo: TDBEdit [13]
    Left = 16
    Top = 48
    Width = 81
    Height = 31
    DataField = 'codigo'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object eNome: TDBEdit [14]
    Left = 16
    Top = 120
    Width = 505
    Height = 31
    DataField = 'nome'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object eQuantidade: TDBEdit [15]
    Left = 16
    Top = 192
    Width = 73
    Height = 31
    DataField = 'quantidade'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object ePreco: TDBEdit [16]
    Left = 16
    Top = 264
    Width = 73
    Height = 31
    DataField = 'preco'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  inherited adoQuery: TADOQuery
    SQL.Strings = (
      'select codigo, nome, quantidade, preco from produto;'
      '')
    Top = 56
    object adoQuerycodigo: TIntegerField
      FieldName = 'codigo'
    end
    object adoQuerynome: TWideStringField
      FieldName = 'nome'
      Size = 8190
    end
    object adoQueryquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object adoQuerypreco: TBCDField
      FieldName = 'preco'
      Precision = 28
      Size = 6
    end
  end
  inherited dsQuery: TDataSource
    Left = 248
    Top = 56
  end
end
