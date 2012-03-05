inherited fCadastroFornecedor: TfCadastroFornecedor
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 286
  ClientWidth = 812
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 58
    Height = 24
    Caption = 'codigo'
    FocusControl = eCodigo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 144
    Width = 51
    Height = 27
    Caption = 'Nome'
    FocusControl = eNome
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 192
    Width = 86
    Height = 27
    Caption = 'Endere'#231'o'
    FocusControl = eEndereco
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 240
    Width = 71
    Height = 27
    Caption = 'N'#250'mero'
    FocusControl = eNumero
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 656
    Top = 240
    Width = 62
    Height = 27
    Caption = 'Estado'
    FocusControl = eEstado
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 224
    Top = 240
    Width = 65
    Height = 27
    Caption = 'Cidade'
    FocusControl = eCidade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 96
    Width = 64
    Height = 27
    Caption = 'C'#243'digo'
    FocusControl = eNumero
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  inherited bPrimeiro: TBitBtn
    Top = 56
  end
  inherited bAnterior: TBitBtn
    Top = 56
  end
  inherited bProximo: TBitBtn
    Top = 56
  end
  inherited bUltimo: TBitBtn
    Top = 56
  end
  inherited bSair: TButton
    OnClick = bSairClick
  end
  object eCodigo: TDBEdit [16]
    Left = 112
    Top = 96
    Width = 81
    Height = 35
    DataField = 'codigo'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object eNome: TDBEdit [17]
    Left = 112
    Top = 144
    Width = 689
    Height = 35
    DataField = 'nome'
    DataSource = dsQuery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object eEndereco: TDBEdit [18]
    Left = 112
    Top = 191
    Width = 689
    Height = 35
    DataField = 'endereco'
    DataSource = dsQuery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object eNumero: TDBEdit [19]
    Left = 112
    Top = 240
    Width = 89
    Height = 35
    DataField = 'numero'
    DataSource = dsQuery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object eEstado: TDBEdit [20]
    Left = 728
    Top = 240
    Width = 49
    Height = 35
    DataField = 'estado'
    DataSource = dsQuery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object eCidade: TDBEdit [21]
    Left = 304
    Top = 240
    Width = 329
    Height = 35
    DataField = 'cidade'
    DataSource = dsQuery
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  inherited bCancelar: TButton
    Top = 56
  end
  inherited adoQuery: TADOQuery
    SQL.Strings = (
      
        'select codigo, nome, endereco, numero, estado, cidade from forne' +
        'cedor order by codigo')
    Left = 272
    Top = 16
    object adoQuerycodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object adoQuerynome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object adoQueryendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object adoQuerynumero: TIntegerField
      FieldName = 'numero'
    end
    object adoQueryestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object adoQuerycidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
  end
  inherited dsQuery: TDataSource
    Top = 16
  end
end
