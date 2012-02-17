unit uCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPrincipal, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB;

type
  TfCadastroProduto = class(TfCadastroPrincipal)
    eCodigo: TDBEdit;
    eNome: TDBEdit;
    eQuantidade: TDBEdit;
    lCodigo: TLabel;
    lNome: TLabel;
    lQuantidade: TLabel;
    lPreco: TLabel;
    ePreco: TDBEdit;
    adoQuerycodigo: TIntegerField;
    adoQuerynome: TWideStringField;
    adoQueryquantidade: TIntegerField;
    adoQuerypreco: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure bInserirClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bRemoverClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroProduto: TfCadastroProduto;

implementation

{$R *.dfm}

procedure TfCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  adoQuery.SQL.Text := 'select codigo, nome, quantidade, preco from produto';
  adoQuery.Open;
end;

procedure TfCadastroProduto.bInserirClick(Sender: TObject);
begin
  inherited;
  eNome.Enabled := true;
  eQuantidade.Enabled := true;
  ePreco.Enabled := true;
end;

procedure TfCadastroProduto.bSalvarClick(Sender: TObject);
begin
  inherited;
  Try
    adoQuery.SQL.Text := 'select inserirproduto('+eNome.Text +', '+
                                            eQuantidade.Text +', '+
                                            ePreco.Text +')';
    adoQuery.ExecSQL;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
  eNome.Enabled := false;
  eQuantidade.Enabled := false;
  ePreco.Enabled := false;
end;

procedure TfCadastroProduto.bRemoverClick(Sender: TObject);
begin
  inherited;
  Try
    adoQuery.SQL.Text := 'select excluirproduto('+IntToStr(codigo)+')';
    adoQuery.ExecSQL;
  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TfCadastroProduto.bEditarClick(Sender: TObject);
begin
  inherited;
  eNome.Enabled := true;
  eQuantidade.Enabled := true;
  ePreco.Enabled := true;
end;

end.
