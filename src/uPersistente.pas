unit uPersistente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TPersistente = class(TObject)

public
  function Persistir : boolean; virtual; abstract;
  class function Obter(pcodigo : Integer) : TPersistente; virtual; abstract;
  class function ObterTodos : TList; virtual; abstract;
  function Destruir(pcodigo : Integer) : boolean; virtual; abstract;
end;

implementation

end.
