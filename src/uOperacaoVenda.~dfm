inherited fOperacaoVenda: TfOperacaoVenda
  Width = 896
  Height = 655
  Caption = 'Venda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 46
  inherited Label1: TLabel
    Top = 143
  end
  inherited Label2: TLabel
    Top = 143
  end
  inherited Label3: TLabel
    Top = 139
  end
  inherited Label7: TLabel
    Left = 112
    Top = 67
  end
  inherited Label8: TLabel
    Left = 17
    Top = 67
  end
  object Label9: TLabel [8]
    Left = 329
    Top = 67
    Width = 54
    Height = 27
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  inherited bExcluirItem: TButton
    OnClick = bExcluirItemClick
  end
  inherited bSair: TButton
    OnClick = bSairClick
  end
  inherited eTotal: TDBEdit
    Height = 69
    DataField = 'total'
    Font.Height = -48
  end
  inherited eValorPago: TEdit
    Height = 69
    Font.Height = -48
  end
  inherited eTroco: TEdit
    Top = 384
    Height = 69
    Font.Height = -48
  end
  inherited bOK: TButton
    Left = 600
    Top = 172
  end
  inherited eCodigo: TEdit
    Top = 172
  end
  inherited eNome: TEdit
    Top = 172
  end
  inherited eQuantidade: TEdit
    Top = 172
  end
  inherited bPrimeiro: TButton
    Top = 580
  end
  inherited bAnterior: TButton
    Top = 580
  end
  inherited bProximo: TButton
    Top = 580
  end
  inherited bUltimo: TButton
    Top = 580
  end
  inherited dbCodigo: TDBEdit
    Left = 17
    Top = 92
    DataField = 'codigo'
  end
  inherited eData: TDBEdit
    Left = 112
    Top = 92
    Width = 193
    DataField = 'data'
  end
  object DBEdit1: TDBEdit [28]
    Left = 329
    Top = 92
    Width = 72
    Height = 35
    DataField = 'senha'
    DataSource = dsQuery
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  inherited dItem: TDBGrid
    Top = 230
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Cod'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 423
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'preco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Pre'#231'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 74
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Title.Caption = 'Qtde'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 47
        Visible = True
      end>
  end
  inherited adoQuery: TADOQuery
    Active = True
    SQL.Strings = (
      'select * from venda')
    Left = 448
    Top = 512
    object adoQuerycodigo: TAutoIncField
      FieldName = 'codigo'
    end
    object adoQuerytotal: TBCDField
      FieldName = 'total'
      DisplayFormat = '#,##0.00;(#,##0.00)'
      Precision = 28
      Size = 6
    end
    object adoQuerydata: TDateTimeField
      FieldName = 'data'
      DisplayFormat = 'hh:mm:ss dd/mm/yyyy'
    end
    object adoQuerysenha: TIntegerField
      FieldName = 'senha'
    end
  end
  inherited dsQuery: TDataSource
    Left = 416
    Top = 512
  end
  inherited adoQueryItem: TADOQuery
    Parameters = <
      item
        Name = 'codvenda'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select p.codigo, p.nome, p.preco, vp.quantidade '
      'from produto p, vendaproduto vp '
      'where vp.venda = :codvenda and vp.produto = p.codigo')
    Left = 496
    Top = 512
    object adoQueryItemcodigo: TAutoIncField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object adoQueryItemnome: TWideStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 8190
    end
    object adoQueryItempreco: TBCDField
      FieldName = 'preco'
      ReadOnly = True
      DisplayFormat = '#,##0.00;(#,##0.00)'
      Precision = 28
      Size = 6
    end
    object adoQueryItemquantidade: TIntegerField
      FieldName = 'quantidade'
      ReadOnly = True
    end
  end
  inherited dsQueryItem: TDataSource
    Left = 528
    Top = 512
  end
  inherited adoQueryProduto: TADOQuery
    Left = 624
    Top = 512
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 512
  end
end
