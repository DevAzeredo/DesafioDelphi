unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Dialogs,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DS: TDataSource;
    query: TFDQuery;
    queryID: TIntegerField;
    queryDESCRICAO: TStringField;
    queryID_CATEGORIA: TIntegerField;
    queryPRECO: TFloatField;
    queryID_1: TIntegerField;
    queryDESCRICAO_1: TStringField;
    queryVALOR: TFloatField;
    DesafiodelphiConnection2: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Iniciar();
    procedure semFiltro();
    procedure IDProduto(buscar: String);
    procedure DescricaoProduto(buscar: String);
    procedure DescricaoCategoria(buscar: String);
  end;

var
  DM: TDM;

implementation

procedure TDM.Iniciar();
begin
  DesafiodelphiConnection2.Params.ConnectionDef := 'DesafioDelphi';
  DesafiodelphiConnection2.DriverName := 'MySQL';
  DesafiodelphiConnection2.Params.Database := 'bancodelphi';
  DesafiodelphiConnection2.Params.UserName := 'root';
  DesafiodelphiConnection2.Params.Password := '123456';
  DesafiodelphiConnection2.Params.DriverID := 'MySQL';
  DesafiodelphiConnection2.Connected := True;
  query.Connection := DesafiodelphiConnection2;
end;

procedure TDM.semFiltro();
begin
  query.Open
    ('SELECT * FROM produto INNER JOIN categoria ON produto.ID_CATEGORIA = categoria.ID;');
end;

procedure TDM.IDProduto(buscar: String);
begin
  query.Open
    ('SELECT * FROM produto INNER JOIN categoria ON produto.ID_CATEGORIA = categoria.ID WHERE categoria.ID ='
    + buscar + ';');
end;

procedure TDM.DescricaoProduto(buscar: String);
begin
  query.Open
    ('SELECT * FROM produto INNER JOIN categoria ON produto.ID_CATEGORIA = categoria.ID WHERE produto.DESCRICAO LIKE "%'
    + buscar + '%";');
end;

procedure TDM.DescricaoCategoria(buscar: String);
begin
  query.Open
    ('SELECT * FROM produto INNER JOIN categoria ON produto.ID_CATEGORIA = categoria.ID WHERE categoria.DESCRICAO LIKE "%'
    + buscar + '%";');
end;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
