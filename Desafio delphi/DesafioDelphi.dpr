program DesafioDelphi;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Catalogo} ,
  uClasseProduto in 'uClasseProduto.pas',
  uDM in 'uDM.pas' {DM: TDataModule} ,
  uFrmNovoProduto in 'uFrmNovoProduto.pas' {frmNovoProduto};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := true;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCatalogo, Catalogo);
  Application.CreateForm(TfrmNovoProduto, frmNovoProduto);
  Application.Run;
end.
