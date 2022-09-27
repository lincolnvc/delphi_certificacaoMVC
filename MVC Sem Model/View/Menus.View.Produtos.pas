unit Menus.View.Produtos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ScrollBox, FMX.Grid, Data.DB, Menus.Controller.Entity.Factory,
  Menus.Controller.Entity.Interfaces;

type
  TfrmProduto = class(TForm)
    ToolBar1: TToolBar;
    frmProdutos: TLabel;
    Layout1: TLayout;
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEntity : iControllerEntity;
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.fmx}

uses Menus.Controller.ListBox.Factory;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Produtos(Layout1).Exibir;
  FEntity := TControllerEntityFactory.New.Produto.Lista(DataSource1);
end;

end.
