object RecThreadStartForm: TRecThreadStartForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1079#1072#1087#1080#1089#1080' '#1089#1080#1075#1085#1072#1083#1072
  ClientHeight = 409
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 19
    Width = 155
    Height = 13
    Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1101#1082#1089#1087#1086#1079#1080#1094#1080#1080', '#1084#1089'.'
  end
  object Label2: TLabel
    Left = 48
    Top = 59
    Width = 45
    Height = 13
    Caption = 'test_num'
  end
  object Edit1: TEdit
    Left = 240
    Top = 16
    Width = 89
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    Text = '0'
  end
  object Запуск: TButton
    Left = 254
    Top = 360
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1091#1089#1082
    ModalResult = 1
    TabOrder = 1
  end
  object Отмена: TButton
    Left = 352
    Top = 360
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 240
    Top = 56
    Width = 89
    Height = 21
    Alignment = taRightJustify
    TabOrder = 3
    Text = '10'
  end
end
