object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 477
  ClientWidth = 1110
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnPaint = FormPaint
  TextHeight = 15
  object LabelGameOver: TLabel
    Left = 136
    Top = 88
    Width = 250
    Height = 70
    Alignment = taCenter
    Caption = 'Game Over'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object BtnReintentar: TLabel
    Left = 145
    Top = 176
    Width = 89
    Height = 23
    Alignment = taCenter
    Caption = 'REINTENTAR'
    Color = clHighlight
    ParentColor = False
    Transparent = False
    Visible = False
  end
  object BtnRendirse: TLabel
    Left = 256
    Top = 176
    Width = 89
    Height = 23
    Alignment = taCenter
    Caption = 'RENDIRSE'
    Color = clHighlight
    ParentColor = False
    Transparent = False
    Visible = False
    OnClick = BtnRendirseClick
  end
  object TimerBala: TTimer
    Interval = 10
    OnTimer = TimerBalaTimer
    Left = 464
    Top = 184
  end
  object TimerNave: TTimer
    Interval = 10
    OnTimer = TimerNaveTimer
    Left = 528
    Top = 200
  end
  object TimerAsteroid: TTimer
    Interval = 10
    OnTimer = TimerAsteroidTimer
    Left = 640
    Top = 232
  end
end
