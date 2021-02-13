unit untUtil;

interface

Uses
  System.SysUtils, IniFiles, Vcl.Forms;

type
  TAlinha = (alDIREITA, alCENTRALIZA, alESQUERDA);
  function LerIni(Sessao, Chave : String) : String;
  function TextoAlinha(Alinha: TAlinha; tamTexto : integer;
                       Texto : String; TextoPrePos : string = '' ; Caracter : Char = ' '): String;
  function extenso(valor: real): string;

CONST
  Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
  'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
  'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
  Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
  'Cinquenta', 'Sessenta', 'Setenta',
  'Oitenta', 'Noventa');
  Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
  'Quatrocentos', 'Quinhentos', 'Seiscentos',
  'Setecentos', 'Oitocentos', 'Novecentos');
  MoedaSigular = 'Real';
  MoedaPlural = 'Reais';
  CentSingular = 'Centavo';
  CentPlural = 'Centavos';
  Zero = 'Zero';


implementation

function TextoAlinha(Alinha: TAlinha; tamTexto : integer; Texto : String; TextoPrePos : string; Caracter : Char): String;
var
  Tamanho : integer;
  function Espaco(Qtde: integer; Caracter : Char = ' ') : String;
  var
    iConta : integer;
  begin
    Result := '';
    For iConta := 1 To Qtde Do
      Result := Result + Caracter;
  end;
begin
  try
    Tamanho := TamTexto;
    case Alinha of
      alDIREITA :
      begin
        if (Length(TextoPrePos) + Length(Texto)) >= tamTexto then
          texto := copy(Texto,1,TamTexto);
        TamTexto := (TamTexto - Length(TextoPrePos) - Length(Texto));
        Result   := TextoPrePos + Espaco(TamTexto, Caracter) + Texto;
      end;
      alCENTRALIZA :
      begin
        if Length(Texto) >= TamTexto then
          texto := copy(Texto,1,TamTexto);
        TamTexto := Trunc((TamTexto - Length(Texto)) /2);
        Result   := Espaco(TamTexto, Caracter) + Texto + Espaco(TamTexto, Caracter);
     end;
     alESQUERDA :
     begin
       if Length(Texto) >= TamTexto then
         texto := copy(Texto,1,TamTexto);
       TamTexto := (TamTexto - Length(Texto) - Length(TextoPrePos));
       Result   := Texto + Espaco(TamTexto, Caracter) + TextoPrePos;
     end;
   end;
   if (Tamanho - Length(Result)) >= 0 then
     Result := Result + Espaco(Tamanho - Length(Result));
   except
     case Alinha of
       alDIREITA    : raise Exception.Create('Não foi possivel alinhar a direita o texto para impressão.');
       alCENTRALIZA : raise Exception.Create('Não foi possivel centralizar o texto para impressão.');
       alESQUERDA   : raise Exception.Create('Não foi possivel alinhar a esquerda o texto para impressão.');
     end;
   end
end;

function LerIni(Sessao, Chave : String) : String;
var
  config : TIniFile;
begin
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'PointPecas1.ini');
  Result := config.readstring(Sessao,Chave,'');
  config.Free;
end;

function extenso(valor: real): string;
var Texto,Milhar,Centena,Centavos,msg: string;
////////////////////////////////fucao auxiliar extenso////////////////////////////////
  function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
    begin
      if Expressao then
      Result:=CasoVerdadeiro
      else
      Result:=CasoFalso;
  end;
////////////////////////////funcao auxiliar extenso/////////////////////////
  function MiniExtenso (trio: string): string;
    var
      Unidade, Dezena, Centena: string;
    begin
      Unidade:='';
      Dezena:='';
      Centena:='';
      if (trio[2]='1') and (trio[3]<>'0') then
        begin
          Unidade:=Dez[strtoint(trio[3])];
          Dezena:='';
        end
      else
        begin
          if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
          if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
      end;
      if (trio[1]='1') and (Unidade='') and (Dezena='') then
        Centena:='Cem'
      else
        if trio[1]<>'0' then
          Centena:=Centenas[strtoint(trio[1])]
        else Centena:='';
      Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
      + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
  end;

begin
  if (valor>999999.99) or (valor<0) then
    begin
      msg:='O valor está fora do intervalo permitido.';
      msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
      msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
      Result:='';
      exit;
    end;
  if valor=0 then
    begin
      Result:='';
      Exit;
  end;
  Texto:=formatfloat('000000.00',valor);
  Milhar:=MiniExtenso(Copy(Texto,1,3));
  Centena:=MiniExtenso(Copy(Texto,4,3));
  Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
  Result:=Milhar;
  if Milhar<>'' then
    begin
      if copy(texto,4,3)='000' then
        Result:=Result+' Mil Reais'
      else
        Result:=Result+' Mil, ';
  end;
  if (((copy(texto,4,2)='00') and (Milhar<>'') and (copy(texto,6,1)<>'0')))or (centavos='') and (milhar<>'')  then
    Result:=Result+' e ';
  if (Milhar+Centena <>'') then
    Result:=Result+Centena;
  if (Milhar='') and (copy(texto,4,3)='001') then
    Result:=Result+' Real'
  else
  if (copy(texto,4,3)<>'000') then
    Result:=Result+' Reais';
  if Centavos='' then
    begin
      Result:=Result+'.';
      Exit;
  end
  else
    begin
      if Milhar+Centena='' then
        Result:=Centavos
      else
        Result:=Result+', e '+Centavos;
  end;
  if (copy(texto,8,2)='01') and (Centavos<>'') then
      Result:=Result+' Centavo.'
  else
      Result:=Result+' Centavos.';
end;




end.
