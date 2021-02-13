object FGerenciadorOperacoes_Filtro: TFGerenciadorOperacoes_Filtro
  Left = 794
  Top = 263
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Filtros do Gerenciador de Opera'#231#245'es'
  ClientHeight = 628
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 588
    Height = 558
    ActivePage = TbLista
    Align = alClient
    MultiLine = True
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Bancos e Remessas'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvSpace
        TabOrder = 0
        object Btn_Todas_Remessas: TSpeedButton
          Left = 11
          Top = 46
          Width = 139
          Height = 20
          Hint = 'Todas as Remessas'
          GroupIndex = 2
          Down = True
          Caption = 'Todas as Remessas'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Todas_RemessasClick
        end
        object Btn_Remessas_Office: TSpeedButton
          Left = 11
          Top = 68
          Width = 139
          Height = 19
          Hint = 'Filtrar Somente Remessas COR699'
          GroupIndex = 2
          Caption = 'Remessas COR699'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Todas_RemessasClick
        end
        object Btn_Remessas_ICE: TSpeedButton
          Left = 11
          Top = 88
          Width = 139
          Height = 20
          Hint = 'Filtrar Somente Remessas ICE699'
          GroupIndex = 2
          Caption = 'Remessas ICE699'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Todas_RemessasClick
        end
        object Label1: TLabel
          Left = 11
          Top = 113
          Width = 162
          Height = 13
          Caption = 'Intervalo de Remessas ( Sele'#231#227'o )'
        end
        object Label2: TLabel
          Left = 129
          Top = 135
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label22: TLabel
          Left = 11
          Top = 156
          Width = 168
          Height = 13
          Caption = 'Intervalo de Remessas ( Digita'#231#227'o )'
        end
        object Label23: TLabel
          Left = 129
          Top = 176
          Width = 6
          Height = 13
          Caption = #224
        end
        object BtnRemessas: TSpeedButton
          Left = 11
          Top = 211
          Width = 115
          Height = 22
          Caption = 'Adicionar Remessas'
          Flat = True
          OnClick = BtnRemessasClick
        end
        object Label6: TLabel
          Left = 11
          Top = 7
          Width = 83
          Height = 13
          Caption = 'Banco / Empresa'
        end
        object Label11: TLabel
          Left = 11
          Top = 328
          Width = 100
          Height = 13
          Caption = 'Condi'#231#245'es Negociais'
        end
        object Lb_Planilha: TLabel
          Left = 199
          Top = 46
          Width = 108
          Height = 13
          Caption = 'Planilha em Espec'#237'fico'
        end
        object Label3: TLabel
          Left = 11
          Top = 196
          Width = 120
          Height = 13
          Caption = 'Remessas em Espec'#237'fico'
        end
        object lcRemessa: TRxDBLookupCombo
          Left = 257
          Top = 203
          Width = 115
          Height = 22
          Hint = 'Selecione a Remessa a ser Filtrada'
          DropDownCount = 8
          DisplayEmpty = '<< Todas >>'
          EmptyValue = '0'
          LookupField = 'CODIGO'
          LookupDisplay = 'CodigoBB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Visible = False
          OnCloseUp = lcRemessaCloseUp
          OnKeyPress = lcRemessaKeyPress
        end
        object List_Remessas: TListBox
          Left = 11
          Top = 235
          Width = 243
          Height = 87
          Hint = 
            'Lista de Remesas.'#13#10'Para Remover selecione a Remessa e pressione ' +
            'a tecla DEL.'
          Columns = 2
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 6
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_RemessasMouseDown
        end
        object Remessa_Inicial: TRxDBLookupCombo
          Left = 11
          Top = 130
          Width = 115
          Height = 22
          Hint = 'Selecione a Remessa a ser Filtrada'
          DropDownCount = 8
          DisplayEmpty = '<< Todas >>'
          EmptyValue = '0'
          LookupField = 'CODIGO'
          LookupDisplay = 'CodigoBB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object Remessa_Final: TRxDBLookupCombo
          Left = 140
          Top = 130
          Width = 115
          Height = 22
          Hint = 'Selecione a Remessa a ser Filtrada'
          DropDownCount = 8
          DisplayEmpty = '<< Todas >>'
          EmptyValue = '0'
          LookupField = 'CODIGO'
          LookupDisplay = 'CodigoBB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object EdtRemessa_Inicial: TEdit
          Left = 11
          Top = 172
          Width = 115
          Height = 21
          TabOrder = 3
        end
        object EdtRemessa_Final: TEdit
          Left = 139
          Top = 172
          Width = 115
          Height = 21
          TabOrder = 4
        end
        object Look_Banco: TRxDBLookupCombo
          Left = 11
          Top = 20
          Width = 280
          Height = 22
          Hint = 'Selecione o Banco / Empresa a ser Filtrada'
          DropDownCount = 8
          DisplayEmpty = '<< Todos >>'
          EmptyValue = '0'
          FieldsDelimiter = #0
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = Look_BancoChange
        end
        object Cond_Negoicais: TComboBox
          Left = 11
          Top = 345
          Width = 156
          Height = 21
          TabOrder = 7
          Text = 'Cond_Negociais'
          OnChange = Cond_NegoicaisChange
          Items.Strings = (
            'Todos'
            'Com Condi'#231#245'es Negociais'
            'Sem Condi'#231#245'es Negociais')
        end
        object DbPlanilhaCelpa: TRxDBLookupCombo
          Left = 200
          Top = 60
          Width = 163
          Height = 22
          Hint = 'Selecione a Planilha a ser Filtrada'
          DropDownCount = 8
          DisplayEmpty = '<< Todas >>'
          EmptyValue = '0'
          LookupField = 'REMESSA'
          LookupDisplay = 'REMESSA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object Group_RegiaoICE: TGroupBox
          Left = 175
          Top = 43
          Width = 93
          Height = 83
          Caption = 'Regi'#245'es ICE'
          TabOrder = 9
          Visible = False
          object Btn_Adc_Regioes: TSpeedButton
            Left = 5
            Top = 16
            Width = 82
            Height = 17
            Hint = 'Adicionar Regi'#245'es ICE'
            Caption = 'Adicionar'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Btn_Adc_RegioesClick
          end
          object Ri_Regioes: TListBox
            Left = 6
            Top = 33
            Width = 81
            Height = 45
            ItemHeight = 13
            PopupMenu = PopupLimparConteudo_Todos
            TabOrder = 0
            OnKeyDown = Ri_RegioesKeyDown
            OnMouseDown = Ri_RegioesMouseDown
          end
        end
        object Button1: TButton
          Left = 296
          Top = 312
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 10
          Visible = False
        end
        object Button2: TButton
          Left = 296
          Top = 336
          Width = 75
          Height = 25
          Caption = 'Button2'
          TabOrder = 11
          Visible = False
          OnClick = Button2Click
        end
        object ckOperacaoUnica: TCheckBox
          Left = 11
          Top = 368
          Width = 308
          Height = 17
          Caption = 'Apenas Clientes com 1 Opera'#231#227'o para este Banco/Empresa'
          TabOrder = 12
          OnClick = ckOperacaoUnicaClick
        end
        object RgRemessa: TRadioGroup
          Left = 130
          Top = 207
          Width = 124
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 13
        end
      end
    end
    object TbCorrespondencia: TTabSheet
      Caption = 'Marcadores e Correspond'#234'ncia'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvSpace
        TabOrder = 0
        object Lb_Texto_Corr: TLabel
          Left = 2
          Top = 8
          Width = 219
          Height = 13
          Caption = 'Correspond'#234'ncias enviadas a Mais de XX dias'
          FocusControl = lcRemessa
        end
        object Btn_Mais: TSpeedButton
          Left = 3
          Top = 23
          Width = 52
          Height = 22
          Hint = 'Mais de'
          GroupIndex = 1
          Down = True
          Caption = 'Mais'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_MenosClick
        end
        object Btn_Menos: TSpeedButton
          Left = 56
          Top = 23
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 1
          Caption = 'Menos'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_MenosClick
        end
        object Btn_Igual: TSpeedButton
          Left = 108
          Top = 23
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 1
          Caption = 'Igual'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_MenosClick
        end
        object Image1: TImage
          Left = 8
          Top = 96
          Width = 35
          Height = 35
          Picture.Data = {
            07544269746D6170060E0000424D060E00000000000036000000280000002200
            0000220000000100180000000000D00D00000000000000000000000000000000
            0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C3CACEA5ABAF82878980858892
            989BA4ABAEB1B9BCBBC2C6C4CBCFC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4A5ABAE5B56
            504545443E42434B4E4F5E6264717678868C8E9CA2A5AEB4B8B8BFC3C0C7CBC5
            CDD1C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            C8D0D47F81819A52118B3B0D6632174A3228363635393C3D444849545759676B
            6D7E838592989BA3AAADB2B9BDBBC2C6C3CACEC7CFD3C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D4C8D0D4747572B35D0EA83D01A13A079C3A07892901712E0D
            5532214135303838393D42434B4E505E6163717678868C8E9CA2A5ADB4B7B8BF
            C3C0C8CCC6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D46A6967B26014A33B01C27A4FE6
            BB98D18F65BB6635A8420A9231017F31096932134A3226383635393C3D454748
            55585A666A6C7C818493999CA7AEB1BAC2C5C6CED2C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4706E69C065
            149E3601CC8C63FFF4D9FFE9CBFDDAB9F5CCA8E5AB81CB7C4AB55520A0420F8E
            3403742D0853311F403430383A393E41434C4F5165696B909598BBC2C6C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            C8D0D466625BCB6C189D3601C98761FFEED2FFE2C4FFE1C2FFE1C0FFE0BDFFE1
            BCFFD8B1EDB78DD89667C5733FB4531C9836027C310A6735184A352A3A3D3E6C
            7173AEB5B9C7CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D4C8D0D45B564ECD6F1DA13B01D59C7AFFEDD5FFE4C7FFE2C4
            FFDFC0FFDDBCFFDBB8FFDBB5FFDCB5FFE0B7FFDAAFF7C596EFAF72DB8B51BD5E
            24993C0544362F616567AAB1B5C7CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D46A5F51CB6E1EA03901DCA989FF
            EDD8FFE5CCFFE3C7FFE2C4FFDFC0FFDEBCFFDCB8FFD9B3FFD7B0FFD7B1FFD39F
            FFC273FFCD88E7A36CA242084B362A616567AAB1B5C7CFD3C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C5CDD174634FCC70
            229E3701DAA888FFF0DCFFE7D0FFE5CBFFE4C7FFE3C3EAD9C1D8D2BEFFDDB8FF
            DAB3FFD9B4FFC888FFB454FFC16EE59C5BA243084B372A666A6CAEB5B9C7CFD3
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            BBC2C76E5F4BCF7528A13B01E1B69AFFF1DDFFE9D4FFE6D0FFE6CCFCE5C74DAF
            C978BAC6FFE3BBFFDCB8FFD9B3FFB95EFFAD3EFFC473E5A470A0460B4538306D
            7173B3BABEC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D4BCC3C77C664DCB7024A33E02EDCEB8FFF0E0FFEBD6FFE9D3
            FFEBD089C2CC0190CC48AEC9FADFC0FFDEBDFFD9AEFFAA29FFBF62FFE0B5E8AD
            839D450B3F39346F7375B2B9BDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4B3BABE886B4DCB6F23A33E02ECCDB8FF
            F2E5FFEDDBFFEFD7AED0D00199CC20A0CC179FCBE1D9C5FFE4C6FAC37CDFA24C
            C4BDACD9BE9BDC92589F460A3634366064669AA0A3B8BFC3C3CACEC8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4A4AAAE86684ACD73
            28A44002EED3C1FFF5E8FFF3E1AFD3D60597CB4BB0CED0D9D00197CCA5CAC8FF
            EECD997A581F445451909CB4742DDA8029BD5E066843204845435E61637F8487
            9DA3A6B2B9BDBFC6CAC7CFD3C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            A4ACB0987451CA6D21A54409FBEFE3FFF6E8B0D6DC0196CB3FACCFF4E8D6FFE8
            D336AACE45ADCBFFE9C9E6CBB0527D8F7A7957FFC489FFD8AEF6B97BE28E3BBD
            69147E4E21584B3F585C5D74787A919699ABB2B5BCC3C7C4CCD0C8D0D4C8D0D4
            0000C8D0D4C8D0D49EA4A7A67E54CA6C1FA64409FCF2EAFFF8EC8ECBDB49B1D2
            EEEADEFFEFDCFFEFD782C2D00398CCE6DECBFFE9CAEFE3D0BC8B55DFA369FCE1
            C5FFEACFFFDBB4F8C088E6984CC9711B9454176A4C304F5354686C6E868C8EA2
            A8ABB6BDC1C8D0D40000C8D0D4C8D0D4909699A47D54CC6F22A44308FCF3EEFF
            F7F0FCF5EAF9F1E6FFF3E4FFEFDFFFF1DBC3D8D5059ACC94C6CDFFEACCFFE7C9
            FFDFBDE6AC71D68537E2A061FBD7B2FFE5C9FFE2BFFAC38DEAA25BD77E258657
            294F504C4649535E616382888AC8D0D40000C8D0D4C8D0D48C9397B6885CC967
            17AE5724FCF7F4FFF9F4FFF7EFFFF7EBFFF3E7FFF0E3FFF0DFF9EDDB29A6CF49
            AFCEFDE9D0FFE6CCFFE5CAFFF0D6D28D5DA342019A5A18DB924EEFC294FFE4C9
            FFE5C0BFA183A6A9A67C7B9C1818862B2D6655595CC8D0D40000C8D0D4C8D0D4
            899094CB9866C6610FB76839FDFAF9FFFBF7FFF9F3FFF6EFFFF6EBFFF3E7FFF1
            E4FFF4E080C3D40C9BCCDADCD2FFEAD1FFE5CCFFF0D7D086528A390157463389
            7D71BF9060D2853AF0B77D988D81E7E9F14B55C51049D00A26B63F4170C8D0D4
            0000C8D0D4C8D0D4777E81CB9B6CC66313B36335FDFDFDFFFDFBFFFAF7FFF8F3
            FFF6EFFFF5EAFFF3E7FFF2E4E4E6DE0697CC8EC6D1FFECD4FFE6D0FFF1DBD188
            55994001343A3F7C8184B8BFC3C9CBCBCAA47FA1815D86879B283CB32478EC0F
            2CB6696D92C8D0D40000C8D0D4C8D0D47F8384D09E70C15906BC7448FEFEFFFF
            FFFFFFFDFAFFFAF7FFF9F3FFF6EEFFF6EAFFF3E7FEF1E455B6D31FA2CDFDEAD7
            FFE8D4FFF3E0D38A589B4201383B3F7D8284B8BFC3C8D0D4C8D0D4C8CFD3AFB5
            B86669A12431AD6266ACB7BEC4C8D0D40000C8D0D4C8D0D4808382DCA877BA4E
            01C68965FFFFFFFFFFFFFFFFFEFFFDFAFFFAF7FFF8F3FFF6EFFFF5EBFFF7E8BC
            DADE0196CB9CCCD4FFEFD8FFF5E3D38A599E4301383D3F82888ABAC2C5C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C7CFD4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            737475DEAD7DB94D01C48664FFFFFFFFFFFFFFFFFFFFFFFEFFFCFAFFFAF6FFF8
            F3FFF7EFFFF6EAF6F2E634ACD131A9CFFAEEDDFFEEDBCC7E478F43053C404287
            8C8FBCC3C7C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D4747373DEAA77BA4E01C5896AFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFCFAFFFAF6FFF8F3FFF6EEFFF8EBCDE2E2CCE0DFFEF1E3FDEBDBCC7D
            418944073E4244898E91BCC4C8C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4807F7CE2AA70BF5701BA6427C5825CCD
            9B81E0C1B3EEDED6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBF5FFFAEEFFF5E8
            FFF2E6FDEDE0CE80438C45063E4244898E91BCC4C8C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D474726DE1AE74C65F
            01BF5801BA4E01BA5001B95505B65610B45B20BF7A51CF9C80E1C0AEECD7CEF3
            E5DEFDF4EEFFFFF8FFFFF9FFF7EDD082478C46053E4244898E91BCC4C8C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            787871E8BA80C55B01C35C01C45D01C45D01C45E01C45E01C55E01C15901BA51
            01B24801B14C01B86123C37B4CC88B69D2A58BE2C0AFC774358F4A093E424489
            8E91BCC4C8C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D47B7971FAE1ACE69A46D4761DD07011CA6607C45D01C25701
            C35901C45C01C65F01C86301C86301C45C01BE5401BA4E01B85001B5530BBE56
            049351124043468E9497BFC6CAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4979B9F888471BBB695D3C79EDEC390ED
            C686F3BE75EAA859E09540D78128CF7011C85F01C65C01C75E01C75F01C86101
            C86101C76001CC6201814B1A44474B949A9DC0C8CCC8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4B2B9BCA0A6
            A88A8E907A7E7C75777474776F8B8D7CA6A083BBAD86D7C190E5CC94E4BA79E3
            AC61DF9640DD8425D77815D3700CD56B037C4D1D5054569CA2A5C2CACEC8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BCC3C6A3A9AD8E9397797F
            82757B797B7F7986887C949480AFAE90BEB28AC9AE7AD2A664846C4973777AB1
            B8BBC6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            0000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BEC5C9ACB3B79FA5A993989C848A8B777E
            7D777D7CB1B7BBC4CBCFC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D40000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000}
        end
        object Bevel1: TBevel
          Left = 3
          Top = 63
          Width = 411
          Height = 2
        end
        object Label24: TLabel
          Left = 11
          Top = 79
          Width = 119
          Height = 13
          Caption = 'Controle de Marcadores  '
        end
        object Edt_Filtro_Correspondencia: TSpinEdit
          Left = 161
          Top = 23
          Width = 49
          Height = 22
          Hint = 'Correspond'#234'ncias enviadas a mais de XX dias'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Value = 0
          OnChange = Btn_MenosClick
        end
        object ckControleImpressao: TCheckBox
          Left = 13
          Top = 351
          Width = 275
          Height = 17
          Hint = 
            'Exibir Campos de Controle de Marcadores no Gerenciador de Opera'#231 +
            #245'es'
          Caption = 'Exibir Todos os Campos do Controle de Marcadores'
          TabOrder = 1
        end
        object CkLControle_Imp: TCheckListBox
          Left = 51
          Top = 98
          Width = 305
          Height = 248
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ckControleImpressao_Selecionado: TCheckBox
          Left = 13
          Top = 371
          Width = 327
          Height = 17
          Hint = 
            'Exibir Campos de Controle de Marcadores no Gerenciador de Opera'#231 +
            #245'es'
          Caption = 'Exibir Apenas o Campo Selecionado  do Controle de Marcadores'
          TabOrder = 3
        end
        object GroupBox7: TGroupBox
          Left = 133
          Top = 64
          Width = 156
          Height = 32
          Caption = 'Crit'#233'rio da Pesquisa'
          TabOrder = 4
          object Ck_Apenas: TRadioButton
            Left = 6
            Top = 16
            Width = 63
            Height = 12
            Hint = 'Igual ao texto Marcado'
            Caption = 'Apenas'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object Ck_Contendo: TRadioButton
            Left = 79
            Top = 16
            Width = 66
            Height = 12
            Hint = 'Contendo o texto Marcado'
            Caption = 'Contendo'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
        end
      end
    end
    object Tab_Eventos: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 5
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Label40: TLabel
          Left = 130
          Top = 81
          Width = 22
          Height = 13
          Caption = 'Final'
        end
        object Label39: TLabel
          Left = 2
          Top = 81
          Width = 27
          Height = 13
          Caption = 'Inicial'
        end
        object Btn_Adc_Eventos: TSpeedButton
          Left = 31
          Top = 116
          Width = 120
          Height = 21
          Hint = 'Adicionar C'#243'digo de Evento a Lista de filtro'
          Caption = 'C'#243'digos de Eventos'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Adc_EventosClick
        end
        object Btn_Mais_Contato: TSpeedButton
          Left = 4
          Top = 22
          Width = 52
          Height = 22
          Hint = 'Mais de'
          GroupIndex = 2
          Down = True
          Caption = 'Mais'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Mais_ContatoClick
        end
        object Btn_Menos_Contato: TSpeedButton
          Left = 57
          Top = 22
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 2
          Caption = 'Menos'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Mais_ContatoClick
        end
        object Btn_Igual_Contato: TSpeedButton
          Left = 110
          Top = 22
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 2
          Caption = 'Igual'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Mais_ContatoClick
        end
        object Bevel2: TBevel
          Left = 2
          Top = 51
          Width = 368
          Height = 3
        end
        object Bevel3: TBevel
          Left = 2
          Top = 208
          Width = 368
          Height = 3
        end
        object Label41: TLabel
          Left = 2
          Top = 120
          Width = 25
          Height = 13
          Caption = 'Listar'
        end
        object Label42: TLabel
          Left = 187
          Top = 120
          Width = 48
          Height = 13
          Caption = 'N'#227'o Listar'
        end
        object Btn_Adc_Eventos1: TSpeedButton
          Left = 239
          Top = 116
          Width = 120
          Height = 21
          Hint = 'Adicionar C'#243'digo de Evento a Lista de filtro'
          Caption = 'C'#243'digos de Eventos'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Adc_EventosClick
        end
        object Lb_Texto_Agenda: TLabel
          Left = 4
          Top = 218
          Width = 125
          Height = 13
          Caption = 'Agenda a Mais de XX dias'
          FocusControl = lcRemessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Btn_Mais_Agenda: TSpeedButton
          Left = 3
          Top = 232
          Width = 52
          Height = 22
          Hint = 'Mais de'
          GroupIndex = 3
          Down = True
          Caption = 'Mais'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Edt_AgendaChange
        end
        object Btn_Menos_Agenda: TSpeedButton
          Left = 56
          Top = 232
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 3
          Caption = 'Menos'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Edt_AgendaChange
        end
        object Btn_Igual_Agenda: TSpeedButton
          Left = 109
          Top = 232
          Width = 52
          Height = 22
          Hint = 'Menos de'
          GroupIndex = 3
          Caption = 'Igual'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = Edt_AgendaChange
        end
        object Bevel4: TBevel
          Left = 2
          Top = 267
          Width = 368
          Height = 3
        end
        object Label31: TLabel
          Left = 4
          Top = 274
          Width = 139
          Height = 13
          Caption = 'Lista de Cobran'#231'a (Consultar)'
          FocusControl = lcRemessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 68
          Top = 316
          Width = 111
          Height = 13
          Caption = 'Sele'#231#227'o (Data) da Lista'
          FocusControl = lcRemessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 7
          Top = 349
          Width = 45
          Height = 13
          Caption = 'Contatos:'
          FocusControl = lcRemessa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Rd_Periodo_Contato: TRadioButton
          Left = 4
          Top = 60
          Width = 113
          Height = 17
          Hint = 'Qualquer evento do per'#237'odo '#233' v'#225'lido'
          Caption = 'Per'#237'odo de Contato'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Rd_Periodo_ContatoClick
        end
        object Lb_Texto_Contato: TRadioButton
          Left = 4
          Top = 4
          Width = 206
          Height = 17
          Caption = 'Contato a Mais de XX dias'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = Lb_Texto_ContatoClick
        end
        object Final_Evento: TDateEdit
          Left = 154
          Top = 77
          Width = 87
          Height = 21
          DialogTitle = 'Selecione uma Data'
          NumGlyphs = 2
          StartOfWeek = Sun
          YearDigits = dyFour
          TabOrder = 4
        end
        object Inicio_Evento: TDateEdit
          Left = 31
          Top = 77
          Width = 87
          Height = 21
          DialogTitle = 'Selecione uma Data'
          NumGlyphs = 2
          StartOfWeek = Sun
          YearDigits = dyFour
          TabOrder = 3
        end
        object Lista_Eventos: TListBox
          Left = 31
          Top = 137
          Width = 120
          Height = 69
          Hint = 
            'Lista de c'#243'digos de Eventos a serem filtradas.'#13#10'Para Remover sel' +
            'ecione o c'#243'digo e pressione a tecla DEL.'
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 5
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = Lista_EventosMouseDown
        end
        object Edt_Contato: TSpinEdit
          Left = 162
          Top = 22
          Width = 49
          Height = 22
          Hint = 'Contato a mais de XX dias'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Value = 0
          OnChange = Btn_Mais_ContatoClick
        end
        object Lista_Eventos1: TListBox
          Left = 239
          Top = 137
          Width = 120
          Height = 69
          Hint = 
            'Lista de c'#243'digos de Eventos a serem filtradas.'#13#10'Para Remover sel' +
            'ecione o c'#243'digo e pressione a tecla DEL.'
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 6
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = Lista_Eventos1MouseDown
        end
        object CkNaoIncluirSemContato: TCheckBox
          Left = 216
          Top = 30
          Width = 145
          Height = 17
          Hint = 
            'Para este Filtro Funcionar '#233' preciso que o Contato a Mais de XX ' +
            'dias, seje no M'#237'nimo 1 dia.'
          Caption = 'N'#227'o Incluir "sem contato"'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object Edt_Agenda: TSpinEdit
          Left = 162
          Top = 232
          Width = 49
          Height = 22
          Hint = 'Contato a mais de XX dias'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Value = 0
          OnChange = Edt_AgendaChange
        end
        object Ck_Null_Agenda: TCheckBox
          Left = 217
          Top = 248
          Width = 153
          Height = 17
          Hint = 'Incluir registros sem agenda'
          Caption = 'Incluir registros sem agenda'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object Ck_Considera_DataFinal: TCheckBox
          Left = 31
          Top = 100
          Width = 297
          Height = 16
          Caption = 'N'#227'o exibir Cliente que possua Evento Ap'#243's da Data Final'
          TabOrder = 11
        end
        object ListaAnterior: TCheckListBox
          Left = 181
          Top = 315
          Width = 179
          Height = 71
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object Panel9: TPanel
          Left = 7
          Top = 363
          Width = 174
          Height = 23
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 13
          object RdLista_Agenda: TRadioButton
            Left = 114
            Top = 6
            Width = 58
            Height = 12
            Caption = 'Agenda'
            TabOrder = 0
          end
          object RdLista_Todos: TRadioButton
            Left = 4
            Top = 6
            Width = 51
            Height = 12
            Caption = 'Todos'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RdLista_Normal: TRadioButton
            Left = 58
            Top = 6
            Width = 53
            Height = 12
            Caption = 'Normal'
            TabOrder = 2
          end
        end
        object RgCampanha: TComboBox
          Left = 4
          Top = 290
          Width = 357
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = 'Selecione uma Campanha'
          OnChange = RgCampanhaChange
          Items.Strings = (
            'TODOS')
        end
        object GroupBox9: TGroupBox
          Left = 214
          Top = 211
          Width = 147
          Height = 36
          Caption = 'Prioridade(s)'
          TabOrder = 9
          object Ck_Alta: TCheckBox
            Left = 3
            Top = 16
            Width = 48
            Height = 17
            Hint = 'Prioridade Alta'
            Caption = 'Alta'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 0
          end
          object Ck_Normal: TCheckBox
            Left = 43
            Top = 16
            Width = 54
            Height = 17
            Hint = 'Prioridade Normal'
            Caption = 'Normal'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 1
          end
          object CkEspecial: TCheckBox
            Left = 97
            Top = 16
            Width = 47
            Height = 17
            Hint = 'Prioridade Especial'
            Caption = 'Espe.'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object CkExcetoLista: TCheckBox
          Left = 303
          Top = 273
          Width = 58
          Height = 17
          Caption = 'Exceto'
          TabOrder = 15
        end
        object Rd_Periodo_Contato_Ultimo: TRadioButton
          Left = 144
          Top = 60
          Width = 188
          Height = 17
          Hint = 'Somente o '#250'ltimo evento do per'#237'odo '#233' v'#225'lido'
          Caption = 'Per'#237'odo de Contato '#218'ltimo Evento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = Rd_Periodo_ContatoClick
        end
        object CkValidosComoContato: TCheckBox
          Left = 216
          Top = 7
          Width = 145
          Height = 17
          Hint = 
            'Para este Filtro Funcionar '#233' preciso que o Contato a Mais de XX ' +
            'dias, seje no M'#237'nimo 1 dia.'
          Caption = 'Somente Contatos V'#225'lidos'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 17
        end
      end
    end
    object tsPeriodosValores: TTabSheet
      Caption = 'Per'#237'odos e Valores'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object lbDiasVencidosLeader: TLabel
          Left = 240
          Top = 12
          Width = 104
          Height = 13
          Caption = 'Dias Vencidos Leader'
        end
        object Label36: TLabel
          Left = 300
          Top = 30
          Width = 6
          Height = 13
          Caption = #224
        end
        object GroupBox1: TGroupBox
          Left = 9
          Top = 2
          Width = 225
          Height = 255
          Caption = 'Intervalos'
          TabOrder = 0
          object Label13: TLabel
            Left = 87
            Top = 28
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label50: TLabel
            Left = 3
            Top = 12
            Width = 68
            Height = 13
            Caption = 'Dias Vencidos'
          end
          object Label12: TLabel
            Left = 3
            Top = 44
            Width = 87
            Height = 13
            Caption = 'Dias em Cobran'#231'a'
          end
          object Label15: TLabel
            Left = 87
            Top = 60
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label5: TLabel
            Left = 3
            Top = 185
            Width = 65
            Height = 13
            Caption = 'Valor Nominal'
          end
          object Label18: TLabel
            Left = 87
            Top = 203
            Width = 6
            Height = 13
            Caption = #224
          end
          object lbValorMinimo: TLabel
            Left = 3
            Top = 149
            Width = 62
            Height = 13
            Caption = 'Valor M'#237'nimo'
          end
          object lblValorMinimoA: TLabel
            Left = 88
            Top = 165
            Width = 6
            Height = 13
            Caption = #224
          end
          object Edt_Nr_Inicial: TEdit
            Left = 4
            Top = 24
            Width = 71
            Height = 21
            TabOrder = 2
          end
          object Edt_Nr_Final: TEdit
            Left = 108
            Top = 24
            Width = 71
            Height = 21
            TabOrder = 3
          end
          object Edt_Nr_Cob_Inicial: TEdit
            Left = 4
            Top = 56
            Width = 71
            Height = 21
            TabOrder = 4
          end
          object Edt_Nr_Cob_Final: TEdit
            Left = 108
            Top = 56
            Width = 71
            Height = 21
            TabOrder = 5
          end
          object Panel10: TPanel
            Left = 3
            Top = 77
            Width = 217
            Height = 36
            BevelOuter = bvNone
            TabOrder = 6
            object Label51: TLabel
              Left = 1
              Top = 1
              Width = 59
              Height = 13
              Caption = 'Valor D'#237'vida'
            end
            object Label52: TLabel
              Left = 84
              Top = 18
              Width = 6
              Height = 13
              Caption = #224
            end
            object Rd_ValorOperacao: TRadioButton
              Left = 71
              Top = 2
              Width = 67
              Height = 12
              Hint = 'Filtrar Valor da D'#237'vida por Opera'#231#227'o'
              Caption = 'Opera'#231#227'o'
              Checked = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = True
              Visible = False
            end
            object Rd_ValorCliente: TRadioButton
              Left = 140
              Top = 2
              Width = 78
              Height = 12
              Hint = 'Filtrar Valor da D'#237'vida por Cliente'
              Caption = 'Total Cliente'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Visible = False
            end
            object EdtValorDivida_Inicial: TEdit
              Left = 1
              Top = 14
              Width = 71
              Height = 21
              TabOrder = 2
              OnExit = EdtValorDivida_InicialExit
            end
            object EdtValorDivida_Final: TEdit
              Left = 105
              Top = 14
              Width = 71
              Height = 21
              TabOrder = 3
              OnExit = EdtValorDivida_InicialExit
            end
          end
          object Panel11: TPanel
            Left = 3
            Top = 113
            Width = 217
            Height = 35
            BevelOuter = bvNone
            TabOrder = 7
            object Label26: TLabel
              Left = 84
              Top = 18
              Width = 6
              Height = 13
              Caption = #224
            end
            object Label53: TLabel
              Left = 1
              Top = 1
              Width = 66
              Height = 13
              Caption = 'Valor Vencido'
            end
            object EdtValorVencido_Inicial: TEdit
              Left = 1
              Top = 14
              Width = 71
              Height = 21
              TabOrder = 2
              OnExit = EdtValorDivida_InicialExit
            end
            object Rd_ValorVencidoOperacao: TRadioButton
              Left = 71
              Top = 2
              Width = 66
              Height = 12
              Hint = 'Filtrar Valor Vencido por Opera'#231#227'o'
              Caption = 'Opera'#231#227'o'
              Checked = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = True
              Visible = False
            end
            object Rd_ValorVencidoCliente: TRadioButton
              Left = 140
              Top = 2
              Width = 80
              Height = 12
              Hint = 'Filtrar Valor Vencido por Cliente'
              Caption = 'Total Cliente'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Visible = False
            end
            object EdtValorVencido_Final: TEdit
              Left = 105
              Top = 14
              Width = 71
              Height = 21
              TabOrder = 3
              OnExit = EdtValorDivida_InicialExit
            end
          end
          object EdtValorNominal_Final: TEdit
            Left = 108
            Top = 198
            Width = 71
            Height = 21
            TabOrder = 11
            OnExit = EdtValorDivida_InicialExit
          end
          object EdtValorNominal_Inicial: TEdit
            Left = 4
            Top = 198
            Width = 71
            Height = 21
            TabOrder = 10
            OnExit = EdtValorDivida_InicialExit
          end
          object Rd_Dias_Vencido_Cli: TRadioButton
            Left = 143
            Top = 12
            Width = 78
            Height = 12
            Hint = 'Filtrar Dias Vencido por Cliente'
            Caption = 'Total Cliente'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
          object Rd_Dias_Vencido_Ope: TRadioButton
            Left = 74
            Top = 12
            Width = 67
            Height = 12
            Hint = 'Filtrar Dias Vencido da Opera'#231#227'o'
            Caption = 'Opera'#231#227'o'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object TotalCalculado_Panel: TPanel
            Left = 1
            Top = 220
            Width = 222
            Height = 32
            BevelOuter = bvNone
            TabOrder = 12
            object LbTotalCalculado_2: TLabel
              Left = 87
              Top = 15
              Width = 6
              Height = 13
              Caption = #224
            end
            object LbTotalCalculado_1: TLabel
              Left = 3
              Top = -2
              Width = 173
              Height = 13
              Caption = 'Total (D'#237'vida + Venc'#237'do + A vencer)'
            end
            object EdtTotalCalculado_Final: TEdit
              Left = 108
              Top = 11
              Width = 71
              Height = 21
              TabOrder = 1
              OnExit = EdtValorDivida_InicialExit
            end
            object EdtTotalCalculado_Inicial: TEdit
              Left = 4
              Top = 11
              Width = 71
              Height = 21
              TabOrder = 0
              OnExit = EdtValorDivida_InicialExit
            end
          end
          object edtValorMinimo_Inicial: TEdit
            Left = 4
            Top = 162
            Width = 71
            Height = 21
            TabOrder = 8
            OnExit = EdtValorDivida_InicialExit
          end
          object edtValorMinimo_Final: TEdit
            Left = 108
            Top = 162
            Width = 71
            Height = 21
            TabOrder = 9
            OnExit = EdtValorDivida_InicialExit
          end
        end
        object GroupBox5: TGroupBox
          Left = 9
          Top = 264
          Width = 392
          Height = 186
          Caption = 'Per'#237'odos'
          TabOrder = 1
          object Label17: TLabel
            Left = 95
            Top = 28
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label19: TLabel
            Left = 5
            Top = 11
            Width = 153
            Height = 13
            Caption = 'Venc. das D'#237'vidas: Por intervalo'
            Transparent = True
          end
          object Label34: TLabel
            Left = 5
            Top = 45
            Width = 68
            Height = 13
            Caption = 'Atualizado At'#233
          end
          object Label35: TLabel
            Left = 95
            Top = 61
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label38: TLabel
            Left = 5
            Top = 79
            Width = 124
            Height = 13
            Caption = 'Data Fim de Terceiriza'#231#227'o'
          end
          object Label44: TLabel
            Left = 95
            Top = 96
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label45: TLabel
            Left = 5
            Top = 112
            Width = 58
            Height = 13
            Caption = 'Negocia'#231#227'o'
          end
          object Label37: TLabel
            Left = 95
            Top = 130
            Width = 6
            Height = 13
            Caption = #224
          end
          object Lb_RetomadaOp: TLabel
            Left = 5
            Top = 147
            Width = 124
            Height = 13
            Caption = 'Retomada das Opera'#231#245'es'
          end
          object Label48: TLabel
            Left = 95
            Top = 164
            Width = 6
            Height = 13
            Caption = #224
          end
          object lbPorDia: TLabel
            Left = 201
            Top = 11
            Width = 16
            Height = 13
            Caption = 'Dia'
          end
          object EdtdVencimentoInicial: TDateEdit
            Left = 4
            Top = 24
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 0
          end
          object EdtdVencimentoFinal: TDateEdit
            Left = 107
            Top = 24
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 1
          end
          object EdtdAtualizadoInicial: TDateEdit
            Left = 4
            Top = 57
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 2
          end
          object EdtdAtualizadoFinal: TDateEdit
            Left = 107
            Top = 57
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 3
          end
          object EdtDtFimInicial: TDateEdit
            Left = 4
            Top = 92
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 4
          end
          object EdtDtFimFinal: TDateEdit
            Left = 107
            Top = 92
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 5
          end
          object EdtdNegociacaoInicial: TDateEdit
            Left = 4
            Top = 126
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 6
          end
          object EdtdNegociacaoFinal: TDateEdit
            Left = 107
            Top = 126
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 7
          end
          object EdtdRetomadaInicial: TDateEdit
            Left = 4
            Top = 160
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 8
          end
          object EdtdRetomadaFinal: TDateEdit
            Left = 107
            Top = 160
            Width = 88
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 9
          end
          object edtPorDia: TComboBox
            Left = 201
            Top = 24
            Width = 51
            Height = 21
            DropDownCount = 12
            TabOrder = 10
            OnExit = edtPorDiaExit
            OnKeyPress = edtPorDiaKeyPress
            Items.Strings = (
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '08'
              '09'
              '10'
              '11'
              '12'
              '13'
              '14'
              '15'
              '16'
              '17'
              '18'
              '19'
              '20'
              '21'
              '22'
              '23'
              '24'
              '25'
              '26'
              '27'
              '28'
              '29'
              '30'
              '31')
          end
        end
        object EdtDiasVencidosLeaderINI: TEdit
          Left = 240
          Top = 26
          Width = 53
          Height = 21
          TabOrder = 2
        end
        object EdtDiasVencidosLeaderFIM: TEdit
          Left = 314
          Top = 26
          Width = 53
          Height = 21
          TabOrder = 3
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Situa'#231#227'o / Classifica'#231#227'o e Ag'#234'ncia'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Btn_Adc_Agencia: TSpeedButton
          Left = 147
          Top = 29
          Width = 104
          Height = 22
          Hint = 'Adicionar Ag'#234'ncia a Lista de filtro'
          Caption = '&Adicionar Ag'#234'ncias'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object BtnClassCliente: TSpeedButton
          Left = 11
          Top = 98
          Width = 152
          Height = 21
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Classifica'#231#227'o do Cliente'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object BtnClassOperacao: TSpeedButton
          Left = 11
          Top = 155
          Width = 152
          Height = 22
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Classifica'#231#227'o da Opera'#231#227'o'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object btnMotivosRetomada: TSpeedButton
          Left = 11
          Top = 213
          Width = 152
          Height = 22
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Motivos de Retomada'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object Label4: TLabel
          Left = 11
          Top = 3
          Width = 107
          Height = 13
          Caption = 'Situa'#231#227'o da Opera'#231#227'o'
        end
        object BtnTipoOperacao: TSpeedButton
          Left = 11
          Top = 329
          Width = 152
          Height = 22
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Tipo de Opera'#231#227'o'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object btnMotivosDevolucao: TSpeedButton
          Left = 11
          Top = 271
          Width = 152
          Height = 22
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Motivos de Devolu'#231#227'o'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object BtnMotivoInadimplencia: TSpeedButton
          Left = 11
          Top = 387
          Width = 152
          Height = 22
          Hint = 'Clique Aqui para Adicionar'
          Caption = 'Motivos de Inadimpl'#234'ncia'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnClassClienteClick
        end
        object RgClassificacao_Operacao: TRadioGroup
          Left = 167
          Top = 150
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 7
        end
        object RgClassificacao: TRadioGroup
          Left = 167
          Top = 92
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 6
        end
        object List_Classificacao: TListBox
          Left = 11
          Top = 120
          Width = 287
          Height = 35
          Hint = 
            'Lista de classifica'#231#245'es.'#13#10'Para Remover selecione a classifica'#231#227'o' +
            ' e pressione a tecla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 2
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_ClassificacaoMouseDown
        end
        object Lista_Agencias: TListBox
          Left = 147
          Top = 52
          Width = 224
          Height = 43
          Hint = 
            'Lista de ag'#234'ncias a serem filtradas.'#13#10'Para Remover selecione a a' +
            'g'#234'ncia e pressione a tecla DEL.'
          Columns = 3
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 1
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = Lista_AgenciasMouseDown
        end
        object RgMotivoRetomada: TRadioGroup
          Left = 167
          Top = 208
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 8
        end
        object CkLst_Situacao: TCheckListBox
          Left = 11
          Top = 17
          Width = 133
          Height = 78
          Hint = 'Lista de situa'#231#227'o.'#13#10'Todas = Tudo Desmarcado'
          ItemHeight = 13
          Items.Strings = (
            'Em ser'
            'Liquidada'
            'Devolvida'
            'Retomada'
            'Negocia'#231#227'o'
            'Liq. por Reneg.'
            'Acordo Quebrado'
            'Reneg. em Atraso')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object RgTipoOperacao: TRadioGroup
          Left = 167
          Top = 324
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 9
        end
        object RgAgencia: TRadioGroup
          Left = 252
          Top = 24
          Width = 119
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 10
        end
        object RgMotivoDevolucao: TRadioGroup
          Left = 167
          Top = 266
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 11
        end
        object RgMotivoInadimplencia: TRadioGroup
          Left = 167
          Top = 382
          Width = 131
          Height = 28
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Apenas'
            'Exceto')
          TabOrder = 13
        end
        object List_MotivoInadimplencia: TListBox
          Left = 11
          Top = 410
          Width = 287
          Height = 35
          Hint = 
            'Lista de Motivos. '#13#10'Para Remover selecione o Motivo e pressione ' +
            'a tecla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 14
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_MotivoInadimplenciaMouseDown
        end
        object List_Classificacao_Operacao: TListBox
          Left = 11
          Top = 178
          Width = 287
          Height = 35
          Hint = 
            'Lista de classifica'#231#245'es.'#13#10'Para Remover selecione a classifica'#231#227'o' +
            ' e pressione a tecla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 3
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_Classificacao_OperacaoMouseDown
        end
        object List_MotivoRetomada: TListBox
          Left = 11
          Top = 236
          Width = 287
          Height = 35
          Hint = 
            'Lista de Motivos. '#13#10'Para Remover selecione o Motivo e pressione ' +
            'a tecla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 4
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_MotivoRetomadaMouseDown
        end
        object List_MotivoDevolucao: TListBox
          Left = 11
          Top = 294
          Width = 287
          Height = 35
          Hint = 
            'Lista de Motivos. '#13#10'Para Remover selecione o Motivo e pressione ' +
            'a tecla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 12
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_MotivoDevolucaoMouseDown
        end
        object List_TipoOperacao: TListBox
          Left = 11
          Top = 352
          Width = 287
          Height = 35
          Hint = 
            'Lista de Tipos. '#13#10'Para Remover selecione o Tipo e pressione a te' +
            'cla DEL.'
          Columns = 1
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 5
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = List_TipoOperacaoMouseDown
        end
        object GroupTipoAgencia: TGroupBox
          Left = 147
          Top = 2
          Width = 224
          Height = 27
          Caption = 'Ag'#234'ncia'
          TabOrder = 15
          Visible = False
          object RdAgenciaCliente: TRadioButton
            Left = 58
            Top = 11
            Width = 57
            Height = 13
            Caption = 'Cliente'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RdAgenciaOperacao: TRadioButton
            Left = 122
            Top = 11
            Width = 71
            Height = 13
            Caption = 'Opera'#231#227'o'
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #10'Produto, Modalidade, Fases e Cidades'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object lbCampanhaAMCelular: TLabel
          Left = 14
          Top = 432
          Width = 171
          Height = 13
          Caption = 'Campanha do programa Positiva'#231#227'o'
        end
        object Group_Fone: TGroupBox
          Left = 7
          Top = 120
          Width = 367
          Height = 86
          Caption = 'Filtrar Clientes - Telefone(s)'
          TabOrder = 0
          object RbFone_Todos: TRadioButton
            Left = 7
            Top = 15
            Width = 52
            Height = 13
            Hint = 'N'#227'o faz filtro por telefone'
            Caption = 'Todos'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RbFone_TodosClick
          end
          object RbFone_Com: TRadioButton
            Left = 7
            Top = 30
            Width = 90
            Height = 13
            Hint = 'Procura apenas clientes que possuam algum telefone'
            Caption = 'Com Telefone'
            TabOrder = 1
            OnClick = RbFone_TodosClick
          end
          object RbFone_Sem: TRadioButton
            Left = 7
            Top = 45
            Width = 90
            Height = 13
            Hint = 'Procura apenas clientes que n'#227'o possuam nenhum telefone'
            Caption = 'Sem Telefone'
            TabOrder = 2
            OnClick = RbFone_TodosClick
          end
          object RbFone_MSGInst: TRadioButton
            Left = 7
            Top = 60
            Width = 160
            Height = 13
            Caption = 'Com Mensagem Instant'#226'nea'
            TabOrder = 4
            OnClick = RbFone_TodosClick
          end
          object GroupBoxDDD: TGroupBox
            Left = 207
            Top = 6
            Width = 158
            Height = 78
            TabOrder = 5
            object SpdB_DDD: TSpeedButton
              Left = 3
              Top = 25
              Width = 152
              Height = 17
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar &DDD'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpdB_DDDClick
            end
            object ListDDDClientes: TListBox
              Left = 3
              Top = 42
              Width = 152
              Height = 34
              Columns = 4
              ItemHeight = 13
              PopupMenu = PopupLimparConteudo_Todos
              TabOrder = 0
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListDDDClientesMouseDown
            end
            object Rd_Apenas_DDD: TRadioButton
              Left = 15
              Top = 12
              Width = 57
              Height = 12
              Hint = 'Apenas Modalidades Selecionadas'
              Caption = 'Apenas'
              Checked = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TabStop = True
            end
            object Rd_Exceto_DDD: TRadioButton
              Left = 92
              Top = 12
              Width = 53
              Height = 12
              Hint = 'Execto Modalidades Selecionadas'
              Caption = 'Exceto'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
          end
          object RbFone_Inicia: TRadioButton
            Left = 210
            Top = 7
            Width = 69
            Height = 10
            Hint = 
              'Filtra penas clientes com Telefone 1 iniciando pelo valor digita' +
              'do'
            Caption = 'Inicia com:'
            TabOrder = 3
          end
        end
        object cbCampanhaAMCelular: TComboBox
          Left = 190
          Top = 428
          Width = 81
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Todos')
        end
        object PageControl2: TPageControl
          Left = 2
          Top = 207
          Width = 405
          Height = 221
          ActivePage = Tab_UF_Cidade
          Style = tsFlatButtons
          TabOrder = 2
          object Tab_UF_Cidade: TTabSheet
            Caption = 'UF/Cidade'
            ImageIndex = 1
            object BtnUFCliente: TSpeedButton
              Left = 1
              Top = 3
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar UF'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object Shape1: TShape
              Left = 1
              Top = 28
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object Shape2: TShape
              Left = 1
              Top = 124
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object BtnCidadeCliente: TSpeedButton
              Left = 1
              Top = 99
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar Cidade'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object RgUFCliente: TRadioGroup
              Left = 218
              Top = -3
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 0
            end
            object ListUFCliente: TListBox
              Left = 2
              Top = 29
              Width = 365
              Height = 64
              Hint = 
                'Lista de UF. '#13#10'Para Remover selecione o UF e pressione a tecla D' +
                'EL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 1
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListUFClienteMouseDown
            end
            object RgCidadeCliente: TRadioGroup
              Left = 218
              Top = 94
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 2
            end
            object ListCidadeCliente: TListBox
              Left = 2
              Top = 125
              Width = 365
              Height = 64
              Hint = 
                'Lista de Cidades.'#13#10'Para Remover selecione a Cidade e pressione a' +
                ' tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 3
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListCidadeClienteMouseDown
            end
          end
          object Tab_Bairro_Regiao: TTabSheet
            Caption = 'Bairro/Regi'#227'o'
            ImageIndex = 2
            object Shape3: TShape
              Left = 1
              Top = 28
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object Shape4: TShape
              Left = 1
              Top = 124
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object BtnSetorCliente: TSpeedButton
              Left = 1
              Top = 3
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar Bairro'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object BtnRegiaoCliente: TSpeedButton
              Left = 1
              Top = 99
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar Regi'#227'o'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object RgSetorCliente: TRadioGroup
              Left = 218
              Top = -3
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 0
            end
            object ListSetorCliente: TListBox
              Left = 2
              Top = 29
              Width = 365
              Height = 64
              Hint = 
                'Lista de Setores. '#13#10'Para Remover selecione o Setor e pressione a' +
                ' tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 1
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListSetorClienteMouseDown
            end
            object RgRegiaoCliente: TRadioGroup
              Left = 218
              Top = 94
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 2
            end
            object ListRegiaoCliente: TListBox
              Left = 2
              Top = 125
              Width = 365
              Height = 64
              Hint = 
                'Lista de Regi'#245'es. '#13#10'Para Remover selecione a Regi'#227'o e pressione ' +
                'a tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 3
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListRegiaoClienteMouseDown
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Profiss'#227'o/Local Trab.'
            ImageIndex = 3
            object Shape5: TShape
              Left = 1
              Top = 28
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object Btn_Profissao: TSpeedButton
              Left = 1
              Top = 3
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar Profiss'#227'o'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object Shape7: TShape
              Left = 1
              Top = 124
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object BtnLocalTrabalho: TSpeedButton
              Left = 1
              Top = 99
              Width = 192
              Height = 22
              Hint = 'Clique Aqui para Adicionar'
              Caption = 'Selecionar Local Trabalho'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnClassClienteClick
            end
            object ListProfissaoCliente: TListBox
              Left = 2
              Top = 29
              Width = 365
              Height = 64
              Hint = 
                'Lista de Profiss'#245'es. '#13#10'Para Remover selecione o Setor e pression' +
                'e a tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 0
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListProfissaoClienteMouseDown
            end
            object RgProfissaoCliente: TRadioGroup
              Left = 218
              Top = -3
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 1
            end
            object ListLocalTrabalhoCliente: TListBox
              Left = 2
              Top = 125
              Width = 365
              Height = 64
              Hint = 
                'Lista de Locais de Trabalho. '#13#10'Para Remover selecione o Setor e ' +
                'pressione a tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 2
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListLocalTrabalhoClienteMouseDown
            end
            object RgLocalTrabalhoCliente: TRadioGroup
              Left = 218
              Top = 94
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 3
            end
          end
          object TabSheetLocalidade: TTabSheet
            Caption = 'Localidade'
            ImageIndex = 3
            object Shape6: TShape
              Left = 1
              Top = 28
              Width = 367
              Height = 66
              Brush.Style = bsClear
              Pen.Color = clGray
            end
            object Btn_Localidade: TSpeedButton
              Left = 83
              Top = 2
              Width = 110
              Height = 22
              Hint = 'Adiciona na Lista'
              Caption = 'Adicionar Localidade'
              Flat = True
              OnClick = Btn_LocalidadeClick
            end
            object ListLocalidade: TListBox
              Left = 2
              Top = 29
              Width = 365
              Height = 64
              Hint = 
                'Lista de Localidades. '#13#10'Para Remover selecione a Regi'#227'o e pressi' +
                'one a tecla DEL.'
              BorderStyle = bsNone
              Columns = 1
              ItemHeight = 13
              ParentShowHint = False
              PopupMenu = PopupLimparConteudo_Todos
              ShowHint = True
              Sorted = True
              TabOrder = 0
              OnKeyDown = List_RemessasKeyDown
              OnMouseDown = ListLocalidadeMouseDown
            end
            object EdtLocalidade: TEdit
              Left = 2
              Top = 3
              Width = 80
              Height = 21
              Hint = 'Filtra as Opera'#231#245'es pelo campo '
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyDown = EdtProdutoKeyDown
            end
            object RgLocalidade: TRadioGroup
              Left = 218
              Top = -3
              Width = 150
              Height = 29
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Apenas'
                'Exceto')
              TabOrder = 2
            end
          end
        end
        object Panel_Modalidade: TPanel
          Left = 128
          Top = 3
          Width = 115
          Height = 116
          BevelInner = bvLowered
          TabOrder = 3
          object SpeedButton2: TSpeedButton
            Left = 62
            Top = 29
            Width = 51
            Height = 21
            Hint = 'Adiciona Produto na Lista'
            Caption = 'Adicionar'
            OnClick = SpeedButton2Click
          end
          object Lb_Modalidade: TLabel
            Left = 2
            Top = 2
            Width = 55
            Height = 13
            Caption = 'Modalidade'
          end
          object LbModalidade: TListBox
            Left = 2
            Top = 51
            Width = 111
            Height = 64
            Hint = 'Lista de modalidades a serem filtradas.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbModalidadeMouseDown
          end
          object EdtModalidade: TEdit
            Left = 2
            Top = 29
            Width = 60
            Height = 21
            Hint = 'Filtra as Opera'#231#245'es pelo campo "Modalidade"'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyDown = EdtProdutoKeyDown
          end
          object Rd_Modalidade_Apenas: TRadioButton
            Left = 2
            Top = 16
            Width = 57
            Height = 12
            Hint = 'Apenas Modalidades Selecionadas'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = True
          end
          object Rd_Modalidade_Exceto: TRadioButton
            Left = 60
            Top = 16
            Width = 53
            Height = 12
            Hint = 'Execto Modalidades Selecionadas'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
        end
        object Panel_Produtos: TPanel
          Left = 7
          Top = 3
          Width = 115
          Height = 116
          BevelInner = bvLowered
          TabOrder = 4
          object BtnAdicionaProduto: TSpeedButton
            Left = 62
            Top = 29
            Width = 51
            Height = 21
            Hint = 'Adiciona Produto na Lista'
            Caption = 'Adicionar'
            OnClick = BtnAdicionaProdutoClick
          end
          object Lb_Produtos: TLabel
            Left = 3
            Top = 2
            Width = 82
            Height = 13
            Caption = '&Lista de Produtos'
          end
          object LbProdutos: TListBox
            Left = 2
            Top = 51
            Width = 111
            Height = 64
            Hint = 
              'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
              'roduto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbProdutosMouseDown
          end
          object EdtProduto: TEdit
            Left = 2
            Top = 29
            Width = 60
            Height = 21
            TabOrder = 1
            OnKeyDown = EdtProdutoKeyDown
          end
          object Rd_Produto_Apenas: TRadioButton
            Left = 2
            Top = 16
            Width = 57
            Height = 12
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = True
          end
          object Rd_Produto_Exceto: TRadioButton
            Left = 59
            Top = 16
            Width = 53
            Height = 12
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
        end
        object Panel_Fase: TPanel
          Left = 248
          Top = 56
          Width = 126
          Height = 63
          BevelInner = bvLowered
          TabOrder = 5
          object SpeedButton1: TSpeedButton
            Left = 33
            Top = 2
            Width = 90
            Height = 17
            Hint = 'Adicionar Regi'#245'es ICE'
            Caption = 'Selecionar'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object Fase: TLabel
            Left = 3
            Top = 3
            Width = 23
            Height = 13
            Caption = 'Fase'
          end
          object Ri_Fases: TListBox
            Left = 3
            Top = 20
            Width = 121
            Height = 42
            ItemHeight = 13
            PopupMenu = PopupLimparConteudo_Todos
            TabOrder = 0
            OnKeyDown = Ri_RegioesKeyDown
            OnMouseDown = Ri_FasesMouseDown
          end
        end
        object Panel16: TPanel
          Left = 248
          Top = 3
          Width = 126
          Height = 53
          BevelInner = bvLowered
          TabOrder = 6
          object Label29: TLabel
            Left = 2
            Top = 2
            Width = 113
            Height = 13
            Hint = 'Produtos Bloqueados no Cad. de Bloqueio de Produto/Modalidade'
            Caption = 'Prod./Mod. Bloqueados'
            ParentShowHint = False
            ShowHint = True
          end
          object BtnProdutoBloq_Todos: TSpeedButton
            Left = 3
            Top = 30
            Width = 37
            Height = 20
            Hint = 'Todos'
            GroupIndex = 1
            Down = True
            Caption = 'Todos'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object BtnProdutoBloq_Bloqueados: TSpeedButton
            Left = 45
            Top = 30
            Width = 37
            Height = 20
            Hint = 'Somente Produtos Bloqueados'
            GroupIndex = 1
            Caption = 'Bloqu.'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object BtnProdutoBloq_Desbloqueados: TSpeedButton
            Left = 85
            Top = 30
            Width = 37
            Height = 20
            Hint = 'Somente Produtos Desbloqueados'
            GroupIndex = 1
            Caption = 'Desblo'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object RdProdutoBloq_Apenas: TRadioButton
            Left = 2
            Top = 16
            Width = 57
            Height = 12
            Hint = 'Apenas'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            TabStop = True
            OnClick = RdProdutoBloq_ExcetoClick
          end
          object RdProdutoBloq_Exceto: TRadioButton
            Left = 65
            Top = 16
            Width = 53
            Height = 12
            Hint = 'Execto'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnClick = RdProdutoBloq_ExcetoClick
          end
        end
      end
    end
    object TbLista: TTabSheet
      Caption = 'Lista'
      ImageIndex = 7
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Label7: TLabel
          Left = 17
          Top = 14
          Width = 142
          Height = 13
          Caption = 'Lista de Cobran'#231'a  (Consultar)'
        end
        object Label8: TLabel
          Left = 115
          Top = 58
          Width = 111
          Height = 13
          Caption = 'Sele'#231#227'o (Data) da Lista'
        end
        object ComboBox1: TComboBox
          Left = 17
          Top = 31
          Width = 336
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'Todos'
            'Com Coobrigados'
            'Sem Coobrigados'
            'Com Coobrigados (Preferencial)'
            'Com FGO (BB)'
            'Sem FGO (BB)')
        end
        object CheckBox1: TCheckBox
          Left = 256
          Top = 10
          Width = 97
          Height = 17
          Caption = 'Exceto'
          TabOrder = 1
        end
        object ListBox1: TListBox
          Left = 242
          Top = 58
          Width = 111
          Height = 95
          Hint = 
            'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
            'roduto e pressione a tecla DEL.'
          ItemHeight = 13
          ParentShowHint = False
          PopupMenu = PopupLimparConteudo_Todos
          ShowHint = True
          Sorted = True
          TabOrder = 2
          OnKeyDown = List_RemessasKeyDown
          OnMouseDown = LbProdutosMouseDown
        end
        object RadioGroup1: TRadioGroup
          Left = 17
          Top = 104
          Width = 209
          Height = 49
          Caption = 'Contatos'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Normal'
            'Agenda')
          TabOrder = 3
        end
      end
    end
    object TabAtivos: TTabSheet
      Caption = 'Ativos'
      ImageIndex = 8
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel7: TPanel
          Left = 15
          Top = 11
          Width = 250
          Height = 116
          BevelInner = bvLowered
          TabOrder = 0
          object Label9: TLabel
            Left = 12
            Top = 7
            Width = 87
            Height = 13
            Caption = 'Forma Atualiza'#231#227'o'
          end
          object ListBox2: TListBox
            Left = 2
            Top = 28
            Width = 247
            Height = 87
            Hint = 
              'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
              'roduto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbProdutosMouseDown
          end
          object RadioButton1: TRadioButton
            Left = 128
            Top = 5
            Width = 57
            Height = 17
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 191
            Top = 5
            Width = 53
            Height = 17
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object Panel12: TPanel
          Left = 295
          Top = 11
          Width = 250
          Height = 116
          BevelInner = bvLowered
          TabOrder = 1
          object Label10: TLabel
            Left = 12
            Top = 7
            Width = 33
            Height = 13
            Caption = 'Origem'
          end
          object ListBox3: TListBox
            Left = 2
            Top = 28
            Width = 247
            Height = 87
            Hint = 
              'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
              'roduto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbProdutosMouseDown
          end
          object RadioButton3: TRadioButton
            Left = 128
            Top = 5
            Width = 57
            Height = 17
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 191
            Top = 5
            Width = 53
            Height = 17
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object Panel13: TPanel
          Left = 296
          Top = 133
          Width = 250
          Height = 60
          BevelInner = bvLowered
          TabOrder = 2
          object Label14: TLabel
            Left = 11
            Top = 7
            Width = 61
            Height = 13
            Caption = 'Data Cess'#227'o'
          end
          object Label25: TLabel
            Left = 114
            Top = 34
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object DateEdit1: TDateEdit
            Left = 15
            Top = 26
            Width = 87
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 0
          end
          object DateEdit2: TDateEdit
            Left = 138
            Top = 26
            Width = 87
            Height = 21
            DialogTitle = 'Selecione uma Data'
            NumGlyphs = 2
            StartOfWeek = Sun
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object Panel14: TPanel
          Left = 16
          Top = 133
          Width = 250
          Height = 116
          BevelInner = bvLowered
          TabOrder = 3
          object Label16: TLabel
            Left = 11
            Top = 7
            Width = 80
            Height = 13
            Caption = 'Status Opera'#231#227'o'
          end
          object ListBox5: TListBox
            Left = 2
            Top = 28
            Width = 247
            Height = 87
            Hint = 
              'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
              'roduto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbProdutosMouseDown
          end
          object RadioButton7: TRadioButton
            Left = 127
            Top = 5
            Width = 57
            Height = 17
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = True
          end
          object RadioButton8: TRadioButton
            Left = 190
            Top = 5
            Width = 53
            Height = 17
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
        object Panel18: TPanel
          Left = 294
          Top = 195
          Width = 250
          Height = 53
          BevelInner = bvLowered
          TabOrder = 4
          object Label20: TLabel
            Left = 13
            Top = 7
            Width = 92
            Height = 13
            Caption = 'Valor Saldo Cess'#227'o'
          end
          object Label27: TLabel
            Left = 116
            Top = 31
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object Edit1: TEdit
            Left = 17
            Top = 27
            Width = 87
            Height = 21
            TabOrder = 0
            OnExit = EdtValorDivida_InicialExit
          end
          object Edit2: TEdit
            Left = 140
            Top = 27
            Width = 87
            Height = 21
            TabOrder = 1
            OnExit = EdtValorDivida_InicialExit
          end
        end
        object Panel19: TPanel
          Left = 15
          Top = 275
          Width = 251
          Height = 174
          BevelInner = bvLowered
          TabOrder = 5
          object SpeedButton3: TSpeedButton
            Left = 128
            Top = 28
            Width = 51
            Height = 21
            Hint = 'Adiciona Produto na Lista'
            Caption = 'Adicionar'
            OnClick = BtnAdicionaProdutoClick
          end
          object Label21: TLabel
            Left = 12
            Top = 5
            Width = 21
            Height = 13
            Caption = 'Lote'
          end
          object ListBox4: TListBox
            Left = 2
            Top = 55
            Width = 248
            Height = 118
            Hint = 
              'Lista de produtos a serem filtrados.'#13#10'Para Remover selecione o p' +
              'roduto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LbProdutosMouseDown
          end
          object Edit3: TEdit
            Left = 2
            Top = 29
            Width = 120
            Height = 21
            TabOrder = 1
            OnKeyDown = EdtProdutoKeyDown
          end
          object RadioButton5: TRadioButton
            Left = 128
            Top = 6
            Width = 57
            Height = 16
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = True
          end
          object RadioButton6: TRadioButton
            Left = 191
            Top = 6
            Width = 53
            Height = 16
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
        end
      end
    end
    object TabFiltro: TTabSheet
      Caption = 'Filtro(s) Pr'#233'-Gravado(s)'
      ImageIndex = 9
      object Panel20: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object GrpBx_Filtro: TGroupBox
          Left = 3
          Top = 2
          Width = 404
          Height = 73
          Caption = ' Filtros '
          TabOrder = 0
          object Btn_GravaFiltro: TSpeedButton
            Left = 2
            Top = 37
            Width = 89
            Height = 30
            Caption = 'Gravar'
            Flat = True
            Glyph.Data = {
              B60D0000424DB60D000000000000360000002800000030000000180000000100
              180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFF1F1F1D9D9D9BFBFBF9A9A9AADADADB5B5B5FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF5F5F5DEDEDEC4C4C4B7B7B7B4B3B3C2C1C1D4D3D3ECECECECEC
              EC9F9998918C8AE5E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4DCDCDCCACACAC9C9C9D0CFCFDBDAD9D7
              D6D5D5D3D2D5D3D2CECAC72BBD279CE79BAC979396827F837977B0ADADF6F6F6
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF5F5F5DEDEDEC4C4C4B7B7B7C1C1C1D3D3D3ECECECECECEC9999998B8B8BFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDCDBDB
              D1CCCBD2CECDD2CFCED4D1D0D5D2D1D5D3D2D5D3D2D5D3D2CECAC750D14DB1EC
              B0BAA7A39578729378738F7F7C8A8281DCDADAFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFDCDCDCCACACAC9C9C9CFCFCFD9D9D9D5D5D5D2D2D2
              C9C9C9929292D1D1D1979797828282ADADADF6F6F6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD1D1D1DCD8D7C8C1C0D0CBCAD2CFCED4D1D0D5D2D1D5
              D3D2D5D3D2D3D0CFD2CECDEAEAEAEFEDEDE6E0DFC4B4B1A18882937570927974
              847673B0ABABF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCCCCCCCECE
              CECFCFCFD1D1D1D2D2D2D2D2D2D2D2D2C9C9C9ABABABDADADAA7A7A77878787F
              7F7F828282DADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1CAC3C2
              C8C1C0D0CBCAD2CFCECCC8C7C9C3C1C4BDBBD0CAC8D9D1D0EEE9E9F1EBEBE5DC
              DCDDD4D3E4DEDDE1D8D7B9A5A19C807B92756F8C7672897E7DE5E3E3FFFFFFFF
              FFFFFFFFFFFFFFFFD1D1D1C1C1C1CBCBCBCFCFCFD1D1D1D2D2D2D2D2D2D0D0D0
              CECECEEAEAEAEDEDEDE0E0E0B4B4B4767676797979767676ABABABF6F6F6FFFF
              FFFFFFFFFFFFFFFFFFFFD1D1D1E1DEDEC2B8B6CAC2C0D3CCCBE3DDDDF2EDEDFB
              F6F7FBF4F6F5EEEFF0E8EAE8E0E0DFD5D5DACECDDED4D4DDD4D4E6E1E0D8CDCB
              AF9994977B7590746E73635FB8B8B8FFFFFFFFFFFFFFFFFFD1D1D1C1C1C1CBCB
              CBCFCFCFC8C8C8C3C3C3BDBDBDD1D1D1E9E9E9EBEBEBDCDCDCD4D4D4DEDEDEA5
              A5A58080807575757676767E7E7EE3E3E3FFFFFFFFFFFFFFFFFFD9D9D9DFDDDE
              F5F0F1FCF5F7FCF5F7FCF5F7EFE8E9EDE9EAF2EFEFEAE7E6E4E0DFE1DBDAD9D1
              D0CDC0BEB9A8A5B9AAA8BDB7B6CBC7C6E7E1E0CDBFBCA78E89856B66A0A0A0C8
              C8C8FFFFFFFFFFFFD1D1D1B8B8B8C2C2C2CCCCCCDDDDDDEDEDEDF6F6F6EEEEEE
              E9E9E9E0E0E0D5D5D5CECECED4D4D4E1E1E1CDCDCD9999997B7B7B7474746363
              63FFFFFFFFFFFFFFFFFFFFFFFFF7F6F6E4E0E1DED9DAEBE4E6F7F0F2D0C5C4F5
              F3F3F8F7F7F8F6F6D6E3D4008500278C26A1A59EA8A4A4A7A3A2A5A0A08E8A8A
              979292BEB8B7D3CDCCAD9995DCDCDCE7E7E7FFFFFFFFFFFFFFFFFFE0E0E0D9D9
              D9E4E4E4F0F0F0C5C5C5F3F3F3F6F6F6DEDEDE5F5F5F6F6F6FA3A3A3A4A4A4A0
              A0A08A8A8A929292B8B8B8CDCDCD999999E7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFF2F0F0E4E0E1D8D1D2EDEAEAF7F5F5F6F4F43D993C0099000097
              00097E09879983928E8D9C97989E999AA8A3A3A9A2A2A9A1A1DBD0CFFEFEFEFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E0E0E0D1D1D1EAEAEAF4F4F4
              7E7E7E6D6D6D6C6C6C5C5C5C939393979797999999A3A3A3A2A2A2A1A1A1D0D0
              D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCEF
              EDEDE1DDDDACC4A8008E00009901019A02029904118812BED0BADAD3D4D3CDCE
              C8C4C4D0CECEECEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFCFCFCEDEDEDBCBCBC6565656D6D6D6E6E6E6E6E6E666666D3
              D3D3CDCDCDC4C4C4CECECEEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF319C32059E0907A00D09A2
              110BA4160CA319149117CFE8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7D7D
              7373737575757878787A7A7A7A7A7AE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF9FD09F0A9E140EA71C10A92012AB2515AD2A17B02E18AF30169A1BCFEACF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF7676767E7E7E80808083838386868689898975
              7575E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF8EF179D2016AE2C18B0301AB3351DB5
              3A1FB73F22BA4424BC4924BC49089B109FD79FFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5878787
              8989898D8D8D8F8F8F929292959595989898727272C7C7C7FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81
              C9831CB43920B84123BB4625BD4B27C0502AC2552DC55A2FC75F33CA6439C963
              20A820CFEBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFECECEC828282A1A1A1A4A4A4A7A7A7AAAAAAAEAEAE8888888F
              8F8F979797A5A5A5EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFF2DF14A92828C1522BC3572DC65C31C86136CB
              663CCE6C23A7432BA93B36B13D4BB64C65BF65DFF1DFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5A6A6A6A2A2A2
              B4B4B4B9B9B9BDBDBDC2C2C2626262F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FCB7F36
              C75E47CD6A3FC35848D27552D67C5DD98367DD8A0B821770BE70EFF8EFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFF5F5F5B2B2B2A8A8A8B5B5B5CECECED3D3D3D8D8D8818181FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFEFF8EF7FC77F7FC77F70BF705FD17880E69A8BE9
              A296EDA9339D4071B972FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              989898E4E4E4E8E8E8E9E9E9C6C6C6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF52B357B0F6BABAF9C1BDFAC38DDA9616841BEFF6EFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4AFAFAFD9D9D9D1D1D1C9C9C97E
              7E7ED9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDDBF70C77699EE
              AB88E8A077E29541B85C37993FC2E2C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFCCCCCC979797ABABABACACAC9393937F7F7F737373CDCDCDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFB1D7B340B45641CA6A3BCC6B34C76427B34E1B9F37
              149328A8DAB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8
              F198D1A164C17857BE6E57BD6E81CD918DD29CE3F4E6FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 2
            OnClick = Btn_GravaFiltroClick
          end
          object Btn_AtualizaFiltro: TSpeedButton
            Left = 106
            Top = 37
            Width = 89
            Height = 30
            Caption = 'Carregar'
            Flat = True
            Glyph.Data = {
              B60D0000424DB60D000000000000360000002800000030000000180000000100
              180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF7EBE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED7CADEAF96FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF6EBE5C06839FBF5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8661D0916EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
              EA646464F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              E4C2AFB95C2BE5C2B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF8383838E8E8EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27046BC5E2DFBF5F2FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C05858
              58C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4C1AF
              C26131C57B53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF6C6C6C5A5A5AF4F4F4FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFC37852CA6635D3997BFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D7777
              77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAE4BC5F31
              CF6837DBAC95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF626262969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFE2C0AEC7683BCC6A3ADAAC95FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE666666AAAA
              AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4A087D07345
              CB6D3FDAAC94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE6C
              34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE6C34CE
              6C34FFFFFFFFFFFF9E9E9E6A6A6AAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF6767676767676767676767676767676767676767676767676767
              67676767FFFFFFFFFFFFC5805FD87D50D17446DAAC94FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2D8C96F3DDB723BE2773EE3793FE47A40
              E47C41E57D42E57D42E57E43E67F44CE6C34FFFFFFFFFFFF7D7D7D707070AAAA
              AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16A6A6A6D6D6D74
              7474757575767676777777777777787878676767FFFFFFFFFFFFC4805FDC8357
              D2784CD0977AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF4E2D8CA703DDE743BE5793DE07939E07A39E17C3AE27D3BE27E3CE88044CC
              6A33FFFFFFFFFFFF7D7D7D757575949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE1E1E16B6B6B7474747272727373737575757676767777
              77656565FFFFFFFFFFFFC37F5EDB845BDC8357BE6F47FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E2D8CA6F3DDE743BE3783C
              DD7635DD7735DE7836DE7936E77D41CB6933FFFFFFFFFFFF7C7C7C8080806C6C
              6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E16F
              6F6F7272726F6F6F707070717171727272646464FFFFFFFFFFFFC78A6BD27C53
              E2885DBE653AECD5CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFE4BAA3CB6833E3763CDE7435DC7432DC7533DD7634E67B3FC9
              6832FFFFFFFFFFFF878787858585626262D4D4D4FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363637171716E6E6E6D6D6D6E6E6E6F6F
              6F636363FFFFFFFFFFFFD6A993C7734AE28B60D47E54C5815FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E1D7C66C3CDD733DE0753A
              DA7334DE7638DC7738DC7839E67D44C86732FFFFFFFFFFFFDEDEDE8989898787
              876969699E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E066666673
              7373717171727272767676767676747474616161FFFFFFFFFFFFF0DFD7BA653D
              E18C64E18A60C26C41D3A086FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF2E1D7C26A3AD56E3AE27841DB773CDD783DE47B43E37B43DD7A3DE57D44C6
              6631FFFFFFFFFFFFFFFFFF848484878787868686636363949494F4F4F4FFFFFF
              FFFFFFF4F4F4ABABAB5C5C5C6A6A6A6E6E6E6F6F6F7373736C6C6C7070707474
              745F5F5FFFFFFFFFFFFFFFFFFFB96B46D78760E08A60DE895FBD663BCF967AFA
              F5F2FFFFFFFFFFFFFFFFFFFBF5F2DCAD95BF602ED76E3AE1763FD9743ADA753B
              E27840D6703BDD743FE37942E57A43C56430FFFFFFFFFFFFFFFFFF6A6A6A8B8B
              8B8080808686867171715B5B5BAAAAAA8B8B8B6464646464646F6F6F6F6F6F6D
              6D6D7171716E6E6E6767676868686F6F6F5F5F5FFFFFFFFFFFFFFFFFFFE0BEAE
              BF6D45E08E66DD8358DF895FCA744AB85E32C7825FDAAC94CD8E6DBE683BC968
              38DD7340DF733DD87139D97239E0763EDB723DC56B3CC66C3CDC733EE37942C3
              6330FFFFFFFFFFFFFFFFFF7B7B7B787878898989777777838383848484727272
              7575757979797676766D6D6D6A6A6A7070706C6C6C5C5C5CC0C0C0E0E0E06767
              675E5E5EFFFFFFFFFFFFFFFFFFFFFFFFC17D5ECB7B56E18C63D97A4CE0865ADF
              875CD88055D17649D6794BDE7D4DE07A48DA713CD66F37D87039DF743DDA703C
              BF602EE6C2B0F2E1D7C46B3CDB723DC1622FFFFFFFFFFFFFFFFFFFF3F3F37373
              737C7C7C8888887777776D6D6D7373737171716C6C6C6767676A6A6A70707065
              6565636363D5D5D5FFFFFFFFFFFFE0E0E05B5B5BFFFFFFFFFFFFFFFFFFFFFFFF
              FAF4F1BD7654CE7F5ADF8B63D97A4CD6713FD97646DA7746D97543D7703CD46B
              36D66E39DD7440E07541CF6837C0673AEED6CAFFFFFFFFFFFFF2E1D7C36A3CBD
              5F2EFFFFFFFFFFFFFFFFFFFFFFFFF3F3F37070706A6A6A848484878787757575
              7474747676767979797979796F6F6F808080E9E9E9FFFFFFFFFFFFFFFFFFFFFF
              FF626262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF4F1BC7350BF6D45D78760E0
              8A61DD8053DA7949DA7847DC7A49DF7D4DDF7C4DD47243C06132C88360F6EAE4
              FFFFFFFFFFFFFFFFFFFFFFFFF2E0D7BD6638FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFDEDEDEA7A7A7A8A8A8A8A8A8C9C9C9F4F4F4FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE0BEAEB96B46BA653DC7734AD07A50D0784ECF764BC369
              3DB85D30C7825FECD5CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
              E0D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
              DFD7DBB3A1D6A993D7AA94D7AA94E7CABCFAF4F2FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 2
            OnClick = Btn_AtualizaFiltroClick
          end
          object Btn_TransfereFiltro: TSpeedButton
            Left = 202
            Top = 37
            Width = 100
            Height = 30
            Caption = 'Copiar para'
            Flat = True
            Glyph.Data = {
              36120000424D3612000000000000360000002800000040000000180000000100
              1800000000000012000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF5F5F58C8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFE4E3E36F6D6D514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBEBEBE585656504E4E514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F58B8B8BFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F5F5F58B8A8A504E4E504E4E504E4E514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFBEBEBE5656564E4E4E4F4F4FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E3
              6F6D6D504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4EFFFFFFFFFFFF
              FFFFFFFFFFFF8A8A8A4E4E4E4E4E4E4E4E4E4F4F4FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B6B6555454
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4EFFFFFFFFFFFF
              FFFFFFE3E3E34E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EFFFFFFFFFFFFB9B8B8555454
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4EFFFFFFFFFFFF
              B6B6B65454544E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EFFFFFFFFFFFFFFFFFFE6E5E5
              716F6F504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4EFFFFFFFFFFFF
              B8B8B85454544E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EFFFFFFFFFFFFFFFFFFFFFFFF
              F7F7F7908F8F504E4E504E4E504E4E514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE5E5E54E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFB3B2B2555454504E4E514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFB2B2B25454544E4E4E4F4F4FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFDFDFDF6B6969514F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6969694F4F4FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFAF9F9979696FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9969696FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF8C8B8BF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B
              8B8BF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E6F6D6DE4E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
              4E4E6D6D6DE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E504E4E585656BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
              4E4E4E4E4E565656BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E504E4E504E4E504E4E8C8B8BF6F6F6FFFFFFFFFFFFFFFFFFFFFFFF
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4EE3E3E3FFFFFFFFFFFFFFFFFF504E4E504E4E
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E6F6D6DE4E3E3FFFFFFFFFFFFFFFFFF
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E545454B7B7B7FFFFFFFFFFFF504E4E504E4E
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E555454B8B7B7FFFFFFFFFFFF
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E545454B8B8B8FFFFFFFFFFFF504E4E504E4E
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E504E4E565454B9B8B8FFFFFFFFFFFF
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E
              4E4E4E4E4E4E4E4E4E4E4E4E4E4EE5E5E5FFFFFFFFFFFFFFFFFF504E4E504E4E
              504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E
              4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E504E4E50
              4E4E504E4E504E4E504E4E504E4E504E4E727070E6E5E5FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
              4E4E4E4E4E4E4E4E4E4E4E8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E504E4E504E4E504E4E908F8FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E
              4E4E4E4E4E545454B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E504E4E565454B9B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
              9797F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF504E4E6B6A6AE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF989797FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 2
            OnClick = Btn_TransfereFiltroClick
          end
          object Btn_ExcluiFiltro: TSpeedButton
            Left = 312
            Top = 37
            Width = 89
            Height = 30
            Caption = 'Excluir'
            Flat = True
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              1800000000000006000000000000000000000000000000000000FFFFFFD7D7EC
              4E4EC12D2DC39A9AD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5DF3232
              CB4545CAC8C8EBFFFFFFFFFFFFDBDBDB656565484848A6A6A6FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFB1B1B14F4F4F5D5D5DCFCFCFFFFFFFD6D6EB5555BA
              2E2EF11A1AFB2727CA9898D3FFFFFFFFFFFFFFFFFFFFFFFFA4A4DC2F2FCC4F4F
              F76161F54F4FC7C7C7EBDADADA696969565656494949484848A4A4A4FFFFFFFF
              FFFFFFFFFFFFFFFFAFAFAF4D4D4D7171717F7F7F666666CECECE5151B83636F3
              0505FA0000EC1010F12020CD9898D3FFFFFFFFFFFFA7A7DC2626CD3A3AEF3B3B
              EC4C4CF67171F74D4DC86464645D5D5D3939393232323F3F3F434343A4A4A4FF
              FFFFFFFFFFB2B2B24848485F5F5F5F5F5F6F6F6F8C8C8C6666664343B53030FF
              0000F80000EB0000E70A0AEB1919C9A3A3D7B0B0DD1D1DC82929E92F2FE63C3C
              EA4646F47777FF4B4BCB5959595B5B5B3434343131313131313939393C3C3CAE
              AEAEB9B9B94040405151515555556060606A6A6A939393656565B6B6DB4242BC
              2525FA0000F10000E50000DF0505E30C0CC50F0FC21616E32121DF2E2EE43C3C
              EE6060F94B4BCDA2A2DDBEBEBE5A5A5A5151513333333030302F2F2F34343433
              33333232324040404848485353536161617F7F7F656565AEAEAEFFFFFFB8B8DB
              4040C01E1EF50000EA0000DF0000D70101DB0606DC1313D72222DE2F2FE74E4E
              F44444CEA7A7DDFFFFFFFFFFFFBFBFBF5959594A4A4A3131312F2F2F2D2D2D2F
              2F2F3333333C3C3C494949555555707070606060B2B2B2FFFFFFFFFFFFFFFFFF
              B7B7DA3737BB1818F00000E00000D50000CC0000CC0B0BD42020DF3D3DEE3737
              C8A5A5DBFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE4F4F4F4545452F2F2F2D2D2D2B
              2B2B2B2B2B353535474747616161515151B0B0B0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFC3C3E02929B70E0EE72A2AE84242EA4242EA3737E72929E72727C3B2B2
              DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C94646463C3C3C51515164
              64646464645B5B5B505050464646BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFB4B4D81D1DB94242F48585FF8F8FFF8E8EFF8787FE5757F52222C6A2A2
              D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB3D3D3D6767679E9E9EA6
              A6A6A5A5A59F9F9F777777414141ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              ABABD12727BB4B4BFA9393FFA0A0FF9696FD9595FD9F9FFF9696FE6A6AFB2F2F
              C99595D2FFFFFFFFFFFFFFFFFFFFFFFFB3B3B34242426F6F6FA9A9A9B3B3B3AB
              ABABAAAAAAB2B2B2ABABAB8888884E4E4EA1A1A1FFFFFFFFFFFFFFFFFFADADD0
              3131BF5C5CFCAAAAFFB4B4FFB0B0FD3D3DEC3636EAABABFDB3B3FFACACFF8181
              FD3E3ECE9696D2FFFFFFFFFFFFB4B4B44D4D4D7D7D7DBBBBBBC3C3C3BFBFBF61
              61615B5B5BBBBBBBC2C2C2BCBCBC9A9A9A5B5B5BA2A2A2FFFFFFAEAED03C3CB9
              6767FDBBBBFFC8C8FFC4C4FF4D4DF40505B70909B24C4CF1C1C1FFC6C6FFBFBF
              FF9494FE4848CB9797D4B4B4B4555555868686C8C8C8D3D3D3CFCFCF6F6F6F28
              28282C2C2C6E6E6ECDCDCDD1D1D1CBCBCBA9A9A9606060A4A4A43C3CAB6E6EFF
              D4D4FFDFDFFFD3D3FF5D5DF71313B9B2B2D7BEBEDE1717B76262F4D2D2FFD9D9
              FFD6D6FFAAAAFF4646C34F4F4F8C8C8CDDDDDDE5E5E5DCDCDC7C7C7C333333BA
              BABAC5C5C5383838808080DBDBDBE1E1E1DEDEDEBBBBBB5F5F5F5959AB5B5BED
              C9C9FFEDEDFF6969FB1919BBADADD3FFFFFFFFFFFFB9B9DC2222BC7474F8EBEB
              FFDEDEFF8B8BF35050BD686868797979D4D4D4F0F0F0878787383838B5B5B5FF
              FFFFFFFFFFC0C0C03F3F3F8F8F8FEFEFEFE5E5E5A0A0A0646464E3E3EE5656A9
              5A5AEB6868FF2525B6ADADD0FFFFFFFFFFFFFFFFFFFFFFFFB7B7DA2B2BB98787
              FD8484F24B4BBAD4D4ECE5E5E5656565787878878787424242B3B3B3FFFFFFFF
              FFFFFFFFFFFFFFFFBEBEBE4747479F9F9F9A9A9A616161D9D9D9FFFFFFE2E2ED
              5858AF2D2DACB0B0D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8DC3030
              B44C4CB9D6D6ECFFFFFFFFFFFFE4E4E46A6A6A444444B7B7B7FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBFBFBF4A4A4A626262DBDBDBFFFFFF}
            NumGlyphs = 2
            OnClick = Btn_ExcluiFiltroClick
          end
          object CB_Filtros: TComboBox
            Left = 2
            Top = 15
            Width = 400
            Height = 21
            Style = csOwnerDrawFixed
            ItemHeight = 15
            TabOrder = 0
            OnChange = CB_FiltrosChange
            OnDrawItem = CB_FiltrosDrawItem
            OnDropDown = CB_FiltrosDropDown
            OnEnter = CB_FiltrosEnter
          end
        end
      end
    end
    object tsCobradoresClientes: TTabSheet
      Caption = 'Cobradores / Clientes'
      ImageIndex = 10
      object pnCobradoresClientes: TPanel
        Left = 0
        Top = 0
        Width = 580
        Height = 494
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Label54: TLabel
          Left = 10
          Top = 117
          Width = 74
          Height = 13
          Caption = 'Tipo de Pessoa'
        end
        object Label55: TLabel
          Left = 181
          Top = 4
          Width = 62
          Height = 13
          Caption = 'Carta Acordo'
        end
        object Label58: TLabel
          Left = 241
          Top = 22
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label59: TLabel
          Left = 9
          Top = 198
          Width = 59
          Height = 13
          Caption = 'Coobrigados'
        end
        object Label60: TLabel
          Left = 10
          Top = 158
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label61: TLabel
          Left = 181
          Top = 124
          Width = 28
          Height = 13
          Caption = 'Score'
        end
        object lbBehavior: TLabel
          Left = 181
          Top = 155
          Width = 42
          Height = 13
          Caption = 'Behavior'
        end
        object Label65: TLabel
          Left = 241
          Top = 140
          Width = 6
          Height = 13
          Caption = #224
        end
        object lbBehaviora: TLabel
          Left = 241
          Top = 171
          Width = 6
          Height = 13
          Caption = #224
        end
        object Cb_Tipo_Pessoa: TComboBox
          Left = 10
          Top = 130
          Width = 162
          Height = 21
          TabOrder = 1
          Items.Strings = (
            'Todos'
            'F'#237'sica'
            'Jur'#237'dica'
            'CPF / CNPJ Vazio')
        end
        object Panel_Cobrador: TPanel
          Left = 10
          Top = 8
          Width = 162
          Height = 102
          BevelOuter = bvLowered
          TabOrder = 0
          object Btn_Cobrador: TSpeedButton
            Left = 3
            Top = 21
            Width = 155
            Height = 17
            Hint = 'Adicionar C'#243'digo de Evento a Lista de filtro'
            GroupIndex = 1
            Down = True
            Caption = 'Cobrador(a)'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object Btn_Sem_Cobrador: TSpeedButton
            Left = 3
            Top = 3
            Width = 155
            Height = 17
            Hint = 'Filtrar Opera'#231#245'es Sem Cobrador'
            GroupIndex = 1
            Caption = 'Sem Cobrador(a)'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = Btn_Sem_CobradorClick
          end
          object List_Cobrador: TListBox
            Left = 3
            Top = 40
            Width = 155
            Height = 60
            Hint = 
              'Lista de c'#243'digos de Eventos a serem filtradas.'#13#10'Para Remover sel' +
              'ecione o c'#243'digo e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 0
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = List_CobradorMouseDown
          end
        end
        object Edt_C_Acordo_INI: TEdit
          Left = 181
          Top = 18
          Width = 53
          Height = 21
          TabOrder = 3
        end
        object Edt_C_Acordo_FIM: TEdit
          Left = 255
          Top = 18
          Width = 53
          Height = 21
          TabOrder = 4
        end
        object Combo_Coobrigados: TComboBox
          Left = 9
          Top = 211
          Width = 198
          Height = 21
          TabOrder = 10
          Items.Strings = (
            'Todos'
            'Com Coobrigados'
            'Sem Coobrigados'
            'Com Coobrigados (Preferencial)'
            'Com FGO (BB)'
            'Sem FGO (BB)')
        end
        object Combo_EMail: TComboBox
          Left = 10
          Top = 171
          Width = 162
          Height = 21
          TabOrder = 2
          Items.Strings = (
            'Todos'
            'Com e-mail'
            'Sem e-mail')
        end
        object EdtScore_Ini: TEdit
          Left = 181
          Top = 136
          Width = 53
          Height = 21
          TabOrder = 6
        end
        object EdtScore_Fim: TEdit
          Left = 255
          Top = 136
          Width = 53
          Height = 21
          TabOrder = 7
        end
        object EdtBehavior_Ini: TEdit
          Left = 181
          Top = 167
          Width = 53
          Height = 21
          TabOrder = 8
        end
        object EdtBehavior_Fim: TEdit
          Left = 255
          Top = 167
          Width = 53
          Height = 21
          TabOrder = 9
        end
        object PanelFicha: TPanel
          Left = 181
          Top = 41
          Width = 128
          Height = 84
          BevelInner = bvLowered
          TabOrder = 5
          object LBNrFicha: TLabel
            Left = 3
            Top = 2
            Width = 45
            Height = 13
            Caption = '&NR Ficha'
          end
          object LBNrFichas: TListBox
            Left = 2
            Top = 51
            Width = 123
            Height = 32
            Hint = 
              'Lista de Fichas a serem filtrados.'#13#10'Para Remover selecione o pro' +
              'duto e pressione a tecla DEL.'
            ItemHeight = 13
            ParentShowHint = False
            PopupMenu = PopupLimparConteudo_Todos
            ShowHint = True
            Sorted = True
            TabOrder = 4
            OnKeyDown = List_RemessasKeyDown
            OnMouseDown = LBNrFichasMouseDown
          end
          object EdtNrFicha: TEdit
            Left = 2
            Top = 29
            Width = 74
            Height = 21
            TabOrder = 2
            OnKeyDown = EdtNrFichaKeyDown
          end
          object RDFicha_Apenas: TRadioButton
            Left = 2
            Top = 16
            Width = 57
            Height = 12
            Hint = 'Apenas Produtos Selecionados'
            Caption = 'Apenas'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = True
          end
          object RDFicha_Exceto: TRadioButton
            Left = 60
            Top = 16
            Width = 53
            Height = 12
            Hint = 'Execto Produtos Selecionados'
            Caption = 'Exceto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object Button3: TButton
            Left = 77
            Top = 29
            Width = 49
            Height = 22
            Caption = 'Adicionar'
            TabOrder = 3
            OnClick = BtnAdcioneFichaClick
          end
        end
        object GroupBox11: TGroupBox
          Left = 11
          Top = 241
          Width = 161
          Height = 54
          Caption = 'Idade do Cliente'
          TabOrder = 11
          object Label92: TLabel
            Left = 6
            Top = 17
            Width = 78
            Height = 13
            Caption = 'Maior ou igual a:'
          end
          object Label93: TLabel
            Left = 6
            Top = 34
            Width = 82
            Height = 13
            Caption = 'Menor ou igual a:'
          end
          object Edt_Idade_Valorini: TEdit
            Left = 103
            Top = 9
            Width = 50
            Height = 21
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 0
            OnKeyPress = Edt_Idade_ValoriniKeyPress
          end
          object Edt_Idade_Valorfim: TEdit
            Left = 103
            Top = 30
            Width = 49
            Height = 21
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            OnKeyPress = Edt_Idade_ValoriniKeyPress
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 558
    Width = 588
    Height = 70
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object AdvGlowButton2: TAdvGlowButton
      AlignWithMargins = True
      Left = 421
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = clRed
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorCheckedHot = clRed
      Appearance.BorderColorDown = clRed
      Appearance.BorderColorChecked = clRed
      Appearance.BorderColorDisabled = clRed
      Appearance.BorderColorFocused = clRed
      Appearance.Color = clRed
      Appearance.ColorTo = clRed
      Appearance.ColorChecked = clRed
      Appearance.ColorCheckedTo = clRed
      Appearance.ColorDisabled = clRed
      Appearance.ColorDisabledTo = clRed
      Appearance.ColorDown = clRed
      Appearance.ColorDownTo = clRed
      Appearance.ColorHot = clRed
      Appearance.ColorHotTo = clRed
      Appearance.ColorMirror = clRed
      Appearance.ColorMirrorTo = clRed
      Appearance.ColorMirrorHot = clRed
      Appearance.ColorMirrorHotTo = clRed
      Appearance.ColorMirrorDown = clRed
      Appearance.ColorMirrorDownTo = clRed
      Appearance.ColorMirrorChecked = clRed
      Appearance.ColorMirrorCheckedTo = clRed
      Appearance.ColorMirrorDisabled = clRed
      Appearance.ColorMirrorDisabledTo = clRed
      Appearance.TextColorChecked = clWhite
      Appearance.TextColorDown = clWhite
      Appearance.TextColorHot = clWhite
    end
    object AdvGlowButton5: TAdvGlowButton
      AlignWithMargins = True
      Left = 255
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = AdvGlowButton5Click
      Appearance.BorderColor = clTeal
      Appearance.BorderColorHot = clTeal
      Appearance.BorderColorCheckedHot = clTeal
      Appearance.BorderColorDown = clTeal
      Appearance.BorderColorChecked = clTeal
      Appearance.BorderColorDisabled = clTeal
      Appearance.BorderColorFocused = clTeal
      Appearance.Color = clTeal
      Appearance.ColorTo = clTeal
      Appearance.ColorChecked = clTeal
      Appearance.ColorCheckedTo = clTeal
      Appearance.ColorDisabled = clTeal
      Appearance.ColorDisabledTo = clTeal
      Appearance.ColorDown = clTeal
      Appearance.ColorDownTo = clTeal
      Appearance.ColorHot = clTeal
      Appearance.ColorHotTo = clTeal
      Appearance.ColorMirror = clTeal
      Appearance.ColorMirrorTo = clTeal
      Appearance.ColorMirrorHot = clTeal
      Appearance.ColorMirrorHotTo = clTeal
      Appearance.ColorMirrorDown = clTeal
      Appearance.ColorMirrorDownTo = clTeal
      Appearance.ColorMirrorChecked = clTeal
      Appearance.ColorMirrorCheckedTo = clTeal
      Appearance.ColorMirrorDisabled = clTeal
      Appearance.ColorMirrorDisabledTo = clTeal
      Appearance.TextColorChecked = clWhite
      Appearance.TextColorDown = clWhite
      Appearance.TextColorHot = clWhite
    end
  end
  object PopupLimparConteudo_Todos: TPopupMenu
    Left = 377
    Top = 439
    object Limpa_Tudo: TMenuItem
      Caption = 'Limpar Conte'#250'do'
      OnClick = Limpa_TudoClick
    end
  end
  object FormStorage1: TFormStorage
    Active = False
    StoredValues = <>
    Left = 505
    Top = 439
  end
end
