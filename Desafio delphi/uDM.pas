unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,Dialogs,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    DesafiodelphiConnection : TFDConnection;
    FDGUIxWaitCursor1       : TFDGUIxWaitCursor;
    DS                      : TDataSource;
    query                   : TFDQuery;
    queryID                 : TIntegerField;
    queryDESCRICAO          : TStringField;
    queryID_CATEGORIA       : TIntegerField;
    queryPRECO              : TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
