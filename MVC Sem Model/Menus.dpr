program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Controller.ListBox.Clientes in 'Controller\Menus.Controller.ListBox.Clientes.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Cliente in 'Controller\Menus.Controller.ListBox.Itens.Cliente.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Itens.Produto in 'Controller\Menus.Controller.ListBox.Itens.Produto.pas',
  Menus.Controller.ListBox.Principal in 'Controller\Menus.Controller.ListBox.Principal.pas',
  Menus.Controller.ListBox.Produtos in 'Controller\Menus.Controller.ListBox.Produtos.pas',
  Menus.View.Clientes in 'View\Menus.View.Clientes.pas' {frmClientes},
  Menus.View.Principal in 'View\Menus.View.Principal.pas' {Form2},
  Menus.View.Produto in 'View\Menus.View.Produto.pas' {frmProduto},
  Menus.Controller.Forms.Default in 'Controller\Menus.Controller.Forms.Default.pas';

{$R *.res}

begin
  Application.Initialize;
  //ReportMemoryLeaksOnShutdown := true;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
