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
    bCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bPrimeiroClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximoClick(Sender: TObject);
    procedure bUltimoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bInserirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bRemoverClick(Sender: TObject);
    procedure dsQueryStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroPrincipal: TfCadastroPrincipal;
  
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
  if key = VK_F1  then
    bInserir.OnClick(fCadastroPrincipal)
  else if key = VK_F2  then
    bEditar.OnClick(fCadastroPrincipal)
  else if key = VK_F3  then
    bSalvar.OnClick(fCadastroPrincipal)
  else if key = VK_F4  then
    bRemover.OnClick(fCadastroPrincipal)
  else if key = VK_F8  then
    bSair.OnClick(fCadastroPrincipal)
  else if key = VK_F9  then
    bPrimeiro.OnClick(fCadastroPrincipal)
  else if key = VK_F10  then
    bAnterior.OnClick(fCadastroPrincipal)
  else if key = VK_F11  then
    bProximo.OnClick(fCadastroPrincipal)
  else if key = VK_F12  then
    bUltimo.OnClick(fCadastroPrincipal);

end;

procedure TfCadastroPrincipal.bInserirClick(Sender: TObject);
begin
  Try
    adoQuery.Insert;
  except
      on E : Exception do
      ShowMessage(E.ClassName+' '+ E.Message);
  end;
end;

procedure TfCadastroPrincipal.bEditarClick(Sender: TObject);
begin
  Try
    adoQuery.Edit;
  except
      on E : Exception do
      ShowMessage(E.ClassName+' '+ E.Message);
  end;
end;

procedure TfCadastroPrincipal.bSalvarClick(Sender: TObject);
begin
  Try
    adoQuery.Post;
  except
      on E : Exception do
      ShowMessage(E.ClassName+' '+ E.Message);
  end;
end;

procedure TfCadastroPrincipal.bRemoverClick(Sender: TObject);
begin
  Try
    adoQuery.Delete;
  except
      on E : Exception do
      ShowMessage(E.ClassName+' '+ E.Message);
  end;
end;

procedure TfCadastroPrincipal.dsQueryStateChange(Sender: TObject);
begin
   if TDataSource(Sender).DataSet.State in [dsEdit,dsInsert] then //Se tiver em mode de edição ou iserção
  begin
    bInserir.Enabled := false;
    bEditar.Enabled := false;
    bSalvar.Enabled := True;
    bRemover.Enabled := False;
    bCancelar.Enabled := True;
  end else
  if TDataSource(Sender).DataSet.State = dsbrowse then //em modo de consulta
  begin
    bInserir.Enabled := true;
    bEditar.Enabled := true;
    bSalvar.Enabled := false;
    bRemover.Enabled := true;
    bCancelar.Enabled := false;
  end;
end;

procedure TfCadastroPrincipal.FormShow(Sender: TObject);
begin
  adoQuery.Open;
  bProximo.Enabled := adoQuery.RecordCount > 1;
  bUltimo.Enabled := adoQuery.RecordCount > 1;

end;

procedure TfCadastroPrincipal.bCancelarClick(Sender: TObject);
begin
    adoQuery.Cancel;
end;

end.
