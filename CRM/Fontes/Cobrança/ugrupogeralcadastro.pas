unit ugrupogeralcadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, 
  AdvDateTimePicker, AdvDBDateTimePicker, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCustomListBox, 
  cxCheckListBox, cxDBCheckListBox, AdvDBLookupComboBox, uImportExcel, Vcl.Mask, 
  RzEdit, Datasnap.DBClient, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGridExportLink;

type
  Tfrmgrupogeralcadastro = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    TabbedNotebook1: TTabbedNotebook;
    Notebook8: TNotebook;
    Notebook9: TNotebook;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit2: TDBAdvLUEdit;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    unigetid: TFDQuery;
    DBAdvLUEdit4: TDBAdvLUEdit;
    DBAdvLUEdit5: TDBAdvLUEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    DBAdvOfficeCheckBox1: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox3: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox5: TDBAdvOfficeCheckBox;
    AdvDBComboBox1: TAdvDBComboBox;
    DBMemo2: TDBMemo;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBAdvLUEdit6: TDBAdvLUEdit;
    Label1: TLabel;
    UniQOperador: TFDQuery;
    UniDSQOperador: TDataSource;
    Label2: TLabel;
    DBAdvOfficeCheckBox6: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox7: TDBAdvOfficeCheckBox;
    Label4: TLabel;
    UniQEstados: TFDQuery;
    UniDSQEstados: TDataSource;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid3: TJvDBGrid;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    uniscript: TFDQuery;
    RzToolButton8: TRzToolButton;
    RzToolButton9: TRzToolButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    UniDSQOperadorGrupo: TDataSource;
    UniQOperadorGrupo: TFDQuery;
    RzToolButton4: TRzToolButton;
    ImportExcel1: TImportExcel;
    uniscriptexportar: TFDQuery;
    AdvDBComboBox2: TAdvDBComboBox;
    JvDBGrid2: TJvDBGrid;
    RzToolButton5: TRzToolButton;
    RzToolButton10: TRzToolButton;
    RzToolButton11: TRzToolButton;
    UniDSCampanha_Credores: TDataSource;
    UniCampanha_Credores: TFDQuery;
    RzToolButton12: TRzToolButton;
    Panel5: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    RzNumericEdit1: TRzNumericEdit;
    RzEditPrimeira: TRzNumericEdit;
    RzToolButton13: TRzToolButton;
    UniProcDias_Atraso: TFDStoredProc;
    UniProcATT_ULTIMO_CONTATO: TFDStoredProc;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    JvDBDatePickerEdit3: TJvDBDatePickerEdit;
    JvDBDatePickerEdit4: TJvDBDatePickerEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Notebook2: TNotebook;
    UniDSQLista: TDataSource;
    UniQLista: TFDQuery;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    RzNumericEdit2: TRzNumericEdit;
    RzToolButton14: TRzToolButton;
    RzToolButton15: TRzToolButton;
    UniQOperadorGrupoCODIGO: TFMTBCDField;
    UniQOperadorGrupoCODIGO_CAMPANHA: TIntegerField;
    UniQOperadorGrupoGRUPO_OPERADOR: TIntegerField;
    UniQOperadorGruponome_grupo: TStringField;
    UniQOperadorCODIGO: TFMTBCDField;
    UniQOperadorCODIGO_CAMPANHA: TIntegerField;
    UniQOperadorGRUPO_OPERADOR: TIntegerField;
    UniQListacliente: TStringField;
    UniQListanome: TStringField;
    UniQListanroperacao: TStringField;
    UniQListaremessa: TStringField;
    UniQListastatus: TStringField;
    UniQListavalorvencido: TFMTBCDField;
    UniQListavalornominal: TFMTBCDField;
    UniQListacredor: TStringField;
    UniQListatipopessoa: TStringField;
    UniQListacpf_cnpj: TStringField;
    UniQListaendereco: TStringField;
    UniQListanumero: TStringField;
    UniQListasetor: TStringField;
    UniQListacidade: TStringField;
    UniQListauf: TStringField;
    UniQListacep: TStringField;
    UniQListafone: TStringField;
    UniQListafaxcel: TStringField;
    UniQListafone_1: TStringField;
    UniQListafaxcel_1: TStringField;
    UniQListae_mail: TStringField;
    UniQListae_mail1: TStringField;
    UniCampanha_CredoresCODIGO: TFMTBCDField;
    UniCampanha_CredoresCODIGO_CAMPANHA: TIntegerField;
    UniCampanha_CredoresCODIGO_CREDOR: TIntegerField;
    UniCampanha_Credoresnome: TStringField;
    UniQEstadosCODIGO: TFMTBCDField;
    UniQEstadosCODIGO_CAMPANHA: TIntegerField;
    UniQEstadosESTADO: TStringField;
    UniQListanome_credor: TStringField;
    RzToolButton16: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1cliente: TcxGridDBColumn;
    cxGrid1DBTableView1nome: TcxGridDBColumn;
    cxGrid1DBTableView1nroperacao: TcxGridDBColumn;
    cxGrid1DBTableView1remessa: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    cxGrid1DBTableView1valorvencido: TcxGridDBColumn;
    cxGrid1DBTableView1valornominal: TcxGridDBColumn;
    cxGrid1DBTableView1dias_atraso: TcxGridDBColumn;
    cxGrid1DBTableView1credor: TcxGridDBColumn;
    cxGrid1DBTableView1tipopessoa: TcxGridDBColumn;
    cxGrid1DBTableView1cpf_cnpj: TcxGridDBColumn;
    cxGrid1DBTableView1endereco: TcxGridDBColumn;
    cxGrid1DBTableView1numero: TcxGridDBColumn;
    cxGrid1DBTableView1setor: TcxGridDBColumn;
    cxGrid1DBTableView1cidade: TcxGridDBColumn;
    cxGrid1DBTableView1uf: TcxGridDBColumn;
    cxGrid1DBTableView1cep: TcxGridDBColumn;
    cxGrid1DBTableView1fone: TcxGridDBColumn;
    cxGrid1DBTableView1faxcel: TcxGridDBColumn;
    cxGrid1DBTableView1fone_1: TcxGridDBColumn;
    cxGrid1DBTableView1faxcel_1: TcxGridDBColumn;
    cxGrid1DBTableView1e_mail: TcxGridDBColumn;
    cxGrid1DBTableView1e_mail1: TcxGridDBColumn;
    cxGrid1DBTableView1nome_credor: TcxGridDBColumn;
    cxGrid1DBTableView1datavencto: TcxGridDBColumn;
    cxGrid1DBTableView1ultimo_acionamento: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    UniQListaultimo_acionamento: TDateTimeField;
    UniQListadatavencto: TDateTimeField;
    UniQListadias_atraso: TLargeintField;
    mtAtivos: TFDMemTable;
    mtAtivosdata_remessa: TDateField;
    mtAtivosnumero_remessa: TStringField;
    mtAtivoscod_empresa: TIntegerField;
    mtAtivoscod_evento_atualizacao: TIntegerField;
    mtAtivosretomar_liquidar_op: TStringField;
    mtAtivostipo: TIntegerField;
    mtAtivosnumero_operacao: TStringField;
    mtAtivosnome_operacao: TStringField;
    mtAtivosagencia: TStringField;
    mtAtivosconta: TStringField;
    mtAtivosproduto: TStringField;
    mtAtivosmodalidade: TStringField;
    mtAtivosdata_atualizado: TDateField;
    mtAtivosdata_vencimento: TDateField;
    mtAtivosvalor_operacao: TFloatField;
    mtAtivosvalor_vencido: TFloatField;
    mtAtivosvalor_iof: TFloatField;
    mtAtivoscond_negociais: TStringField;
    mtAtivosforma_atualizacao: TStringField;
    mtAtivosgarantias: TStringField;
    mtAtivosnumero_identidade: TStringField;
    mtAtivoscpf_cnpj: TStringField;
    mtAtivosmci: TStringField;
    mtAtivosnumero_ficha: TIntegerField;
    mtAtivosnome_cliente: TStringField;
    mtAtivosendereco: TStringField;
    mtAtivosbairro: TStringField;
    mtAtivoscep: TStringField;
    mtAtivoscidade: TStringField;
    mtAtivosuf: TStringField;
    mtAtivostelefone1: TStringField;
    mtAtivostelefone2: TStringField;
    mtAtivostelefone3: TStringField;
    mtAtivostelefone4: TStringField;
    mtAtivostelefone5: TStringField;
    mtAtivostelefone6: TStringField;
    mtAtivosdata_nascimento: TDateField;
    mtAtivosnaturalidade: TStringField;
    mtAtivossexo: TStringField;
    mtAtivosestado_civil: TStringField;
    mtAtivosnome_pai: TStringField;
    mtAtivosnome_mae: TStringField;
    mtAtivosavalista1: TStringField;
    mtAtivosendereco_avalista1: TStringField;
    mtAtivoscpf_cnpj_avalista1: TStringField;
    mtAtivosbairro_avalista1: TStringField;
    mtAtivoscep_avalista1: TStringField;
    mtAtivoscidade_avalista1: TStringField;
    mtAtivosuf_avalista1: TStringField;
    mtAtivostelefone1_avalista1: TStringField;
    mtAtivostelefone2_avalista1: TStringField;
    mtAtivosnome_avalista2: TStringField;
    mtAtivoscpf_cnpj_avalista2: TStringField;
    mtAtivosendereco_avalista2: TStringField;
    mtAtivosbairro_avalista2: TStringField;
    mtAtivoscep_avalista2: TStringField;
    mtAtivoscidade_avalista2: TStringField;
    mtAtivosuf_avalista2: TStringField;
    mtAtivostelefone1_avalista2: TStringField;
    mtAtivostelefone2_avalista2: TStringField;
    mtAtivosnome_avalista3: TStringField;
    mtAtivoscpf_cnpj_avalista3: TStringField;
    mtAtivosendereco_avalista3: TStringField;
    mtAtivosbairro_avalista3: TStringField;
    mtAtivoscep_avalista3: TStringField;
    mtAtivoscidade_avalista3: TStringField;
    mtAtivosuf_avalista3: TStringField;
    mtAtivostelefone1_avalista3: TStringField;
    mtAtivostelefone2_avalista3: TStringField;
    mtAtivosnome_avalista4: TStringField;
    mtAtivoscpf_cnpj_avalista4: TStringField;
    mtAtivosendereco_avalista4: TStringField;
    mtAtivosbairro_avalista4: TStringField;
    mtAtivoscep_avalista4: TStringField;
    mtAtivoscidade_avalista4: TStringField;
    mtAtivosuf_avalista4: TStringField;
    mtAtivostelefone1_avalista4: TStringField;
    mtAtivostelefone2_avalista4: TStringField;
    mtAtivosnome_avalista5: TStringField;
    mtAtivoscpf_cnpj_avalista5: TStringField;
    mtAtivosendereco_avalista5: TStringField;
    mtAtivosbairro_avalista5: TStringField;
    mtAtivoscep_avalista5: TStringField;
    mtAtivoscidade_avalista5: TStringField;
    mtAtivosuf_avalista5: TStringField;
    mtAtivostelefone1_avalista5: TStringField;
    mtAtivostelefone2_avalista5: TStringField;
    mtAtivosnome_avalista6: TStringField;
    mtAtivoscpf_cnpj_avalista6: TStringField;
    mtAtivosendereco_avalista6: TStringField;
    mtAtivosbairro_avalista6: TStringField;
    mtAtivoscep_avalista6: TStringField;
    mtAtivoscidade_avalista6: TStringField;
    mtAtivosuf_avalista6: TStringField;
    mtAtivostelefone1_avalista6: TStringField;
    mtAtivostelefone2_avalista6: TStringField;
    mtAtivosprofissao: TStringField;
    mtAtivosnome_local_trabalho: TStringField;
    mtAtivosendereco_local_trabalho: TStringField;
    mtAtivosbairro_local_trabalho: TStringField;
    mtAtivoscep_local_trabalho: TStringField;
    mtAtivoscidade_local_trabalho: TStringField;
    mtAtivosuf_local_trabalho: TStringField;
    mtAtivostelefone1_local_trabalho: TStringField;
    mtAtivostelefone2_local_trabalho: TStringField;
    mtAtivosreferencia_pessoal1: TStringField;
    mtAtivostelefone1_referencia1: TStringField;
    mtAtivosreferencia_pessoal2: TStringField;
    mtAtivostelefone1_referencia2: TStringField;
    mtAtivostelefone2_referencia1: TStringField;
    mtAtivostelefone2_referencia2: TStringField;
    mtAtivosreferencia_pessoal3: TStringField;
    mtAtivostelefone1_referencia3: TStringField;
    mtAtivostelefone2_referencia3: TStringField;
    mtAtivosspc_serasa: TStringField;
    mtAtivosemail: TStringField;
    mtAtivosemail1: TStringField;
    mtAtivosdata_emissao: TDateField;
    mtAtivosvalor_protesto: TFloatField;
    mtAtivosobs_operacao: TStringField;
    mtAtivosobs_cliente: TStringField;
    mtAtivosdata_fimterceirizacao: TDateField;
    mtAtivosvalor_juros: TFloatField;
    mtAtivoscod_classificacao_cliente: TIntegerField;
    mtAtivoscod_classificacao_operacao: TIntegerField;
    mtAtivosdata_assinatura_contrato: TDateField;
    mtAtivosscore: TIntegerField;
    mtAtivosscore_interno: TIntegerField;
    mtAtivosrenda: TFloatField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsAtivos: TDataSource;
    UniQListacontato_1: TStringField;
    UniQListaCODIGO: TFMTBCDField;
    UniQListaCONTACORRENTE: TStringField;
    UniQListaREGIAO: TFMTBCDField;
    UniQListaENDENDERECO_1: TStringField;
    UniQListaNUMERO_1: TStringField;
    UniQListaSETOR_1: TStringField;
    UniQListaCIDADE_1: TStringField;
    UniQListaUF_1: TStringField;
    UniQListaCEP_1: TStringField;
    UniQListaFOTO: TBlobField;
    UniQListaCONTATO: TStringField;
    UniQListaMCI: TFMTBCDField;
    UniQListaDEVOLVERBB: TStringField;
    UniQListaREMESSABB: TFMTBCDField;
    UniQListaOBS: TBlobField;
    UniQListaDTA_NASCIMENTO: TStringField;
    UniQListaCOD_CLASSIFICACAO: TIntegerField;
    UniQListaDATA_MODIF: TSQLTimeStampField;
    UniQListaPONTO_REF1: TStringField;
    UniQListaPONTO_REF2: TStringField;
    UniQListaAGENCIA: TStringField;
    UniQListaLOCALIDADE: TStringField;
    UniQListaSETOR_FAT: TStringField;
    UniQListaROTA: TStringField;
    UniQListaQUADRA: TStringField;
    UniQListaLOTE: TStringField;
    UniQListaSUBLOTE: TStringField;
    UniQListaEND_PREFERENCIAL: TStringField;
    UniQListaFONE_PREFERENCIAL: TStringField;
    UniQListaNRIDENTIDADE: TStringField;
    UniQListaSEXO: TStringField;
    UniQListaLOCAL_TRABALHO: TStringField;
    UniQListaCARGO_TRABALHO: TStringField;
    UniQListaSALARIO_TRABALHO: TFMTBCDField;
    UniQListaNATURALIDADE: TStringField;
    UniQListaESTADOCIVIL: TStringField;
    UniQListaSCORE: TFMTBCDField;
    UniQListaBEHAVIOR: TFMTBCDField;
    UniQListaMOTIVOINADIMPLENCIA: TIntegerField;
    UniQListaDTA_CAD: TSQLTimeStampField;
    UniQListaUSR_CAD: TFMTBCDField;
    UniQListaMOTIVORETORNO: TFMTBCDField;
    UniQListaCODIGO_EXTERNO: TStringField;
    UniQListaSCORE1: TFMTBCDField;
    UniQListaORIGEMDOSDADOS: TStringField;
    UniQListaCOLUMN2: TStringField;
    UniQListaCOD_BANCO_COMISSAO: TIntegerField;
    cxGrid2DBTableView1data_remessa: TcxGridDBColumn;
    cxGrid2DBTableView1numero_remessa: TcxGridDBColumn;
    cxGrid2DBTableView1cod_empresa: TcxGridDBColumn;
    cxGrid2DBTableView1cod_evento_atualizacao: TcxGridDBColumn;
    cxGrid2DBTableView1retomar_liquidar_op: TcxGridDBColumn;
    cxGrid2DBTableView1tipo: TcxGridDBColumn;
    cxGrid2DBTableView1numero_operacao: TcxGridDBColumn;
    cxGrid2DBTableView1nome_operacao: TcxGridDBColumn;
    cxGrid2DBTableView1agencia: TcxGridDBColumn;
    cxGrid2DBTableView1conta: TcxGridDBColumn;
    cxGrid2DBTableView1produto: TcxGridDBColumn;
    cxGrid2DBTableView1modalidade: TcxGridDBColumn;
    cxGrid2DBTableView1data_atualizado: TcxGridDBColumn;
    cxGrid2DBTableView1data_vencimento: TcxGridDBColumn;
    cxGrid2DBTableView1valor_operacao: TcxGridDBColumn;
    cxGrid2DBTableView1valor_vencido: TcxGridDBColumn;
    cxGrid2DBTableView1valor_iof: TcxGridDBColumn;
    cxGrid2DBTableView1cond_negociais: TcxGridDBColumn;
    cxGrid2DBTableView1forma_atualizacao: TcxGridDBColumn;
    cxGrid2DBTableView1garantias: TcxGridDBColumn;
    cxGrid2DBTableView1numero_identidade: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj: TcxGridDBColumn;
    cxGrid2DBTableView1mci: TcxGridDBColumn;
    cxGrid2DBTableView1numero_ficha: TcxGridDBColumn;
    cxGrid2DBTableView1nome_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1endereco: TcxGridDBColumn;
    cxGrid2DBTableView1bairro: TcxGridDBColumn;
    cxGrid2DBTableView1cep: TcxGridDBColumn;
    cxGrid2DBTableView1cidade: TcxGridDBColumn;
    cxGrid2DBTableView1uf: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2: TcxGridDBColumn;
    cxGrid2DBTableView1telefone3: TcxGridDBColumn;
    cxGrid2DBTableView1telefone4: TcxGridDBColumn;
    cxGrid2DBTableView1telefone5: TcxGridDBColumn;
    cxGrid2DBTableView1telefone6: TcxGridDBColumn;
    cxGrid2DBTableView1data_nascimento: TcxGridDBColumn;
    cxGrid2DBTableView1naturalidade: TcxGridDBColumn;
    cxGrid2DBTableView1sexo: TcxGridDBColumn;
    cxGrid2DBTableView1estado_civil: TcxGridDBColumn;
    cxGrid2DBTableView1nome_pai: TcxGridDBColumn;
    cxGrid2DBTableView1nome_mae: TcxGridDBColumn;
    cxGrid2DBTableView1avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista1: TcxGridDBColumn;
    cxGrid2DBTableView1nome_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista2: TcxGridDBColumn;
    cxGrid2DBTableView1nome_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista3: TcxGridDBColumn;
    cxGrid2DBTableView1nome_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista4: TcxGridDBColumn;
    cxGrid2DBTableView1nome_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista5: TcxGridDBColumn;
    cxGrid2DBTableView1nome_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1cpf_cnpj_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1cep_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1uf_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_avalista6: TcxGridDBColumn;
    cxGrid2DBTableView1profissao: TcxGridDBColumn;
    cxGrid2DBTableView1nome_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1endereco_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1bairro_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1cep_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1cidade_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1uf_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_local_trabalho: TcxGridDBColumn;
    cxGrid2DBTableView1referencia_pessoal1: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_referencia1: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_referencia1: TcxGridDBColumn;
    cxGrid2DBTableView1referencia_pessoal2: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_referencia2: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_referencia2: TcxGridDBColumn;
    cxGrid2DBTableView1referencia_pessoal3: TcxGridDBColumn;
    cxGrid2DBTableView1telefone1_referencia3: TcxGridDBColumn;
    cxGrid2DBTableView1telefone2_referencia3: TcxGridDBColumn;
    cxGrid2DBTableView1spc_serasa: TcxGridDBColumn;
    cxGrid2DBTableView1email: TcxGridDBColumn;
    cxGrid2DBTableView1email1: TcxGridDBColumn;
    cxGrid2DBTableView1data_emissao: TcxGridDBColumn;
    cxGrid2DBTableView1valor_protesto: TcxGridDBColumn;
    cxGrid2DBTableView1obs_operacao: TcxGridDBColumn;
    cxGrid2DBTableView1obs_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1data_fimterceirizacao: TcxGridDBColumn;
    cxGrid2DBTableView1valor_juros: TcxGridDBColumn;
    cxGrid2DBTableView1cod_classificacao_cliente: TcxGridDBColumn;
    cxGrid2DBTableView1cod_classificacao_operacao: TcxGridDBColumn;
    cxGrid2DBTableView1data_assinatura_contrato: TcxGridDBColumn;
    cxGrid2DBTableView1score: TcxGridDBColumn;
    cxGrid2DBTableView1score_interno: TcxGridDBColumn;
    cxGrid2DBTableView1renda: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure ChecaChecks;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure AdvDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBAdvOfficeCheckBox15Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox16Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox1Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox3Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox5Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox9Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox11Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox10Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox12Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox13Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox14Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox7Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox2Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox4Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox8Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox6Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure AdvDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure RzToolButton12Click(Sender: TObject);
    procedure RzToolButton13Click(Sender: TObject);
    procedure RzToolButton14Click(Sender: TObject);
    procedure RzToolButton15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton16Click(Sender: TObject);
  private
    { Private declarations }
    function ExisteNegociacao : boolean;
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmgrupogeralcadastro: Tfrmgrupogeralcadastro;

implementation

{$R *.dfm}

uses
  uselecionacredor, ugrupogeral, uselecionaestado, uoperadoresselecaodegrupo, 
  uDataModule, uFuncoes, uAguarde, uPesquisaGrupoCredor;

procedure Tfrmgrupogeralcadastro.AdvDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
KEY := 0;
end;

procedure Tfrmgrupogeralcadastro.btnalterarClick(Sender: TObject);
begin
IF DBAdvLUEdit1.Text <> '' then
    frmoperadoresselecaodegrupo.showmodal else
    showmessage('Antes de inserir, grave a campanha.');
UniQOperadorGrupo.Refresh;
end;

procedure Tfrmgrupogeralcadastro.ChecaChecks;
begin
{  DBAdvLUEdit13.Enabled := False;
  DBAdvLUEdit14.Enabled := False;
  DBAdvLUEdit15.Enabled := False;
  DBAdvLUEdit16.Enabled := False;
  DBAdvLUEdit17.Enabled := False;
  DBAdvLUEdit18.Enabled := False;
  DBAdvLUEdit19.Enabled := False;
  DBAdvLUEdit20.Enabled := False;
  DBAdvLUEdit21.Enabled := False;
  DBAdvLUEdit22.Enabled := False;
  DBAdvLUEdit23.Enabled := False;
  DBAdvLUEdit24.Enabled := False;
  DBAdvLUEdit25.Enabled := False;
  DBAdvLUEdit26.Enabled := False;

  if DBAdvOfficeCheckBox1.Checked = true then begin
    DBAdvLUEdit13.Enabled := True;
    DBAdvLUEdit14.Enabled := True;
  end;

  if DBAdvOfficeCheckBox2.Checked = true then begin
    DBAdvLUEdit15.Enabled := True;
    DBAdvLUEdit16.Enabled := True;
  end;

  if DBAdvOfficeCheckBox3.Checked = true then begin
    DBAdvLUEdit17.Enabled := True;
    DBAdvLUEdit18.Enabled := True;
  end;

  if DBAdvOfficeCheckBox4.Checked = true then begin
    DBAdvLUEdit20.Enabled := True;
    DBAdvLUEdit21.Enabled := True;
  end;

  if DBAdvOfficeCheckBox5.Checked = true then begin
    DBAdvLUEdit19.Enabled := True;
  end;

  if DBAdvOfficeCheckBox9.Checked = true then begin
    DBAdvLUEdit22.Enabled := True;
    DBAdvLUEdit23.Enabled := True;
  end;

  if DBAdvOfficeCheckBox8.Checked = true then begin
    DBAdvLUEdit24.Enabled := True;
  end;

  if DBAdvOfficeCheckBox6.Checked = true then begin
    DBAdvLUEdit25.Enabled := True;
  end;

  if DBAdvOfficeCheckBox7.Checked = true then begin
    DBAdvLUEdit26.Enabled := True;
  end;
}
end;

procedure Tfrmgrupogeralcadastro.AdvDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmgrupogeralcadastro.DBAdvLUEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupogeralcadastro.DBAdvLUEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupogeralcadastro.DBAdvLUEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupogeralcadastro.DBAdvLUEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox10Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox11Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox12Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox13Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox14Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox15Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox16Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox1Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox2Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox3Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox4Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox5Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox6Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox7Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox8Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmgrupogeralcadastro.DBAdvOfficeCheckBox9Click(
  Sender: TObject);
begin
ChecaChecks;
end;

function Tfrmgrupogeralcadastro.ExisteNegociacao: boolean;
var
  QNegociacao : TFDQuery;
begin
  QNegociacao := TFDQuery.Create(nil);
  try
    QNegociacao.Connection := frmDataModule.UniConnection1;
    with QNegociacao do
    begin
      Close;
      SQL.Clear;
      SQl.Add('SELECT                 ');
      SQl.Add('  o.ultimo_acionamento ');
      SQl.Add('FROM                   ');
      SQl.Add('  operacoes o          ');
      SQl.Add('ORDER BY 1 DESC        ');
      SQl.Add('LIMIT 1                ');
      Open;
    end;
    if QNegociacao.Fields[0].AsString <> '' then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(QNegociacao);
  end;

end;

procedure Tfrmgrupogeralcadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  alterainsere := '';
  Uniqlista.Close;
  UniCampanha_Credores.close;
  UniQOperadorGrupo.close;
  UniQEstados.Close;
end;

procedure Tfrmgrupogeralcadastro.FormCreate(Sender: TObject);
begin
  checachecks;
//  frmgrupogeralcadastro.RzToolButton13Click(Sender);
  RzNumericEdit1.Clear;
  RzNumericEdit2.Clear;
  RzEditPrimeira.Clear;
  //UniQEstados.Close;
end;

procedure Tfrmgrupogeralcadastro.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmgrupogeralcadastro.FormShow(Sender: TObject);
begin
  TabbedNotebook1.PageIndex := 0;

  frmgrupogeralcadastro.UniQOperadorGrupo.close;
  frmgrupogeralcadastro.UniQOperadorGrupo.sql.text := 'select campanha_grupo_operador.*, operador_grupo.nome_grupo from campanha_grupo_operador ' +
                                                      'inner join operador_grupo on campanha_grupo_operador.grupo_operador = operador_grupo.codigo ' +
                                                      'where codigo_campanha = :codigocampanha';
                                                      frmgrupogeralcadastro.UniQOperadorGrupo.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
  frmgrupogeralcadastro.UniQOperadorGrupo.open;

  frmgrupogeralcadastro.UniCampanha_Credores.close;
  frmgrupogeralcadastro.UniCampanha_Credores.sql.text := 'select campanha_credores.*, bancos.nome from campanha_credores ' +
                                                         'inner join bancos on campanha_credores.codigo_credor = bancos.codigo ' +
                                                         'where codigo_campanha = :codigocampanha';
                                                         frmgrupogeralcadastro.UniCampanha_Credores.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
  frmgrupogeralcadastro.UniCampanha_Credores.open;

  AdvDBComboBox1.ItemIndex := 3;
  //UniQEstados.Close;
  DBAdvLUEdit2.SETFOCUS;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton10Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then
    fselecionacredor.showmodal
  else
    showmessage('Antes de inserir, grave a campanha.');
  UniCampanha_Credores.Refresh;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton11Click(Sender: TObject);
begin
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try UniCampanha_Credores.Delete; except end;
  UniQOperadorGrupo.Refresh;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton12Click(Sender: TObject);
begin
  mtAtivos.Close;
  mtAtivos.CreateDataSet;

  Application.CreateForm(TfrmAguarde, frmAguarde);
  frmAguarde.Refresh;
  frmAguarde.Show;
  frmAguarde.ProgressBar1.Visible := True;
  frmAguarde.ProgressBar1.Max := UniQLista.RecordCount;

  UniQLista.DisableControls;
  while not UniQLista.Eof do
  begin
    frmAguarde.ProgressBar1.Position := frmAguarde.ProgressBar1.Position + 1;
    Application.ProcessMessages;
    mtAtivos.Append;
    mtAtivosdata_remessa.AsDateTime := Now;
    mtAtivosnumero_remessa.AsString := UniQListaremessa.AsString;
    mtAtivoscod_empresa.AsInteger := 1;
    mtAtivoscod_evento_atualizacao.Clear;
    mtAtivosretomar_liquidar_op.Clear;
    mtAtivostipo.AsInteger := 1;
    mtAtivosnumero_operacao.AsString := UniQListanroperacao.AsString;
    mtAtivosnome_operacao.AsString := '';
    mtAtivosagencia.AsString := '';
    mtAtivosconta.AsString := '';
    mtAtivosproduto.AsString := '';
    mtAtivosmodalidade.AsString := '';
    mtAtivosdata_atualizado.AsDateTime := UniQListadatavencto.AsDateTime;
    mtAtivosdata_vencimento.AsDateTime := UniQListadatavencto.AsDateTime;
    mtAtivosvalor_operacao.AsFloat := UniQListavalornominal.AsFloat;
    mtAtivosvalor_vencido.AsFloat := UniQListavalornominal.AsFloat;
    mtAtivosvalor_iof.AsFloat := 0;
    mtAtivoscond_negociais.AsString := '';
    mtAtivosforma_atualizacao.AsString := '';
    mtAtivosgarantias.AsString := '';
    mtAtivosnumero_identidade.AsString := '';
    mtAtivoscpf_cnpj.AsString := UniQListacpf_cnpj.AsString;
    mtAtivosmci.AsString := '';
    mtAtivosnumero_ficha.AsInteger := 1;
    mtAtivosnome_cliente.AsString := UniQListanome.AsString;
    mtAtivosendereco.AsString := UniQListaendereco.AsString;
    mtAtivosbairro.AsString := UniQListasetor.AsString;
    mtAtivoscep.AsString := UniQListacep.AsString;
    mtAtivoscidade.AsString := UniQListacidade.AsString;
    mtAtivosuf.AsString := UniQListauf.AsString;
    mtAtivostelefone1.AsString := UniQListafone.AsString;
    mtAtivostelefone2.AsString := UniQListafone_1.AsString;
    mtAtivostelefone3.AsString := UniQListafaxcel.AsString;
    mtAtivostelefone4.AsString := UniQListafaxcel_1.AsString;
    mtAtivostelefone5.AsString := '';
    mtAtivostelefone6.AsString := '';
//    if UniQListaDTA_NASCIMENTO.AsDateTime > 0 then
//      mtAtivosdata_nascimento.AsDateTime := StrToDate(UniQListaDTA_NASCIMENTO.AsString);
    mtAtivosnaturalidade.AsString := UniQListaNATURALIDADE.AsString;
    mtAtivossexo.AsString := UniQListaSEXO.AsString;
    //mtAtivosnome_pai.AsString :=
    //mtAtivosnome_mae.AsString := ''
    mtAtivosavalista1.AsString := UniQListacontato_1.AsString;
    //mtAtivosprofissao.AsString :=
    mtAtivosnome_local_trabalho.AsString := UniQListaLOCAL_TRABALHO.AsString;
    //mtAtivosendereco_local_trabalho.AsString :=
    mtAtivosemail.AsString := UniQListae_mail.AsString;
    mtAtivosemail1.AsString := UniQListae_mail1.AsString;
    //mtAtivosdata_emissao.AsDateTime :=
    mtAtivosvalor_protesto.AsFloat := UniQListavalornominal.AsFloat;
    mtAtivosvalor_juros.AsFloat := 0;
    mtAtivos.Post;
    UniQLista.Next;
  end;

  UniQLista.EnableControls;
  SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt:= 'xls';
  if SaveDialog1.Execute then
    ExportGridToExcel(SaveDialog1.FileName, cxGrid2, True, True);

  FreeAndNil(frmAguarde);
end;

procedure Tfrmgrupogeralcadastro.RzToolButton13Click(Sender: TObject);
var
  vExisteNegociacao : boolean;
  var_credores, var_estados, var_tipopessoa: string;
begin
//colocando os campos credores, estados e tipopessoa
  Application.CreateForm(TfrmAguarde, frmAguarde);
  frmAguarde.Show;
  frmAguarde.Refresh;
  UniCampanha_Credores.First;
  while not UniCampanha_Credores.eof do
  begin
    var_credores := var_credores + quotedstr(UniCampanha_Credores.fieldbyname('codigo_credor').asstring) + ',';
    UniCampanha_Credores.Next;
  end;
  UniQEstados.First;
  while not UniQEstados.eof do
  begin
    if UniQEstados.fieldbyname('estado').asstring <> '' then
      var_estados := var_estados + quotedstr(UniQEstados.fieldbyname('estado').asstring) + ',';
    UniQEstados.Next;
  end;
  if DBAdvOfficeCheckBox6.Checked then
    var_tipopessoa := var_tipopessoa + quotedstr('F') + ',';
  if DBAdvOfficeCheckBox7.Checked then
    var_tipopessoa := var_tipopessoa + quotedstr('J') + ',';
//deletando o último ','
  try
    Delete(var_credores,Length(var_credores),1)
  except
  end;
  try
    Delete(var_estados,Length(var_estados),1)
  except
  end;
  try
    Delete(var_tipopessoa,Length(var_tipopessoa),1)
  except
  end;

//atualizar campos dias_atraso
  UniProcDias_Atraso.ExecProc;
//atualizar campo ultimo_acionamento
  UniProcATT_ULTIMO_CONTATO.ExecProc;

  if DBAdvLUEdit4.Text = '' then
    DBAdvLUEdit4.Text := '0';
  if DBAdvLUEdit5.Text = '' then
    DBAdvLUEdit5.Text := '10000000'; //está dando erro pelo tamanho de caracteres
  if DBAdvLUEdit3.Text = '' then
    DBAdvLUEdit3.Text := '0';
  if DBAdvLUEdit6.Text = '' then
    DBAdvLUEdit6.Text := '10000000';
//  sleep(500);


  //verifico se existe alguma negociação
  vExisteNegociacao := ExisteNegociacao;
  //fazendo o filtro total $$$
  try
    uniscript.close;
    uniscript.sql.clear;
//    if vExisteNegociacao then    ******27/04 TIREI POIS NA IMPORTAÇÃO NÃO ESTAVA TRAZENDO NADA DE VALOR
//      uniscript.sql.add('select SUM(CAST(operacoes.valorvencido AS DECIMAL(13,2))) as totaldividas')
//    else
      uniscript.sql.add('select SUM(CAST(operacoes.valornominal AS DECIMAL(13,2))) as totaldividas');
    uniscript.sql.add('from operacoes inner join clientes on operacoes.cliente = clientes.cpf_cnpj');
    uniscript.sql.add('where operacoes.cliente is not null');
    if var_credores <> '' then
      uniscript.sql.add('and operacoes.credor in ('+var_credores+')');
    if var_estados <> '' then
      uniscript.sql.add('and clientes.uf in ('+var_estados+')');
    if var_tipopessoa <> '' then
      uniscript.sql.add('and clientes.tipopessoa in ('+var_tipopessoa+')');
    if AdvDBComboBox2.Text <> 'Todos' then
    begin
      uniscript.sql.add('and operacoes.status = :pstatus');
      uniscript.parambyname('pstatus').AsString := AdvDBComboBox2.Text;
    end;
    uniscript.sql.add('and CAST(operacoes.datavencto AS DATE) between :pdatavencto1 and :pdatavencto2');
//    if vExisteNegociacao then
//      uniscript.sql.add('and CAST(operacoes.valorvencido AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2')
//    else
      uniscript.sql.add('and CAST(operacoes.valornominal AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2');
    uniscript.sql.add('and operacoes.dias_atraso between :pdias_atraso1 and :pdias_atraso2');
//    if vExisteNegociacao then
//    begin
//      uniscript.sql.add('and CAST(operacoes.ultimo_acionamento AS DATE) between :pultimoacionamento1 and :pultimoacionamento2');
//      uniscript.parambyname('pultimoacionamento1').AsDate := JvDBDatePickerEdit3.Date;
//      uniscript.parambyname('pultimoacionamento2').AsDate := JvDBDatePickerEdit4.Date;
//    end;
    uniscript.parambyname('pdatavencto1').AsDate := JvDBDatePickerEdit1.Date;
    uniscript.parambyname('pdatavencto2').AsDate := JvDBDatePickerEdit2.Date;
    uniscript.parambyname('pvalorvencido1').AsFloat := strtofloat(DBAdvLUEdit3.Text);
    uniscript.parambyname('pvalorvencido2').AsFloat := strtofloat(DBAdvLUEdit6.Text);
    uniscript.parambyname('pdias_atraso1').AsFloat := strtofloat(DBAdvLUEdit4.Text);
    uniscript.parambyname('pdias_atraso2').AsFloat := strtofloat(DBAdvLUEdit5.Text);
    uniscript.open;
    uniscript.first;
    uniscript.last;
    uniscript.first;

    RzEditPrimeira.Value := uniscript.fieldbyname('totaldividas').AsFloat;

  except
    showmessage('Erro ln 490. "Cálculo Filtro Total Dívidas".')
  end;

  //fazendo o filtro total cpf_cnpj
  try
    uniscript.close;
    uniscript.sql.clear;
    uniscript.sql.add('select distinct operacoes.cliente');
    uniscript.sql.add('from operacoes inner join clientes on operacoes.cliente = clientes.cpf_cnpj');
    uniscript.sql.add('where operacoes.cliente is not null');
    if var_credores <> '' then
      uniscript.sql.add('and operacoes.credor in ('+var_credores+')');
    if var_estados <> '' then
      uniscript.sql.add('and clientes.uf in ('+var_estados+')');
    if var_tipopessoa <> '' then
      uniscript.sql.add('and clientes.tipopessoa in ('+var_tipopessoa+')');
    if AdvDBComboBox2.Text <> 'Todos' then
    begin
      uniscript.sql.add('and operacoes.status = :pstatus');
      uniscript.parambyname('pstatus').AsString := AdvDBComboBox2.Text;
    end;
    uniscript.sql.add('and CAST(operacoes.datavencto AS DATE) between :pdatavencto1 and :pdatavencto2');
    if vExisteNegociacao then
      uniscript.sql.add('and CAST(operacoes.valorvencido AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2')
    else
      uniscript.sql.add('and CAST(operacoes.valornominal AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2');
    uniscript.sql.add('and operacoes.dias_atraso between :pdias_atraso1 and :pdias_atraso2');
//    if vExisteNegociacao then
//    begin
//      uniscript.sql.add('and CAST(operacoes.ultimo_acionamento AS DATE) between :pultimoacionamento1 and :pultimoacionamento2');
//      uniscript.parambyname('pultimoacionamento1').AsDate := JvDBDatePickerEdit3.Date;
//      uniscript.parambyname('pultimoacionamento2').AsDate := JvDBDatePickerEdit4.Date;
//    end;
    uniscript.parambyname('pdatavencto1').AsDate := JvDBDatePickerEdit1.Date;
    uniscript.parambyname('pdatavencto2').AsDate := JvDBDatePickerEdit2.Date;
    uniscript.parambyname('pvalorvencido1').AsFloat := strtofloat(DBAdvLUEdit3.Text);
    uniscript.parambyname('pvalorvencido2').AsFloat := strtofloat(DBAdvLUEdit6.Text);
    uniscript.parambyname('pdias_atraso1').AsFloat := strtofloat(DBAdvLUEdit4.Text);
    uniscript.parambyname('pdias_atraso2').AsFloat := strtofloat(DBAdvLUEdit5.Text);
    uniscript.open;
    uniscript.first;
    uniscript.last;
    uniscript.first;

    RzNumericEdit1.Value := uniscript.recordcount;

  except showmessage('Erro ln 526. "Total Filtro Total CPF/CNPJ".') end;

  //fazendo o filtro total operacoes
  try
    uniscript.close;
    uniscript.sql.clear;
    uniscript.sql.add('select operacoes.registro');
    uniscript.sql.add('from operacoes inner join clientes on operacoes.cliente = clientes.cpf_cnpj');
    uniscript.sql.add('where operacoes.cliente is not null');
    if var_credores <> '' then uniscript.sql.add('and operacoes.credor in ('+var_credores+')');
    if var_estados <> '' then uniscript.sql.add('and clientes.uf in ('+var_estados+')');
    if var_tipopessoa <> '' then uniscript.sql.add('and clientes.tipopessoa in ('+var_tipopessoa+')');
    if AdvDBComboBox2.Text <> 'Todos' then begin
      uniscript.sql.add('and operacoes.status = :pstatus');
      uniscript.parambyname('pstatus').AsString := AdvDBComboBox2.Text;
    end;
    uniscript.sql.add('and CAST(operacoes.datavencto AS DATE) between :pdatavencto1 and :pdatavencto2');
    if vExisteNegociacao then
      uniscript.sql.add('and CAST(operacoes.valorvencido AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2')
    else
      uniscript.sql.add('and CAST(operacoes.valornominal AS DECIMAL (13,2)) between :pvalorvencido1 and :pvalorvencido2');
    uniscript.sql.add('and operacoes.dias_atraso between :pdias_atraso1 and :pdias_atraso2');
//    if vExisteNegociacao then
//    begin
//      uniscript.sql.add('and CAST(operacoes.ultimo_acionamento AS DATE) between :pultimoacionamento1 and :pultimoacionamento2');
//      uniscript.parambyname('pultimoacionamento1').AsDate := JvDBDatePickerEdit3.Date;
//      uniscript.parambyname('pultimoacionamento2').AsDate := JvDBDatePickerEdit4.Date;
//    end;
    uniscript.parambyname('pdatavencto1').AsDate := JvDBDatePickerEdit1.Date;
    uniscript.parambyname('pdatavencto2').AsDate := JvDBDatePickerEdit2.Date;
    uniscript.parambyname('pvalorvencido1').AsFloat := strtofloat(DBAdvLUEdit3.Text);
    uniscript.parambyname('pvalorvencido2').AsFloat := strtofloat(DBAdvLUEdit6.Text);
    uniscript.parambyname('pdias_atraso1').AsFloat := strtofloat(DBAdvLUEdit4.Text);
    uniscript.parambyname('pdias_atraso2').AsFloat := strtofloat(DBAdvLUEdit5.Text);
    uniscript.open;
    uniscript.first;
    uniscript.last;
    uniscript.first;

    RzNumericEdit2.Value := uniscript.recordcount;

  except showmessage('Erro ln 526. "Total Filtro Total CPF/CNPJ".') end;

  //fazendo a lista
  try
    uniqlista.close;
    uniqlista.sql.clear;
    uniqlista.sql.add('select');
    uniqlista.sql.add('operacoes.cliente,');
    uniqlista.sql.add('operacoes.nroperacao,');
    uniqlista.sql.add('operacoes.remessa,');
    uniqlista.sql.add('operacoes.status,');
    uniqlista.sql.add('operacoes.datavencto,');
    uniqlista.sql.add('operacoes.valorvencido,');
    uniqlista.sql.add('operacoes.valornominal,');
    uniqlista.sql.add('CAST(operacoes.dias_atraso AS UNSIGNED) AS dias_atraso,');
    uniqlista.sql.add('operacoes.credor,');
    uniqlista.sql.add('operacoes.ultimo_acionamento,');
    uniqlista.sql.add('clientes.*,');
//    uniqlista.sql.add('clientes.nome,');
//    uniqlista.sql.add('clientes.tipopessoa,');
//    uniqlista.sql.add('clientes.cpf_cnpj,');
//    uniqlista.sql.add('clientes.endereco,');
//    uniqlista.sql.add('clientes.numero,');
//    uniqlista.sql.add('clientes.setor,');
//    uniqlista.sql.add('clientes.cidade,');
//    uniqlista.sql.add('clientes.uf,');
//    uniqlista.sql.add('clientes.cep,');
//    uniqlista.sql.add('clientes.fone,');
//    uniqlista.sql.add('clientes.faxcel,');
//    uniqlista.sql.add('clientes.fone_1,');
//    uniqlista.sql.add('clientes.faxcel_1,');
//    uniqlista.sql.add('clientes.e_mail,');
//    uniqlista.sql.add('clientes.e_mail1,');
    uniqlista.sql.add('bancos.nome as nome_credor');
    uniqlista.sql.add('from operacoes');
    uniqlista.sql.add('inner join clientes on operacoes.cliente = clientes.cpf_cnpj');
    uniqlista.sql.add('inner join bancos on bancos.codigo = operacoes.credor');
    uniqlista.sql.add('where operacoes.cliente is not null');
    if var_credores <> '' then
      uniqlista.sql.add('and operacoes.credor in ('+var_credores+')');
    if var_estados <> '' then
      uniqlista.sql.add('and clientes.uf in ('+var_estados+')');
    if var_tipopessoa <> '' then
      uniqlista.sql.add('and clientes.tipopessoa in ('+var_tipopessoa+')');
    if AdvDBComboBox2.Text <> 'Todos' then
    begin
      uniqlista.sql.add('and operacoes.status = :pstatus');
      uniqlista.parambyname('pstatus').AsString := AdvDBComboBox2.Text;
    end;
    uniqlista.sql.add('and CAST(operacoes.datavencto AS DATE) between :pdatavencto1 and :pdatavencto2');
    if vExisteNegociacao then
      uniqlista.sql.add('and operacoes.valorvencido between :pvalorvencido1 and :pvalorvencido2')
    else
      uniqlista.sql.add('and operacoes.valornominal between :pvalorvencido1 and :pvalorvencido2');
    uniqlista.sql.add('and operacoes.dias_atraso between :pdias_atraso1 and :pdias_atraso2');
//    if vExisteNegociacao then
//    begin
//      uniqlista.sql.add('and CAST(operacoes.ultimo_acionamento AS DATE) between :pultimoacionamento1 and :pultimoacionamento2');
//      uniqlista.parambyname('pultimoacionamento1').AsDate := JvDBDatePickerEdit3.Date;
//      uniqlista.parambyname('pultimoacionamento2').AsDate := JvDBDatePickerEdit4.Date;
//    end;
    uniqlista.parambyname('pdatavencto1').AsDate := JvDBDatePickerEdit1.Date;
    uniqlista.parambyname('pdatavencto2').AsDate := JvDBDatePickerEdit2.Date;
    uniqlista.parambyname('pvalorvencido1').AsFloat := strtofloat(DBAdvLUEdit3.Text);
    uniqlista.parambyname('pvalorvencido2').AsFloat := strtofloat(DBAdvLUEdit6.Text);
    uniqlista.parambyname('pdias_atraso1').AsFloat := strtofloat(DBAdvLUEdit4.Text);
    uniqlista.parambyname('pdias_atraso2').AsFloat := strtofloat(DBAdvLUEdit5.Text);
    if AdvDBComboBox1.ItemIndex = 1 then
      uniqlista.sql.add('ORDER BY operacoes.datavencto')
    else if AdvDBComboBox1.ItemIndex = 2 then
      uniqlista.sql.add('ORDER BY operacoes.valorvencido')
    else if AdvDBComboBox1.ItemIndex = 3 then
      uniqlista.sql.add('ORDER BY clientes.nome');
    //uniqlista.SQL.SaveToFile('D:\teste.txt');
    uniqlista.open;

  except
    on exc : exception do
    showmessage('Erro ln 588. "Cálculo Filtro Lista".' + exc.Message);
  end;

  FreeAndNil(frmAguarde);

  uniscript.close;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton14Click(Sender: TObject);
begin
showmessage('Aguardando layout do discador.');
end;

procedure Tfrmgrupogeralcadastro.RzToolButton15Click(Sender: TObject);
begin
showmessage('Aguardando layout do SMS.');
end;

procedure Tfrmgrupogeralcadastro.RzToolButton16Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then
  begin
    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'delete from campanha_credores where codigo_campanha = :codigocampanha';
                          uniscript.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
    uniscript.ExecSQL;
    Application.CreateForm(TfrmPesquisaGrupoCredor, frmPesquisaGrupoCredor);
    frmPesquisaGrupoCredor.vPesquisa := True;
    frmPesquisaGrupoCredor.ShowModal;

    with uniscript do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from bancos where cod_bancos_grupo  = :CodBanco');
      ParamByName('CodBanco').AsInteger := frmPesquisaGrupoCredor.QGrupoCredorcodigo.AsInteger;
      Open;
    end;
    uniscript.First;

    UniCampanha_Credores.open;

    while not uniscript.Eof do
    begin
      UniCampanha_Credores.insert;
      UniCampanha_Credores.FieldbyName('CODIGO').Value := GetID('codigo','campanha_credores'); //unigetid.FieldByName('Sequences').Value;
      UniCampanha_Credores.FieldbyName('CODIGO_CAMPANHA').AsString := DBAdvLUEdit1.TEXT;
      UniCampanha_Credores.FieldbyName('CODIGO_CREDOR').Value := uniscript.FieldByName('CODIGO').Value;
      UniCampanha_Credores.post;
      uniscript.Next;
    end;

    uniscript.Close;


    FreeAndNil(frmPesquisaGrupoCredor);
  end
  else
    showmessage('Antes de inserir, grave a campanha.');
  UniCampanha_Credores.REFRESH;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton1Click(Sender: TObject);
begin
  if ALTERAINSERE = 'INSERE' then
  begin
//    unigetid.close;
//    unigetid.sql.text := 'SELECT SEQ_CAMPANHA_CRM.nextval as Sequences FROM DUAL';
//    unigetid.open;

    FRMGRUPOGERAL.uniQGrupoGeral.edit;
    DBAdvLUEdit1.Text := IntToStr(GetID('codigo','campanha_crm'));
    FRMGRUPOGERAL.uniQGrupoGeral.post;

    try
      frmDataModule.UniConnection1.Commit;
    except
    end;

    try
      UniQEstados.Edit;
      UniQEstadosCODIGO.AsInteger := GetID('codigo','campanha_estado');
      UniQEstados.Post;
    except
    end;

    try
      frmDataModule.UniConnection1.Commit;
    except
    end;

    try
      UniQOperador.Edit;
      UniQOperadorCODIGO.AsInteger := GetID('codigo','campanha_grupo_operador');
      UniQOperador.Post;
    except
    end;

    try
      frmDataModule.UniConnection1.Commit;
    except
    end;

//    unigetid.close;

    ALTERAINSERE := '';
  end
  else
  begin

{    TRY FRMGRUPOGERAL.uniQGrupoGeral.EDIT; EXCEPT END;
    TRY FRMGRUPOGERAL.uniQGrupoGeral.post; EXCEPT END;
    TRY FRMGRUPOGERAL.uniQGrupoGeral.close; EXCEPT END;

    try frmDataModule.UniConnection1.Commit; except end;

}
    FRMGRUPOGERAL.uniQGrupoGeral.EDIT;
    FRMGRUPOGERAL.uniQGrupoGeral.Post;
    FRMGRUPOGERAL.uniQGrupoGeral.close;

    try
      //UniQEstados.Edit;
      //UniQEstados.Post;
    except
    end;

    try
    //UniQOperador.Edit;
    //UniQOperador.Post;
    except
    end;

    frmDataModule.UniConnection1.Commit;
  END;

  Close;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton2Click(Sender: TObject);
begin
  FRMGRUPOGERAL.uniQGrupoGeral.Cancel;
  UniCampanha_Credores.Cancel;
  Close;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try UniQOperadorGrupo.Delete; except end;
UniQOperadorGrupo.Refresh;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton4Click(Sender: TObject);
begin
    SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
    SaveDialog1.Title := 'Exportar Dados';
    SaveDialog1.DefaultExt:= 'xls';
    if SaveDialog1.Execute then
    begin
      Application.CreateForm(TfrmAguarde, frmAguarde);
      frmAguarde.Refresh;
      frmAguarde.Show;
      frmAguarde.ProgressBar1.Visible := True;
      ExportGridToExcel(SaveDialog1.FileName, cxGrid1, True, True);
    end;

//  importexcel1.ExportarParaExcel(uniqlista, 'Lista Discador', frmAguarde.ProgressBar1);
  FreeAndNil(frmAguarde);
end;

procedure Tfrmgrupogeralcadastro.RzToolButton5Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then
  begin
    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'delete from campanha_credores where codigo_campanha = :codigocampanha';
                          uniscript.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
    uniscript.ExecSQL;

    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'select * from bancos where ativo = "S"';
    uniscript.Open;
    uniscript.First;

    UniCampanha_Credores.open;

    while not uniscript.Eof do
    begin
      UniCampanha_Credores.insert;
      UniCampanha_Credores.FieldbyName('CODIGO').Value := GetID('codigo','campanha_credores'); //unigetid.FieldByName('Sequences').Value;
      UniCampanha_Credores.FieldbyName('CODIGO_CAMPANHA').AsString := DBAdvLUEdit1.TEXT;
      UniCampanha_Credores.FieldbyName('CODIGO_CREDOR').Value := uniscript.FieldByName('CODIGO').Value;
      UniCampanha_Credores.post;
      uniscript.Next;
    end;

    uniscript.Close;
  end
  else
  showmessage('Antes de inserir, grave a campanha.');

  UniCampanha_Credores.REFRESH;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton6Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then
    frmselecionaestado.showmodal
  else
    showmessage('Antes de inserir, grave a campanha.');
end;

procedure Tfrmgrupogeralcadastro.RzToolButton7Click(Sender: TObject);
begin
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try uniQEstados.Delete; except end;
end;

procedure Tfrmgrupogeralcadastro.RzToolButton8Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then begin
    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'delete from campanha_estado where codigo_campanha = :codigocampanha';
                          uniscript.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
    uniscript.ExecSQL;

    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'select * from estado';
    uniscript.Open;
    uniscript.First;

    while not uniscript.Eof do
    begin
      frmgrupogeralcadastro.UniQEstados.open;
      frmgrupogeralcadastro.UniQEstados.insert;

//      unigetid.close;
//      unigetid.sql.text := 'SELECT SEQ_CAMPANHA_ESTADO.nextval as Sequences FROM DUAL';
//      unigetid.open;

      UniQEstados.FieldbyName('CODIGO').Value := GetID('codigo','campanha_estado'); // unigetid.FieldByName('Sequences').Value;
      UniQEstados.FieldbyName('CODIGO_CAMPANHA').AsString := DBAdvLUEdit1.TEXT;
      UniQEstados.FieldbyName('ESTADO').Value := uniscript.FieldByName('UF').Value;
      UniQEstados.post;

      uniscript.Next;
    end;

    uniscript.Close;
//    unigetid.close;
  end
  else showmessage('Antes de inserir, grave a campanha.');
end;

procedure Tfrmgrupogeralcadastro.RzToolButton9Click(Sender: TObject);
begin
  IF DBAdvLUEdit1.Text <> '' then begin
    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'delete from campanha_grupo_operador where codigo_campanha = :codigocampanha';
                          uniscript.ParamByName('codigocampanha').AsString := DBADVLUEDIT1.Text;
    uniscript.ExecSQL;

    uniscript.Close;
    uniscript.Sql.Clear;
    uniscript.Sql.Text := 'select * from operador_grupo';
    uniscript.Open;
    uniscript.First;

    UniQOperadorGrupo.open;

    while not uniscript.Eof do begin
      UniQOperadorGrupo.insert;
//      unigetid.close;
//      unigetid.sql.text := 'SELECT SEQ_CAMPANHA_GRUPO_OPERADOR.nextval as Sequences FROM DUAL';
//      unigetid.open;

      UniQOperadorGrupo.FieldbyName('CODIGO').Value := GetID('codigo','campanha_grupo_operador'); //unigetid.FieldByName('Sequences').Value;
      UniQOperadorGrupo.FieldbyName('CODIGO_CAMPANHA').AsString := DBAdvLUEdit1.TEXT;
      UniQOperadorGrupo.FieldbyName('GRUPO_OPERADOR').AsString := uniscript.FieldByName('CODIGO').AsString;
      //UniQOperadorGrupo.FieldbyName('NOME_GRUPO').AsString := uniscript.FieldByName('NOME_GRUPO').AsString;
      UniQOperadorGrupo.post;

      uniscript.Next;
    end;

    uniscript.Close;
//    unigetid.close;
  end
  else showmessage('Antes de inserir, grave a campanha.');
UniQOperadorGrupo.REFRESH;
end;

end.
