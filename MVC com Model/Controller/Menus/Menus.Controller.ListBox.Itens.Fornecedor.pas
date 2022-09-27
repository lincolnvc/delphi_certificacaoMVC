unit Menus.Controller.ListBox.Itens.Fornecedor;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.Types, Menus.Controller.Forms.Default;

type
  TControllerListBoxItensFornecedor = class(TInterfacedObject, iControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensFornecedor }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensFornecedor.Create;
begin

end;

destructor TControllerListBoxItensFornecedor.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFornecedor.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensFornecedor.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TfrmFornecedor');
end;

function TControllerListBoxItensFornecedor.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnFornecedor')
              .Text('Fornecedor')
              .onClick(onClick)
              .Item;
end;

end.
