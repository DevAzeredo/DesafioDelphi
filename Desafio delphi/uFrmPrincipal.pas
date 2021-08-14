unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.WinXCtrls;

type
  TCatalogo = class(TForm)
    Menu          : TMainMenu;
    Adicionar     : TMenuItem;
    menuProduto   : TMenuItem;
    Grid          : TDBGrid;
    Navigator     : TDBNavigator;
    edtID         : TDBEdit;
    edtDescricao  : TDBEdit;
    edtCategoria  : TDBEdit;
    edtPreco      : TDBEdit;
    Button1       : TButton;
    busca: TSearchBox;
    rBtnID: TRadioButton;
    rBtnDescricao: TRadioButton;
    rBtnFiltro: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure menuProdutoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NavigatorBeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Catalogo: TCatalogo;

implementation

{$R *.dfm}

uses uClasseCategoria, uClasseProduto, uDM, uFrmNovoProduto;

procedure TCatalogo.Button1Click(Sender: TObject);
begin
  Navigator.VisibleButtons:=[nbEdit,nbPost,nbCancel,nbDelete];
  Navigator.Visible       :=  True;
  Grid.Visible            :=  True;
  edtID.Visible           :=  True;
  edtDescricao.Visible    :=  True;
  edtCategoria.Visible    :=  True;
  edtPreco.Visible        :=  True;
  if rBtnFiltro.Checked then
  begin
    DM.query.Open('SELECT * FROM produto;');
  end;
  if rBtnID.Checked then
  begin
  //SELECT * FROM produto WHERE ID_CATEGORIA = 1;
    DM.query.Open('SELECT * FROM produto WHERE ID_CATEGORIA = '+busca.Text+ ';');
  end;
  if rBtnDescricao.Checked then
  begin
    DM.query.Open('SELECT * FROM produto WHERE DESCRICAO = "'+busca.Text+ '";');
  end;


end;

procedure TCatalogo.FormCreate(Sender: TObject);
begin
  Navigator.Visible       :=  False;
  Navigator.ConfirmDelete :=  False;
  Grid.Visible            :=  False;
  edtID.Visible           :=  False;
  edtDescricao.Visible    :=  False;
  edtCategoria.Visible    :=  False;
  edtPreco.Visible        :=  False;
  rBtnFiltro.Checked      :=  True;


end;

procedure TCatalogo.menuProdutoClick(Sender: TObject);
begin
frmNovoProduto.ShowModal;
end;

procedure TCatalogo.NavigatorBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
If Button = nbPost then
  If MessageDlg('Realmente deseja confirmar as alterações?', mtWarning, [mbYes, mbNo], 0) = mrno  Then
      Abort;
If Button = nbDelete then
    If MessageDlg('Realmente deseja deletar o produto atual?', mtWarning, [mbYes, mbNo], 0) = mrno  Then
      Abort;

end;

end.
