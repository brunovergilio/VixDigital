unit uFuncoes;


interface
Uses
  SysUtils, Dialogs, Math, IniFiles, Vcl.Forms;

function CompletarZerosEsquerda(pValor, pQtde:Integer) : String;
procedure Mensagem(pMsg : String);
function ArredondaPorDecimal(valor:Real;casasDecimais:integer):Real;
function LerIni(Sessao, Chave : String) : String;
procedure GravarIni(Sessao, Chave, Valor : String);



implementation

function LerIni(Sessao, Chave : String) : String;
var
  config : TIniFile;
begin
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'PointPecas.ini');
  Result := config.readstring(Sessao,Chave,'');
  config.Free;
end;

procedure GravarIni(Sessao, Chave, Valor : String);
var
  config : TIniFile;
begin
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'MassasTradicao.ini');
  config.WriteString(Sessao, Chave, Valor);
  config.Free;
end;


function CompletarZerosEsquerda(pValor, pQtde:Integer) : String;
var
  vSaida: String;
  vTam  : Integer;
  vInd  : Integer;
begin
  vSaida := IntToStr(pValor);
  vTam   := Length(vSaida);

  if (vTam >= pQtde) then
    Result := vSaida
  Else
  begin

    repeat
      vSaida := '0' + vSaida;
      vTam   := vTam + 1;
    until
      (vTam >= pQtde);

    Result := vSaida;
  end;
end;

procedure Mensagem(pMsg : String);
begin
  ShowMessage(pMsg);
end;

function ArredondaPorDecimal(valor:Real;casasDecimais:integer):Real;
var
  Fator, Fracao: Extended;
begin
  {Eleva o Valor 10 ao expoente mandado na variavel casasDecimais}
  Fator:= IntPower(10, casasDecimais);
    { Multiplica o valor pelo fator e faz a conversao de string e depois para float novamente para evitar arredondamentos. }
    valor:= StrToFloat(FloatToStr(valor* Fator));
  {Pega a Parte Inteira do Numero}
    Result := Int(valor);
  {Pega a Parte Fracionaria}
    Fracao:= Frac(valor);
  {Faz a regra de arredondamento}
  if Fracao >= 0.5 then
      Result := Result + 1
  else if Fracao <= -0.5 then
      Result := Result - 1;
  {O valor Final inteiro divide por 100 para transformar em decimal novamente.}
    Result := Result / Fator;
end;

end.
