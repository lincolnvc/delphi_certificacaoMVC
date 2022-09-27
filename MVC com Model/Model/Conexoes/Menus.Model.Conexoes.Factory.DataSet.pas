unit Menus.Model.Conexoes.Factory.DataSet;

interface

uses Menus.Model.Conexoes.Interfaces, Menus.Model.Conexoes.TableFiredac;

Type
  TModelConexaoFactoryDataSet = class(TInterfacedObject, iModelFactoryDataSet)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFactoryDataSet;
      function DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
  end;

implementation

{ TModelConexaoFactoryDataSet }

constructor TModelConexaoFactoryDataSet.Create;
begin

end;

function TModelConexaoFactoryDataSet.DataSetFiredac(Conexao : iModelConexao) : iModelDataSet;
begin
  Result := TModelConexoesTableFiredac.New(Conexao);
end;

destructor TModelConexaoFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactoryDataSet.New: iModelFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
