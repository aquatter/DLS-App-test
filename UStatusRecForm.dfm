object StatusRecForm: TStatusRecForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Recording Status'
  ClientHeight = 103
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 24
    Width = 85
    Height = 13
    Caption = #1063#1090#1086'-'#1090#1086' '#1085#1072#1087#1080#1089#1072#1090#1100
  end
  object Label2: TLabel
    Left = 50
    Top = 43
    Width = 99
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1083#1086#1082#1086#1074
  end
  object ProgressBar1: TProgressBar
    Left = 50
    Top = 62
    Width = 231
    Height = 16
    Smooth = True
    Step = 1
    TabOrder = 0
    Visible = False
  end
end
