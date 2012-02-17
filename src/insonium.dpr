program insonium;

uses
  Forms,
  uMain in 'uMain.pas' {fMain},
  uCadastroPrincipal in 'uCadastroPrincipal.pas' {fCadastroPrincipal},
  uCadastroProduto in 'uCadastroProduto.pas' {fCadastroProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
