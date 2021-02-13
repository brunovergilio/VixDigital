object dmPreVenda: TdmPreVenda
  OldCreateOrder = False
  Height = 182
  Width = 372
  object Qry001: TFDQuery
    Connection = DmPrincipal.ConexaoPrincipal
    Transaction = DmPrincipal.IBTransaction1
    Left = 40
    Top = 24
  end
  object QryAux: TFDQuery
    Connection = DmPrincipal.ConexaoPrincipal
    Transaction = DmPrincipal.IBTransaction1
    Left = 104
    Top = 24
  end
  object QryAux2: TFDQuery
    Connection = DmPrincipal.ConexaoPrincipal
    Transaction = DmPrincipal.IBTransaction1
    Left = 168
    Top = 24
  end
  object cdsProdutos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 172
    Top = 76
    object cdsProdutoscodigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object cdsProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object cdsProdutosvlruni: TFloatField
      FieldName = 'vlruni'
      OnChange = cdsProdutosvlruniChange
      currency = True
    end
    object cdsProdutosvlrTotal: TFloatField
      FieldName = 'vlrTotal'
      currency = True
    end
    object cdsProdutosPeso: TFloatField
      FieldName = 'Peso'
    end
    object cdsProdutoscfop: TStringField
      FieldName = 'cfop'
      Size = 10
    end
    object cdsProdutosqtde: TFloatField
      FieldName = 'qtde'
      OnChange = cdsProdutosqtdeChange
    end
    object cdsProdutoslivre1: TStringField
      DisplayWidth = 30
      FieldName = 'livre1'
      Size = 30
    end
    object cdsProdutoslivre2: TStringField
      DisplayWidth = 30
      FieldName = 'livre2'
      Size = 30
    end
    object cdsProdutoslivre3: TStringField
      DisplayWidth = 30
      FieldName = 'livre3'
      Size = 30
    end
  end
end
