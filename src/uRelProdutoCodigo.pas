unit uRelProdutoCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, QuickRpt, QRCtrls, frxClass, frxDBSet,
  QRExport;

type
  TfRelProdutoCodigo = class(TForm)
    adoProduto: TADOQuery;
    dsProduto: TDataSource;
    relProdutoCodigo: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    adoProdutocodigo: TAutoIncField;
    adoProdutonome: TWideStringField;
    adoProdutopreco: TBCDField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRHTMLFilter1: TQRHTMLFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProdutoCodigo: TfRelProdutoCodigo;

implementation

uses uMain;

{$R *.dfm}

end.
