unit uCliente;

interface

uses uPessoa, System.SysUtils;

type

  { Exemplo de Heran�a - Classe Cliente herda a classe Pessoa }
  TCliente = class(TPessoa)

  Private
    Fcpf: String;
    function getCpf: string;
    procedure setCpf(Value: String);

  Public
    property cpf: string read getCpf write setCpf;

    { Exemplo de Polimorfismo - Overload (Sobrecarga) }
    function Receber(I: integer): String; Overload;
    function Receber(I: Double): String; Overload;
    function Receber(A, B: integer): String; Overload;
    function Receber(I: boolean): String; Overload;
  end;

implementation

{ TCliente }

{ Fun��es GET pegam o valor de dentro do campo privado }
function TCliente.getCpf: string;
begin
  Result := Fcpf;
end;

{ Procedimentos SET escrevem valores dentro do campo privado }
procedure TCliente.setCpf(Value: String);
begin
  Fcpf := Value;
end;

{ Exemplo de implementa��o do overload }
function TCliente.Receber(I: integer): String;
begin
  Result := 'Recebi um valor Inteiro: ' + IntToStr(I);
end;

function TCliente.Receber(I: Double): String;
begin
  Result := 'Recebi um valor DOUBLE: ' + FloatToStr(I);
end;

function TCliente.Receber(A, B: integer): String;
begin
  Result := 'Recebi uma SOMA: ' + IntToStr(A + B);
end;

function TCliente.Receber(I: boolean): String;
begin
  Result := 'Recebi um BOOLEANO: ' + BoolToStr(I);
end;

end.
