object GradForm: TGradForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1043#1088#1072#1076#1091#1080#1088#1086#1074#1082#1072
  ClientHeight = 299
  ClientWidth = 251
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
  object Button2: TButton
    Left = 139
    Top = 265
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 0
  end
  object Button3: TButton
    Left = 35
    Top = 265
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 1
  end
  object ListView1: TListView
    Left = 8
    Top = 8
    Width = 235
    Height = 200
    BiDiMode = bdRightToLeft
    Checkboxes = True
    Columns = <
      item
        Caption = #8470
      end
      item
        Caption = 'a'
      end
      item
        Caption = 'b'
      end
      item
        Caption = #1059#1075#1086#1083
      end>
    FlatScrollBars = True
    GridLines = True
    RowSelect = True
    ParentBiDiMode = False
    TabOrder = 2
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 35
    Top = 217
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 139
    Top = 217
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
end
