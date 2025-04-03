object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 747
  Color = clPowderblue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Nome: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Nome'
  end
  object Telefone: TMaskEdit
    Left = 24
    Top = 53
    Width = 119
    Height = 23
    Alignment = taCenter
    EditMask = '!\(999\)000-0000;1;_'
    MaxLength = 13
    TabOrder = 1
    Text = '(   )   -    '
    TextHint = 'Telefone'
  end
  object CPF: TEdit
    Left = 24
    Top = 82
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 2
    TextHint = 'CPF'
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
    TabOrder = 3
    TextHint = 'select a date'
  end
  object Senha: TEdit
    Left = 43
    Top = 232
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 4
    TextHint = 'Senha'
  end
  object RepitaaSenha: TEdit
    Left = 170
    Top = 232
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 5
    TextHint = 'Repita a Senha'
  end
  object Inserir: TButton
    Left = 310
    Top = 231
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 6
    OnClick = InserirClick
  end
  object Usuario: TMemo
    Left = 200
    Top = 24
    Width = 185
    Height = 89
    Lines.Strings = (
      'Usuario')
    TabOrder = 7
  end
  object Email: TEdit
    Left = 28
    Top = 111
    Width = 121
    Height = 23
    Alignment = taCenter
    TabOrder = 8
    TextHint = 'Email'
  end
  object Administrador: TRadioButton
    Left = 224
    Top = 56
    Width = 113
    Height = 17
    Caption = 'Administrador'
    TabOrder = 9
  end
  object Normal: TRadioButton
    Left = 224
    Top = 79
    Width = 113
    Height = 17
    Caption = 'Normal'
    TabOrder = 10
  end
  object Tabela: TStringGrid
    Left = 43
    Top = 280
    Width = 470
    Height = 177
    FixedCols = 0
    RowCount = 100
    TabOrder = 11
  end
end
