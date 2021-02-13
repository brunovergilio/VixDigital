



unit uFuncoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.Menus, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, RxPlacemnt, RxToolEdit, RxDBCtrl, RxLookup, AdvGlowButton,
  ShellApi, math, RzButton, JvExDBGrids, JvDBGrid, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DBX.Migrate, IniFiles, ACBrUtil, System.MaskUtils;

  procedure GravaINICrypt(INI : TIniFile; Section, Ident, AString, Pass : String );
  function GetID(pCampo, pTabela : string) : integer;
  function IfStrNull(Str: String; Def: String): String;
  function LeINICrypt(INI : TIniFile; Section, Ident, Pass : String) : String ;
  function FormataCPF(valor : string) : string;
  function FormataCNPJ(valor : string) : string;
  function FormatarTelefone(Telefone : string) : string;
  function IsAlphaNumerico(pVariavel : string) : boolean;
  function SoNumero(Valor : String): String;

implementation

uses udatamodule;

function GetID(pCampo, pTabela : string) : integer;
var
  QID : TFDQuery;
begin
  QID := TFDQuery.Create(nil);
  try
    QID.Connection := frmDataModule.UniConnection1;
    try
      with QID do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT        ');
        SQL.Add('  MAX('+pCampo+')');
        SQL.Add('FROM ' +  pTabela);
        Open;
      end;
      Result := QID.Fields[0].AsInteger + 1;
    except
      on exc : exception do
        MessageDlg('Ocorreu um erro ao buscar o código: ' + exc.Message,mtError,[mbOk],0);
    end;
  finally
    FreeAndNil(QID);
  end;

end;

function IfStrNull(Str: String; Def: String): String;
begin
  if Str = '' then
    Result   := Def
  else
    Result   := Str;
end;

function LeINICrypt(INI : TIniFile; Section, Ident, Pass : String) : String ;
var
  vStream  : TStringStream ;
  vCryptStr : String ;
begin
  vStream := TStringStream.Create('') ;
  try
    INI.ReadBinaryStream(Section, Ident, vStream) ;
    vCryptStr := vStream.DataString  ;
    Result   := StrCrypt(vCryptStr, Pass) ;
  finally
    FreeAndNil(vStream);
  end;
end;

procedure GravaINICrypt(INI : TIniFile; Section, Ident, AString, Pass : String );
var
  vStream  : TStringStream;
  vCryptStr : String ;
begin
  vCryptStr := StrCrypt(AString, Pass) ;
  vStream := TStringStream.Create(vCryptStr) ;
  try
    INI.WriteBinaryStream(Section, Ident, vStream) ;
  finally
    FreeAndNil(vStream);
  end;
end;

function FormataCPF(valor : string) : string;
var
   aux : string;
begin
  if valor = '' then
  begin
    result := '';
    exit;
  end;
  Result := '';
  result := Copy(valor,1,3) + '.' +
            Copy(valor,4,3) + '.' +
            Copy(valor,7,3) + '-' +
            Copy(valor,10,2);
end;

function FormataCNPJ(valor : string) : string;
begin
  Result := '';
  Result := Copy(valor,1,2) + '.' +
            Copy(valor,3,3) + '.' +
            Copy(valor,6,3) + '/' +
            Copy(valor,9,4) + '-' +
            Copy(valor,13,2);
end;

function FormatarTelefone(Telefone : string) : string;
function SomenteNumero(snum : String) : String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel : String;
    bZero : Boolean;
    iDigitos : Integer;
begin
   //Obs: mascara prevê tratamento apenas para números brasileiros
   //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)

   sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de números encontrados.
     case iDigitos of
       8 : Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9 : Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10 : Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11 : Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
      12 : Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
      13 : Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
     else
       Result := Telefone; //Mantém na forma que o usuário digitou
     end;
     if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;

function IsAlphaNumerico(pVariavel : string) : boolean;
var
  I : Integer;
begin
  for I := 1 to Length(pVariavel) do
    if not (pVariavel[I] in ['0'..'9']) then
    begin
      Result := True;
      Exit;
    end;
  Result := False;
end;

function SoNumero(Valor : String): String;
var
  i : Byte;
begin
   Result := '';
   for i := 1 to Length(Valor) do
      if Valor [i] in ['0'..'9'] then
         Result := Result + Valor [I];
end;

end.
