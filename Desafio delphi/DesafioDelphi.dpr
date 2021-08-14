program DesafioDelphi;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Catalogo},
  uClasseProduto in 'uClasseProduto.pas',
  uClasseCategoria in 'uClasseCategoria.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  uFrmNovoProduto in 'uFrmNovoProduto.pas' {frmNovoProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCatalogo, Catalogo);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmNovoProduto, frmNovoProduto);
  Application.Run;
end.
