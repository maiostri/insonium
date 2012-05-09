object fMain: TfMain
  Left = 192
  Top = 114
  Width = 928
  Height = 480
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'insonium'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mMenu: TMainMenu
    Left = 840
    Top = 8
    object iCadastro: TMenuItem
      Caption = '&Cadastro'
      object iProduto: TMenuItem
        Caption = '&Produto'
        OnClick = iProdutoClick
      end
      object iFornecedor: TMenuItem
        Caption = '&Fornecedor'
        OnClick = iFornecedorClick
      end
    end
    object Operaes1: TMenuItem
      Caption = '&Opera'#231#245'es'
      object mVenda: TMenuItem
        Caption = '&Venda'
        OnClick = mVendaClick
      end
      object iCompra: TMenuItem
        Caption = '&Compra'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtoporcdigo1: TMenuItem
        Caption = 'Produto por c'#243'digo'
        OnClick = Produtoporcdigo1Click
      end
      object RelatriodeVendas1: TMenuItem
        Caption = 'Relat'#243'rio de vendas'
        OnClick = RelatriodeVendas1Click
      end
    end
  end
  object ADOConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=inson' +
      'ium'
    LoginPrompt = False
    Left = 88
    Top = 32
  end
end
