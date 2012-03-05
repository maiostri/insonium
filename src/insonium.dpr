program insonium;

uses
  Forms,
  uMain in 'uMain.pas' {fMain},
  uCadastroPrincipal in 'uCadastroPrincipal.pas' {fCadastroPrincipal},
  uCadastroProduto in 'uCadastroProduto.pas' {fCadastroProduto},
  uCadastroFornecedor in 'uCadastroFornecedor.pas' {fCadastroFornecedor},
  uOperacaoPrincipal in 'uOperacaoPrincipal.pas' {fOperacaoPrincipal},
  uOperacaoVenda in 'uOperacaoVenda.pas' {fOperacaoVenda},
  uDMPrincipal in 'uDMPrincipal.pas' {dmPrincipal: TDataModule},
  uProduto in 'uProduto.pas',
  uPersistente in 'uPersistente.pas',
  uProdutoDAO in 'uProdutoDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
  fMain.Show;
end.
