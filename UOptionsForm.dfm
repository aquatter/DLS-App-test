object OptionsForm: TOptionsForm
  Left = 486
  Top = 140
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077
  ClientHeight = 545
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 397
    Height = 481
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      object Label19: TLabel
        Left = 27
        Top = 89
        Width = 138
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1091#1075#1086#1083' '#1088#1072#1089#1089#1077#1103#1085#1080#1103
      end
      object Label20: TLabel
        Left = 27
        Top = 26
        Width = 101
        Height = 13
        Caption = #1064#1072#1075' '#1076#1080#1089#1082#1088#1077#1090#1080#1079#1072#1094#1080#1080
      end
      object Label31: TLabel
        Left = 271
        Top = 536
        Width = 137
        Height = 13
        Caption = #1055#1086#1087#1088#1072#1074#1082#1072' '#1085#1072#1095#1072#1083#1100#1085#1086#1075#1086' '#1091#1075#1083#1072
        Visible = False
      end
      object Label32: TLabel
        Left = 202
        Top = 508
        Width = 152
        Height = 13
        Caption = #1062#1077#1085#1072' '#1091#1075#1083#1072' '#1074' '#1096#1072#1075#1072#1093' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
        Visible = False
      end
      object Label35: TLabel
        Left = 291
        Top = 555
        Width = 117
        Height = 13
        Caption = #1054#1090#1073#1088#1072#1089#1099#1074#1072#1090#1100' '#1074#1099#1073#1088#1086#1089#1099
        Visible = False
      end
      object Label46: TLabel
        Left = 27
        Top = 453
        Width = 64
        Height = 13
        Caption = #1059#1075#1083#1086#1074#1086#1081' '#1096#1072#1075
        Visible = False
      end
      object Label47: TLabel
        Left = 27
        Top = 486
        Width = 135
        Height = 13
        Caption = #1063#1080#1089#1083#1086' '#1091#1075#1083#1086#1074#1099#1093' '#1087#1086#1083#1086#1078#1077#1085#1080#1081
        Visible = False
      end
      object Label48: TLabel
        Left = 27
        Top = 121
        Width = 118
        Height = 13
        Caption = #1063#1080#1089#1083#1086' '#1089#1077#1088#1080#1081' '#1080#1079#1084#1077#1088#1077#1085#1080#1081
      end
      object Label49: TLabel
        Left = 28
        Top = 188
        Width = 130
        Height = 13
        Caption = #1063#1080#1089#1083#1086'  '#1080#1079#1084#1077#1088#1077#1085#1080#1081' '#1074' '#1089#1077#1088#1080#1080
      end
      object Label50: TLabel
        Left = 27
        Top = 153
        Width = 170
        Height = 13
        Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1089#1077#1088#1080#1081', '#1084#1089'.'
      end
      object Label51: TLabel
        Left = 27
        Top = 217
        Width = 190
        Height = 13
        Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1086#1076#1085#1086#1075#1086' '#1080#1079#1084#1077#1088#1077#1085#1080#1103', '#1084#1089'.'
      end
      object Label55: TLabel
        Left = 27
        Top = 308
        Width = 192
        Height = 13
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093':'
      end
      object Label56: TLabel
        Left = 28
        Top = 330
        Width = 3
        Height = 13
      end
      object Label57: TLabel
        Left = 27
        Top = 358
        Width = 54
        Height = 13
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
      end
      object Label52: TLabel
        Left = 27
        Top = 390
        Width = 117
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1088#1072#1079#1094#1072
      end
      object GroupBox1: TGroupBox
        Left = 53
        Top = 495
        Width = 186
        Height = 89
        Caption = ' '#1060#1086#1090#1086#1087#1088#1080#1077#1084#1085#1080#1082#1080' '
        TabOrder = 0
        Visible = False
        object CheckBox2: TCheckBox
          Left = 16
          Top = 47
          Width = 49
          Height = 17
          Caption = #1060#1069#1059
          TabOrder = 0
          Visible = False
          OnClick = CheckBox2Click
        end
        object Edit7: TEdit
          Left = 95
          Top = 40
          Width = 58
          Height = 21
          Alignment = taRightJustify
          TabOrder = 1
          Text = '0'
          Visible = False
          OnKeyPress = Edit7KeyPress
        end
        object CSpinButton1: TCSpinButton
          Left = 159
          Top = 47
          Width = 15
          Height = 21
          DownGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000008080000080800000808000000000000080800000808000008080000080
            8000008080000080800000808000000000000000000000000000008080000080
            8000008080000080800000808000000000000000000000000000000000000000
            0000008080000080800000808000000000000000000000000000000000000000
            0000000000000000000000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          TabOrder = 2
          UpGlyph.Data = {
            0E010000424D0E01000000000000360000002800000009000000060000000100
            200000000000D800000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000000000000080
            8000008080000080800000000000000000000000000000000000000000000080
            8000008080000080800000808000008080000000000000000000000000000080
            8000008080000080800000808000008080000080800000808000000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000080800000808000}
          Visible = False
          OnDownClick = CSpinButton1DownClick
          OnUpClick = CSpinButton1UpClick
        end
      end
      object CSpinButton2: TCSpinButton
        Left = 381
        Top = 574
        Width = 15
        Height = 21
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 1
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        Visible = False
        OnDownClick = CSpinButton2DownClick
        OnUpClick = CSpinButton2UpClick
      end
      object Edit11: TEdit
        Left = 350
        Top = 509
        Width = 58
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        Text = '0'
        Visible = False
      end
      object CSpinButton5: TCSpinButton
        Left = 402
        Top = 574
        Width = 15
        Height = 21
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 3
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        Visible = False
        OnDownClick = CSpinButton5DownClick
        OnUpClick = CSpinButton5UpClick
      end
      object ComboBox1: TComboBox
        Left = 237
        Top = 23
        Width = 79
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 4
        Text = '5 '#1085#1089
        Items.Strings = (
          '5 '#1085#1089
          '10 '#1085#1089
          '20 '#1085#1089
          '50 '#1085#1089)
      end
      object Button3: TButton
        Left = 28
        Top = 550
        Width = 153
        Height = 25
        Caption = #1055#1077#1088#1077#1079#1072#1087#1091#1089#1082' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
        TabOrder = 5
        Visible = False
        OnClick = Button3Click
      end
      object Edit18: TEdit
        Left = 245
        Top = 468
        Width = 58
        Height = 21
        Alignment = taRightJustify
        TabOrder = 6
        Text = 'Edit18'
        Visible = False
      end
      object Edit19: TEdit
        Left = 360
        Top = 505
        Width = 58
        Height = 21
        Alignment = taRightJustify
        TabOrder = 7
        Text = 'Edit18'
        Visible = False
      end
      object Button5: TButton
        Left = 205
        Top = 550
        Width = 80
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 8
        Visible = False
        OnClick = Button5Click
      end
      object CSpinButton3: TCSpinButton
        Left = 360
        Top = 574
        Width = 15
        Height = 21
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 9
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        Visible = False
        OnDownClick = CSpinButton3DownClick
        OnUpClick = CSpinButton3UpClick
      end
      object CheckBox1: TCheckBox
        Left = 76
        Top = 479
        Width = 49
        Height = 17
        Caption = #1051#1060#1044
        TabOrder = 10
        Visible = False
      end
      object CheckBox5: TCheckBox
        Left = 27
        Top = 57
        Width = 155
        Height = 11
        Caption = #1052#1085#1086#1075#1086#1091#1075#1083#1086#1074#1086#1081' '#1088#1077#1078#1080#1084
        TabOrder = 11
      end
      object Edit29: TEdit
        Left = 237
        Top = 483
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 12
        Text = '0'
        Visible = False
      end
      object Edit30: TEdit
        Left = 237
        Top = 118
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 13
        Text = '0'
      end
      object Edit31: TEdit
        Left = 237
        Top = 182
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 14
        Text = '0'
      end
      object Edit32: TEdit
        Left = 237
        Top = 150
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 15
        Text = '0'
      end
      object Edit33: TEdit
        Left = 237
        Top = 214
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 16
        Text = '0'
      end
      object CheckBox6: TCheckBox
        Left = 27
        Top = 276
        Width = 206
        Height = 17
        Caption = #1059#1089#1088#1077#1076#1085#1103#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1074' '#1089#1077#1088#1080#1080
        TabOrder = 17
      end
      object CheckBox7: TCheckBox
        Left = 27
        Top = 246
        Width = 258
        Height = 17
        Caption = #1056#1072#1089#1089#1095#1080#1090#1099#1074#1072#1090#1100' '#1040#1050#1060' '#1087#1086#1089#1083#1077' '#1082#1072#1078#1086#1075#1086' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        TabOrder = 18
      end
      object Panel1: TPanel
        Left = 246
        Top = 306
        Width = 75
        Height = 25
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 19
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 75
          Height = 23
          ButtonWidth = 71
          Caption = 'none'
          Images = MainForm.ImageList2
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = #1042#1099#1073#1088#1072#1090#1100
            ImageIndex = 3
            OnClick = ToolButton1Click
          end
        end
      end
      object Edit36: TEdit
        Left = 237
        Top = 355
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 20
      end
      object ComboBox3: TComboBox
        Left = 237
        Top = 86
        Width = 79
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 21
        Text = '0 '#1075#1088#1072#1076'.'
        Items.Strings = (
          '0 '#1075#1088#1072#1076'.'
          '15 '#1075#1088#1072#1076'.'
          '30 '#1075#1088#1072#1076'.'
          '45 '#1075#1088#1072#1076'.'
          '60 '#1075#1088#1072#1076'.'
          '75 '#1075#1088#1072#1076'.'
          '90 '#1075#1088#1072#1076'.'
          '105 '#1075#1088#1072#1076'.'
          '120 '#1075#1088#1072#1076'.'
          '135 '#1075#1088#1072#1076'.'
          '150 '#1075#1088#1072#1076'.'
          '165 '#1075#1088#1072#1076'.'
          '180 '#1075#1088#1072#1076'.')
      end
      object Edit9: TEdit
        Left = 360
        Top = 468
        Width = 49
        Height = 21
        TabOrder = 22
        Text = 'Edit9'
        Visible = False
      end
      object Edit34: TEdit
        Left = 237
        Top = 387
        Width = 79
        Height = 21
        Alignment = taRightJustify
        TabOrder = 23
      end
      object CheckBox8: TCheckBox
        Left = 27
        Top = 418
        Width = 78
        Height = 17
        Caption = #1050#1080#1085#1077#1090#1080#1082#1072
        TabOrder = 24
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 2
      object Label8: TLabel
        Left = 20
        Top = 47
        Width = 203
        Height = 13
        Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100' '#1087#1088#1077#1083#1086#1084#1083#1077#1085#1080#1103' '#1088#1072#1089#1090#1074#1086#1088#1080#1090#1077#1083#1103
      end
      object Label9: TLabel
        Left = 26
        Top = 536
        Width = 49
        Height = 13
        Caption = #1042#1103#1079#1082#1086#1089#1090#1100' '
        Visible = False
      end
      object Label23: TLabel
        Left = 25
        Top = 547
        Width = 79
        Height = 13
        Caption = #1059#1075#1086#1083' '#1088#1072#1089#1089#1077#1103#1085#1080#1103
        Visible = False
      end
      object Label24: TLabel
        Left = 25
        Top = 563
        Width = 66
        Height = 13
        Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
        Visible = False
      end
      object Label25: TLabel
        Left = 20
        Top = 122
        Width = 123
        Height = 13
        Caption = #1044#1083#1080#1085#1072' '#1074#1086#1083#1085#1099' '#1080#1089#1090#1086#1095#1085#1080#1082#1072
      end
      object Label26: TLabel
        Left = 280
        Top = 565
        Width = 12
        Height = 13
        Caption = #176'C'
        Visible = False
      end
      object Label27: TLabel
        Left = 356
        Top = 122
        Width = 16
        Height = 13
        Caption = #1085#1084'.'
      end
      object Label28: TLabel
        Left = 280
        Top = 536
        Width = 12
        Height = 13
        Caption = #1089#1055
        Visible = False
      end
      object Label29: TLabel
        Left = 280
        Top = 547
        Width = 28
        Height = 13
        Caption = #1075#1088#1072#1076'.'
        Visible = False
      end
      object Label22: TLabel
        Left = 20
        Top = 318
        Width = 173
        Height = 13
        Caption = #1058#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099': '
      end
      object Label53: TLabel
        Left = 20
        Top = 85
        Width = 147
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1089#1090#1074#1086#1088#1080#1090#1077#1083#1103
      end
      object Label18: TLabel
        Left = 20
        Top = 160
        Width = 128
        Height = 13
        Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' '#1090#1077#1088#1084#1086#1089#1090#1072#1090#1072
      end
      object Label59: TLabel
        Left = 356
        Top = 160
        Width = 6
        Height = 13
        Caption = 'K'
      end
      object Label60: TLabel
        Left = 20
        Top = 198
        Width = 130
        Height = 13
        Caption = #1055#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1088#1080#1079#1084#1099' '#1043#1083#1072#1085#1072
      end
      object Label62: TLabel
        Left = 20
        Top = 237
        Width = 92
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1076#1080#1072#1092#1088#1072#1075#1084#1099
      end
      object Label61: TLabel
        Left = 20
        Top = 276
        Width = 200
        Height = 13
        Caption = #1055#1086#1083#1086#1078#1077#1085#1080#1077' '#1076#1080#1093#1088#1086#1080#1095#1085#1086#1075#1086' '#1087#1086#1083#1103#1088#1080#1079#1072#1090#1086#1088#1072
      end
      object Edit12: TEdit
        Left = 305
        Top = 44
        Width = 44
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 0
        Text = '1.330'
      end
      object Edit13: TEdit
        Left = 217
        Top = 533
        Width = 57
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 1
        Text = '0.8872'
        Visible = False
      end
      object Edit14: TEdit
        Left = 217
        Top = 544
        Width = 57
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 2
        Text = '90'
        Visible = False
      end
      object Edit15: TEdit
        Left = 217
        Top = 560
        Width = 57
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 3
        Text = '25'
        Visible = False
      end
      object Edit16: TEdit
        Left = 305
        Top = 119
        Width = 44
        Height = 21
        Alignment = taRightJustify
        TabOrder = 4
        Text = '632.8'
      end
      object Edit35: TEdit
        Left = 244
        Top = 82
        Width = 105
        Height = 21
        Alignment = taRightJustify
        TabOrder = 5
      end
      object Edit8: TEdit
        Left = 305
        Top = 157
        Width = 44
        Height = 21
        Alignment = taRightJustify
        TabOrder = 6
        Text = '0'
        OnKeyPress = Edit8KeyPress
      end
      object ComboBox2: TComboBox
        Left = 244
        Top = 195
        Width = 105
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Text = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1077
        Items.Strings = (
          #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1077
          #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086#1077)
      end
      object Edit38: TEdit
        Left = 305
        Top = 273
        Width = 44
        Height = 21
        Alignment = taRightJustify
        TabOrder = 8
        Text = '0'
        OnKeyPress = Edit8KeyPress
      end
      object ComboBox4: TComboBox
        Left = 305
        Top = 234
        Width = 44
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 9
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object Button7: TButton
        Left = 20
        Top = 392
        Width = 188
        Height = 25
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1086#1085#1080#1086#1084#1077#1090#1088#1072
        TabOrder = 10
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1089#1095#1077#1090#1099
      ImageIndex = 1
      object Label1: TLabel
        Left = 12
        Top = 27
        Width = 30
        Height = 13
        Caption = 'dt0 = '
        Visible = False
      end
      object Label2: TLabel
        Left = 95
        Top = 27
        Width = 11
        Height = 13
        Caption = #1085#1089
        Visible = False
      end
      object Label3: TLabel
        Left = 12
        Top = 59
        Width = 20
        Height = 13
        Caption = 'P = '
        Visible = False
      end
      object Label4: TLabel
        Left = 12
        Top = 91
        Width = 22
        Height = 13
        Caption = 'm = '
        Visible = False
      end
      object Label5: TLabel
        Left = 228
        Top = 27
        Width = 113
        Height = 13
        Caption = #1056#1072#1079#1084#1077#1088' '#1053#1063' '#1092#1080#1083#1100#1090#1088#1072' = '
        Visible = False
      end
      object Label17: TLabel
        Left = 228
        Top = 64
        Width = 106
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1083#1086#1082#1086#1074': '
        Visible = False
      end
      object Label15: TLabel
        Left = 12
        Top = 123
        Width = 124
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1088#1072#1079#1073#1080#1077#1085#1080#1077
        Visible = False
      end
      object Label10: TLabel
        Left = 228
        Top = 88
        Width = 128
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1079#1072#1076#1077#1088#1078#1082#1072': '
        Visible = False
      end
      object Label11: TLabel
        Left = 228
        Top = 112
        Width = 128
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1088#1072#1079#1073#1080#1077#1085#1080#1077':'
        Visible = False
      end
      object Label12: TLabel
        Left = 228
        Top = 136
        Width = 127
        Height = 13
        Caption = #1063#1080#1089#1083#1086' '#1082#1086#1088#1088#1077#1083#1103#1090#1086#1088#1086#1074' s = '
        Visible = False
      end
      object Label13: TLabel
        Left = 228
        Top = 160
        Width = 21
        Height = 13
        Caption = '111 '
        Visible = False
      end
      object Label30: TLabel
        Left = 11
        Top = 180
        Width = 93
        Height = 13
        Caption = #1063#1080#1089#1083#1086' '#1091#1089#1088#1077#1076#1085#1077#1085#1080#1081
        Visible = False
      end
      object Splitter1: TSplitter
        Left = 0
        Top = 141
        Width = 389
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 111
        ExplicitWidth = 191
      end
      object Edit1: TEdit
        Left = 48
        Top = 24
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 0
        Text = '1000'
        Visible = False
      end
      object Edit2: TEdit
        Left = 48
        Top = 56
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 1
        Text = '20'
        Visible = False
      end
      object Edit3: TEdit
        Left = 48
        Top = 88
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 2
        Text = '2'
        Visible = False
      end
      object Button1: TButton
        Left = 326
        Top = 199
        Width = 75
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 3
        Visible = False
        OnClick = Button1Click
      end
      object Edit4: TEdit
        Left = 347
        Top = 24
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 4
        Text = '9'
        Visible = False
      end
      object Edit5: TEdit
        Left = 152
        Top = 120
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 5
        Text = '500'
        Visible = False
      end
      object Edit17: TEdit
        Left = 152
        Top = 174
        Width = 41
        Height = 21
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 6
        Text = '10'
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 389
        Height = 141
        Align = alTop
        Caption = ' '#1050#1091#1084#1091#1083#1103#1085#1090#1099' '
        TabOrder = 7
        object Label14: TLabel
          Left = 28
          Top = 31
          Width = 106
          Height = 13
          Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1073#1083#1086#1082#1072
        end
        object Label16: TLabel
          Left = 208
          Top = 31
          Width = 5
          Height = 13
          Caption = #1089
        end
        object Label7: TLabel
          Left = 28
          Top = 67
          Width = 44
          Height = 13
          Caption = #1042#1099#1073#1086#1088#1082#1072
        end
        object Label6: TLabel
          Left = 274
          Top = 68
          Width = 17
          Height = 13
          Caption = #1084#1082#1089
        end
        object Label33: TLabel
          Left = 150
          Top = 68
          Width = 5
          Height = 13
          Caption = #1089
        end
        object Label34: TLabel
          Left = 207
          Top = 68
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object Edit6: TEdit
          Left = 161
          Top = 28
          Width = 41
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 0
          Text = '1'
        end
        object Edit10: TEdit
          Left = 161
          Top = 64
          Width = 41
          Height = 21
          Alignment = taRightJustify
          TabOrder = 1
          Text = '0'
        end
        object Edit20: TEdit
          Left = 224
          Top = 64
          Width = 41
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 2
          Text = '0'
        end
        object Button6: TButton
          Left = 28
          Top = 98
          Width = 74
          Height = 25
          Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103
          TabOrder = 3
          OnClick = Button6Click
        end
        object CheckBox4: TCheckBox
          Left = 131
          Top = 102
          Width = 226
          Height = 17
          Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1074#1099#1073#1086#1088' '#1087#1088#1072#1074#1086#1081' '#1075#1088#1072#1085#1080#1094#1099
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 144
        Width = 389
        Height = 309
        Align = alClient
        Caption = ' Contin '
        TabOrder = 8
        object Label36: TLabel
          Left = 28
          Top = 97
          Width = 128
          Height = 13
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088' '#1088#1077#1075#1091#1083#1103#1088#1080#1079#1072#1094#1080#1080
        end
        object Label37: TLabel
          Left = 28
          Top = 64
          Width = 161
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082' '#1075#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
        end
        object Label38: TLabel
          Left = 28
          Top = 129
          Width = 93
          Height = 13
          Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1088#1072#1089#1095#1077#1090#1072
        end
        object Label39: TLabel
          Left = 140
          Top = 131
          Width = 5
          Height = 13
          Caption = #1089
        end
        object Label40: TLabel
          Left = 202
          Top = 131
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object Label41: TLabel
          Left = 275
          Top = 130
          Width = 12
          Height = 13
          Caption = #1085#1084
        end
        object Label42: TLabel
          Left = 27
          Top = 163
          Width = 106
          Height = 13
          Caption = #1042#1099#1074#1086#1076#1080#1090#1100' '#1085#1072' '#1075#1088#1072#1092#1080#1082
        end
        object Label43: TLabel
          Left = 140
          Top = 164
          Width = 5
          Height = 13
          Caption = #1089
        end
        object Label44: TLabel
          Left = 202
          Top = 164
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object Label45: TLabel
          Left = 275
          Top = 164
          Width = 12
          Height = 13
          Caption = #1085#1084
        end
        object Edit22: TEdit
          Left = 219
          Top = 62
          Width = 46
          Height = 21
          Alignment = taRightJustify
          TabOrder = 0
          Text = '50'
        end
        object Edit23: TEdit
          Left = 219
          Top = 94
          Width = 46
          Height = 21
          Alignment = taRightJustify
          TabOrder = 1
          Text = '0.07'
        end
        object Edit24: TEdit
          Left = 151
          Top = 126
          Width = 47
          Height = 21
          Alignment = taRightJustify
          TabOrder = 2
          Text = '0'
        end
        object Edit25: TEdit
          Left = 219
          Top = 126
          Width = 47
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
        end
        object CheckBox3: TCheckBox
          Left = 28
          Top = 197
          Width = 201
          Height = 17
          Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1074' '#1074#1080#1076#1077' '#1075#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
          TabOrder = 4
        end
        object Edit26: TEdit
          Left = 151
          Top = 160
          Width = 47
          Height = 21
          Alignment = taRightJustify
          TabOrder = 5
          Text = '0'
        end
        object Edit27: TEdit
          Left = 219
          Top = 160
          Width = 47
          Height = 21
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 6
          Text = '0'
        end
      end
    end
  end
  object Button2: TButton
    Left = 52
    Top = 496
    Width = 78
    Height = 25
    Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077
    ModalResult = 1
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 254
    Top = 496
    Width = 76
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object Button8: TButton
    Left = 154
    Top = 496
    Width = 75
    Height = 25
    Caption = #1058#1077#1089#1090
    ModalResult = 3
    TabOrder = 3
  end
end
