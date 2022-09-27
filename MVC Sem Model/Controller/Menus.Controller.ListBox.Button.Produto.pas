unit Menus.Controller.ListBox.Button.Produto;

interface

uses
  System.Classes, Menus.Controller.Interfaces, FMX.Types;

type
  TControllerListBoxButtonProduto = class(TInterfacedObject, iControllerListBoxButtonProduto)
    private
      FParent : TComponent;
    public
    constructor Create(AOwner : TComponent);
    destructor Destroy; override;
    class function New(AOwner : TComponent) : iControllerListBoxButtonProduto;
    function ShowForm : TFMXObject;
    procedure onClickProdutoForm(Sender : TObject);
  end;

implementation

{ TControllerListBoxButtonProduto }

uses Menus.Controller.ListBox.Button.Factory, Menus.View.Produto;

constructor TControllerListBoxButtonProduto.Create(AOwner: TComponent);
begin
  FParent := AOwner;
end;

destructor TControllerListBoxButtonProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxButtonProduto.New(
  AOwner: TComponent): iControllerListBoxButtonProduto;
begin
  Result := Self.Create(AOwner);
end;

procedure TControllerListBoxButtonProduto.onClickProdutoForm(Sender: TObject);
begin
  frmProduto.Show;
end;

function TControllerListBoxButtonProduto.ShowForm: TFMXObject;
begin
  Result := TControllerListBoxButtonFactory.New
              .Default(FParent)
              .Name('btnProduto')
              .Text('Produtos')
              .onClick(onClickProdutoForm)
              .Button;
end;

end.
