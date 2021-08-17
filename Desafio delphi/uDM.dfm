object DM: TDM
  OldCreateOrder = False
  Height = 287
  Width = 441
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 192
  end
  object DS: TDataSource
    DataSet = query
    Left = 208
    Top = 200
  end
  object query: TFDQuery
    DetailFields = 'DESCRICAO;ID;ID_CATEGORIA;PRECO;DESCRICAO_1;ID_1;VALOR'
    SQL.Strings = (
      
        'SELECT * FROM produto'#10'INNER JOIN categoria'#10'ON produto.ID_CATEGOR' +
        'IA = categoria.ID;')
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
    object queryID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object queryDESCRICAO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_1'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object queryVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DesafiodelphiConnection2: TFDConnection
    LoginPrompt = False
    Left = 208
    Top = 80
  end
end
