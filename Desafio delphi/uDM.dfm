object DM: TDM
  OldCreateOrder = False
  Height = 287
  Width = 441
  object DesafiodelphiConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DesafioDelphi')
    Connected = True
    LoginPrompt = False
    Left = 86
    Top = 19
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 192
  end
  object DS: TDataSource
    DataSet = query
    Left = 232
    Top = 168
  end
  object query: TFDQuery
    DetailFields = 'DESCRICAO;ID;ID_CATEGORIA;PRECO'
    Connection = DesafiodelphiConnection
    SQL.Strings = (
      'SELECT * FROM produto;')
    Left = 80
    Top = 80
    object queryID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object queryID_CATEGORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object queryPRECO: TFloatField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
  end
end
