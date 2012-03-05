unit uOperacaoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOperacaoPrincipal, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, DBClient;

type
    TMyDBGrid = class(TCustomGrid);
  TfOperacaoVenda = class(TfOperacaoPrincipal)
    adoQueryItemcodigo: TAutoIncField;
    adoQueryItemnome: TWideStringField;
    adoQueryItempreco: TBCDField;
    adoQueryItemquantidade: TIntegerField;
    DBEdit1: TDBEdit;
    adoQuerycodigo: TAutoIncField;
    adoQuerytotal: TBCDField;
    adoQuerydata: TDateTimeField;
    adoQuerysenha: TIntegerField;
    ClientDataSet1: TClientDataSet;
    Label9: TLabel;
    procedure bOKClick(Sender: TObject);
    procedure bInserirClick(Sender: TObject);
    procedure bPrimeiroClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximoClick(Sender: TObject);
    procedure bUltimoClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure bExcluirItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOperacaoVenda: TfOperacaoVenda;

implementation

{$R *.dfm}

procedure TfOperacaoVenda.bOKClick(Sender: TObject);
var
    i : integer;
begin
  inherited;
  adoQueryProduto.Close;
  adoQueryProduto.SQL.Text := 'insert into vendaproduto(venda, produto, quantidade) values(:pvenda, :pproduto, :pqtde)';
  adoQueryProduto.Parameters.ParamByName('pvenda').Value := adoQuery.Fields[0].AsInteger;
  adoQueryProduto.Parameters.ParamByName('pproduto').Value := eCodigo.Text;
  adoQueryProduto.Parameters.ParamByName('pqtde').Value := eQuantidade.Text;
  adoQueryProduto.ExecSQL;

    if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
//    dItem.Update;
  end;
    adoQuery.Refresh;
    bOK.Enabled := false;

    for i := 0 to TMyDBGrid(dItem).RowCount - 1 do
        TMyDBGrid(dItem).RowHeights[i] := 30;
end;

procedure TfOperacaoVenda.bInserirClick(Sender: TObject);
begin
  inherited;
  adoQueryProduto.Close;
  adoQueryProduto.SQL.Text := 'select nextval('+chr(39)+'seqvenda'+chr(39)+')';
  adoQueryProduto.Open;
  adoQuery.Insert;
  adoQuery.FieldByName('codigo').Value := adoQueryProduto.Fields[0].AsInteger;
  adoQuery.FieldByName('total').Value := 0;
  adoQuery.FieldByName('senha').Value := 0;
  adoQuery.FieldByName('data').Value := Now;
  adoQuery.Post;

  if adoQuery.RecordCount > 0 then
    begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
  end;

end;

procedure TfOperacaoVenda.bPrimeiroClick(Sender: TObject);
begin
  inherited;
  if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
  end;

end;

procedure TfOperacaoVenda.bAnteriorClick(Sender: TObject);
begin
  inherited;
  if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
  end;

end;

procedure TfOperacaoVenda.bProximoClick(Sender: TObject);
begin
  inherited;
  if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
  end;

end;

procedure TfOperacaoVenda.bUltimoClick(Sender: TObject);
begin
  inherited;
  if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
  end;

end;

procedure TfOperacaoVenda.bSairClick(Sender: TObject);
begin
  inherited;
    fOperacaoVenda.Close;
end;

procedure TfOperacaoVenda.bFinalizarClick(Sender: TObject);
begin
  inherited;
    bFinalizar.Enabled := false;
end;

procedure TfOperacaoVenda.bExcluirItemClick(Sender: TObject);
begin
  inherited;
    adoQueryProduto.Close;
    adoQueryProduto.SQL.Text := 'delete from vendaproduto where '+
                                'venda = :codvenda and produto = :codproduto';
    adoQueryProduto.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryProduto.Parameters.ParamByName('codproduto').Value := dItem.DataSource.DataSet.Fields[0].AsInteger;
    adoQueryProduto.ExecSQL;
    adoQuery.Requery;

    if adoQuery.RecordCount > 0 then
  begin
    adoQueryItem.Close;
    adoQueryItem.Parameters.ParamByName('codvenda').Value := adoQuery.Fields[0].AsInteger;
    adoQueryItem.Open;
    if adoQueryItem.RecordCount = 0 then bExcluirItem.Enabled := false;
  end;

  
end;

end.
