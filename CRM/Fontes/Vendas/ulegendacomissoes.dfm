object frmlegendacomissoes: Tfrmlegendacomissoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Legenda - Orienta'#231#245'es'
  ClientHeight = 456
  ClientWidth = 894
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label6: TLabel
    Left = 24
    Top = 24
    Width = 221
    Height = 18
    Caption = 'Comiss'#227'o - Presta'#231#227'o de Contas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 10
    Width = 840
    Height = 8
    Shape = bsBottomLine
  end
  object Bevel2: TBevel
    Left = 24
    Top = 43
    Width = 840
    Height = 8
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 24
    Top = 256
    Width = 145
    Height = 18
    Caption = 'Atualiza'#231#227'o da D'#237'vida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 24
    Top = 242
    Width = 840
    Height = 8
    Shape = bsBottomLine
  end
  object Bevel4: TBevel
    Left = 24
    Top = 275
    Width = 840
    Height = 8
    Shape = bsBottomLine
  end
  object AdvLUEdit1: TAdvLUEdit
    Left = 104
    Top = 57
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% C.M.'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = 'Porcentagem da comiss'#227'o sobre a Corre'#231#227'o Monet'#225'ria.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit2: TAdvLUEdit
    Left = 104
    Top = 318
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Juros'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = '% dos Juros a ser aplicada no calculo da atualiza'#231#227'o da D'#237'vida.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit3: TAdvLUEdit
    Left = 104
    Top = 86
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Multa'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = 'Porcentagem da comiss'#227'o sobre a Multa.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit4: TAdvLUEdit
    Left = 104
    Top = 115
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Juros'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = 'Porcentagem da comiss'#227'o sobre os Juros.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit5: TAdvLUEdit
    Left = 104
    Top = 144
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Honor'#225'rio'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = 'Porcentagem da comiss'#227'o sobre o Honor'#225'rio.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit6: TAdvLUEdit
    Left = 104
    Top = 173
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Saldo'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = 
      'Porcentagem da Comiss'#227'o sobre o saldo. SALDO = VALOR PAGO - (VL%' +
      ' CM + VL% MULTA + VL% JUROS + VL% HONORARIO)'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit7: TAdvLUEdit
    Left = 104
    Top = 202
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Operador'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Text = 
      'Porcentagem sobre o valor recebido para remunera'#231#227'o do operador ' +
      'da negocia'#231#227'o.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit8: TAdvLUEdit
    Left = 104
    Top = 289
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Multa'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Text = '% da Multa a ser aplicada no calculo da atualiza'#231#227'o da D'#237'vida.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit9: TAdvLUEdit
    Left = 104
    Top = 347
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Honor'#225'rio'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = 
      '% do Honor'#225'rio a ser aplicada no calculo da atualiza'#231#227'o da D'#237'vid' +
      'a.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit10: TAdvLUEdit
    Left = 104
    Top = 376
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = 'Valor Honor.'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    Text = 
      'Valor do Honor'#225'rio a ser aplicado no calculo da atualiza'#231#227'o da D' +
      #237'vida.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object AdvLUEdit11: TAdvLUEdit
    Left = 104
    Top = 409
    Width = 750
    Height = 23
    DefaultHandling = True
    EmptyTextStyle = []
    LabelCaption = '% Desc.'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -13
    LabelFont.Name = 'Roboto'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = 
      '% de Desconto a ser aplicado no calculo da atualiza'#231#227'o da D'#237'vida' +
      '.'
    Visible = True
    Version = '1.4.1.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Key = 'LUEdit'
    LookupPersist.Section = 'Values'
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
end