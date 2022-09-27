unit Menus.View.Produto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, Menus.Controller.ListBox.Factory, FMX.Layouts;

type
  TfrmProduto = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.fmx}

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
   TControllerListBoxFactory.New.Produtos(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TfrmProduto]);

end.
