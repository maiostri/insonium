unit ufrmRelVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, ADODB;

type
  TfrmRelVenda = class(TForm)
    bVisualizar: TBitBtn;
    rOpcoes: TRadioGroup;
    dt1: TDateTimePicker;
    ldata1: TLabel;
    ldata2: TLabel;
    dt2: TDateTimePicker;
    cbMes: TComboBox;
    eAno: TEdit;
    lmes: TLabel;
    lano: TLabel;
    adoQuery: TADOQuery;
    dsQuery: TDataSource;
    bSair: TBitBtn;
    procedure bVisualizarClick(Sender: TObject);
    procedure rOpcoesClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVenda: TfrmRelVenda;

implementation

uses uMain, uRelVendas, uRelProdutoCodigo;

{$R *.dfm}

procedure TfrmRelVenda.bVisualizarClick(Sender: TObject);
begin
    case rOpcoes.ItemIndex of
        0:
            adoQuery.SQL.Text := 'select * from relatorio_vendas_diario('+
            char(39)+FormatDateTime('yyyy-mm-dd hh:nn:ss', dt1.DateTime)+char(39)+')';
        1:
            adoQuery.SQL.Text := 'select * from relatorio_vendas_mes('+
            IntToStr(cbMes.ItemIndex+1)+','+eAno.Text+')';
        2:
            adoQuery.SQL.Text := 'select * from relatorio_vendas_intervalo('+
            char(39)+FormatDateTime('yyyy-mm-dd hh:nn:ss', dt1.DateTime)+char(39)+','+
            char(39)+FormatDateTime('yyyy-mm-dd hh:nn:ss', dt2.DateTime)+char(39)+')';
    end;
    adoQuery.Open;
    RelVendas := TRelVendas.Create(self);
    Try
        RelVendas.qrelVendas.Preview;
    Finally
        RelVendas.Release;
        adoQuery.Close;
        RelVendas := nil;
  end;

end;

procedure TfrmRelVenda.rOpcoesClick(Sender: TObject);
begin
    dt1.Enabled := rOpcoes.ItemIndex in [0,2];
    dt2.Enabled := rOpcoes.ItemIndex = 2;
    eAno.Enabled := rOpcoes.ItemIndex = 1;
    cbMes.Enabled := rOpcoes.ItemIndex = 1;
    ldata1.Enabled := rOpcoes.ItemIndex in [0,2];
    ldata2.Enabled := rOpcoes.ItemIndex = 2;
    lano.Enabled := rOpcoes.ItemIndex = 1;
    lmes.Enabled := rOpcoes.ItemIndex = 1;
end;

procedure TfrmRelVenda.bSairClick(Sender: TObject);
begin
    frmRelVenda.Close;
end;

procedure TfrmRelVenda.FormCreate(Sender: TObject);
begin
    dt1.DateTime := Now;
end;

end.
