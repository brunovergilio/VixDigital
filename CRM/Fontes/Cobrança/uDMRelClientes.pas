unit uDMRelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, pFIBDataSet, FIBDataSet, DBClient;

type
  TDMRelClientes = class(TDataModule)
    dsQBancos: TDataSource;
    dsQClass_CLientes: TDataSource;
    dsQClass_Operacoes: TDataSource;
    dsQRelatorioAnalitico: TDataSource;
    dsQCidades: TDataSource;
    ClientRelatorio: TClientDataSet;
    ClientRelatorioCLIENTE: TIntegerField;
    ClientRelatorioVALOR: TFloatField;
    ClientRelatorioCOD_CLASSIFICACAO: TIntegerField;
    ClientRelatorioBANCO: TIntegerField;
    ClientRelatorioCarteira: TClientDataSet;
    ClientRelatorioCarteiraCODIGO: TIntegerField;
    ClientRelatorioCarteiraNOME: TStringField;
    ClientRelatorioCarteiraCGC_CPF: TStringField;
    ClientRelatorioCarteiraNROPERACAO: TStringField;
    ClientRelatorioCarteiraDATAVENCTO: TDateField;
    ClientRelatorioCarteiraVALORNOMINAL: TFloatField;
    ClientRelatorioCarteiraVALORREALIZADO: TFloatField;
    ClientRelatorioCarteiraVALORDIVIDA: TFloatField;
    ClientRelatorioCarteiraSTATUS: TStringField;
    ClientRelatorioCarteiraSTATUS_DESC: TStringField;
    ClientRelatorioCarteiraGARANTIAS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QRemessaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelClientes: TDMRelClientes;

implementation

{$R *.DFM}

procedure TDMRelClientes.DataModuleCreate(Sender: TObject);
begin
// Address $1888388
end;

procedure TDMRelClientes.QRemessaCalcFields(DataSet: TDataSet);
begin
// Address $18883A4
end;

end.
