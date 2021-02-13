object DMRelClientes: TDMRelClientes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 385
  Width = 518
  object dsQBancos: TDataSource
    Left = 136
    Top = 8
  end
  object dsQClass_CLientes: TDataSource
    Left = 136
    Top = 57
  end
  object dsQClass_Operacoes: TDataSource
    Left = 136
    Top = 160
  end
  object dsQRelatorioAnalitico: TDataSource
    Left = 136
    Top = 216
  end
  object dsQCidades: TDataSource
    Left = 136
    Top = 108
  end
  object ClientRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 288
    object ClientRelatorioCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object ClientRelatorioVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object ClientRelatorioCOD_CLASSIFICACAO: TIntegerField
      FieldName = 'COD_CLASSIFICACAO'
    end
    object ClientRelatorioBANCO: TIntegerField
      FieldName = 'BANCO'
    end
  end
  object ClientRelatorioCarteira: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 288
    object ClientRelatorioCarteiraCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object ClientRelatorioCarteiraNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object ClientRelatorioCarteiraCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
    end
    object ClientRelatorioCarteiraNROPERACAO: TStringField
      FieldName = 'NROPERACAO'
    end
    object ClientRelatorioCarteiraDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
    end
    object ClientRelatorioCarteiraVALORNOMINAL: TFloatField
      FieldName = 'VALORNOMINAL'
    end
    object ClientRelatorioCarteiraVALORREALIZADO: TFloatField
      FieldName = 'VALORREALIZADO'
    end
    object ClientRelatorioCarteiraVALORDIVIDA: TFloatField
      FieldName = 'VALORDIVIDA'
    end
    object ClientRelatorioCarteiraSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object ClientRelatorioCarteiraSTATUS_DESC: TStringField
      FieldName = 'STATUS_DESC'
    end
    object ClientRelatorioCarteiraGARANTIAS: TStringField
      FieldName = 'GARANTIAS'
      Size = 40
    end
  end
end
