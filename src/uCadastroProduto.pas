unit uCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPrincipal, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  ExtCtrls;

type
  TfCadastroProduto = class(TfCadastroPrincipal)
    eNome: TDBEdit;
    eQuantidade: TDBEdit;
    lCodigo: TLabel;
    lNome: TLabel;
    lQuantidade: TLabel;
    lPreco: TLabel;
    ePreco: TDBEdit;
    eCodigo: TDBEdit;
    cbGeraSenha: TComboBox;
    adoQuerycodigo: TAutoIncField;
    adoQuerynome: TWideStringField;
    adoQueryquantidade: TIntegerField;
    adoQuerypreco: TBCDField;
    adoQuerygerasenha: TIntegerField;
    Label1: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure dsQueryStateChange(Sender: TObject);
    procedure cbGeraSenhaChange(Sender: TObject);
    procedure dsQueryDataChange(Sender: TObject; Field: TField);
    procedure bInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroProduto: TfCadastroProduto;

implementation

{$R *.dfm}

procedure TfCadastroProduto.bSairClick(Sender: TObject);
begin
  inherited;
  fCadastroProduto.Close;
end;

procedure TfCadastroProduto.dsQueryStateChange(Sender: TObject);
begin
  inherited;
  eNome.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  eQuantidade.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  ePreco.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  cbGeraSenha.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];

end;

procedure TfCadastroProduto.cbGeraSenhaChange(Sender: TObject);
begin
  inherited;
    if cbGeraSenha.ItemIndex = 0 then
        adoQuery.FieldByName('gerasenha').Value := 1
    else
        adoQuery.FieldByName('gerasenha').Value := 0;
end;

procedure TfCadastroProduto.dsQueryDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if adoQuery.FieldByName('gerasenha').AsInteger = 0 then
        cbGeraSenha.Text := 'Não'
  else
        cbGeraSenha.Text := 'Sim';
end;

procedure TfCadastroProduto.bInserirClick(Sender: TObject);
begin
  inherited;
    eNome.SetFocus;
end;

end.
