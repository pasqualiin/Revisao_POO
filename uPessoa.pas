unit uPessoa;

interface

uses System.SysUtils;

type

  { Declara��o da Classe Pessoa }

  TPessoa = class

  Private

    { Escopo Privado }

    Fnome: string;
    FdataNasc: string;
    Fsexo: string;

    { M�todos acessadores Get e Set para cada campo privado }

    function getNome: string;
    procedure setNome(Value: string);

    function getDataNasc: string;
    procedure setDataNasc(Value: string);

    function getSexo: string;
    procedure setSexo(Value: string);

  Public

    { Propriedades que acessam os campos Privados (Fields) }

    property nome: string read getNome write setNome;
    property dataNasc: string read getDataNasc write setDataNasc;
    property sexo: string read getSexo write setSexo;
    function CalculaIdade: Integer;
  end;

implementation

{ Implementa��o das Fun��es e Procedimentos (Get, Set, C�lculos) }

function TPessoa.getNome: string;
begin
  Result := Fnome;
end;

procedure TPessoa.setNome(Value: string);
begin
  Fnome := Value;
end;

function TPessoa.getDataNasc: string;
begin
  Result := FdataNasc;
end;

procedure TPessoa.setDataNasc(Value: string);
begin
  FdataNasc := Value;
end;

function TPessoa.getSexo: string;
begin
  Result := Fsexo;
end;

procedure TPessoa.setSexo(Value: string);
begin
  Fsexo := Value;
end;

{ C�lculo da Idade. Pega Data Nascimento e converte em Idade atual }

function TPessoa.CalculaIdade: Integer;
begin
  Result := Trunc((now - StrToDate(dataNasc)) / 365.25);
end;

end.