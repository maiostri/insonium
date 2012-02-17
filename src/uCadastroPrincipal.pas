unit uCadastroPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, ADODB;

type
  TfCadastroPrincipal = class(TForm)
    bInserir: TBitBtn;
    bRemover: TBitBtn;
    bPrimeiro: TBitBtn;
    bAnterior: TBitBtn;
    bProximo: TBitBtn;
    bUltimo: TBitBtn;
    bSalvar: TBitBtn;
    bEditar: TBitBtn;
    bSair: TButton;
    adoQuery: TADOQuery;
    dsQuery: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPrimeiroClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximoClick(Sender: TObject);
    procedure bUltimoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bSairClick(Sender: TObject);
    procedure bInserirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroPrincipal: TfCadastroPrincipal;
  codigo : Integer;

implementation

uses uMain;

{$R *.dfm}

procedure TfCadastroPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  adoQuery.active := false;
end;

procedure TfCadastroPrincipal.bPrimeiroClick(Sender: TObject);
begin
  if (adoQuery <> nil) then
  begin
    adoQuery.First;
    bAnterior.Enabled := False;
  end;
end;

procedure TfCadastroPrincipal.bAnteriorClick(Sender: TObject);
begin
  if (adoQuery <> nil) then
  begin
    adoQuery.Prior;
    bProximo.Enabled := true;
  end;
end;

procedure TfCadastroPrincipal.bProximoClick(Sender: TObject);
begin
  if (adoQuery <> nil) then
  begin
    adoQuery.next;
    bAnterior.Enabled := true;
  end;
end;

procedure TfCadastroPrincipal.bUltimoClick(Sender: TObject);
begin
  if (adoQuery <> nil) then
  begin
    adoQuery.Last;
    bProximo.Enabled := false;
  end;
end;

procedure TfCadastroPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GetKeyState(VK_F1) < 0  then
    bInserir.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F2) < 0  then
    bEditar.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F3) < 0  then
    bSalvar.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F4) < 0  then
    bRemover.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F8) < 0  then
    bSair.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F9) < 0  then
    bPrimeiro.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F10) < 0  then
    bAnterior.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F11) < 0  then
    bProximo.OnClick(fCadastroPrincipal)
  else if GetKeyState(VK_F12) < 0  then
    bUltimo.OnClick(fCadastroPrincipal);

end;

procedure TfCadastroPrincipal.bSairClick(Sender: TObject);
begin
  fCadastroPrincipal.Close;
end;

procedure TfCadastroPrincipal.bInserirClick(Sender: TObject);
begin
  bRemover.Enabled := false;
  bEditar.Enabled := false;
  bSalvar.Enabled := true;
end;

procedure TfCadastroPrincipal.bEditarClick(Sender: TObject);
begin
  bInserir.Enabled := false;
  bRemover.Enabled := false;
end;

procedure TfCadastroPrincipal.bSalvarClick(Sender: TObject);
begin
  bInserir.Enabled := true;
  bRemover.Enabled := true;
end;

procedure TfCadastroPrincipal.FormCreate(Sender: TObject);
begin
  if adoQuery.RecordCount = 1 then
  begin
    bEditar.Enabled := true;
    bRemover.Enabled := true;
  end
  else if adoQuery.RecordCount > 1 then
  begin
    bProximo.Enabled := true;
    bUltimo.Enabled := true;
  end;
end;

end.
