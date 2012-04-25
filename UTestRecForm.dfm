object TestRecForm: TTestRecForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Test'
  ClientHeight = 330
  ClientWidth = 273
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
  object Label20: TLabel
    Left = 35
    Top = 18
    Width = 101
    Height = 13
    Caption = #1064#1072#1075' '#1076#1080#1089#1082#1088#1077#1090#1080#1079#1072#1094#1080#1080
  end
  object Label1: TLabel
    Left = 35
    Top = 66
    Width = 74
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1073#1083#1086#1082#1086#1074
  end
  object Label2: TLabel
    Left = 35
    Top = 160
    Width = 201
    Height = 27
    Alignment = taCenter
    AutoSize = False
  end
  object Button1: TButton
    Left = 96
    Top = 297
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 157
    Top = 15
    Width = 79
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = '5 '#1085#1089
    Items.Strings = (
      '5 '#1085#1089
      '10 '#1085#1089
      '20 '#1085#1089
      '50 '#1085#1089)
  end
  object Edit1: TEdit
    Left = 157
    Top = 63
    Width = 79
    Height = 21
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 2
    Text = '10'
  end
  object Panel1: TPanel
    Left = 35
    Top = 193
    Width = 201
    Height = 43
    BevelInner = bvLowered
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 96
    Top = 254
    Width = 75
    Height = 25
    Caption = #1040#1074#1090#1086
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 36
    Top = 113
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090'!'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 124
    Top = 113
    Width = 111
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100' '#1076#1072#1085#1085#1099#1077
    Enabled = False
    TabOrder = 6
    OnClick = Button4Click
  end
end
