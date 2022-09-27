unit Menus.Controller.ListBox.Button.Factory;

interface

uses Menus.Controller.Interfaces, Menus.Controller.ListBox.Button.Produto,
  System.Classes, Menus.Controller.ListBox.Default;

type
  TControllerListBoxButtonFactory = class(TInterfacedObject, iControllerListBoxButtonFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxButtonFactory;
    function Produto(AOwner : TComponent) : iControllerListBoxButtonProduto;
    function Default(AOwner : TComponent) : iControllerListBoxButtonDefault;
  end;

implementation

{ TControllerListBoxButtonFactory }

uses Menus.Controller.ListBox.Button.Default;

constructor TControllerListBoxButtonFactory.Create;
begin

end;

function TControllerListBoxButtonFactory.Default(
  AOwner: TComponent): iControllerListBoxButtonDefault;
begin
  Result := TControllerButtonListBoxDefault.New(AOwner);
end;

destructor TControllerListBoxButtonFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxButtonFactory.New: iControllerListBoxButtonFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxButtonFactory.Produto(AOwner : TComponent) : iControllerListBoxButtonProduto;
begin
  Result := TControllerListBoxButtonProduto.New(AOwner);
end;

end.
