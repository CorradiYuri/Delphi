object khj: Tkhj
  Left = 0
  Top = 0
  Caption = 'Tela de Login'
  ClientHeight = 485
  ClientWidth = 795
  Color = clCornflowerblue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object CADASTRO_DE_USUARIO: TLabel
    Left = 248
    Top = 27
    Width = 225
    Height = 20
    Alignment = taCenter
    Caption = 'CADASTRO_DE_USUARIO'
  end
  object Nome: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Nome'
    OnChange = NomeChange
  end
  object Email: TEdit
    Left = 24
    Top = 111
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Email'
  end
  object DataNascimento: TCalendarPicker
    Left = 24
    Top = 140
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'select a date'
  end
  object Cpf: TEdit
    Left = 24
    Top = 82
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 3
    TextHint = 'CPF'
  end
  object Senha: TEdit
    Left = 144
    Top = 240
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 4
    TextHint = 'Senha'
  end
  object RepitaSenha: TEdit
    Left = 281
    Top = 240
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 5
    TextHint = 'Repita a Senha'
  end
  object Inserir: TButton
    Left = 408
    Top = 239
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 6
  end
  object Usuario: TMemo
    Left = 248
    Top = 82
    Width = 249
    Height = 129
    Lines.Strings = (
      'Usuario')
    TabOrder = 7
  end
  object Administrador: TCheckBox
    Left = 264
    Top = 140
    Width = 97
    Height = 17
    Caption = 'Administrador'
    TabOrder = 8
  end
  object Normal: TCheckBox
    Left = 264
    Top = 163
    Width = 97
    Height = 17
    Caption = 'Normal'
    TabOrder = 9
  end
  object Tabela: TStringGrid
    Left = 24
    Top = 312
    Width = 713
    Height = 153
    GridLineWidth = 4
    TabOrder = 10
    OnClick = TabelaClick
  end
  object Telefone: TMaskEdit
    Left = 24
    Top = 53
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 11
    Text = ''
    TextHint = 'Telefone'
  end
end
