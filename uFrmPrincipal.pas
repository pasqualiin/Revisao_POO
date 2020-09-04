unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPessoa, uCliente;

type
  TForm1 = class(TForm)
    BtnAcao: TButton;
    EdtDataNasc: TEdit;
    EdtSexo: TEdit;
    EdtNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtCpf: TEdit;
    Label4: TLabel;
    Overload: TButton;
    procedure BtnAcaoClick(Sender: TObject);
    procedure OverloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  { Declara��o da vari�vel que acessa a Classe Cliente }

  Cliente: TCliente;
  Pessoa: TPessoa;

implementation

{$R *.dfm}

procedure TForm1.BtnAcaoClick(Sender: TObject);
begin
  try
    { Instancia a classe Cliente - Cria em Mem�ria }
    Cliente := TCliente.Create;
    Pessoa := TPessoa.Create;

    ShowMessage(Pessoa.nome + #13 + Pessoa.dataNasc + #13 + Pessoa.sexo);

    { C�digo abaixo captura as informa��es digitadas pelo usu�rio
      e coloca dentro dos atributos da classe CLIENTE. }

    Cliente.nome := EdtNome.Text;
    Cliente.dataNasc := EdtDataNasc.Text;
    Cliente.sexo := EdtSexo.Text;
    Cliente.cpf := EdtCpf.Text;

    { Chamando m�todo abstrato }
    ShowMessage(Cliente.MetodoAbstrato);

    { Chamando M�todo com Inherited }
    ShowMessage(Cliente.RetornaNome);

    ShowMessage(Cliente.nome + #13 + Cliente.dataNasc + #13 +
      IntToStr(Cliente.CalculaIdade) + #13 + Cliente.sexo + #13 + Cliente.cpf);
  finally

    { Libera o espa�o em mem�ria que foi utilizado }
    Cliente.Free;
  end;

end;

procedure TForm1.OverloadClick(Sender: TObject);
begin
  try
    Cliente := TCliente.Create;

    { Apresenta na tela o exemplo de Overload }

    ShowMessage(Cliente.Receber(10.5) + #13 + Cliente.Receber(5) + #13 +
      Cliente.Receber(5, 1) + #13 + Cliente.Receber(0));
  finally

    { Libera o espa�o em mem�ria que foi utilizado }
    Cliente.Free;
  end;
end;

end.
