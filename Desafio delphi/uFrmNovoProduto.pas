unit uFrmNovoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uClasseProduto, uDM, uFrmPrincipal, Vcl.Mask;

type
  TfrmNovoProduto = class(TForm)

    edtID: TEdit;
    edtDescricao: TEdit;
    edtCategoria: TEdit;
    btnSalvar: TButton;
    edtValor: TEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovoProduto: TfrmNovoProduto;
  Produto: TProduto;

implementation

{$R *.dfm}

procedure TfrmNovoProduto.btnSalvarClick(Sender: TObject);
begin
  Produto := TProduto.Create();
  try
    Produto.IDCat := StrToInt(edtCategoria.text);
    Produto.ID := StrToInt(edtID.text);
    Produto.Descricao := edtDescricao.text;
    Produto.Valor := StrToFloat(edtValor.text);
    Produto.Salvar();
  finally
    Produto.Free;
  end;
end;

end.
