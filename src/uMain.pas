unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TfMain = class(TForm)
    mMenu: TMainMenu;
    iCadastro: TMenuItem;
    Operaes1: TMenuItem;
    iProduto: TMenuItem;
    iFornecedor: TMenuItem;
    mVenda: TMenuItem;
    iCompra: TMenuItem;
    ADOConn: TADOConnection;
    Relatrios1: TMenuItem;
    Produtoporcdigo1: TMenuItem;
    RelatriodeVendas1: TMenuItem;
    procedure iProdutoClick(Sender: TObject);
    procedure iFornecedorClick(Sender: TObject);
    procedure mVendaClick(Sender: TObject);
    procedure Produtoporcdigo1Click(Sender: TObject);
    procedure RelatriodeVendas1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses uCadastroFornecedor, uCadastroProduto, uOperacaoVenda,
  uRelProdutoCodigo, ufrmRelVenda;

{$R *.dfm}

procedure TfMain.iProdutoClick(Sender: TObject);
begin
  fCadastroProduto := TfCadastroProduto.Create(Self);
  Try
    fCadastroProduto.ShowModal;
  Finally
    fCadastroProduto.Release;
    fCadastroProduto := nil;
  end;
end;



procedure TfMain.iFornecedorClick(Sender: TObject);
begin
  fCadastroFornecedor := TfCadastroFornecedor.Create(Self);
  Try
    fCadastroFornecedor.ShowModal;
  Finally
    fCadastroFornecedor.Release;
    fCadastroFornecedor := nil;
  end;
end;

procedure TfMain.mVendaClick(Sender: TObject);
begin
    fOperacaoVenda := TfOperacaoVenda.Create(Self);
  Try
    fOperacaoVenda.ShowModal;
  Finally
    fOperacaoVenda.Release;
    fOperacaoVenda := nil;
  end;
end;

procedure TfMain.Produtoporcdigo1Click(Sender: TObject);
begin
    fRelProdutoCodigo := TfRelProdutoCodigo.Create(Self);
    Try
        fRelProdutoCodigo.adoProduto.Open;
        fRelProdutoCodigo.relProdutoCodigo.Preview;
    Finally
        fRelProdutoCodigo.adoProduto.Close;
        fRelProdutoCodigo.Release;
        fRelProdutoCodigo := nil;
  end;
end;

procedure TfMain.RelatriodeVendas1Click(Sender: TObject);
begin
    frmRelVenda := TfrmRelVenda.Create(Self);
  Try
    frmRelVenda.ShowModal;
  Finally
    frmRelVenda.Release;
    frmRelVenda := nil;
  end;
end;

end.




