unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, uCadastroProduto;

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


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

procedure TfMain.iProdutoClick(Sender: TObject);
begin
  Application.CreateForm(TfCadastroProduto, fCadastroProduto);
end;



end.




