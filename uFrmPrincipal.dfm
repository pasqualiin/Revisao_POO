object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 293
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 43
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object Label2: TLabel
    Left = 8
    Top = 91
    Width = 85
    Height = 13
    Caption = 'Data Nascimento:'
  end
  object Label3: TLabel
    Left = 32
    Top = 147
    Width = 28
    Height = 13
    Caption = 'Sexo:'
  end
  object Label4: TLabel
    Left = 35
    Top = 195
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object BtnAcao: TButton
    Left = 35
    Top = 238
    Width = 137
    Height = 47
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = BtnAcaoClick
  end
  object EdtNome: TEdit
    Left = 112
    Top = 40
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object EdtDataNasc: TEdit
    Left = 112
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object EdtSexo: TEdit
    Left = 112
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object EdtCpf: TEdit
    Left = 112
    Top = 192
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object Overload: TButton
    Left = 224
    Top = 238
    Width = 113
    Height = 47
    Caption = 'Overload'
    TabOrder = 5
    OnClick = OverloadClick
  end
end
