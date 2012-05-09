inherited fCadastroProduto: TfCadastroProduto
  Left = 253
  Caption = 'Cadastro de produtos'
  ClientHeight = 193
  ClientWidth = 819
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lCodigo: TLabel [0]
    Left = 16
    Top = 88
    Width = 66
    Height = 27
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lNome: TLabel [1]
    Left = 200
    Top = 88
    Width = 56
    Height = 27
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lQuantidade: TLabel [2]
    Left = 16
    Top = 136
    Width = 47
    Height = 27
    Caption = 'Qtde'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lPreco: TLabel [3]
    Left = 200
    Top = 136
    Width = 56
    Height = 27
    Caption = 'Pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [4]
    Left = 368
    Top = 136
    Width = 117
    Height = 27
    Caption = 'Gerar senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited bInserir: TBitBtn
    Top = 8
  end
  inherited bRemover: TBitBtn
    Top = 8
  end
  inherited bPrimeiro: TBitBtn
    Top = 40
  end
  inherited bAnterior: TBitBtn
    Top = 40
  end
  inherited bProximo: TBitBtn
    Top = 40
  end
  inherited bUltimo: TBitBtn
    Top = 40
  end
  inherited bSalvar: TBitBtn
    Top = 8
  end
  inherited bEditar: TBitBtn
    Top = 8
  end
  inherited bSair: TButton
    Top = 8
    OnClick = bSairClick
  end
  object eNome: TDBEdit [14]
    Left = 272
    Top = 88
    Width = 529
    Height = 35
    DataField = 'nome'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object eQuantidade: TDBEdit [15]
    Left = 96
    Top = 136
    Width = 81
    Height = 35
    DataField = 'quantidade'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object ePreco: TDBEdit [16]
    Left = 272
    Top = 136
    Width = 73
    Height = 35
    DataField = 'preco'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object eCodigo: TDBEdit [17]
    Left = 96
    Top = 88
    Width = 81
    Height = 35
    DataField = 'codigo'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object cbGeraSenha: TComboBox [18]
    Left = 504
    Top = 136
    Width = 73
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ItemHeight = 27
    ItemIndex = 0
    ParentFont = False
    TabOrder = 14
    Text = 'Sim'
    OnChange = cbGeraSenhaChange
    Items.Strings = (
      'Sim'
      'N'#227'o')
  end
  inherited bCancelar: TButton
    Top = 40
  end
  inherited adoQuery: TADOQuery
    SQL.Strings = (
      
        'select codigo, nome, quantidade, preco, gerasenha from produto o' +
        'rder by codigo')
    Left = 776
    Top = 320
    object adoQuerycodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
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
    object adoQuerygerasenha: TIntegerField
      FieldName = 'gerasenha'
    end
  end
  inherited dsQuery: TDataSource
    OnDataChange = dsQueryDataChange
    Left = 744
    Top = 320
  end
end
