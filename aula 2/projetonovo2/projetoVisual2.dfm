object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 761
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = 13
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 13
  object AcessoAoSistema: TLabel
    Left = 318
    Top = 150
    Width = 88
    Height = 13
    Caption = 'AcessoAoSistema'
  end
  object DadosCadastro: TLabel
    Left = 328
    Top = 8
    Width = 79
    Height = 13
    Caption = 'DadosCadastro'
  end
  object strngrd1: TStringGrid
    Left = 528
    Top = 46
    Width = 227
    Height = 393
    TabOrder = 0
  end
  object Usuario: TEdit
    Left = 326
    Top = 169
    Width = 65
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Usuario'
  end
  object Senha: TEdit
    Left = 326
    Top = 199
    Width = 65
    Height = 21
    Alignment = taCenter
    TabOrder = 2
    Text = 'Senha'
  end
  object Logar: TButton
    Left = 310
    Top = 226
    Width = 51
    Height = 18
    Caption = 'Logar'
    TabOrder = 3
  end
  object Sair: TButton
    Left = 367
    Top = 226
    Width = 49
    Height = 18
    Caption = 'Sair'
    TabOrder = 4
  end
  object Telefone: TMaskEdit
    Left = 144
    Top = 23
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 5
    Text = 'Telefone'
  end
  object Nome: TEdit
    Left = 8
    Top = 34
    Width = 81
    Height = 21
    Alignment = taCenter
    TabOrder = 6
    Text = 'Nome'
  end
  object Email: TEdit
    Left = 8
    Top = 85
    Width = 81
    Height = 21
    Alignment = taCenter
    TabOrder = 7
    Text = 'Email'
  end
  object Salvar: TButton
    Left = 359
    Top = 127
    Width = 57
    Height = 17
    Caption = 'Salvar'
    TabOrder = 8
  end
  object Enviar: TButton
    Left = 296
    Top = 127
    Width = 57
    Height = 17
    Caption = 'Enviar'
    TabOrder = 9
  end
  object _: TComboBox
    Left = 158
    Top = 288
    Width = 145
    Height = 21
    TabOrder = 10
    Text = '_'
  end
  object clndrpckr1: TCalendarPicker
    Left = 8
    Top = 195
    Width = 96
    Height = 25
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
    TabOrder = 11
    TextHint = 'select a date'
  end
end
