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
    Sobre1: TMenuItem;
    iProduto: TMenuItem;
    iFornecedor: TMenuItem;
    mVenda: TMenuItem;
    iCompra: TMenuItem;
    ADOConn: TADOConnection;
    procedure iProdutoClick(Sender: TObject);
    procedure iFornecedorClick(Sender: TObject);
    procedure mVendaClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses uCadastroFornecedor, uCadastroProduto, uOperacaoVenda;

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

end.




