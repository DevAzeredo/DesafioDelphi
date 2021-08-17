unit uClasseProduto;

interface

uses uDM, uFrmPrincipal, System.SysUtils, Vcl.Dialogs;

type
  TProduto = class

  private
    FID: Integer;
    FDescricao: String;
    FValor: Currency;
    FIDCat: Integer;
  protected
    { protected declarations }
  public
    { public declarations }
    property ID: Integer read FID write FID;
    property Descricao: String read FDescricao write FDescricao;
    property Valor: Currency read FValor write FValor;
    property IDCat: Integer read FIDCat write FIDCat;
    procedure Salvar();
  published
    { published declarations }
  end;

implementation

procedure TProduto.Salvar();
var
  valorString: String;
begin
  try
    valorString := CurrToStr(Valor);
    DM.query.SQL.Clear;
    DM.query.SQL.Text :=
      'INSERT INTO produto (ID, DESCRICAO, ID_CATEGORIA, PRECO) VALUES (' +
      ID.ToString + ', "' + Descricao + '", ' + IDCat.ToString + ', ' +
      StringReplace(valorString, ',', '.', []) + ');';
    DM.query.ExecSQL;
    ShowMessage('Salvo com sucesso! :D');
  except
    on E: Exception do
      ShowMessage('Não foi possível salvar.');
  end;
end;

end.
