object MainForm: TMainForm
  Left = 353
  Top = 186
  Caption = #1055#1088#1080#1073#1086#1088' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1088#1072#1089#1089#1077#1103#1085#1080#1103
  ClientHeight = 837
  ClientWidth = 1211
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spbtnReadData: TSpeedButton
    Left = 233
    Top = 2
    Width = 97
    Height = 34
    Caption = #1063#1090#1077#1085#1080#1077
    OnClick = spbtnReadDataClick
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 327
    Width = 1211
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    ExplicitLeft = 64
    ExplicitTop = 375
    ExplicitWidth = 973
  end
  object Splitter4: TSplitter
    Left = 62
    Top = 690
    Width = 235
    Height = 39
    Align = alNone
    Color = clBlack
    ParentColor = False
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1211
    Height = 38
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 100
    Caption = 'ToolBar1'
    Color = clBtnFace
    DisabledImages = ImageList3
    DrawingStyle = dsGradient
    Images = ImageList1
    List = True
    ParentColor = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    Transparent = False
    ExplicitWidth = 965
    object ToolButton6: TToolButton
      Left = 0
      Top = 0
      Caption = #1048#1079#1084#1077#1088#1077#1085#1080#1077
      ImageIndex = 7
      OnClick = Button8Click
    end
    object ToolButton1: TToolButton
      Left = 100
      Top = 0
      AutoSize = True
      Caption = #1054#1090#1082#1088#1099#1090#1100
      ImageIndex = 0
      OnClick = N6Click
    end
    object ToolButton2: TToolButton
      Left = 193
      Top = 0
      AutoSize = True
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 4
      Visible = False
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 297
      Top = 0
      AutoSize = True
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      DropdownMenu = PopupMenu1
      ImageIndex = 1
      Visible = False
      OnClick = ToolButton3Click
    end
    object ToolButton5: TToolButton
      Left = 399
      Top = 0
      AutoSize = True
      Caption = #1054#1090#1095#1077#1090
      ImageIndex = 5
      OnClick = ToolButton5Click
    end
    object ToolButton4: TToolButton
      Left = 478
      Top = 0
      AutoSize = True
      Caption = #1042#1099#1081#1090#1080
      ImageIndex = 2
      OnClick = ToolButton4Click
    end
    object ToolButton10: TToolButton
      Left = 557
      Top = 0
      AutoSize = True
      Caption = 'Test'
      ImageIndex = 6
      Visible = False
      OnClick = ToolButton10Click
    end
  end
  object PageControl1: TPageControl
    Left = 348
    Top = 605
    Width = 633
    Height = 345
    ActivePage = TabSheet5
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      ImageIndex = -1
      object Label6: TLabel
        Left = 388
        Top = 13
        Width = 131
        Height = 13
        Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1076#1080#1089#1082#1088#1077#1090#1072': '
        Visible = False
      end
      object Label7: TLabel
        Left = 397
        Top = 32
        Width = 122
        Height = 13
        Caption = #1054#1073#1097#1077#1077' '#1074#1088#1077#1084#1103' '#1074#1099#1073#1086#1088#1082#1080': '
        Visible = False
      end
      object Label8: TLabel
        Left = 400
        Top = 51
        Width = 119
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1099#1073#1088#1086#1089#1086#1074': '
        Visible = False
      end
      object Label9: TLabel
        Left = 417
        Top = 70
        Width = 102
        Height = 13
        Caption = #1055#1088#1086#1094#1077#1085#1090' '#1079#1072#1096#1082#1072#1083#1086#1074': '
        Visible = False
      end
      object Label1: TLabel
        Left = 352
        Top = 89
        Width = 167
        Height = 13
        Caption = #1063#1080#1089#1083#1086' '#1080#1084#1087#1091#1083#1100#1089#1086#1074' '#1074' '#1077#1076'. '#1074#1088#1077#1084#1077#1085#1080': '
        Visible = False
      end
      object Label15: TLabel
        Left = 405
        Top = 109
        Width = 114
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1092#1086#1090#1086#1085#1086#1074': '
        Visible = False
      end
      object Chart1: TChart
        Left = 12
        Top = 136
        Width = 647
        Height = 288
        BackImage.Inside = True
        BackWall.Color = clWindow
        BackWall.Pen.Color = clWindow
        BackWall.Pen.EndStyle = esFlat
        BackWall.Pen.Visible = False
        Gradient.SubGradient.Visible = True
        Legend.Visible = False
        PrintProportional = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1089
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.409999999999976600
        DepthAxis.Minimum = -0.590000000000023700
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.409999999999976600
        DepthTopAxis.Minimum = -0.590000000000023700
        Frame.Color = clWindow
        Frame.EndStyle = esFlat
        Frame.Visible = False
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.AxisValuesFormat = '#,##0.######'
        LeftAxis.Maximum = 1112.511312500000000000
        LeftAxis.Minimum = 576.092562500000000000
        LeftAxis.Title.Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1089#1095#1077#1090#1072', 1/'#1089
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        PrintMargins = (
          15
          27
          15
          27)
        ColorPaletteIndex = 13
        object Series1: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Color = clRed
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          TreatNulls = tnIgnore
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series4: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          LinePen.Color = 10708548
          LinePen.Visible = False
          Pointer.Gradient.EndColor = 10708548
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object ProgressBar: TProgressBar
        Left = 7
        Top = 430
        Width = 660
        Height = 7
        Smooth = True
        TabOrder = 1
        Visible = False
      end
      object Panel3: TPanel
        Left = 140
        Top = 3
        Width = 519
        Height = 127
        BevelOuter = bvLowered
        Color = clWindow
        ParentBackground = False
        TabOrder = 2
        object ListView1: TListView
          Left = 26
          Top = 17
          Width = 160
          Height = 89
          BevelInner = bvNone
          BorderStyle = bsNone
          Columns = <
            item
              Width = 160
            end>
          GridLines = True
          Items.ItemData = {
            032C0100000500000001000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            00151F043804420430043D0438043504200044043E0442043E043F0440043804
            35043C043D0438043A04300401000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
            000000000D21043E04410442043E044F043D0438043504200024042D04230401
            000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000001421043E0441044204
            3E044F043D0438043504200033043E043D0438043E043C043504420440043004
            01000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000142104380433043D
            0430043B04200044043E0442043E043F044004380435043C043D0438043A0430
            0401000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000B11043B043E04
            3A042000340430043D043D044B044504}
          ReadOnly = True
          ShowColumnHeaders = False
          SmallImages = ImageList2
          TabOrder = 0
          ViewStyle = vsReport
        end
        object ListView2: TListView
          Left = 203
          Top = 17
          Width = 303
          Height = 89
          BorderStyle = bsNone
          Columns = <
            item
              Width = 200
            end
            item
              Width = 100
            end>
          ColumnClick = False
          GridLines = True
          Items.ItemData = {
            03740100000600000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
            001514043B043804420435043B044C043D043E04410442044C04200034043804
            41043A04400435044204300400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
            00000000131E04310449043504350420003204400435043C044F04200032044B
            0431043E0440043A04380400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00
            000000131A043E043B043804470435044104420432043E04200032044B043104
            40043E0441043E04320400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000
            0000101F0440043E04460435043D04420420003704300448043A0430043B043E
            04320400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000F27043804
            41043B043E04200038043C043F0443043B044C0441043E04320400000000FFFF
            FFFFFFFFFFFF00000000FFFFFFFF00000000121A043E043B0438044704350441
            04420432043E04200044043E0442043E043D043E043204}
          ReadOnly = True
          ShowColumnHeaders = False
          TabOrder = 1
          ViewStyle = vsReport
        end
      end
      object Button5: TButton
        Left = 12
        Top = 26
        Width = 100
        Height = 28
        Caption = #1057#1095#1080#1090#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = spbtnReadDataClick
      end
      object Button8: TButton
        Left = 12
        Top = 77
        Width = 75
        Height = 25
        Caption = 'Test Rec'
        TabOrder = 4
        OnClick = Button8Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1041#1055#1060
      ImageIndex = 2
      TabVisible = False
      object Label10: TLabel
        Left = 190
        Top = 16
        Width = 81
        Height = 13
        Caption = #1042#1088#1077#1084#1103' '#1076#1080#1089#1082#1088#1077#1090#1072
      end
      object Label12: TLabel
        Left = 327
        Top = 16
        Width = 17
        Height = 13
        Caption = #1084#1082#1089
      end
      object Label11: TLabel
        Left = 363
        Top = 17
        Width = 93
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082
      end
      object Button4: TButton
        Left = 38
        Top = 11
        Width = 75
        Height = 25
        Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
        TabOrder = 0
        OnClick = Button4Click
      end
      object Edit3: TEdit
        Left = 277
        Top = 11
        Width = 44
        Height = 19
        Alignment = taRightJustify
        TabOrder = 1
        Text = '0,5'
      end
      object Edit4: TEdit
        Left = 460
        Top = 11
        Width = 60
        Height = 19
        Alignment = taRightJustify
        NumbersOnly = True
        TabOrder = 2
        Text = '100000'
      end
      object Chart4: TChart
        Left = 13
        Top = 74
        Width = 620
        Height = 360
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.AxisValuesFormat = '#,##0.######'
        BottomAxis.LabelsExponent = True
        BottomAxis.Title.Caption = #1063#1072#1089#1090#1086#1090#1072', '#1043#1094
        View3D = False
        BevelOuter = bvNone
        TabOrder = 3
        PrintMargins = (
          15
          20
          15
          20)
        ColorPaletteIndex = 13
        object Panel2: TPanel
          Left = 216
          Top = 136
          Width = 233
          Height = 57
          Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077'. '#1048#1076#1077#1090' '#1088#1072#1089#1095#1077#1090'...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object LineSeries2: TAreaSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clBlack
          AreaLinesPen.Color = clWhite
          AreaLinesPen.Visible = False
          DrawArea = True
          LinePen.Visible = False
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Style = psRectangle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1040#1050#1060
      ImageIndex = 2
      object Label13: TLabel
        Left = 338
        Top = 16
        Width = 142
        Height = 13
        Caption = #1056#1072'c'#1089#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1073#1083#1086#1082' 1 '#1080#1079' 1'
        Visible = False
      end
      object Button3: TButton
        Left = 37
        Top = 11
        Width = 75
        Height = 25
        Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
        TabOrder = 0
        OnClick = Button3Click
      end
      object ProgressBar1: TProgressBar
        Left = 298
        Top = 41
        Width = 238
        Height = 10
        Smooth = True
        TabOrder = 1
        Visible = False
      end
      object CheckBox4: TCheckBox
        Left = 38
        Top = 54
        Width = 160
        Height = 17
        Caption = #1051#1086#1075#1072#1088#1080#1092#1084#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1089#1096#1090#1072#1073
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox4Click
      end
      object Button6: TButton
        Left = 123
        Top = 11
        Width = 75
        Height = 25
        Caption = #1055#1088#1077#1088#1074#1072#1090#1100
        TabOrder = 3
        Visible = False
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 209
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Photon-mode'
        TabOrder = 4
        Visible = False
        OnClick = Button7Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1050#1091#1084#1091#1083#1103#1085#1090#1099
      ImageIndex = 2
      object Button1: TButton
        Left = 13
        Top = 9
        Width = 75
        Height = 25
        Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
        TabOrder = 0
        OnClick = Button1Click
      end
      object CheckBox2: TCheckBox
        Left = 38
        Top = 54
        Width = 160
        Height = 17
        Caption = #1051#1086#1075#1072#1088#1080#1092#1084#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1089#1096#1090#1072#1073
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object Chart2: TChart
        Left = 12
        Top = 77
        Width = 645
        Height = 360
        BackWall.Pen.Visible = False
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.AxisValuesFormat = '#,##0.######'
        BottomAxis.LabelsExponent = True
        BottomAxis.Logarithmic = True
        BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1084#1082#1089
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.169999999999991200
        DepthAxis.Minimum = -0.830000000000005100
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.169999999999991200
        DepthTopAxis.Minimum = -0.830000000000005100
        Frame.Visible = False
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        Zoom.Pen.Color = clBlack
        Zoom.Pen.EndStyle = esFlat
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        PrintMargins = (
          15
          20
          15
          20)
        ColorPaletteIndex = 13
        object Series2: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clBlack
          Shadow.Color = 8454143
          LinePen.Width = 2
          Pointer.HorizSize = 3
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Shadow.Color = 6842472
          Pointer.Shadow.HorizSize = -2
          Pointer.Shadow.SmoothBlur = 48
          Pointer.Shadow.VertSize = 6
          Pointer.Style = psRectangle
          Pointer.Transparency = 42
          Pointer.VertSize = 3
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Color = clRed
          Pointer.Gradient.EndColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psCircle
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          Transparency = 100
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Contin'
      ImageIndex = 2
      object Label4: TLabel
        Left = 192
        Top = 16
        Width = 93
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082
        Visible = False
      end
      object Label5: TLabel
        Left = 360
        Top = 16
        Width = 128
        Height = 13
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088' '#1088#1077#1075#1091#1083#1103#1088#1080#1079#1072#1094#1080#1080
        Visible = False
      end
      object Edit1: TEdit
        Left = 291
        Top = 13
        Width = 46
        Height = 19
        Alignment = taRightJustify
        TabOrder = 0
        Text = '50'
        Visible = False
      end
      object Edit2: TEdit
        Left = 495
        Top = 13
        Width = 46
        Height = 19
        Alignment = taRightJustify
        TabOrder = 1
        Text = '0.07'
        Visible = False
      end
      object CheckBox3: TCheckBox
        Left = 38
        Top = 54
        Width = 160
        Height = 17
        Caption = #1051#1086#1075#1072#1088#1080#1092#1084#1080#1095#1077#1089#1082#1080#1081' '#1084#1072#1089#1096#1090#1072#1073
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBox3Click
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 38
    Width = 1211
    Height = 289
    Align = alTop
    BevelEdges = []
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'Panel5'
    TabOrder = 2
    ExplicitWidth = 965
    object Splitter1: TSplitter
      Left = 489
      Top = 0
      Height = 289
      Color = clBtnFace
      ParentColor = False
      ExplicitLeft = 493
      ExplicitTop = 6
      ExplicitHeight = 261
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 489
      Height = 289
      Align = alLeft
      BevelEdges = []
      BevelKind = bkSoft
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 0
      object Splitter5: TSplitter
        Left = 0
        Top = 55
        Width = 489
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 41
        ExplicitWidth = 27
      end
      object Chart5: TChart
        Left = 0
        Top = 58
        Width = 489
        Height = 231
        BackWall.Pen.Visible = False
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.AxisValuesFormat = '#,##0.######'
        BottomAxis.LabelsExponent = True
        BottomAxis.Logarithmic = True
        BottomAxis.Title.Caption = #1042#1088#1077#1084#1103', '#1084#1082#1089
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.500000000000000000
        DepthAxis.Minimum = -0.500000000000000000
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Maximum = 0.500000000000000000
        DepthTopAxis.Minimum = -0.500000000000000000
        Frame.Visible = False
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        Zoom.Pen.Color = clBlack
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnMouseMove = Chart5MouseMove
        PrintMargins = (
          15
          20
          15
          20)
        ColorPaletteIndex = 5
        object LineSeries3: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          LinePen.Visible = False
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Shadow.Color = 10855845
          Pointer.Style = psCircle
          Pointer.Transparency = 50
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series5: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clBlack
          LinePen.Width = 2
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Style = psCircle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        Constraints.MaxHeight = 55
        Constraints.MinHeight = 55
        TabOrder = 1
        ExplicitLeft = -6
        ExplicitTop = -3
        object Label2: TLabel
          Left = 15
          Top = 3
          Width = 12
          Height = 23
          Caption = '  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 15
          Top = 25
          Width = 12
          Height = 23
          Caption = '  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Button9: TButton
          Left = 153
          Top = 6
          Width = 120
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1095#1077#1090
          TabOrder = 0
          Visible = False
          OnClick = Button9Click
        end
        object ToolBar2: TToolBar
          Left = 360
          Top = 0
          Width = 129
          Height = 55
          Align = alRight
          ButtonHeight = 30
          ButtonWidth = 127
          Caption = 'ToolBar2'
          DisabledImages = ImageList5
          Images = ImageList4
          List = True
          ShowCaptions = True
          TabOrder = 1
          object ToolButton7: TToolButton
            Left = 0
            Top = 0
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1095#1077#1090
            ImageIndex = 0
            OnClick = Button9Click
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 330
    Width = 1211
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 965
    object Splitter3: TSplitter
      Left = 505
      Top = 0
      Height = 507
      Color = clBtnFace
      ParentColor = False
      ExplicitLeft = 620
      ExplicitTop = -4
    end
    object Memo1: TMemo
      Left = 508
      Top = 0
      Width = 703
      Height = 507
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 457
    end
    object Panel10: TPanel
      Left = 0
      Top = 0
      Width = 505
      Height = 507
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter7: TSplitter
        Left = 0
        Top = 253
        Width = 505
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 192
      end
      object Splitter8: TSplitter
        Left = 0
        Top = 33
        Width = 505
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 57
      end
      object Panel7: TPanel
        Left = 0
        Top = 256
        Width = 505
        Height = 251
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter6: TSplitter
          Left = 0
          Top = 33
          Width = 505
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 57
          ExplicitWidth = 55
        end
        object Chart3: TChart
          Left = 0
          Top = 36
          Width = 505
          Height = 215
          BackWall.Pen.Visible = False
          Legend.Visible = False
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          BottomAxis.AxisValuesFormat = '#,##0.######'
          BottomAxis.LabelsExponent = True
          BottomAxis.Logarithmic = True
          BottomAxis.Title.Caption = #1044#1080#1072#1084#1077#1090#1088' '#1095#1072#1089#1090#1080#1094', '#1085#1084
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.439999999999999900
          DepthAxis.Minimum = -0.560000000000000100
          DepthTopAxis.Automatic = False
          DepthTopAxis.AutomaticMaximum = False
          DepthTopAxis.AutomaticMinimum = False
          DepthTopAxis.Maximum = 0.439999999999999900
          DepthTopAxis.Minimum = -0.560000000000000100
          Frame.Visible = False
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          Shadow.Visible = False
          View3D = False
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnMouseMove = Chart3MouseMove
          PrintMargins = (
            15
            20
            15
            20)
          ColorPaletteIndex = 13
          object Panel1: TPanel
            Left = 140
            Top = 96
            Width = 233
            Height = 57
            Caption = #1055#1086#1076#1086#1078#1076#1080#1090#1077'. '#1048#1076#1077#1090' '#1088#1072#1089#1095#1077#1090'...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Visible = False
          end
          object LineSeries1: TAreaSeries
            Marks.Arrow.Visible = False
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = False
            Marks.BackColor = 8454143
            Marks.Color = 8454143
            Marks.Shadow.Color = 8553090
            Marks.Shadow.Visible = False
            Marks.Style = smsXValue
            Marks.Symbol.Shadow.Visible = False
            Marks.Symbol.Transparency = 38
            Marks.Visible = False
            SeriesColor = clRed
            DrawArea = True
            Pointer.HorizSize = 2
            Pointer.InflateMargins = True
            Pointer.Pen.Visible = False
            Pointer.Style = psRectangle
            Pointer.VertSize = 2
            Pointer.Visible = False
            Stairs = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series6: TLineSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.Visible = False
            SeriesColor = clBlack
            Pointer.Gradient.EndColor = clBlack
            Pointer.InflateMargins = True
            Pointer.Pen.Visible = False
            Pointer.Style = psCircle
            Pointer.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 505
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Constraints.MaxHeight = 33
          Constraints.MinHeight = 33
          TabOrder = 1
          object Label14: TLabel
            Left = 9
            Top = 11
            Width = 27
            Height = 13
            Alignment = taCenter
            Caption = '(0; 0)'
          end
          object Button2: TButton
            Left = 100
            Top = 5
            Width = 75
            Height = 25
            Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
            TabOrder = 0
            Visible = False
            OnClick = Button2Click
          end
          object ToolBar3: TToolBar
            Left = 233
            Top = 0
            Width = 272
            Height = 33
            Align = alRight
            AutoSize = True
            ButtonHeight = 30
            ButtonWidth = 174
            Caption = 'ToolBar2'
            DisabledImages = ImageList5
            Images = ImageList4
            List = True
            ShowCaptions = True
            TabOrder = 1
            object ToolButton8: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
              ImageIndex = 1
              OnClick = Button2Click
            end
            object ToolButton11: TToolButton
              Left = 178
              Top = 0
              AutoSize = True
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ImageIndex = 3
              OnClick = N5Click
            end
          end
        end
      end
      object Chart6: TChart
        Left = 0
        Top = 36
        Width = 505
        Height = 217
        BackWall.Pen.Visible = False
        Legend.Visible = False
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        BottomAxis.AxisValuesFormat = '#,##0.######'
        BottomAxis.LabelsExponent = True
        BottomAxis.Title.Caption = #1053#1086#1084#1077#1088' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        Frame.Visible = False
        LeftAxis.Title.Caption = #1057#1088#1077#1076#1085#1080#1081' '#1076#1080#1072#1084#1077#1090#1088', '#1085#1084'.'
        View3D = False
        Zoom.Pen.Color = clBlack
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnMouseMove = Chart5MouseMove
        PrintMargins = (
          15
          20
          15
          20)
        ColorPaletteIndex = 5
        object LineSeries4: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clRed
          LinePen.Width = 2
          LinePen.Visible = False
          Pointer.InflateMargins = True
          Pointer.Pen.Color = clRed
          Pointer.Pen.Visible = False
          Pointer.Shadow.Color = 10855845
          Pointer.Style = psCircle
          Pointer.Transparency = 50
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object LineSeries5: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clBlack
          Pointer.HorizSize = 2
          Pointer.InflateMargins = True
          Pointer.Pen.Visible = False
          Pointer.Style = psCircle
          Pointer.VertSize = 2
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 505
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Constraints.MaxHeight = 33
        Constraints.MinHeight = 33
        TabOrder = 2
        object ToolBar4: TToolBar
          Left = 420
          Top = 0
          Width = 85
          Height = 33
          Align = alRight
          ButtonHeight = 30
          ButtonWidth = 84
          Caption = 'ToolBar2'
          DisabledImages = ImageList5
          Images = ImageList4
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton9: TToolButton
            Left = 0
            Top = 0
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            ImageIndex = 2
            OnClick = ToolButton9Click
          end
        end
      end
    end
    object Button10: TButton
      Left = 643
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Button10'
      TabOrder = 2
      OnClick = Button10Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 592
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Filter = 'IDAT|*.idat|'#1090#1077#1082#1089#1090#1086#1074#1099#1077'|*.txt'
    Left = 784
    Top = 232
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 504
    Top = 65
    Bitmap = {
      494C010108001800180020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00B3B0AC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A6A8AA00A3A3A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A6A6A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B8C8B00846E4D00E88F0600CD82120081674400CA8A2800B8AE
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900786C5900CD831200E2890100D384
      0900A78B61000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092929200506A7C000593EB00018EE800088AE1001880C500327BA9005582
      9E0077899400999FA400AEAEAE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0070707000ACACAC00A4A4A400929292008A8A8A008C8C
      8C008E8E8E00A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A9
      A90070707000A36A1700DD8E1500DA840000F3BD5800E18D0A00EDAD3B00B987
      3D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000898989006F583500E2890100EC940700EB9F2F00E39E
      3900E6951400C87F1500A9977E00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3A3
      A40059595A0042A5E0000188DD007BF3FF0065E8FF0050D2F60030BBF20018A5
      ED00089BEA00018EE800048CE6001289D5002580BB004082AD006A849500899A
      A300A8A8A9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E5E5E00BABABA009E9E9E00DCDCDC00E8E8E800DEDEDE00D0D0
      D000BEBEBE00B0B2B000A8A7A800969696008C8C8C008C8C8C008C8C8C009E9E
      9E00B0B0B0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A000605A
      5900C78F3B00E2880000E4992000F7B64500FFCD6900FFD06C00FFD06A00E194
      1900C57E1500B8AA950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000845F2900E5890000EC940700EBA33800DB943800EDC7
      8800E3A95500EDB85C00E6991B00B6772200AFA4950000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400475157009EDBFF00007BD4005ADEFC0084F9FF009CFAFF00A2FAFF009CFA
      FF0097FAFF008DF3FF007AECFE005ADEFC0045D2FA0029B7F10014A4EC000698
      EA00018EE800088AE1001880C5003477A400557F9D0080929E009BA0A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E0059595900DCDCDC009A9A9A00D4D4D400E0E0E000E0E0E000E8E8
      E800EEEEEE00F4F4F400F8F8F800F6F6F600F0EFF000E6E6E600CBC7CB008B81
      8B003A983A0020961F003A8739005A8759008E9B8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000979999005E564F00E7B0
      5C00FFECCB00E2A54800EAA32B00FFD57500FFF9C100FDDB8800FFCF6C00FFD0
      6A00F6B84A00C886250000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760096661D00E2890100F1990E00E7A13C00DF9F4800DC9B4100FEFE
      EA00F0D09500F2D5A200EABC7400F5C46A00E28D0B00B2823E00B3ADA6000000
      0000000000000000000000000000000000000000000000000000000000006666
      66006A97B200CEEBFE0042A5E0000088D8007BF3FF008AECFF0053E4FF005AEA
      FF0065E8FF0065E8FF007AECFE007AECFE0083F2FF008DF3FF0090F5FF0090F5
      FF0083F2FF0073EBFF005DE1FE0045D2FA0030BBF20018A5ED00089BEA00048C
      E6001181CC00458AB70000000000000000000000000000000000000000000000
      0000828282005C5C5C00DBDCDB009C9B9C00CCCCCC00E0E0E000DEDEDE00E2E2
      E200E4E4E400E6E6E600E8E8E800ECECEC00F2F2F200EEECEE009B959B004395
      430037B4360042BE480071E3890061D56F0027AF28009AB89A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065656500CBAE8100FFE6
      BD00D79A3B00D0760000F4B34000FFE69C00EABE6300D0760000D9830000FFD5
      7500FFC75E00C1893A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD006D6D
      6D00AC711500E5890000F1990E00E4A14400ECC48200F3CC9100DEA14900FFFF
      F200FEFCE300EDC78800F7EBCA00F2D9A500EFBD6100F4B54400D8830600A784
      5100000000000000000000000000000000000000000000000000A8A8A9005959
      5A0097C3DE00CEEBFE00BDDFF300007DD40034BBEB0090F5FF004EE2FF0043E3
      FF0043E3FF003AE1FF003AE1FF003AE1FF003AE1FF0034E1FF0034E1FF0043E3
      FF0053E4FF0062E3FE0073EBFF0083F2FF008DF3FF0097FAFF009CFAFF009CFA
      FF0084F9FF0042C8F40081ABC400000000000000000000000000000000000000
      00008686860056565600DBDCDB00A09FA000C4C4C400DEDEDE00DCDCDC00E0E0
      E000E2E2E200E4E4E400E6E6E600E8E8E800F0EFF000A29CA2004B7E4B0066C8
      66004AB6490037B43D004DE7870048E8820054C9640084B28400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A2A2
      A20082828200787979009E9E9E0000000000A3A4A40054545500685D4D00E4A2
      3C00E4A23C00DA880100FFC85E00FFE08C00DD941A00ECD0A900E5B46700EBAE
      4000FFDC8500E4941600B6915700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A50062626200C37B
      0D00E2890100EF981400E2A44B00F7E8BE00E3AA5800FBE5BA00E8B66B00FEFE
      EA00FFFDDD00FFFCD900EBC17C00FAEDCA00FEFAD800E8B16500FBC05700F2A1
      1F00CE800D00A590710000000000000000000000000000000000000000006A6A
      6A00606A6F00D0F1FF00C3E1F3006EB8E800007DD4006BE9FE0073EBFF003AE1
      FF003BDDFE0034DBFE0034DBFE002BDAFE002BDAFE002BDAFE0034E1FF0025AE
      D80032D2F40034E1FF002BDAFE0034DBFE0034E1FF0043E3FF004EE2FF005AEA
      FF009CFAFF0034BBEB0073A6C700000000000000000000000000000000000000
      00008A8A8A0051515100DBDCDB00A2A2A200BABABA00E0E0E000DADADA00DCDC
      DC00E0E0E000E2E2E200E8E8E800EAE6EA00E9E3E900808080005A7E5A006CC6
      6C0045B2440026A8270045D87B0035D46B005CCD70006DAB6D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A7A8006B6B6B008D90
      9000888A89008D9090008485850078797900525252008082820082868A008782
      7700EADBC200DF9B3300E89F2400FFD98000EBB04600D1871800D07F0600E4A3
      3400FFE69C00EDA52B00C9882600000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5005D5D5D00D1891A00E289
      0100EB9C1B00E3A95500FEF8D500E4AC5B00FCE9BD00F0D09500F2D9A500FEFE
      EA00FFFCD900FEFAD800FEFAD800EABC7400FAEDCA00FFFDDD00F2D5A200ECAD
      4600FFB73800F1990E00C0822300000000000000000000000000000000009898
      980052525200A6C3D400C8E9FD00D0E6F4000B8CDA0012A1E4007AECFE0043E3
      FF002BDAFE0024D9FF0024D9FF0020D5FF0020D5FF0024D9FF00177BAE00002C
      7100003376002ED1F50024D9FF002BDAFE002BDAFE0034DBFE003AE1FF0043E3
      FF0090F5FF00078DD900ACB9C100000000000000000000000000000000000000
      00008E8E8E0051515100DCDCDC00A6A8A600B4B4B400DEDEDE00D7D8D700DADA
      DA00DCDCDC00E2E2E200D7D3D70083808300339E330000930000009500000093
      0000008F00001AA1170045D176002ECB64005ECE780015881500378037004689
      460092B392000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A9A900656565009B9C9C00B7B9
      BA007E808000E8E7EA00A1A1A3007A7C7C007C7E7E007E808000C1C2C5008287
      8E00D4CCC200EFC58800D7860600FFD58100FFD78600E7A12D00DE901300FCDF
      9700FFE39600E1941900C0AE9300000000000000000000000000000000000000
      0000000000000000000000000000A5A5A50062626200CF963F00E28D0B00E289
      0100E3A75400FEFCE300F4D49D00ECC48200FEF9DE00E4AD5D00FDF4D200FFFF
      F200FFFCD900FEF8D500FEF8D500FDF4D200E9B86E00FCE9BD00FEF8D500FAEC
      C500E6B66E00FBAC2F00D7880F00000000000000000000000000000000000000
      0000747474004E515300CDF2FE00C9E6F90098CDEE00007AD3004BD7FC006BE4
      FE0019D3FF0019D3FF0019D3FF0019D3FF0013D2FF001BDAFF001878AA000036
      780000337600208FBD0019D3FF0019D3FF0020D5FF0024D9FF002BDAFE0043E3
      FF006BE4FE00208AD10000000000000000000000000000000000000000000000
      0000929292004D4D4D00DBDCDB00ABABAB00AEAEAE00DEDEDE00D6D5D600D8D8
      D800DBDCDB00D8D8D8007E787E004C9C4C005CC25C001DA41C0079E2A00068D9
      8D0068D98D0061D6860032CD67002ECA630040D0710062D27C0062D27C0066D1
      7C0048A647000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD0094959500686868005C5C5C00BBBCBC007E80
      800076787900E2E2E400DEE0E100BFBFC100BCBEBE00ACAEB200CED0D4009093
      95009B845F00E8A53C00E0921800F6C66F00FFD88700FFE7A400FFEEB100FFEC
      AD00FFD58100E5A83F00B99E7900000000000000000000000000000000000000
      00000000000000000000000000007979790074614300F1B25100D6810000EB9C
      1B00EDCA9000FFFDDD00DEA14900FDF4D200FEFCE300DD9D3E00FFFFF200FEFE
      EA00FEFCE300FEF8D500FDF4D200FDF4D200FEF2CC00E8B66B00FCE9BD00FEF2
      CC00FFEDC500EB9A2300CB8B2C00000000000000000000000000000000000000
      0000A3A3A4005C5C5C008395A000C8E9FD00CDE8F6002C9BDE00008FDC0065E8
      FF0034DBFE000CD0FF000CD0FF000CD0FF000CD0FF0008CEFF0029D7FA00074A
      8800003678002CC5EA000CD0FF000CD0FF0013D2FF0019D3FF0019D3FF005DE1
      FE002EB4EA0062A0C80000000000000000000000000000000000000000000000
      00009696960049494900DADADA00AEAEAE00A8A8A800E0E0E000D3D4D300D6D6
      D600DADADA00CBCBCB00564E560070C0700063C263000C9C09004DD57E003DCE
      6C004FD27C0058D783005FD9880060DB89005DD9870056D6820045D176004DD5
      7E0031A02F000000000000000000000000000000000000000000000000000000
      000000000000A8A9A9006868680075767600888A89007C7E7E00767876007A7C
      7C00C8C9CA00E2E2E400D4D5D600D2D4D500D5D6D800D5D6D800D2D4D500BFC0
      C5007D83880084827A00C37D0E00CC7E0300E7A12D00FFD88700FFD58100FFD8
      8700E2961F00DC8B0B00C7A97B00000000000000000000000000000000000000
      000000000000000000000000000062626200AA824400E8A64000D37B0000EAA1
      3500F9EAC000FCEBC100EBC17C00FEF8D500FDF5D900E0A14700FFFFF600FEFE
      EA00FEFCE300FEFAD800FDF4D200FDF4D200FFEDC500FFECC300E8B16500FCE9
      BD00FAE2B500EC940C00C59B5A00000000000000000000000000000000000000
      00000000000084848400494A4A00C4E5FA00C9E6F900B5DBF200007DD40026BC
      F20062E3FE0008CEFF0008CEFF0008CEFF0008CEFF0003CDFF0002D2FF0032EB
      FF003AE1FF000CD9FF0008CEFF0008CEFF0008CEFF000CD0FF000CD0FF006BE9
      FE000B8CDA00A3B7C20000000000000000000000000000000000000000000000
      00009C9B9C0049494900D8D8D800B0B0B000A2A2A200E0E0E000D0D0D000D4D4
      D400D8D8D800CECDCE00564E56006EBB6E0069C469000C9B09008BE5AE006CDB
      920071E0970074E3990075E49B0075E49B0076E49C0079E59E0079E2A00087E6
      AF0032A431000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D007576760084858500A6A7A800D9DADC00A8A9A900DCDD
      DE00D9DADC00D1D3D400DADCDD00DEDFE000D8DADA00D0D2D200CECED100D6D8
      D900D2D4D50090949A00BABEC3007C889800CB820F00E7AD4C00D6830100E8B0
      5200D4891500A6A1990000000000000000000000000000000000000000000000
      00000000000000000000A1A1A10053535300E2A44B00DD962700D6810000E5A4
      4500FEFCE300F0D09500F7DEAA00FEF9DE00FAE2B500ECBF7900FFFFF200FEFE
      EA00FEFCE300FFFCD900FDF4D200FEF2CC00FAEDCA00FFECC300FBE5BA00ECBF
      7900F3CC9100E2890100C3AB8600000000000000000000000000000000000000
      000000000000000000006666660066707500CAEDFE00CDE8F6005EB0E5000085
      D80051DDFE0036D6FB0003CDFF0003CDFF000CD0FF000CD0FF0019D3FF002ED1
      F5000E60990010D9FF0008CEFF0003CDFF0003CDFF0003CDFF0013D2FF0051DD
      FE001889D2000000000000000000000000000000000000000000000000000000
      00009E9E9E004D4D4D00D6D6D600B6B6B6009E9E9E00E4E4E400CECECE00D2D2
      D200D3D4D300D0D0D0005B525B006AB26A006CC66C0004990400A5E4B40096E0
      A60095E0A3008ADB97009AF1B9008AECAC0097F1B90073CE7B0062C5670059C4
      600019A218000000000000000000000000000000000000000000000000000000
      00008080800062646300E2E4E500848585008D8F9000E9EAEA00EDEDED00D5D6
      D800D5D6D800EDEDED00E6E7E800D6D8D900CCCECE00C8C9CA00CACCD000C8C9
      CA00D4D5D600D8DADA00EBECED00848A9200C9A05F00E18D0A00FFF2D700F0A9
      3B00CC9E54000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C004E4B4600F6B55000DA8A0A00DC8D1200E4AA
      5800FFFFF200E4AF6000FEF2CC00FEFCE300ECC48200F6E3B500FFFFF200FEFE
      EA00FEFCE300FEFCE300FEF8D500FEF2CC00FEF2CC00FFEDC500F9DEAE00F4D4
      9D00E9B25A00D8800100C0B7AA00000000000000000000000000000000000000
      000000000000000000009494940052525200A9C6D600C8E9FD00C3E1F3000688
      D90018AAE9007AECFE0044DBFF0044DBFF0044DBFF0044DBFF0044DBFF0032D2
      F4000038710043ECFF003BDDFE003BDDFE0036D6FB0019D3FF003AE1FF0026B2
      EC00579ECA000000000000000000000000000000000000000000000000000000
      0000A2A2A2004D4D4D00D0D0D000BABABA009C9B9C00E6E6E600D0D0D000D2D2
      D200D0D0D000CDCFCD005751570077B77700ACE1AC0000990000009500000093
      00000095000000890000B0F1C4009CF4B900B2FCCE001BA61B004CAB4B0066A1
      660082A38200000000000000000000000000000000000000000000000000A8A9
      A9005C5C5C00C0C2C200FEFEFE00CCCECE0075767600A8A9A900DADCDD00D2D4
      D500EAEAEC00E4E5E600E7E8E900E7E8E900DADCDB00CECED100D2D4D500D9DA
      DC00D0D2D200D1D3D400CECED100767A7D00FDF1DC00E3D9CD0099999900A3A4
      A400000000000000000000000000000000000000000000000000000000000000
      000000000000000000007676760066584200F1B04D00D57D0000E4A33600ECC4
      8200FEFEEA00DEA14900FFFDDD00FEFEEA00E4A65100FEFCE300FEFEEA00FEFE
      EA00FEFCE300FEFCE300FEF8D500FEF2CC00FEF2CC00FFEDC500F3CC9100FAEC
      C500EAA13500D384110000000000000000000000000000000000000000000000
      0000000000000000000000000000787776004E515300CAEDFE00CAE5F5008CC7
      EC00007DD40081E3FD007BE7FF004ADAFF004ADAFF004ADAFF004EE2FF002FC1
      E60000246A003BDDFE0051DDFE004ADAFF004ADAFF004ADAFF0091EBFF001B94
      DB009CB5C4000000000000000000000000000000000000000000000000000000
      0000A8A7A80051515100CCCCCC00BCBCBC0095959500E8E8E800D3D4D300D4D4
      D400D3D4D300D0D0D0007774770093999300C7D1C7009BA99B007F877F00B1E1
      B100ABDCAB0000950000B6F0C400AFFAC900C2FFDA003EB84100919D91000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000787979004E4E4E00D4D5D600A8A9A90076787600BEC0C100D4D5D600DADC
      DD00E2E2E400E2E4E500EEEFF0009C9D9D00787A7E007A7C8000AAACB000DEDF
      E000E4E5E600D6D8D900DADCDB00898A8D008282820000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000062626200AA824400E8A64000D37B0000E9B25A00F6E3
      B500FFFCD900E3A75400FEFCE300FEFEEA00DD9D3E00FFFFF600FDF5D900F7EB
      CA00FEFEEA00FEFEEA00FEF8D500FEF2CC00FEF2CC00FFEDC500EABC7400FEF2
      CC00EC940C00CB8B2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000A3A3A4005C5C5C00899AA300CAEDFE00CAE5
      F5001B94DB00239FE10098EEFF0062E3FE005DE1FE0062E3FE006BE9FE0025AE
      D800002C710023ABD5006BE9FE0062E3FE005DE1FE005DE1FE0091EBFF001289
      D500000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80056565600C7C7C700C0C0C00095959500ECECEC00D6D5D600D6D6
      D600D4D4D400D6D5D600D0D0D000CCCBCC00D0CED000B2AFB2004A454A007BCC
      7B0085CD850000950000AEEAB800C2FFDA00CEFFE40066CA6A0086AD86000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E00525252007F807F007E80800078797900D2D4D500D2D4D500DCDD
      DE00D4D5D600E4E5E600909191007C7F8200C0C1C200C6C6C600787A7E00B5B6
      B800EEEFF000DEDFE000D6D8D900B2B2B2007A7C7C008A8C8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A1A10053535300E9AA4900DF992B00D57D0000E3A95500FFFD
      DD00FBE5BA00ECC48200FEFEEA00FEF8D500E3A95500FFFEF900FDF5D900FDF5
      D900F8EAC500FEFEEA00FEFAD800FDF4D200FEF2CC00FEF2CC00E5B36500F5E4
      BC00E5890000C59B5A0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400494A4A00C4E5FA00C7E9
      FD00B0D8F100007DD4007CD4F40098EEFF006BE4FE006BE4FE007AECFE001792
      C10000337600075F9A0072F3FF0076E6FF006BE4FE008AECFF006BC8F1004D9B
      CD00000000000000000000000000000000000000000000000000000000000000
      0000ACACAC0056565600C0C0C000C4C4C40092929200EAEAEA00D7D8D700D8D8
      D800D6D6D600D7D8D700D4D4D400D6D5D600D6D6D600BCBCBC004C464C007ACB
      7A0085CD85000F9D0F00A3E0A800DEFDE800CAF2D0006AC86B006FA56F000000
      0000000000000000000000000000000000000000000000000000000000009B9C
      9C00656565007E808000808282007C7E7E00898A8D00D4D5D600D2D4D500D5D6
      D800CACCD000D0D2D2007A7C8000B9BABA00FEFEFE00EDEDED00BCBDBF007E80
      8000F1F1F100E9EAEA00D8DADA00E0E1E200E0E1E200888A8900B7B9BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C004A494600F6B55000DC8D1200DA8A0A00E3A95500FFFF
      F200ECC48200FAE2B500FEFEEA00F2D39B00DEA14900FFFEF900FDF4D200FDF4
      D200FDF5D900FDF4D200FEFAD800FDF4D200FEF2CC00FEF2CC00E9B86E00EDC7
      8800E0850000C0AC8C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006666660066707500D0F1
      FF00CDE8F60048A7E2000B8CDA00ABF3FF0084EBFF007BE7FF007BF3FF000B71
      A800003B7C00003B7C005AEAFF0084EBFF0076E6FF00AAF8FF00279CDE0094B2
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000005A5A5A00BAB9BA00C7C7C70090909000ECECEC00DEDEDE00D8D8
      D800D7D8D700D8D8D800D6D6D600D6D6D600D8D8D800C4C4C400534E5300A8C9
      A800C2E9C20044B8440000930000009300000F950E0047AC470095A895000000
      00000000000000000000000000000000000000000000000000009B9C9C005454
      5500B5B7B7009091910084858500C8C9CD00CACCD000D1D3D400D2D4D500CECE
      D100C8C9CA00C1C2C5007A7C80003F3F3F00C8C9CD00BFBFC100B1B2B4007577
      7900F1F1F100EDEDED00D9DADC00DEE0E100E9EAEA00888A8900B0B0B0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007676760066584200F1B25100D6810000E19B2A00EABB7900FFFF
      F200E3A75400FEF9DE00FEFEEA00DD933200D2760000E3A95500FFFFF200FDF4
      D200FAEDCA00FEFEEA00FEF9DE00FDF4D200FEF2CC00FBE5BA00F2D5A200EBAC
      5000D88001000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009494940052525200A9C6
      D600C8E9FD00C3E1F3000282D60064C5EF00B0F6FF0084EBFF007AF8FF00025A
      9500003B7C000033760037C4E6008DF3FF008AECFF00ABF3FF000F88D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C5C5C00B2B2B200C8C8C80090909000EAEAEA00E6E6E600E4E4
      E400E2E2E200DEDEDE00D8D8D800D7D8D700D8D8D800D8D8D800BAB9BA00A6A2
      A600A9A3A900B7B1B700C3BDC300D6C8D600DFD2DF00EBE1EB009F9C9F000000
      00000000000000000000000000000000000000000000000000008D8D8D004A4A
      4A00C0C2C2008E90900080828200BEC0C100C8C9CA00CFD0D000D2D4D500CACC
      D000D5D6D800D0D2D2008485850044434500979999008D8F9000808284007C7F
      8200F7F7F800F1F1F100E0E1E200D4D5D6007A7C7C008D8D8D00BBBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000064646400AF864800E9AA4900D57D0000E5A54000F6E3B500FEFE
      EA00E0A14700FFFFF600F5D89E00EABB7900F8E7CC00DB912200E3AC5900FFFF
      F200FDF5D900F8EAC500FEFCE300FDF4D200FDF4D200F4D49D00FAEDCA00EB9A
      2300CD8312000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000747474004E51
      5300CDF2FE00CAE5F50077BEE9000282D600ABF3FF00A4F5FF007AF8FF000051
      8E00003B7C00003678001892C20090F5FF00A4F5FF0080D2F3004397CD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E5E5E00ABABAB00CBCBCB0090909000E6E6E600E6E6E600E6E6
      E600E6E6E600E4E4E400E4E4E400DEDEDE00D8D8D800DBDCDB00DCDCDC00DEDE
      DE00DEDEDE00DCDCDC00DADADA00DBDCDB00E0E0E000F4F4F400999999000000
      0000000000000000000000000000000000000000000000000000909191004A4A
      4A00E2E2E400BABABC007A7C7C0076787600767A7D00C6C7C900D9DADC00CFD0
      D000D9DADC00E0E1E200ABABAF00787A7E0064676A005F61610076787900B9BA
      BA00F7F7F800EDEDED00DEE0E100DADCDB007A7C7C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A1A1A10055555500E1A65100E2A03900D57D0000DD9D3E00FFFDDD00FEF8
      D500E4AD5D00FFFEF900DC9B4100B9BABC00FEFEFE00FEFEFE00F2D8B800E9B8
      6E00FFFFF200FDF5D900F7E8BE00FEF8D500FEFAD800EBC17C00FDF4D200EB8C
      0200CA8E35000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A4005959
      5A008AA0AD00C7E9FD00CDE8F600128EDA003CAAE500BBFCFF0090F5FF000F86
      B800002C7100002C710025AED80099F5FF00C3FCFF002C9DE00089AFC5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063636300A09FA000CCCCCC0092929200E2E2E200EAEAEA00E8E8
      E800E8E8E800E6E6E600E6E6E600E6E6E600E2E2E200DBDCDB00DCDCDC00DCDC
      DC00DADADA00FCFCFC00FCFCFC00FEFEFE00FEFEFE00F2F2F200A0A0A0000000
      0000000000000000000000000000000000000000000000000000A3A4A4006B6B
      6B0084858500C2C3C300F5F5F500D0D2D20076787900B7B9BA00DCDDDE00D6D8
      D900D5D6D800E9EAEA00EAEAEC00BABABC00898A8D00898A8D00BBBCBC00F9F9
      F900F5F5F500EDEDED00DADCDD00C7C8C8008284840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C004A494600F6B55000DA8F1B00D6810000E4A65100FFFFF600EBC1
      7C00F1D49D00FCE9BD00967953005D5D5D008D8A8600FFFFF600FEF8F000F0D3
      AE00EABC7400FFFFF200FDF5D900F9DEAE00FFFCD900E5B36500F5E4BC00E589
      0000C39D62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400494A4A00C7E9FD00C9E6F900A0D0EE00007BD400A1E7F900BBFCFF006DF3
      FF001DAAD5001DAAD5007BF3FF00A4F5FF00C3FCFF000A85D400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006666660096969600D0D0D00092929200DCDCDC00ECECEC00E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E6E6E600E4E4E400DCDCDC00DEDE
      DE00DCDCDC00F4F4F400F6F6F600E4E4E400D6D5D600B4B4B400ACACAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900595A5A009C9D9D00DADCDB008B8C8B0090939500DEDFE000DADC
      DB00D9DADC00E0E1E200F1F1F100F1F1F100F9F9F900FAFBFC00F7F7F800F5F5
      F500EDEDED00E4E5E600DDE0DF00F5F5F5008D8F900094959500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000767676006D5D4300F1B25100D8850100DC8D1200EABF7F00F1D49D00D988
      2000FDF5D900E3A9550000000000999999005D5D5D0097959000FFFEF900FEF8
      F000EDCDA300ECC48200FEFEEA00FEF2CC00FFFDDD00E49B3400E49B3400E085
      0000C2AF91000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666660067727900CAEDFE00C9E6F90039A0DF001592DC00CDFEFF00AAF8
      FF00A4F5FF00A4F5FF00AAF8FF00BBFCFF008BD6F2003692CF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000686868008E8E8E00D2D2D20096959600D6D5D600F0EFF000ECEC
      EC00EAEAEA00EAEAEA00EAEAEA00E8E8E800E8E8E800E8E8E800E4E4E400DEDE
      DE00E0E0E000EAEAEA00F4F4F400D3D4D300D0D0D000A09FA000BABABA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000068686800595A5A009B9C9C0082848400888A8900E0E1E200DCDD
      DE00D9DADC00DDE0DF00E2E2E400EDEDED00F1F1F100F1F1F100F1F1F100EDED
      ED00E7E8E900DDE0DF00E4E5E600F9F9F900BABABC0094959500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000062626200AA824400E9AA4900D57D0000E1992D00E6B66E00D98B1900DA8F
      2500F9EAC000CFA7720000000000000000009999990059595900A5A19A00FFFF
      F600FDF7F100EBC59400F0CD8C00FFFDDD00FDF4D200D7850F00D87D0100D681
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494940052525200B1CBDA00CAEDFE00C3E1F300007DD40080D2F300C3FC
      FF00A4F5FF00AAF8FF00A4F5FF00CDFEFF002C9DE00081ABC400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D0082828200D3D4D30099999900CECECE00F2F2F200ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EAEAEA00EAEAEA00EAEAEA00E2E2
      E200E2E2E200E6E6E600FCFCFC00CECDCE00C2C3C200A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9C9C005252520090919100828484007C7E7E00CACCCD00EEEFF000E8E7
      EA00E0E1E200DCDDDE00DEE0E100E4E5E600E9EAEA00EBECED00EBECED00E2E2
      E400DEE0E100EAEAEC008E9090009495950080828200B2B2B200000000000000
      000000000000000000000000000000000000000000000000000000000000A1A1
      A10055555500DEA14900E2A03900D37B0000E2A04000DB912800D57D0000E1A6
      5100E2AE6100000000000000000000000000000000009595950059595900AFAA
      A200FFFFF600FDF7F100E9BF8700F1D49D00FFF0C200EAD2B100ECCA9400DD9D
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000747474004E515300CAEDFE00C9E6F9006AB7E6000085D800CDFE
      FF00B2F9FF00AAF8FF00B2F9FF00D3FFFF000A85D40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000707070007A7A7A00D6D5D6009C9B9C00C4C4C400F4F4F400EEEE
      EE00EEEEEE00EEEEEE00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00E8E8
      E800E4E4E400E6E6E600FEFEFE00C8C8C800A0A0A000B8B8B800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C7E7E005C5C5C00EBECED00A2A2A2007E808000DCDDDE00D8DADA00A6A7
      A800D6D8D900EAEAEC00DEE0E100DCDDDE00DCDDDE00DCDDDE00DADCDD00DEDF
      E000F1F1F1009D9E9E0078797900999999009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009191
      91004A494600F6B55000DA901D00D6810000F3BD6100D57D0000DD962700E1A6
      5100CEA56E000000000000000000000000000000000000000000919191005555
      5500B9B4AC00FFFEF900FFFEF900F0C38800F3BB680087868600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3A3A4005C5C5C008C9DA900CDEDFF00CAE5F5000688D90057B9
      E900D3FFFF00B0F6FF00C3FCFF0096DAF4002E90CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007272720072727200D5D7D5009C9C9C00BCBCBC00F8F8F800F0F0
      F000EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00F0EF
      F000E6E6E600E8E8E800FEFEFE00A8A8A800A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A0A0005C5C5C0094959500FAFBFC008B8C8B008A8C8D008A8C8D008284
      84007E808000AFB0B000EDEDED00EFF1F000EEEFF000F1F1F100EDEDED00F7F7
      F800F9F9F90080828200A0A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007979
      790063544100F1B25100D7850900D8880700D8860400D7840300E6B57500DE99
      3F00C1B9AD000000000000000000000000000000000000000000000000009191
      910064646400A8A39C00B9B4AC00C1C1BF00D7B4840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400494A4A00C7E9FD00C8E9FD0095CCEE00007B
      D400C2F5FD00C3FCFF00DBFFFF0034A1E00078AAC80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007878780066666600D7D8D700A0A0A000B4B4B400FAFAFA00F2F2
      F200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F2F2F200F2F2F200F6F6
      F600F4F4F400F8F8F800F6F6F6009C9B9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000979999006565650090919100D0D2D2008485850070707000EEEF
      F000B2B2B2007A7C7C00E2E4E500FAFBFC00A8A9A9008F90920080828200B9BA
      BA00FEFEFE0090919100B3B4B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      6400A17D4400E9AA4900D6810000D6810000D8800100EABF7F00E4AA5800D0A3
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006666660066707500CDEDFF00CDE8F600279C
      DE002C9BDE00E6FFFF00DBFFFF000282D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D005E5E5E00D8D8D800A6A5A600ACACAC00FCFCFC00F2F2
      F200F4F4F400F6F6F600FCFCFC00FEFEFE00FAFAFA00EEEEEE00DCDCDC00C4C4
      C400B0B0B000A4A4A400A8A7A800BCBCBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A8A9A9007272720052525200C6C6
      C600BABABC007E808000E0E1E200EAEAEC0084858500BCBEBE00CFD0CF008A8C
      8D009799990084858500B6B6B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5005555
      5500DFA85200E2A03900D8800100E2890100AE966F00FAEEE300F2B56400C6BD
      B100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009292920052525200B0CDE000C7E9FD00B5DB
      F200007BD40081E1F50070D6F200278ED1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080005A5A5A00D8D8D800A8A8A800ACACAC00FEFEFE00F4F4
      F400E4E4E400CCCCCC00B4B4B400A8A7A800A0A0A000A2A2A200A2A2A2009C9C
      9C008A8A8A008E8E8E00B4B4B400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000888A8900595A5A00CACC
      CD00E4E5E6008A8C8D00909191009B9C9C006B6D6D00888A8900C2C3C300C7C8
      C80084858500B0B0B00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9D9D005353
      5300EAD2B100F1B14B00DD810000AC8852009595950099999900ABAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007474740059595A00EAFDFD00EEFF
      FF006DC0F5000088E0000188DD0077AACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000868686005E5E5E00F0F0F000B4B4B4009C9B9C00A2A2A200A09F
      A000A6A5A600A4A4A4009C9B9C008E8E8E008686860096969600ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9E9E008282
      82006B6B6B0071727200808080008E909000A0A0A000A8A9A900A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C0064646400988D7B00BA9C7000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B8B8B00717170007877
      760094918F006697B5006D95AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A8A800727272007A7A7A00C2C3C200999999008C8C8C008A8A
      8A009C9B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ACACAC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A2A4A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A09A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD009E9EB300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE009EA39E00969C96009EA39E00AAB1AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007979
      79003487D4002D7CC6001B94FD002485E3004C77A10095989C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008989890074665000F3930000E3860100C87B1100AD7525009D7946009284
      70009F999100B1AEAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A1A1A1005E5E67000F0FC5000405D7007070A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9A
      9A005C795C001F941F0006A5060000A9000000AD000000AD000000A500001099
      10003D973D0090B2900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000838383004D57
      61002B9EFF001B8BF3001B8BF3002EA9FD002EA9FD001B94FD002485E3005879
      98009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000065656500C49A5D00DD850000F4C46700FBCF7E00FDC56A00F0A52800EDA1
      2700E9910800E6880000D7800C00BD791E00A97A3B00937F63009E948700A8A7
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A00484869000000D4000000D4003F4EED000000D1006262
      9D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A9A9A00526C52000AA0
      0A0000AD00002CC62C007AF27A0094FD9400A0FFA000A4FFA400A0FFA00094FD
      940063E1630010B11000209B20008FAA8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000656565006B9C
      CB002294FB0036B1F7002AA1F5001D9BF40063EBFD005BE4FC004CCCFC0025A3
      FE001390FE00277DD200637C9400A2A2A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A1A1
      A1004B4B4B00FAC97D00D57D0000F3BF6100FEBA4D00FFC35300FFB83D00FEE6
      C100FEEBC300FEE8BC00FFE2AC00FCD59700FBC57200F2B04900EE9F2500E991
      0800E0870900C47B1800A77431009B7E5600A0917C00A4A09A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A1A1A100545454004A4AE5000000CE00435BF100718DFE005A6FF6000000
      D4004F4F9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500838383003939B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282002871280000A9000021BE
      210081F3810094FD94008EF88E007AF27A006DF16D006DF16D0072F172007AF2
      7A008EF88E00A0FFA0007AF27A0010B110004A974A0000000000000000000000
      000000000000000000000000000000000000000000009A9A9A00494B4D0083CA
      FE001B8BF30033ADF60039B1F7000F8FF40090FBFE0038E4FE004DE3FE0063E6
      FC0063E6FC003DC9FF0025A3FE00158BFE002D80D200637C9400ABABAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99004B4B4B00FECF8800D5810100EEB95800FFB94300FFB94300FFB23400FEE6
      C100FEEBC300FEE6C100FEE6C100FEEBC300FEEBC300FEEBC300FFECCB00FEEB
      C300FEE8BC00FFE2AC00FCD59700FBC57200F3AF4500F19D1800E4921200CC96
      4900000000000000000000000000000000000000000000000000000000000000
      00007979790061618D00EDEDFE002D2CD300171ED6006985FC00627AF7006178
      F9000405D7003F3FA70000000000000000000000000000000000000000000000
      000000000000000000008E8E8E00363661000505CA001E23E5002424B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A797A001E7C1E0000A9000044DB440085F9
      850085F9850062EC620055E8550055E8550055E8550055E8550055E855005BEA
      5B005BEA5B0062EC620081F3810094FD94003DD33D002A992A00000000000000
      00000000000000000000000000000000000000000000908F8D00494B4D008BD1
      FF001B8BF30033ADF60042C1FB000D81F10086FAFF002AE8FF0013E2FF0013E2
      FF002DE2FE0053E2FD0063E6FC0063E6FC0042C1FB001C9AFE00158BFE00347A
      C10071859800ABABAC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99004B4B4B00FECF8800D5810100EBB14C00FFB83D00FFB83D00FFAD2B00FFEC
      CB00FEF1DB00FFEDD300FFEDD300FFECCB00FFECCB00FEEBC300FEEBC300FEE6
      C100FEE6C100FEE6C100FEEBC300FEEBC300FFECCB00FED47D00FFF6BA00D38E
      230000000000000000000000000000000000000000000000000000000000A5A5
      A50054545400C0C0FC00EDEDFE00DDDCF6000E0CCC001C25DA006985FC004B6E
      FE006985FC00070BDB003333A300000000000000000000000000000000000000
      0000000000007272720018187E000000CE002429DD006985FC006F7DF9004A49
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000007D7D7D00286D280000A900003DD33D0081F3810071EA
      71004CE34C0005A9050029CD290048DD480044DB440044DB440044DB440048DD
      48004CE34C004CE34C0052E6520062EC620085F9850054D954002A992A000000
      00000000000000000000000000000000000000000000908F8D00454646008BD1
      FF00138AF20036B1F7004CD4FD000E79EF0065F4FE0039EBFF001AE3FF0013E2
      FF0010DCFF0006D8FF0006D8FF0022DDFE004DE3FE0063EBFD0053DFFE0033BA
      FD001B94FD001B8CFB00397ABB007D8B98000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C004B4B4B00FCCC8400D8880700E9AC4400FEB53A00FEB53A00FFAD2B00FEEB
      C300FEF6E800FFF4E400FFF4E400FFF4E400FEF6E800FEF1DB00FEF1DB00FEF1
      DB00FEF1DB00FEF1DB00FFEDD300FFEDD300FEF1DB00FDC56A00FFE69700D38E
      230000000000000000000000000000000000000000000000000000000000ADAD
      AD006161610088889600EDEDFE00E5E5FB00D3D3F5000000C9002732E0006985
      FC003C63FE006985FC000E15DF002323AC00000000000000000000000000ADAD
      AD0069696800101081000000CE001C25DA006985FC002C4FF8006572ED003F3E
      C800000000000000000000000000000000000000000000000000000000000000
      000000000000939393004554450000AD00001ABA1A007AF27A0063E1630044DB
      44003BD93B0022C3220000A0000006AE060027D1270032D4320032D4320032D4
      32003BD93B003BD93B0044DB440048DD480055E8550081F381004BD34B004199
      410000000000000000000000000000000000000000008D8D8D004C52570083CA
      FE00138AF20039B1F70053E2FD000E79EF0049EBFE005BF0FF0013E2FF0013E2
      FF0010DCFF000ADBFF0006D8FF0001D3FF0002CAFF0002CAFF0028D3FE0053E2
      FD0063EBFD0053DFFE0033BAFD001C9AFE001B8BF3004078AF008B939A000000
      000000000000000000000000000000000000000000000000000000000000A1A1
      A10052525200EBC18000D98A0D00E4A33B00FFB83D00FFB02C00FFAB2300FEE5
      BC00FFFCF300FFF4E400FFF4E400FFEDD300FEF1DB00FFEDD300FFEDD300FFED
      D300FFEDD300FEF1DB00FEF1DB00FEF1DB00FEFAEB00FECE7A00FFD88400DF9B
      2C00000000000000000000000000000000000000000000000000000000000000
      0000A1A19F005C5C5D009A9AA900E9E9FD00E5E5FB00C1C0F1000000C5002D42
      EA006985FC002C57FF006C8BFE001722E1001C1CB500A9A9A900A9A9A9006565
      62000C0C89000000C9001722DE00718DFE001943FC006985FC001A18CC00ADAD
      C100000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9005E5E5E000B990B0000A500005CDB5C006CE46C003BD93B0032D4
      32002BD02B002BD02B0000AD0000BDE6BD0014AD140001B9010022CB220022CB
      22002BD02B002BD02B0032D4320032D432003BD93B0048DD48007AF27A0025BF
      25007CA57C00000000000000000000000000000000008383830047515A0089CC
      FF001482F10039B1F7005CEBFD00137DF1003AD9FE0079F6FF0013E2FF0013E2
      FF0010DCFF000ADBFF0006D8FF0001D3FF0002CAFF0002CAFF0003C4FE0002BF
      FF000AC1FF0031CEFE0053E2FD0063EBFD004CD4FD002EB0FF001B94FD00218C
      EB005681AA00000000000000000000000000000000000000000000000000A5A5
      A50052525200EBC18000DC8D1100DF9B2C00FFB23400FFAD2B00FFA81D00FEE1
      B400FFFEFD00FFFCF300FFFCF300FFFCF300FFFCF300FFFCF300FFFCF300FFFC
      F300FFFCF300FFFCF300FEFAEB00FEF6E800FFFCF300FEDB9800FEC96C00E5A9
      4400C3B5A2000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A0054545400ABABBF00E9E9FD00E9E9F900ACACEC000000
      C5003C53EE006382FE00224DFE006C8BFE001E2DEA001313C3004F4F59000909
      91000000D1000F1FE300718DFE001943FC005779FF003437D9006D6DC4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007D7D7D00396C390000AD00001ABA1A006CE46C0043D243002BD02B0022CB
      22001EC81E0022CB22000ABC0A0034B83400FEFEFE006CCB6C0000A500000ABC
      0A0012C2120019C519001EC81E0022CB22002BD02B0032D4320044DB440071EA
      71000EA10E00000000000000000000000000000000008383830049545D0083CA
      FE001482F1003DB4F8005BF0FF001985F00021C1FA0090FBFE0013E2FF0013E2
      FF0010DCFF000ADBFF0006D8FF0001D3FF0002CAFF0002CAFF0003C4FE000AC1
      FF000ABBFE000CB5FD000CB5FD001AB2FD0034C6FC0053DFFE0063EBFD004CD4
      FD002AA5FD009CB2C8000000000000000000000000000000000000000000A5A5
      A50052525200EBC18000DC8D1100DE952000FEB53A00FFA81D00FFA31400FEDB
      9800FFFEFD00FFF4E400FEF1DB00FEF1DB00FEF1DB00FEF1DB00FEF1DB00FEF1
      DB00FFF4E400FFF4E400FEFAEB00FEFAEB00FFFEFD00FEE6C100FEBC5400F1BB
      5B00C5AD8A000000000000000000000000000000000000000000000000000000
      000000000000000000009393930054545400BDBDD300E5E5FB00E9E9F9008D8C
      E6000000C5003E5EF6005F82FF00123EFE006C8BFE00253AEF000000C5000000
      C5000F1FE300718DFE00224DFE003C63FE005969EE002424C600000000000000
      000000000000000000000000000000000000000000000000000000000000A1A1
      A100525152002BBC2B0000A000003DD33D005CDB5C001EC81E001EC81E0019C5
      190012C212000EC00E000ABC0A0000A50000B2E5B200FEFEFE00DCF2DC0014AD
      140000AD000001B901000ABC0A000EC00E0019C5190022CB22002BD02B0054D9
      54003BCC3B0064A464000000000000000000000000008383830049545D0083CA
      FE001482F1003DB4F80065F4FE001B8BF30016AAF60098FDFF0025E7FF001AE3
      FF0010DCFF000ADBFF0006D8FF0001D3FF0002CAFF0002CAFF0003C4FE000AC1
      FF000AC1FF0011BAFE0011BAFE001AB2FD001BACFD001BA5FD002AA5FD003CBB
      F90053D3FE0080A8D0000000000000000000000000000000000000000000A8A7
      A50052525200EBC18000DE952000DB911B00FEB53A00FFA00D00FFA31400FFCC
      7E00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFE
      FD00FFFEFD00FFFEFD00FFFEFD00FFFCF300FFFEFD00FEF1DB00FEB53A00F4C4
      6900C8A26D000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A8A8A004D4D4D00CCCCE500E5E5FB00E9E9
      F9006D6CDF000000C900426AFE005B7BFE000C3AFE006C8BFE002D42EA000219
      E200718DFE00335AFD001340FE006C8BFE000805C7009C9CC200000000000000
      0000000000000000000000000000000000000000000000000000000000007A79
      7A00436643001AB61A0000A5000054D954003DD33D000EC00E000EC00E000ABC
      0A0001B9010001B9010001B9010001B9010000A50000FEFEFE00FEFEFE00FEFE
      FE0084D0840000A5000001B9010001B901000ABC0A000EC00E0019C5190029CD
      290063E1630012A112000000000000000000000000008383830049545D0089CC
      FF000D81F1003CBBF90063EBFD001D9BF4001399F50098FDFF002AE8FF002AE8
      FF001AE3FF000ADBFF0006D8FF0001D3FF0001D3FF0002CAFF0003C4FE000AC1
      FF000AC1FF0011BAFE0011BAFE001AB2FD001BACFD0022AAFE0025A3FE00229A
      FD004CCCFC00579AD9000000000000000000000000000000000000000000ABAB
      AC005A5A5A00DCB47800DF972900D98A0D00FEB53A00FF9E0A00FFA00D00FEC1
      5C00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFE
      FD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFFEFD00FFAD2B00FEC9
      6C00CC9649000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000838383004D4D4D00DDDCF600E5E5
      FB00E5E5FB004847D9000000CE005174FE005779FF000435FF006985FC007490
      FF003C63FE00002CFF00718DFE001C25DA005454C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E5E
      5E0056AD560008A8080005A9050052D5520022C322000ABC0A0001B9010001B9
      010001B901000ABC0A000ABC0A000EC00E0001B901005CC55C00FEFEFE00FEFE
      FE00FEFEFE00EAF7EA0022B2220000AD000001B9010001B901000ABC0A000EC0
      0E0044DB44001AB61A0090B2900000000000000000007979790052616F007DC5
      FF000D81F10043BCF80063EBFD0028AAF7000F8FF40086FAFF0036EAFF002AE8
      FF0031E1FE0022DDFE000ADBFF0001D3FF0001D3FF0002CAFF0003C4FE000AC1
      FF000AC1FF0011BAFE0011BAFE001AB2FD001BACFD0022AAFE0025A3FE00229A
      FD004ABEFB003994E50000000000000000000000000000000000000000000000
      00005A5A5A00DBB37700E19B3100D98A0D00FFB83D00FF960000FF9E0A00FF9A
      0100FF9A0100FF9A0100FFA00D00FFA31400FFA61A00FFA81D00FFAB2300FFB0
      2C00FFB02C00FFAF3500FEB53A00FFB54300FFB54300FEBA4D00FFAB2300FEC1
      5C00CE8E2F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007979790054545400E5E5
      FB00E9E9FD00F1F1FA002D2CD3000000D4004B6EFE00002CFF000C3AFE00224D
      FE00002CFF004C72FF00435BF1001212CC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C004E4E
      4E0064D06400009D000008B0080045CF45000EC00E0001B9010001B901000ABC
      0A000EC00E000EC00E0012C2120012C2120019C5190000A50000DCF2DC00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE0093D9930000A9000001B9010001B9010001B9
      010019C519003BCC3B004AA24A000000000000000000797979004B5F720082C5
      FF000D81F10043BCF80063EBFD0033BAFD000D81F10065F4FE0044EBFF002AE8
      FF002DE2FE0031E1FE0032DBFE0010DCFF0001D3FF0002CAFF0003C4FE000AC1
      FF000AC1FF0011BAFE0011BAFE001AB2FD001BACFD0022AAFE0025A3FE00229A
      FD0040AAF7002C93EF0000000000000000000000000000000000000000000000
      00005A5A5A00DBB37700E19B3100D8880700FFC14B00FF960000FF9A0100FF9E
      0A00FFA00D00FFA00D00FFA81D00FFA81D00FFAB2300FFAD2B00FFB02C00FFB2
      3400FFB23400FFB23400FFB23400FFB23400FFB02C00FFB02C00FFAD2B00FFB9
      4300D38E23000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272005C5C
      5D00EDEDFE00BDBDF2003938D3000000C5002245F600335AFD00335AFD00335A
      FD00335AFD002651FF00040AD4004343AB000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C00464C
      460070DB700000A0000008B008003BCC3B0001B9010001B901000ABC0A000EC0
      0E0012C2120019C519001EC81E001EC81E0022CB220016C816000FAC0F00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F9FDF90034B8340000AD00000ABC
      0A0001B9010041CE41001F9D1F000000000000000000747474005467790082C5
      FF000D81F10043BCF80068EAFE0038C3FB00137DF10049EBFE005BF0FF002AE8
      FF002DE2FE0031E1FE0031E1FE0032DBFE0032DBFE0016D1FF0003C4FE0003C4
      FE000AC1FF0011BAFE0011BAFE001AB2FD001BACFD0022AAFE0025A3FE0025A3
      FE003295F3002B9DF40000000000000000000000000000000000000000000000
      00005A5A5A00D7B17600E4A33B00D5810100FEC15C00FF9A0100FF960000FF96
      0000FFA61A00FFAD2B00FFB83D00FFB64800FEBA4D00FEBA4D00FEBA4D00FEBC
      5400FEBC5400FEBC5400FEBC5400FEBA4D00FFB94300FFB02C00FFA61A00FFAB
      2300DB911B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9005C5C
      5D00373778000000A9000000C5004057EE004067FE003C63FE003C63FE003C63
      FE003C63FE003C63FE004067FE000B0EDA004A4A950000000000000000000000
      0000000000000000000000000000000000000000000000000000828282004B54
      4B0082DF8200009D000000AD00003BCC3B000EC00E000EC00E0012C2120019C5
      190019C519001EC81E0029CD290027D1270032D432003DD33D0000A00000F2FB
      F200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EDF8ED0000A5000001B9
      010001B9010035CA35000CA50C000000000000000000747474004E63770073C0
      FF000D81F10042C1FB0068EAFE0042DCFE001379EF002DE2FE0073F2FE0025E8
      FF002DE2FE0031E1FE0031E1FE0032DBFE0032DBFE0042DCFE004ADBFE0031CE
      FE0015C4FF000ABBFE000CB5FD000CB5FD001AB2FD0022AAFE0025A3FE0025A3
      FE00218CEB003699F40094B1CA00000000000000000000000000000000000000
      00005A5A5A00C0A06D00E8AA4800D57D0000FEC96C00FFA61A00FFB83D00FFB6
      4800FFB54300FFB54300FFB54300FFB64800FEBA4D00FEBC5400FEBC5400FFBD
      5B00FEBC5400FEBC5400FEBC5400FEBC5400FFBD5B00FEBC5400FEBA4D00FFB8
      3D00DF9926000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000838383002B2B
      63000000B2000000CE005767EF00426AFE00426AFE00426AFE004067FE004067
      FE004067FE004067FE00426AFE005174FE001B1DDF003B3B9800000000000000
      00000000000000000000000000000000000000000000000000007D7D7D004554
      450093E5930000A0000000A9000045CF450016C8160019C5190029CD29003DD3
      3D004BD34B0052D5520054D9540054D9540063DC63004BD34B0022B22200FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE009ADA9A0000A5000035CA350041CE
      41001EC81E003BCC3B0004A104000000000000000000747474004E63770089CC
      FF000D81F1004DC6F90068EAFE004DE3FE00137DF10026CEFD0083F4FF0025E8
      FF002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD005AD3FD005AD3FD0050CDFB0038C3FB0022B5FE001BA5FD001BACFD0025A3
      FE00218CEB0046A1F3007AA8D200000000000000000000000000000000000000
      000062626200B0936600E8AA4800D57D0000FEDB9800FEC15C00FEC36300FFBD
      5B00FEC15C00FEC15C00FEC15C00FEBC5400FEBC5400FEC15C00FEC36300FEC3
      6300FDC56A00FBC57200FFCB7800FFCB7800FFCC7E00FECF8800FEBA4D00FEBA
      4D00E9A93E00C3B39B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083838300272761000000
      B2000000CE006271F2004C72FF004B6EFE004B6EFE005174FE005B7BFE006C8B
      FE006C8BFE005174FE005174FE004C72FF005F82FF003039E9002D2DA4000000
      0000000000000000000000000000000000000000000000000000828282004B54
      4B0093E593000BA40B0000A5000063DC630054D954004BD34B0052D5520052D5
      520054D954005CDB5C0063DC630063DC63006CE46C0003B00300C9ECC900FEFE
      FE00FEFEFE00FEFEFE00FEFEFE0049C0490008AF08005CDB5C005CDB5C0054D9
      54004ECF4E0071DC710006A506000000000000000000706F6F0064819D007DC5
      FF000D81F1004DC6F90068EAFE004DE3FE001482F10018BCF90090FBFE0025E8
      FF002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD0053D3FE005AD3FD0064D2FF0073D1FF0083D1FF008BD1FF0069C4FF002EA9
      FD001B8BF3004EA4EF004C99E100000000000000000000000000000000000000
      000062626200B0936600EAB05500D1750000FFE09C00FDC56A00FEC36300FEC1
      5C00EFAB5200DA893700D9873200FEE6C100FEE1B400FEE1B400FEE5BC00FEE5
      BC00FEEBC300FFECCB00FFF4CE00FFECCB00FEE6C100FEE6C100FEBC5400FEBC
      5400F1BB5B00C5A8800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7C0021216A000000BD000000
      CE006D7BF0005B7BFE005779FF005B7BFE006985FC007490FF00ADC0FF006D7B
      F0009AADFE0092A5FD00718DFE006382FE005779FF006C8BFE004854F0002323
      AC000000000000000000000000000000000000000000000000008C8C8C004646
      460099EC990032B33200009D000070DB700070DB700052D552005CDB5C005CDB
      5C0063DC630063DC630063DC63006CE46C0063E1630005A90500FEFEFE00FEFE
      FE00FEFEFE00EDF8ED000CAA0C002CC62C0072E272006CE46C0063DC630063DC
      630054D9540080E4800000A5000000000000000000006B6B6B005C81A3006BB9
      FF000B7DF0004DC6F90063E6FC005CEBFD001B8BF30016AAF60086FAFF0025E8
      FF002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD0053D3FE005AD3FD0064D2FF006CD1FF007CD0FF0083D1FF0092D2FE0096D8
      FF004FA9F4004395DB003392EA00000000000000000000000000000000000000
      000062626200AE926500ECB45D00D1750000FFE09C00FEC96C00FDC56A00FEC9
      6C00EA9C3900C65A0000C85B0000FEEBC300FEE1B400FEE5BC00FEE5BC00FEE5
      BC00FBDEAC00CC680400CC680400C85B0000FBDEAC00FEEBC300FEC96C00FEC1
      5C00FBC57200C49A5D0000000000000000000000000000000000000000000000
      0000000000000000000000000000767676001A1A77000000BD000000D1007382
      F2006C8BFE005B7BFE006C8BFE007A94FF00829AFF00ADC0FF0092A5FD000000
      C5001010D000BBCCFF009FB4FF00829AFF007490FF005F82FF007490FF006271
      F2001717B400A6A6AC00000000000000000000000000000000009A9A9A005251
      52009ADA9A0077CF7700009800004ECF4E0080E480005DD75D005DD75D0063DC
      63006CE46C0072E2720072E2720082E982001ABA1A0093D99300FEFEFE00FEFE
      FE00ABE3AB0000A000005CDB5C0089ED89007CED7C007BE47B0072E2720072E2
      72006BDC6B0088E688000AA00A0000000000000000006B6B6B005C81A30082C5
      FF000B7DF00050CDFB0063E6FC005BE4FC001D9BF4001290F4007DFBFF002AE8
      FF002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD0053D3FE005AD3FD0064D2FF006CD1FF0073D1FF007DCEFF008BD1FF0092D2
      FE009ED3FF0075A2C7001B8BF300000000000000000000000000000000000000
      000065656500A2886000EEB66000D1750000FFE09C00FEC96C00FDCC7300FDCC
      7300F0A84B00C85B0000C85B0000FEEBC300FEE8BC00FEE8BC00FEE8BC00FEE8
      BC00FEEBC300C7560000CB640000C65A0000F7D8A600FFECCB00FED28300FEC1
      5C00FED28300C98E3C0000000000000000000000000000000000000000000000
      000000000000000000006D6D6D00141479000000BD000000CE007382F2007C99
      FF005F82FF007490FF00829AFF0092A5FD00ABBDFF00D4DEFF000A0CCF005D5C
      DC004847D9002528D600D1DDFF00A6BAFF0092A5FD00829AFF006C8BFE007C99
      FF007A8AFC001615BD009B9BA300000000000000000000000000000000005E5E
      5E00799C7900ABE3AB00009D000010B110008AE88A0072E272006BDC6B0072E2
      720072E272007BE47B007CED7C0082E9820000A00000FEFEFE00FEFEFE005CC5
      5C0000AD000086EC860092F492008CED8C0086EC860085EA850080E480007BE4
      7B007BE47B007BE47B001AA11A00000000000000000065656500698FB20070BA
      FE000B7DF00050CDFB0063E6FC005BE4FC001CAFF700138AF20065F4FE0039EB
      FF002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD0053D3FE005AD3FD0064D2FF006CD1FF0073D1FF007DCEFF008BD1FF0092D2
      FE0094CDFC00BED2E1003295F300ABB8C5000000000000000000000000000000
      00006C6C6C008E795900EFBA6700D1750000FFE09C00FDCC7300FFCB7800FDCC
      7300F1BB5B00C85B0000C85B0000FEF1DB00FEF1DB00FFECCB00FEEBC300FEEB
      C300FFF4CE00C85B0000CB640000C85B0000F1CC9400FFF4CE00FEDEA000FEC3
      6300FEDB9800CE8B240000000000000000000000000000000000000000000000
      0000A9A9A90066666600101081000000C5000000D1007B8BF5008AA2FF006382
      FE007490FF008AA2FF009AADFE00A6BAFF00DAE5FF007279ED000000CE00EDED
      FE00ECECFA001C1BD0004C50DE00DAE5FF00ADC0FF009AADFE00829AFF006C8B
      FE008AA2FF0092A5FD001313C300000000000000000000000000000000007676
      76004B544B00BFF5BF003EB83E00009D000072E2720092E8920072E272007BE4
      7B007BE47B0082E982008EF08E0045CF45006CCB6C00FEFEFE0014AD14002BBC
      2B009DF59D009DF59D0098F5980095F1950092F192008CED8C0089ED890082E9
      820099EC99004ACD4A0047AA47000000000000000000656565005B88B20066B4
      FD000B7DF00050CDFB0063E6FC005BE4FC0026BAFA001482F10049EBFE0049EB
      FE002DE2FE002DE2FE0031E1FE0032DBFE0032DBFE003AD9FE0042D5FD004CD4
      FD0053D3FE005AD3FD0064D2FF006CD1FF0073D1FF007DCEFF0083D1FF0092D2
      FE0094CDFC00C6DEF10055A9F80094B1CA000000000000000000000000000000
      00006C6C6C008E795900F2BE6D00D0730000FEDB9800FED28300FED47D00FFCC
      7E00F9BF6800C85B0000C7560000FCF0D300FEF6E800FFF4E400FFF4E400FFF4
      E400FFFCF300CC680400CB640000C85B0000E7B27200FFFCDB00FEE1B400FDCC
      7300F8CC7900CE9139000000000000000000000000000000000000000000A9A9
      A900616161000C0C86000000C5000000CE007B8BF5009AADFE006985FC007490
      FF008AA2FF009AADFE00ABBDFF00D1DDFF00D1D9FD000000D40038376A00E9E9
      FD00E9E9FD00DDDCF6000505CA00797CE700DAE5FF00ADC0FF009AADFE00829A
      FF0094ABFE006977EE004D4CC800000000000000000000000000000000009A9A
      9A0052515200AED3AE00B2E5B200009800001AB61A009CEE9C0092E8920080E4
      800082E982008CED8C009DF59D0000A50000ABE3AB0000A500005DD75D00AAFA
      AA00A6F9A600A2F8A200A0F6A000A0F6A0009DF59D0099F1990094EF940091EF
      9100AEF3AE0008A808008FB78F0000000000ABABAC00656565006E97BF007DBF
      FD000B7DF0005AD3FD0063E6FC005BE4FC0034C6FC001379EF002AE8FF0063EB
      FD0025E8FF002BDFFE0038E4FE0038E4FE0037D5FD0037D5FD0042DCFE004CD4
      FD0050CDFB005AD3FD0064D2FF006CD1FF0073CFFF007CD0FF0083D1FF0092D2
      FE0094CDFC00BDD8EC007DBFFD006AA2D5000000000000000000000000000000
      00006C6C6C008E795900F2C07200D1750000FEDB9400FED28300FED28300FED2
      8300F8CC7900C85B0000C7560000F9E6CA00FEFAEB00FFFAE600FFFAE600FFFA
      E600FFFEFD00D1761B00CB640000C85B0000DF9A4C00FFFCDB00FFECCB00FFD9
      8D00D7891100C3B5A20000000000000000000000000000000000A9A9A9006161
      64003535C6000000CE000000CE008495F900A6BAFF007490FF007490FF008AA2
      FF009AADFE00ABBDFF00C3CEFE00ECF5FF002D2CD3002D2DB600727272005C5C
      5D00E9E9FD00E9E9FD00D3D3F5000000C9009EA1F000DAE5FF00ABBDFF009AAD
      FE00A6BAFF001212CC0000000000000000000000000000000000000000000000
      000071717100575E5700D6FBD60053C15300009800005DD75D00A8F1A80094EB
      94008CED8C0095F1950070DB7000009D000005A905008CED8C00AEFCAE00AEFC
      AE00ABFCAB00ABFCAB00ABFCAB00AAFAAA00A6F9A600A0F6A0009CEE9C00B0F5
      B0007BE47B0012A112000000000000000000A5A5A5005C5C5C006FA0CE006AB7
      FE000B7DF0005AD3FD0063E6FC005BE4FC0037D5FD00137DF10032DBFE0098FD
      FF0071F9FF0071F9FF0071F9FF0079F6FF0079F6FF0079F6FF0079F6FF0083F4
      FF0083F4FF0083F4FF0089EFFF0089EFFF0087EFFF0091E3FF008FE3FF0096D8
      FF009CD8FF00ADC9DA0090BDE7004C99E1000000000000000000000000000000
      00007373730081705600F4C17300D1750000F7D88F00FFD98D00FCD58900FCD5
      8900FED28300C65A0000C85B0000F4DCB900FEFAEB00FFFAE600FFFAE600FFFA
      E600FFFEFD00D6823000C85B0000C7560000D47C2500FFFAE600FFFCDB00F4C4
      6900CE8E33000000000000000000000000000000000000000000939393005454
      5400DADAFC005D5DE9000000C9006D78EB00ABBDFF008AA2FF00829AFF0094AB
      FE00A6BAFF00B8C6FF00E6F0FF009B9DEC000505CA00A7A7BF00000000006D6D
      6D0064646A00EDEDFE00E9E9FD00BDBDF2000000C900BCC2F700CBD7FF00B7C8
      FF005B60E3006464C50000000000000000000000000000000000000000000000
      0000A1A1A1005B5B5B0098A99800DFFADF000CA50C0000A000008AE88A00B0F3
      B0009EF09E009DF59D0022B822001FB61F00ABFCAB00B4FDB400B0FCB000B0FC
      B000B4FDB400B4FDB400B4FDB400B0FCB000ADF9AD00AAFAAA00B1F8B100BDF9
      BD0005A905007CB67C000000000000000000A5A5A5005C5C5C006397CA005BB1
      FD000B7DF0005AD3FD0063E6FC005BE4FC003AD9FE001482F1001482F1001482
      F1001482F1001482F1001482F1001482F1001482F1001482F1001482F1001482
      F1001482F1001985F0001985F0001985F0001985F0001B8BF3001B8BF3001B8B
      F3002294FB00229AFD0025A3FE003B9DF1000000000000000000000000000000
      000073737300665D4D00F7C77A00D1750000F6D38600FEDB9800FFD98D00FFD9
      8D00FFD98D00C85B0000C85B0000EFCC9F00FFFCF300FEFAEB00FEFAEB00FEFA
      EB00FFFCF300E6B37B00E2AC7400F2D6B700FEF6E800FFFEFD00FFFEFD00DF9B
      2C00C3B39B000000000000000000000000000000000000000000000000008383
      830054545400E0E0E0008382F0000000C9005B60E300ABBDFF009AADFE009FB4
      FF00ADC0FF00D4DEFF00E4EBFF000000C5006464C5000000000000000000A9A9
      A9006666660076767F00EDEDFE00E9E9F9009B9DEC000000C500D1D9FD00C3CE
      FE001313C3000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C004E4E4E00CADCCA00CCF3CC00009D000000A5000095F1
      9500BBF7BB00B1F8B100A5F6A500B1F8B100B4FDB400B0FCB000B4FDB400B9FE
      B900B9FEB900B9FEB900B9FEB900B9FEB900B4F9B400BDF9BD00CDFFCD0037C5
      370027A62700000000000000000000000000A1A1A1005C5C5C0076A6D60070BA
      FE000B7DF0005AD3FD0063E6FC005BE4FC004ADBFE0026BAFA0022B5FE0022B5
      FE001AB2FD001AB2FD0011BAFE0011BAFE000ABBFE000ABBFE000CB5FD000CB5
      FD0014B3FD0016AFFE0016AFFE001BACFD001AB2FD001BA5FD0025A3FE0025A3
      FE00229AFD00647688009A9A9A00000000000000000000000000000000000000
      000079797900665D4D00FAC97D00D1750000F4CF7F00FFE1A000FEDB9400FEDB
      9400FFE09C00C85B0000C7560000E8B98500FFFEFD00FFFEFD00FFFEFD00FFFE
      FD00FFFEFD00FFFCF300FCF0D300F3D08E00E9AC4400E4921200E6880000D998
      3600000000000000000000000000000000000000000000000000000000000000
      00008E8E8E0054545400C0C0C000AEAEFA000000C9005053DE00B7C8FF00ADC0
      FF00C3CEFE00ECF5FF004142DA001C1CC7000000000000000000000000000000
      0000A5A5A5006161610088889600EDEDFE00E9E9FD008080E6001010D000494A
      DB007B7BC3000000000000000000000000000000000000000000000000000000
      00000000000000000000858585004E4E4E00DEE9DE00C5F1C500009D000000A0
      000086EC8600C5FDC500C0FAC000B4F9B400B4FDB400B9FEB900BCFFBC00BCFF
      BC00BCFFBC00BCFFBC00BCFFBC00C1FEC100CDFFCD00D5FFD5004ACD4A000E9D
      0E00ADBDAD00000000000000000000000000A1A1A1005C5C5C0076A6D60066B4
      FD000D81F1005AD3FD0068EAFE0063EBFD005CEBFD004DE3FE0040E0FD0037D5
      FD002ACDFD0021C1FA001BACFD0015A1F7001399F50002CAFF0002CAFF0003C4
      FE000AC1FF0011BAFE0011BAFE0014B3FD001AB2FD001BACFD0022AAFE0025A3
      FE00229AFD007CA4C80000000000000000000000000000000000000000000000
      000079797900665D4D00FAC97D00D1750000F1CB7800FFE4A400FFE1A000FFE4
      A400FFEFB200D88A3900DE9B5000EFCFA200FCF0D300F0D09100E8AA4800E393
      1900E3860100E8840000E2870600CF881B00AA8042008D7F6800979592000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A005C5C5D00A1A19F00D2D1FE000000CE003D3DD800C3CE
      FE00E6F0FF00A8AFF4000000C5009494C2000000000000000000000000000000
      0000000000009A9A9A0061616100A5A5B100E9E9F900FCFCFD007777EE002525
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A8A8A0052515200C0C0C000E7FFE70008A8
      08000098000043CB4300C1FEC100D5FFD500CDFFCD00C9FEC900C5FDC500C5FD
      C500C5FDC500C9FEC900D5FFD500DDFFDD00C5FDC50025BF25000EA10E00A2BA
      A20000000000000000000000000000000000A1A1A1005C5C5C006AA2D5005BAF
      FD000D81F10043BCF8003DB4F8002AA1F5001B94FD001B8CFB00158BFE00158B
      FE00158BFE00158BFE001B8CFB003295F3001482F10002BFFF0002CAFF0003C4
      FE000AC1FF000AC1FF0011BAFE0011BAFE001AB2FD0022AAFE001C9AFE00229A
      FD001B94FD006EAADF0000000000000000000000000000000000000000000000
      00007C7C7C00635A4B00FAC97D00D47A0000F0C67100FFF5C500FAE2A300F1CB
      7800EAB04A00DC8D1100E1880000E6850000EA890000E18A0900C5882800A683
      4E008B7F6E0091908E00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500666666007E7E7A00EDEDFE000E0ED1002325
      D400D1D9FD000707CD004444C700000000000000000000000000000000000000
      00000000000000000000ADADAD00A1A19F009A9A9A008E8E8E00A1A19F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C006A6A6A007C777C00FEFE
      FE0063D2630000A0000000A000004ACD4A00B0FCB000D5FFD500E1FFE100E1FF
      E100E1FFE100D5FFD500AAFAAA0041CE410000A5000028A02800AAB1AA000000
      000000000000000000000000000000000000A5A5A50065656500A5BBCF00A1DB
      FE001390FE001B94FD00229AFD003098FC00449BEC005591CA00668AAB007185
      9800646D7500636A6F00E9FBFE00E9FBFE00419EF700138AF2000CB5FD000CB5
      FD0013A4FB001C9AFE001B94FD001B94FD001B94FD002294FB002E8DEA004182
      BE0064819D00A9B1B70000000000000000000000000000000000000000000000
      0000838383005E5B5600FFE1A400DC810000DD850000E0820000E6850000EB8C
      0100DC8D1100C08A36009F835A008983780096969600ABABAC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9007272720065656200FCFCFD003838
      E6000000D1000D0DCA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000939393006D6D
      6D007A737A00ADBDAD004DC34D0000AD000000A0000000A5000006AE060010B1
      100008AF080000A9000000A900001AA11A007991790000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500908F8D008383
      83007E858B008D9092009A9A9A00ABABAC000000000000000000000000000000
      00000000000083838300706F6F00D8D8D800EBF3FB005BB1FD001B94FD002294
      FB002E8DEA003D84C8005C81A30076828E0092929300A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500656565009B989500DC9A3300B88A4200958263008D8881009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00696968007E7E
      7A005656B6009090CA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A900949494007A797A00706E7000637B630051945100389838003499
      340046964600668C660094989400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5009A9A9A00908F8D0092929300A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFE7FFFFFDFFFFCFFFFFFFEFFFFFF
      FFFFF80FFFFE07FFF001FFFFF803FFFFFFFFE00FFFFC01FFE00007FFF80007FF
      FFFFC003FFF8007FE000001FF000007FFFFF8003FFF0001FE0000003F000003F
      FFFF8003FFC0000FC0000001F000003FFFE10001FF800003E0000001F000003F
      FF800001FF000001E0000001F0000007FF000001FE000001F0000003F0000007
      FC000001FE000001F0000003F0000007F8000001FE000001F8000003F0000007
      F8000003FC000001FC000007F0000007F0000007FC000001FC000007F0000007
      E000000FFC000003FE000007F000001FF000007FFC000003FE00000FF000001F
      F000003FF8000003FF00000FF000001FE000001FF8000003FF80000FF800001F
      C000001FF8000007FF80001FF800001FC000001FF8000007FFC0001FF800001F
      C000007FF0000007FFC0001FF800001FC000007FF0000007FFE0003FF800001F
      F000003FF0020007FFF0003FF800001FF800003FF003000FFFF0003FF800003F
      F000003FE007800FFFF8007FF800003FF000007FE007C01FFFF8007FF800007F
      F00001FFE007E07FFFFC007FF80000FFF80001FFE00FFFFFFFFE00FFF80000FF
      FE0001FFC00FFFFFFFFE00FFF80001FFFF8003FFC01FFFFFFFFF00FFF8001FFF
      FFC01FFFE1FFFFFFFFFF81FFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFF3FFFFFFFFC1FFF
      E03FFFFFF003FFFFFC1FFFFFFFE003FFC007FFFFF0000FFFF80FFFFFFF8000FF
      C000FFFFE000003FF007FE3FFF00007F80001FFFE000000FF003FC1FFE00003F
      800003FFE000000FE001F80FFC00001F800000FFE000000FE000E00FF800000F
      8000001FE000000FF000000FF000000780000007E0000007F800001FF0000007
      80000003E0000007FC00003FE000000380000003E0000007FE00003FE0000003
      80000003E0000007FF00007FE000000180000003F0000007FF8000FFC0000001
      80000003F0000007FFC000FFC000000180000003F0000007FFC0007FC0000001
      80000001F0000007FFC0003FC000000180000001F0000003FF80001FC0000001
      80000001F0000003FF00000FC000000180000001F0000003FE000003C0000001
      80000001F0000003FC000001E000000180000000F0000003F0000001E0000001
      80000000F0000003E0000001E000000100000000F0000003C0000003F0000003
      00000000F0000007C0002003F000000300000000F0000007E0006007F8000007
      00000001F000000FF000F007FC00000700000003F000001FF800F80FFE00000F
      00000003F00001FFFC01FC1FFF00001F00000003F0003FFFFE03FFFFFFC0007F
      80F8003FF00FFFFFFF83FFFFFFF001FFFFFE0FFFFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Left = 730
    Top = 220
  end
  object ImageList2: TImageList
    Left = 535
    Top = 66
    Bitmap = {
      494C010106001800180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000039724B0039724B0039724B00326C
      4600326C4600326C46002B6541002B6541002B654100255C3700255C3700255C
      37001D5230001D5230001D523000194C2900AF613300AD5F3100AA5D2F00A85A
      2B00A4572700A05423009C4F1F00984C1C0093481800904414008B410F00873E
      0B00843A0800813705007E3402007C3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039724B006BA67B0065A0760065A0
      76005E9B71005E9B710057966A0057966A0048935E0048935E0048935E003C8C
      56003C8C5600348C4E00348C4E00194C2900B8684100EBAE9400EBAD9200E9AB
      9000E6A98F00E4A78B00E0A48800DDA28500D89E8100D59B7E00D1997A00CE96
      7600CB947400C8917200C79070007E3502000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407A56006BA67B00EBF3EB00E8F1
      E800E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADD00DCEADB00D9E8
      D900D8E7D800D8E7D800348C4E00194C2900BB6B4400ECB09600FCF6F500FBF4
      F200FAF3F100FAF1F000F9F0ED00F9EEEC00F8EEEA00F8ECE900F8EAE700F7EA
      E600F6E8E500F6E7E300C8917100813705000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407A560070AA8000EDF5ED00EBF3
      EB00EAF1E900E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEADB00DCEA
      DB00DAE9DA00D8E7D8003C8C56001D523000BE6E4800EDB29A00FCF7F500FCF6
      F400FBF5F300FBF2F100FAF1F000F9F0EE00F9EFED00F9EDEB00F8ECE900F7EA
      E800F7E9E600F7E8E500CA937300843A08000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000046805C0075AF8500EFF6EF00EDF5
      ED00EBF3EB00E9F2E900E8F1E800E4EFE40081AA8D002B512F002B512F002B51
      2F002B512F00DAE9DA003C8C56001D523000C3714B00EEB59D00FDF8F700A950
      25008D4E2800C0B8AB00FAF3F100FAF1F000A9502500573A1300B5AB9C00F8EC
      E900F8EAE800F7E9E700CD967600883E0B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004C8761007BB58A00F3F8F30054A4
      59002B512F002B512F002B512F002B512F001C771D006CB6740048935E004A96
      4C00255C3700DCEADB0048935E00255C3700C7754F00EFB8A100FDFAF900C47A
      5D00DE7543008D4E2800ECE9E600F5F2EF00CD673E008D4E2800573A1300E9DF
      D900F8ECE900F7EBE800D19879008B410F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000548E660081BC9000F4F9F400F1F7
      F10054A4590062B2750054A459001C771D007BC1850048935E004A964C00255C
      370081AA8D00DCEADD0048935E00255C3700CC7A5400F0BBA500FDFAFA00C983
      6800E2957700DE7543008D4E2800E3D6CD00DB7C5700DE7543008D4E2800998B
      7600F9EDEA00F8ECE900D39B7C008F4413000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000057966A008AB79500F6FAF600F5F9
      F500F3F8F30054A459003187340081BC900048935E004A964C00255C37006099
      630060996300DFECDF0048935E00255C3700D17E5900F0BEA900FEFBFB00D38E
      7100B77E6400D19B8300DE7543008D4E2800C56D4900C9836800B6613900573A
      1300E9DFD900F8EEEB00D79D7F00934817000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E9B710094C79C00F9FBFA00F6FA
      F600F5F9F5003187340094C79C005BAA640054A45900326C460003680300E6F0
      E600E2EEE300E1EDE10057966A002B654100D6825D00F2C1AD00FEFCFC00D897
      7D00B77E6400E6BBAC00C9836800DE75430085452300E0AA9600D17446008D4E
      2800A08F7B00F9EFEC00DAA08300984C1B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065A0760094C79C00FCFDFB00F9FB
      FA003F9346009DD0A7006CB674005BAA64004187480054A45900318734000368
      0300E6F0E600E4EFE40057966A002B654100DB866200F2C4B100FEFEFD00DCA0
      8800B77E6400F5E4E000DCA08800E1AC980088482600E2CBC200DDB9AB00B661
      3900573A1300F5F0ED00DEA286009C5020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006BA67B009DD0A700FCFDFC004A96
      4C00AAD6B20072BB7B0072BB7B0048935E005682590067B06E0054A459003187
      340003680300E6F0E6005E9B7100326C4600DF8A6700F4C7B500DF967B00E4A8
      9100E4A89100AD796400FFFFFF00D1866800914F2F00E2CBC200E1AC9800C781
      6800B6613900D49A8000E1A58900A05324000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070AA80009DD0A700FEFEFE0067B0
      6E0063AC680063AC6800569A5D00F6F9F600F3F8F30056825900568259005682
      590056825900E9F2E9005E9B7100326C4600E48E6A00F4CAB800D8957E00D28C
      7200D28D7400C8745500DFBBAE00FEFBFA0099563800FCF8F700CA745300CB7A
      5C00CE795A00C66B4900E4A78C00A45727000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075AF8500AAD6B200FEFEFE00FDFE
      FD00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6F9F600F4F9F400F1F7F100EFF6
      EF00EDF5ED00EBF3EB0065A0760039724B00E7916D00F5CCBB00FFFFFF00FFFF
      FF00FFFEFE00FEFEFE00FEFDFC00FEFCFB00FEFBFA00FDF9F900FCF8F700FCF7
      F600FCF5F400FBF4F300E6AA8E00A75A2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BB58A00AAD6B200FFFFFF00FFFF
      FF00FEFFFE00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6FAF600F4F9F400F1F7
      F100EFF6EF00EDF5ED0065A0760039724B00EB937100F6CEBE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFEFD00FEFDFC00FDFCFB00FEFAFA00FDFAF900FCF8
      F800FCF7F600FBF5F400E9AB9100AA5C2E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007BB58A00AAD6B200AAD6B2009DD0
      A7009DD0A70094C79C0094C79C0094C79C008AB7950081BC90007BB58A0075AF
      850070AA800070AA80006BA67B0039724B00ED967300F7CFC000F6CEBE00F5CC
      BC00F4CAB800F4C7B500F2C4B100F2C1AD00F0BEA900F0BBA500EFB8A100EDB5
      9D00ECB39A00ECB09600EBAE9400AD5F31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081BC90007BB58A0075AF850070AA
      80006BA67B0065A076005E9B710057966A00548E66004C8761004C8761004680
      5C00407A5600407A560039724B0039724B00ED967300ED967300EB947100E891
      6E00E48F6C00E18C6700DD886400D8846000D4805B00CF7C5700CA785200C574
      4F00C1704B00BD6E4700BA6B4400AF6133000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009696
      96002C2C9E006969AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A7008C7B6500B3894F00C89D5E00C59B6100B9996D00C0B6
      A9000000000000000000000000000000000000000000A6A6A6004E7499003078
      BE005A7DA0009DA2A70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9B9B004948
      B9002D3EF4004C5EF6005858AB00000000000000000000000000000000000000
      000073738A009292B40000000000000000000000000000000000000000000000
      000000000000000000009A9A9A00267626002BAC300000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7C7900D89D4B00FFF2C200FFFFE900FFFFE600FFFFE700FFFFE900F4DD
      AC00BA9C720000000000000000000000000000000000696A6A003BA8FE0029A6
      FF005AE7FF0043C7FE00358ED8006382A300A4A8AD0000000000000000000000
      000000000000000000000000000000000000000000000000000064646800FAFA
      FE004647DE00536EF8004A62FA004949AC000000000000000000A3A3A3002D2D
      78002E39EF005661E80000000000000000000000000000000000000000000000
      000000000000818181001690160080EC9B0087F7AF003EA04000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00DFA04900FFF9D700FFF0CC00FFEAC100FFE8BE00FFE8BE00FFEBC400FFF5
      D000FFF9D800C7A371000000000000000000000000005861690039A4FF0037B3
      F80061E6FE001CEDFF0036EAFF004FE4FF0042C4FE00378ACF006C849E00AAAC
      AF00000000000000000000000000000000000000000000000000969696009393
      9D00F1F0FF00282BD8004B6CFD004D6AFF003A3AAF00969696001F1F7C002734
      EE00486CFF00484BD30000000000000000000000000000000000000000000000
      0000636F630025AB250080EBA10040DA76003BD871006EDF8E005E9F5E000000
      0000000000000000000000000000000000000000000000000000A0A0A000AB7C
      3E00FFE5B400FFE9C300FFDFB300FFDDB000FFDBAE00FFDBAC00FFDDAE00FFE0
      B400FFE9C100FEF0CA00BEA5850000000000000000005A646F0034A0FF0043C5
      F9004DD2FB0017E9FF000ADEFF0000D8FF0009D5FF0031DDFF004DE0FF003DBF
      FD003C87C700788DA30000000000000000000000000000000000000000008C8C
      8C00A3A3AE00E8E7FF00161BD800446BFF004B6CFF000708BB001F2FEB003964
      FF004352E800A2A1C10000000000000000000000000000000000000000004368
      430042C1490071E7990033D0680035CE6B0061D88A0039D16F0058C86D0088AA
      880000000000000000000000000000000000000000000000000066615B00F3AE
      4F00FFEDCB00FFD9AA00FFD3A400FFD09E00FFCD9C00FFCD9B00FFCE9C00FFD0
      9F00FFD6A700FFE5BB00ECC58E000000000000000000596674002F9DFF0050D6
      FC003CBBF9002BEEFF000DDFFF0004D7FF0000CEFF0002C5FF0008BDFF001DBF
      FF003FD0FF004DD8FF0042ABF000000000000000000000000000000000000000
      000081818100BABAC800DCD9FF00101CDC004069FF00476BFF003863FF004A6B
      FE005C5AC50000000000000000000000000000000000A8A8A8003E7B3E0051CC
      5B005EE08E002BCB620030CD660073DA94003DB444003ED0720045D5790044B8
      5000A6B4A60000000000000000000000000000000000A4A4A400A8885E00F5BA
      6B00FFDDB700FFCD9A00FFCD9900FFCE9B00FFD09D00FFD09D00FFD09D00FFCF
      9C00FFCC9A00FFD0A000FFE2BA00C3AD8E00000000005A6875002D9BFF005AE2
      FD0026A6F70049F2FF001CE1FF0003D8FF0000D0FF0004C7FF000BBFFF0014B6
      FF001CABFF0025A1FF0040B8F800000000000000000000000000000000000000
      00000000000074747400C1C0D4003733D0001D3FF3002B57FF002854FF001A2A
      E0009E9EB500000000000000000000000000000000006D6E6D00EAFDEA0038B5
      37006CD6890035CF6C006FDF96001AA81D007CC977005CCE76002ECF670056DA
      84003AA73E00000000000000000000000000000000008A8A8A00DBAF7500F3BC
      7400FFD4A600FFCD9900FFD29D00FFD4A000FFD8A200FFD9A500FFD9A300FFD6
      A200FFD49F00FFCE9A00FFD6A900D2A97300A8A8A8005B6D7F002B9AFF0060EA
      FE001998F40055F5FF002EE4FF002ADDFF0006D1FF0000C7FF0009BFFF0013B8
      FF001DAFFF0024A5FF0039A8F700A1B5C8000000000000000000000000000000
      0000000000007979790009099C003345EA00426AFF004269FF00446BFF00456E
      FF002D36D4009B9BA900000000000000000000000000ADADAD006B6A6B00EDFE
      EC002BAD2A0071D9900034BC410050754E00DBF7DA0036AF360078E49E0070E3
      9A0084E8A600469F470000000000000000000000000080808000E8C18E00EFB1
      6600FFDAB000FFD7A900FFDDB200FFE2B600FFE4B900FFE6BB00FFE7BD00FFE5
      BA00FFE3B700FFDDB100FFDBB100DFAF7200A6A6A6005B6F82002897FF0066EF
      FF001492F4005EF6FF002BE4FF0032DFFF003ADCFF0039D4FF001FC6FF0012B9
      FF0014ADFF001EA5FF002D96F10085ACD0000000000000000000000000000000
      0000737376000808AA004F5EF600597EFF006C8BFF0090A4FD007D8CF5007795
      FF006084FF00414EE1008F8FA600000000000000000000000000AAAAAA006B6A
      6B00F0FEEF0023B0240061AD600082828200ACC6AC00ADE1AB004CC45C0088ED
      AC0081EAA70085E39F006AA26A0000000000000000008B8B8B00D9BE9900EAA8
      5100FFEACD00FFE2BA00FFE5BE00FFE8C000FFEAC400FFECC400FFEDC500FFEC
      C600FFEAC400FFE8C100FFE9C900DFB27500A1A1A100627991002596FF0068F0
      FF001793F40063F3FF002AE4FF0030E0FF0034DBFF0047D8FF005BD5FF006ED5
      FF0076D0FF0060C1FF002A95EE0063A2DC000000000000000000000000006868
      6F000606B4005D6BF7006B8DFF00859EFF00B7C9FF00383BDC005653DD00A3AE
      F80099B0FF007595FF00626FEA008383A500000000000000000000000000AAAA
      AA00838383009B9C9B0000000000000000005C5D5C00D4F6D3004CB74B0094EC
      AF0093F0B30094EFB40072D3840090AD900000000000A4A4A400998F8000ECAB
      5200FFE7C600FFE9C500FFEAC500FFEDC800FFF0CB00FFF2CD00FFF3CE00FFF2
      CE00FFF0CC00FFEECA00FFF2D600D5A96F009D9D9D00637E98002595FF006AF0
      FF001F9FF5005AE9FF002BE6FF0030E0FF0033DCFF0042D7FF0053D4FF0066D3
      FF0079D2FF0090D5FF0099C9F0004D9AE20000000000000000005E5E6F000303
      BC006B79F8007A98FF0088A1FF00B8C9FF00A5ABFD003E3D8B00F8F7FE004C4B
      DF00C1CCFD00A1B6FF0095AFFF006161CA000000000000000000000000000000
      0000000000000000000000000000000000009999990086998600C7EEC5002BB3
      3400ADF9C900A1F3BD00B6F9D20031AB3A0000000000000000005E5E5E00FEDD
      AE00EFBA7100FFF3D800FFEFCD00FFF2D000FFF5D300FFF7D500FFF8D800FFF8
      D600FFF6D400FFF5D700FEEDCD00C9AF8D009B9B9B00607F9E002394FE006BEF
      FF0029B0F80047DBFC002BE8FF002CE1FF002FDDFF003ED8FF0050D5FF0062D3
      FF0076D2FF0089D2FF00A5D6FB006DB1EF0000000000969696009090C0002727
      E9009AADFF0089A4FF00ABBEFF00DFE8FF002B2BD100A0A0A00075757800EBEB
      FE004645DE00CEDBFF006168E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069696900C8E8C7007CCB
      79007DE39400C0FDDA006ED583007BB27B000000000000000000999999009F9A
      9300F3B96900FADDAD00FFF8DF00FFF6D800FFF9D900FFFBDC00FFFCDD00FFFD
      DD00FFFCE000FFFEE900E4B571000000000092929200678AAD002193FD006BEE
      FE0034C1FA003ABDF80057DFFC005CDDFC005EDDFC0063DBFC0068D9FC006FD8
      FD0076D5FD0080D2FE0091D3FF0069B1EF0000000000000000008A8A8A009695
      A3003839E5009AA8FD00D9E5FF00595CDF009C9CC200000000009A9A9A008C8C
      9400ECEBFF005253E9007272C700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABAB00676F6700D3F7
      D2002BB1300096ECAC005BAA5A00000000000000000000000000000000008383
      8300BEB9B200F3B46000FADCA800FFFFED00FFFFE700FFFFE500FFFFE500FFFF
      EB00FFFFF400EFC98D00C8B79F00000000008E8E8E006B8EB0002296FD006EF2
      FF0049DFFF0020B2FA0017B0FA000DACFA0005A7F90006AAFB0009A5FB000EA3
      FB0012A0FC00179DFD001E8EEF00828C95000000000000000000000000009A9A
      9A007F7F82005251EB008A8EF4005252C600000000000000000000000000A4A4
      A4008F8F8F009292970000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000083838300B0C4
      B000B2E0B10045A9450000000000000000000000000000000000000000000000
      00009595950083838400EABF8500FABD6500FFEEBC00FFFFE200FFFFE400FFEE
      BC00DEAA6000B1A5960000000000000000008D8D8D006E95B900229DFF0041C4
      FF002FB2FE002BA6FD002893EF0049AAFE002399FE0000D1FF000BC9FF0014BF
      FF001BB3FF0022A9FE002C98F900000000000000000000000000000000000000
      0000AAAAAA007C7C7A005E5EA000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D9D9D007D7C7A0087765F00A17F53009E815B00998F
      830000000000000000000000000000000000000000008D8C8C0077838F008990
      97009EA0A100AEADAD00A4A4A40086827E00A6B6CA00338FE300407EBA005D7A
      9900808A95009C9FA10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E3FFFFFFF80F83FFC1F3FC7FF007807F
      C0C3F83FE003800FC003F01FC0018003E003E00FC0018001F007800780008001
      F807800780000000F803800380000000F001C00180000000E000E30080000000
      C000FF00C00000008001FF80C0010000C041FF81E0010000E0E3FFC3F0030001
      F1FFFFFFFC0F8003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 224
    object N1: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      ImageIndex = 2
      Visible = False
      OnClick = bbtnSaveClick
    end
    object N2: TMenuItem
      Caption = #1040#1074#1090#1086#1082#1086#1088#1088#1077#1083#1103#1094#1080#1086#1085#1085#1091#1102' '#1092#1091#1085#1082#1094#1080#1102
      ImageIndex = 2
      Visible = False
      OnClick = ToolButton3Click
    end
    object N5: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1095#1072#1089#1090#1080#1094
      Visible = False
      OnClick = N5Click
    end
    object open_dir_with_data_pop_up: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1102' '#1089' '#1076#1072#1085#1085#1099#1084#1080
      OnClick = open_dir_with_data_pop_upClick
    end
    object N7: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N7Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 656
    Top = 225
    object N3: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      ImageIndex = 2
      OnClick = Action1Execute
    end
    object N4: TMenuItem
      Caption = #1040#1074#1090#1086#1082#1086#1088#1088#1077#1083#1103#1094#1080#1086#1085#1085#1091#1102' '#1092#1091#1085#1082#1094#1080#1102
      ImageIndex = 2
      OnClick = N4Click
    end
    object N6: TMenuItem
      Caption = #1055#1088#1086#1077#1082#1090
      OnClick = N6Click
    end
  end
  object ImageList3: TImageList
    Height = 32
    Width = 32
    Left = 571
    Top = 69
    Bitmap = {
      494C010108001800180020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCBCBC00B7B7B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BABABA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A2A2A2009A9A9A009F9F9F009D9D9D00999999009F9F9F00ABAB
      AB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A6A6A6009A9A9A009D9D9D009E9E9E009D9D
      9D00A1A1A1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6007C7C7C0095959500919191009090900089898900868686009090
      90009B9B9B00B3B3B300C2C2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A1A10084848400C0C0C000B8B8B800A6A6A6009F9F9F00A1A1
      A100A2A2A200B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA009C9C9C0098989800A0A0A0009D9D9D00ABABAB009F9F9F00A7A7A7009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A2A2A200959595009E9E9E00A0A0A000A4A4A400A4A4
      A400A1A1A1009D9D9D00A5A5A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B7
      B7006E6E6E00ABABAB008B8B8B00DADADA00D0D0D000C0C0C000AEAEAE00A0A0
      A0009696960091919100919191008E8E8E008A8A8A008F8F8F0095959500ABAB
      AB00BCBCBC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000072727200CECECE00B2B2B200F0F0F000FCFCFC00F2F2F200E4E4
      E400D2D2D200C5C5C500BCBCBC00AAAAAA00A1A1A100A1A1A100A1A1A100B2B2
      B200C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8A8009696
      9600A1A1A1009E9E9E00A2A2A200A9A9A900AFAFAF00AFAFAF00AFAFAF00A1A1
      A1009C9C9C00A9A9A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A0A000969696009E9E9E00A0A0A000A5A5A500A3A3A300AFAF
      AF00A8A8A800AAAAAA00A2A2A2009B9B9B00A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      980064646400E7E7E70085858500C8C8C800DEDEDE00E9E9E900ECECEC00E9E9
      E900E7E7E700E2E2E200D8D8D800C8C8C800BDBDBD00AAAAAA009E9E9E009595
      9500919191009090900089898900848484008F8F8F00A4A4A400B3B3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A2006D6D6D00F0F0F000AEAEAE00E8E8E800F4F4F400F4F4F400FCFC
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFAFA00DEDEDE009B9B
      9B007D7D7D006F6F6F007474740084848400A9A9A90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A60095959500A9A9
      A900B9B9B900A6A6A600A4A4A400B0B0B000BABABA00B2B2B200AFAFAF00AFAF
      AF00AAAAAA009E9E9E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D00979797009E9E9E00A2A2A200A5A5A500A5A5A500A4A4A400BDBD
      BD00B1B1B100B3B3B300ACACAC00ADADAD009F9F9F009E9E9E00ABABAB000000
      0000000000000000000000000000000000000000000000000000000000007A7A
      7A00A5A5A500FCFCFC00ABABAB0088888800DADADA00E0E0E000C8C8C800CBCB
      CB00D0D0D000D0D0D000D8D8D800D8D8D800DDDDDD00E2E2E200E4E4E400E4E4
      E400DDDDDD00D6D6D600CBCBCB00BDBDBD00AEAEAE00A0A0A000969696009191
      9100898989009696960000000000000000000000000000000000000000000000
      00009696960070707000F0F0F000AFAFAF00E0E0E000F4F4F400F2F2F200F6F6
      F600F8F8F800FAFAFA00FCFCFC00FFFFFF00FFFFFF00FFFFFF00ACACAC008080
      80008989890095959500C0C0C000B0B0B0007F7F7F00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900AAAAAA00B8B8
      B800A3A3A3009B9B9B00A8A8A800B5B5B500ABABAB009B9B9B009D9D9D00B0B0
      B000ADADAD00A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB009B9B
      9B00999999009E9E9E00A2A2A200A6A6A600AEAEAE00B1B1B100A6A6A600BEBE
      BE00BDBDBD00AFAFAF00B9B9B900B4B4B400ABABAB00A9A9A9009D9D9D009F9F
      9F00000000000000000000000000000000000000000000000000BCBCBC006E6E
      6E00D1D1D100FCFCFC00EEEEEE0085858500ADADAD00E4E4E400C5C5C500C1C1
      C100C1C1C100BDBDBD00BDBDBD00BDBDBD00BDBDBD00BABABA00BABABA00C1C1
      C100C8C8C800CDCDCD00D6D6D600DDDDDD00E2E2E200E7E7E700E9E9E900E9E9
      E900DEDEDE00B8B8B800B9B9B900000000000000000000000000000000000000
      00009A9A9A006A6A6A00F0F0F000B4B4B400D8D8D800F2F2F200F0F0F000F4F4
      F400F6F6F600F8F8F800FAFAFA00FCFCFC00FFFFFF00B3B3B30078787800ABAB
      AB00939393008A8A8A00B2B2B200B0B0B000A4A4A400AFAFAF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A800A0A0A0009E9E9E00A7A7A70000000000A8A8A8009595950096969600A5A5
      A500A5A5A5009D9D9D00ADADAD00B3B3B300A0A0A000B3B3B300AAAAAA00A7A7
      A700B2B2B200A1A1A100A2A2A200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900989898009B9B
      9B009E9E9E00A2A2A200A6A6A600B7B7B700A8A8A800B7B7B700ABABAB00BDBD
      BD00BCBCBC00BCBCBC00AEAEAE00B9B9B900BCBCBC00AAAAAA00ACACAC00A4A4
      A4009C9C9C00A3A3A30000000000000000000000000000000000000000007E7E
      7E007C7C7C00FEFEFE00F1F1F100C4C4C40085858500D1D1D100D6D6D600BDBD
      BD00BCBCBC00B8B8B800B8B8B800B5B5B500B5B5B500B5B5B500BABABA009C9C
      9C00B2B2B200BABABA00B5B5B500B8B8B800BABABA00C1C1C100C5C5C500CBCB
      CB00E9E9E900ADADAD00B4B4B400000000000000000000000000000000000000
      00009F9F9F0065656500F0F0F000B6B6B600CECECE00F4F4F400EEEEEE00F0F0
      F000F4F4F400F6F6F600FCFCFC00FCFCFC00FAFAFA009494940080808000ADAD
      AD008F8F8F007B7B7B00A7A7A7009D9D9D00AAAAAA00A0A0A000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A9009A9A9A00A3A3
      A300A2A2A200A3A3A300A1A1A1009E9E9E0094949400A0A0A000A1A1A100A0A0
      A000B5B5B500A3A3A300A3A3A300B2B2B200A8A8A8009E9E9E009C9C9C00A4A4
      A400B5B5B500A5A5A5009F9F9F00000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A900979797009F9F9F009E9E
      9E00A2A2A200A8A8A800BBBBBB00A8A8A800B8B8B800B1B1B100B4B4B400BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00ACACAC00B9B9B900BCBCBC00B3B3B300A7A7
      A700A9A9A900A2A2A2009D9D9D0000000000000000000000000000000000ACAC
      AC0066666600D3D3D300F9F9F900F8F8F8008E8E8E0098989800D8D8D800C1C1
      C100B5B5B500B2B2B200B2B2B200B0B0B000B0B0B000B2B2B2007D7D7D004E4E
      4E0052525200B1B1B100B2B2B200B5B5B500B5B5B500B8B8B800BDBDBD00C1C1
      C100E4E4E4008C8C8C00CCCCCC00000000000000000000000000000000000000
      0000A2A2A20065656500F0F0F000BBBBBB00C9C9C900F2F2F200ECECEC00EEEE
      EE00F0F0F000F6F6F600E9E9E900969696007C7C7C005E5E5E005F5F5F005E5E
      5E005C5C5C0070707000A3A3A30095959500ACACAC0063636300707070007C7C
      7C00B7B7B7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0099999900A6A6A600AEAE
      AE009F9F9F00BABABA00A8A8A8009E9E9E009F9F9F009F9F9F00B0B0B000A1A1
      A100B2B2B200AFAFAF009D9D9D00B1B1B100B2B2B200A4A4A400A0A0A000B4B4
      B400B4B4B400A1A1A100AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000A9A9A90098989800A3A3A3009F9F9F009E9E
      9E00A7A7A700BDBDBD00B3B3B300AEAEAE00BCBCBC00A9A9A900BABABA00BEBE
      BE00BCBCBC00BBBBBB00BBBBBB00BABABA00ABABAB00B8B8B800BBBBBB00B8B8
      B800ABABAB00A7A7A7009E9E9E00000000000000000000000000000000000000
      00008888880065656500FCFCFC00F7F7F700DADADA0084848400C1C1C100D1D1
      D100ADADAD00ADADAD00ADADAD00ADADAD00AAAAAA00AFAFAF007B7B7B005353
      5300525252008A8A8A00ADADAD00ADADAD00B0B0B000B2B2B200B5B5B500C1C1
      C100D1D1D1009393930000000000000000000000000000000000000000000000
      0000A6A6A60061616100F0F0F000BFBFBF00C2C2C200F2F2F200EAEAEA00EDED
      ED00F0F0F000EDEDED008F8F8F0088888800A3A3A30075757500C5C5C500B8B8
      B800B8B8B800B2B2B2009898980094949400A0A0A000B0B0B000B0B0B000B1B1
      B1008B8B8B000000000000000000000000000000000000000000000000000000
      00000000000000000000ABABAB00A5A5A5009A9A9A0097979700AEAEAE009F9F
      9F009D9D9D00B8B8B800B7B7B700AFAFAF00AFAFAF00ABABAB00B4B4B400A4A4
      A4009F9F9F00A6A6A600A0A0A000AEAEAE00B2B2B200B6B6B600B7B7B700B7B7
      B700B1B1B100A6A6A600A6A6A600000000000000000000000000000000000000
      00000000000000000000000000009E9E9E0097979700A9A9A9009C9C9C00A2A2
      A200B0B0B000BCBCBC00A6A6A600BABABA00BDBDBD00A4A4A400BEBEBE00BDBD
      BD00BDBDBD00BBBBBB00BABABA00BABABA00BABABA00ABABAB00B8B8B800BABA
      BA00B9B9B900A3A3A300A0A0A000000000000000000000000000000000000000
      0000B7B7B70070707000A7A7A700F9F9F900F7F7F700A0A0A0008B8B8B00D0D0
      D000B8B8B800A7A7A700A7A7A700A7A7A700A7A7A700A5A5A500B2B2B2005F5F
      5F0053535300A9A9A900A7A7A700A7A7A700AAAAAA00ADADAD00ADADAD00CBCB
      CB00A9A9A900ADADAD0000000000000000000000000000000000000000000000
      0000AAAAAA005D5D5D00EEEEEE00C2C2C200BCBCBC00F4F4F400E8E8E800EAEA
      EA00EEEEEE00DFDFDF0066666600ACACAC00A7A7A70067676700A9A9A9009D9D
      9D00A8A8A800AFAFAF00B3B3B300B4B4B400B2B2B200ADADAD00A3A3A300A9A9
      A9007C7C7C000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA009A9A9A009D9D9D00A2A2A2009F9F9F009D9D9D009E9E
      9E00B2B2B200B8B8B800B5B5B500B4B4B400B5B5B500B5B5B500B4B4B400B0B0
      B000A0A0A000A0A0A0009B9B9B009B9B9B00A4A4A400B2B2B200B1B1B100B2B2
      B200A1A1A1009E9E9E00A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000989898009E9E9E00A6A6A6009B9B9B00A5A5
      A500B8B8B800B8B8B800AEAEAE00BBBBBB00BBBBBB00A6A6A600BFBFBF00BDBD
      BD00BDBDBD00BCBCBC00BABABA00BABABA00B9B9B900B9B9B900AAAAAA00B8B8
      B800B6B6B600A1A1A100A4A4A400000000000000000000000000000000000000
      000000000000989898005E5E5E00F5F5F500F7F7F700EAEAEA0085858500AAAA
      AA00CDCDCD00A5A5A500A5A5A500A5A5A500A5A5A500A3A3A300A4A4A400BABA
      BA00BDBDBD00A8A8A800A5A5A500A5A5A500A5A5A500A7A7A700A7A7A700D1D1
      D1008E8E8E00C8C8C80000000000000000000000000000000000000000000000
      0000AFAFAF005D5D5D00EDEDED00C4C4C400B6B6B600F4F4F400E4E4E400E8E8
      E800EDEDED00E2E2E20066666600A8A8A800ABABAB0066666600CFCFCF00BABA
      BA00BFBFBF00C2C2C200C3C3C300C3C3C300C4C4C400C6C6C600C5C5C500CECE
      CE007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000009B9B9B009D9D9D00A1A1A100A9A9A900B6B6B600AAAAAA00B7B7
      B700B6B6B600B4B4B400B6B6B600B7B7B700B6B6B600B4B4B400B3B3B300B5B5
      B500B4B4B400A5A5A500AFAFAF00A2A2A2009D9D9D00A8A8A8009C9C9C00A8A8
      A8009E9E9E00A8A8A80000000000000000000000000000000000000000000000
      00000000000000000000A8A8A80094949400A6A6A600A2A2A2009C9C9C00A6A6
      A600BDBDBD00B1B1B100B5B5B500BCBCBC00B6B6B600ADADAD00BEBEBE00BDBD
      BD00BDBDBD00BCBCBC00BABABA00BABABA00B9B9B900B9B9B900B7B7B700ADAD
      AD00B1B1B1009E9E9E00A9A9A900000000000000000000000000000000000000
      000000000000000000007A7A7A0082828200FAFAFA00F7F7F700BABABA008888
      8800C5C5C500B7B7B700A3A3A300A3A3A300A7A7A700A7A7A700ADADAD00B1B1
      B1006C6C6C00AAAAAA00A5A5A500A3A3A300A3A3A300A3A3A300AAAAAA00C5C5
      C500909090000000000000000000000000000000000000000000000000000000
      0000B2B2B20061616100EAEAEA00CACACA00B2B2B200F8F8F800E2E2E200E6E6
      E600E8E8E800E4E4E4006B6B6B00A2A2A200ADADAD0063636300DADADA00D0D0
      D000CFCFCF00C8C8C800DCDCDC00D2D2D200DBDBDB00B5B5B500A8A8A800A3A3
      A300717171000000000000000000000000000000000000000000000000000000
      0000A0A0A00098989800B8B8B800A1A1A100A3A3A300BABABA00BBBBBB00B5B5
      B500B5B5B500BBBBBB00B9B9B900B5B5B500B3B3B300B2B2B200B3B3B300B2B2
      B200B5B5B500B6B6B600BBBBBB00A2A2A200A6A6A6009F9F9F00BBBBBB00A7A7
      A700A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000A3A3A30092929200AAAAAA009E9E9E009F9F9F00A8A8
      A800BEBEBE00A9A9A900BABABA00BDBDBD00AEAEAE00B6B6B600BEBEBE00BDBD
      BD00BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900B5B5B500B3B3
      B300A9A9A9009C9C9C00ADADAD00000000000000000000000000000000000000
      00000000000000000000A8A8A80066666600D5D5D500F9F9F900F1F1F1008B8B
      8B009E9E9E00D8D8D800C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000B2B2
      B2004F4F4F00C2C2C200BCBCBC00BCBCBC00B7B7B700ADADAD00BDBDBD00A6A6
      A600A9A9A9000000000000000000000000000000000000000000000000000000
      0000B6B6B60061616100E4E4E400CECECE00AFAFAF00FAFAFA00E4E4E400E6E6
      E600E4E4E400E2E2E20068686800ABABAB00DBDBDB00626262005F5F5F005E5E
      5E005F5F5F0059595900E6E6E600DEDEDE00EDEDED00757575008F8F8F009898
      9800A6A6A600000000000000000000000000000000000000000000000000AAAA
      AA0097979700B0B0B000BFBFBF00B3B3B3009D9D9D00AAAAAA00B6B6B600B4B4
      B400BABABA00B9B9B900BABABA00BABABA00B6B6B600B3B3B300B4B4B400B6B6
      B600B4B4B400B4B4B400B3B3B3009E9E9E00BBBBBB00B6B6B600A6A6A600A8A8
      A800000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D9D9D0095959500A9A9A9009C9C9C00A5A5A500AEAE
      AE00BDBDBD00A6A6A600BCBCBC00BDBDBD00A7A7A700BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900B1B1B100B8B8
      B800A5A5A5009E9E9E0000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C0065656500FAFAFA00F5F5F500D4D4
      D40085858500DADADA00D9D9D900C2C2C200C2C2C200C2C2C200C5C5C500A9A9
      A9004B4B4B00BCBCBC00C5C5C500C2C2C200C2C2C200C2C2C200E3E3E3009797
      9700C6C6C6000000000000000000000000000000000000000000000000000000
      0000BCBCBC0065656500E0E0E000D0D0D000A9A9A900FCFCFC00E8E8E800E8E8
      E800E8E8E800E4E4E4008A8A8A00ABABAB00E0E0E000B6B6B60097979700DEDE
      DE00D8D8D8005F5F5F00E9E9E900EBEBEB00F7F7F70090909000ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E0093939300B5B5B500AAAAAA009D9D9D00AFAFAF00B5B5B500B6B6
      B600B8B8B800B8B8B800BBBBBB00A7A7A7009E9E9E009F9F9F00ABABAB00B7B7
      B700B9B9B900B5B5B500B6B6B600A2A2A200A0A0A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898009E9E9E00A6A6A6009B9B9B00A9A9A900B6B6
      B600BCBCBC00A7A7A700BDBDBD00BDBDBD00A4A4A400BFBFBF00BBBBBB00B9B9
      B900BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900ACACAC00BABA
      BA00A1A1A100A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000B7B7B70070707000ABABAB00FAFAFA00F5F5
      F500979797009E9E9E00E6E6E600CDCDCD00CBCBCB00CDCDCD00D1D1D1009C9C
      9C004E4E4E0099999900D1D1D100CDCDCD00CBCBCB00CBCBCB00E3E3E3008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000BCBCBC006A6A6A00DBDBDB00D4D4D400A9A9A900FFFFFF00EAEAEA00EAEA
      EA00E8E8E800EAEAEA00E4E4E400E0E0E000E3E3E300C5C5C5005B5B5B00B8B8
      B800BDBDBD005F5F5F00E0E0E000F7F7F700FDFDFD00ADADAD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700949494009F9F9F009F9F9F009E9E9E00B4B4B400B4B4B400B7B7
      B700B5B5B500B9B9B900A4A4A4009F9F9F00B0B0B000B1B1B1009E9E9E00ADAD
      AD00BBBBBB00B7B7B700B5B5B500ACACAC009E9E9E00A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A8A80094949400A7A7A700A2A2A2009C9C9C00A8A8A800BCBC
      BC00B7B7B700AEAEAE00BDBDBD00BBBBBB00A8A8A800BFBFBF00BBBBBB00BBBB
      BB00B8B8B800BDBDBD00BCBCBC00BABABA00BABABA00BABABA00AAAAAA00B7B7
      B7009E9E9E00A4A4A40000000000000000000000000000000000000000000000
      000000000000000000000000000000000000989898005E5E5E00F5F5F500F8F8
      F800E7E7E70085858500D2D2D200E6E6E600D1D1D100D1D1D100D8D8D8008888
      8800525252006A6A6A00D6D6D600D7D7D700D1D1D100E0E0E000C8C8C800A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0006A6A6A00D4D4D400D8D8D800A6A6A600FEFEFE00ECECEC00EDED
      ED00EAEAEA00ECECEC00E8E8E800EAEAEA00EAEAEA00D0D0D0005D5D5D00B7B7
      B700BDBDBD006A6A6A00D6D6D600FFFFFF00F3F3F300ADADAD009E9E9E000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A600999999009F9F9F00A0A0A0009F9F9F00A2A2A200B5B5B500B4B4B400B5B5
      B500B3B3B300B4B4B4009F9F9F00AEAEAE00BFBFBF00BBBBBB00AFAFAF009F9F
      9F00BCBCBC00BABABA00B6B6B600B8B8B800B8B8B800A2A2A200AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3A3A30092929200AAAAAA009F9F9F009E9E9E00A8A8A800BEBE
      BE00AEAEAE00B6B6B600BDBDBD00B2B2B200A6A6A600BFBFBF00BABABA00BABA
      BA00BBBBBB00BABABA00BCBCBC00BABABA00BABABA00BABABA00ABABAB00AFAF
      AF009D9D9D00AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A0082828200FEFE
      FE00F7F7F700AEAEAE008E8E8E00EEEEEE00DDDDDD00D9D9D900DADADA007474
      74005555550055555500CBCBCB00DDDDDD00D7D7D700EEEEEE009E9E9E00C2C2
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000006E6E6E00CECECE00DBDBDB00A4A4A400FFFFFF00F2F2F200EDED
      ED00ECECEC00EDEDED00EAEAEA00EAEAEA00EDEDED00D8D8D80065656500CDCD
      CD00EAEAEA00929292005E5E5E005E5E5E00666666008E8E8E00B2B2B2000000
      0000000000000000000000000000000000000000000000000000A6A6A6009595
      9500ADADAD00A4A4A400A1A1A100B2B2B200B3B3B300B4B4B400B4B4B400B3B3
      B300B2B2B200B0B0B0009F9F9F008F8F8F00B2B2B200AFAFAF00ACACAC009D9D
      9D00BCBCBC00BBBBBB00B6B6B600B7B7B700BABABA00A2A2A200ACACAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009D9D9D0095959500A9A9A9009C9C9C00A3A3A300ADADAD00BEBE
      BE00A7A7A700BCBCBC00BDBDBD00A2A2A2009B9B9B00A8A8A800BEBEBE00BABA
      BA00B9B9B900BDBDBD00BCBCBC00BABABA00BABABA00B7B7B700B3B3B300A8A8
      A8009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A80066666600D5D5
      D500F9F9F900F1F1F10088888800C4C4C400F1F1F100DDDDDD00DADADA006565
      65005555550052525200ACACAC00E2E2E200E0E0E000EEEEEE008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070707000C6C6C600DDDDDD00A4A4A400FEFEFE00FAFAFA00F8F8
      F800F6F6F600F2F2F200EDEDED00ECECEC00EDEDED00EDEDED00CECECE00B8B8
      B800BABABA00C8C8C800D4D4D400E3E3E300EDEDED00FAFAFA00B2B2B2000000
      0000000000000000000000000000000000000000000000000000A3A3A3009292
      9200B0B0B000A3A3A300A0A0A000AFAFAF00B2B2B200B3B3B300B4B4B400B3B3
      B300B5B5B500B4B4B400A1A1A10091919100A6A6A600A3A3A300A0A0A0009F9F
      9F00BDBDBD00BCBCBC00B8B8B800B5B5B5009E9E9E00A3A3A300AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999999009F9F9F00A7A7A7009C9C9C00A6A6A600B6B6B600BDBD
      BD00A6A6A600BFBFBF00B3B3B300ADADAD00B8B8B800A1A1A100A8A8A800BEBE
      BE00BBBBBB00B8B8B800BDBDBD00BABABA00BABABA00B3B3B300B9B9B900A3A3
      A3009D9D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000888888006565
      6500FCFCFC00F5F5F500C9C9C90088888800EEEEEE00ECECEC00DADADA006060
      6000555555005353530089898900E4E4E400ECECEC00D3D3D300A1A1A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000072727200BFBFBF00DFDFDF00A4A4A400FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00F8F8F800F8F8F800F2F2F200EDEDED00F0F0F000F0F0F000F2F2
      F200F2F2F200F0F0F000EEEEEE00F0F0F000F4F4F400FFFFFF00ADADAD000000
      0000000000000000000000000000000000000000000000000000A4A4A4009292
      9200B8B8B800AEAEAE009E9E9E009D9D9D009E9E9E00B1B1B100B6B6B600B3B3
      B300B6B6B600B8B8B800ABABAB009E9E9E0099999900989898009D9D9D00AEAE
      AE00BDBDBD00BBBBBB00B7B7B700B6B6B6009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80095959500A7A7A700A4A4A4009C9C9C00A4A4A400BCBCBC00BBBB
      BB00A9A9A900BFBFBF00A4A4A400AEAEAE00BFBFBF00BFBFBF00B5B5B500ABAB
      AB00BEBEBE00BBBBBB00B7B7B700BBBBBB00BCBCBC00AEAEAE00BABABA009F9F
      9F00A1A1A1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7B7B7006E6E
      6E00B2B2B200F8F8F800F7F7F70091919100ACACAC00F6F6F600E4E4E4007F7F
      7F004E4E4E004E4E4E009C9C9C00E7E7E700F9F9F900A1A1A100BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078787800B4B4B400E0E0E000A6A6A600F6F6F600FEFEFE00FCFC
      FC00FCFCFC00FAFAFA00FAFAFA00FAFAFA00F6F6F600F0F0F000F0F0F000F0F0
      F000EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B5000000
      0000000000000000000000000000000000000000000000000000A8A8A8009A9A
      9A00A1A1A100B0B0B000BDBDBD00B4B4B4009D9D9D00AEAEAE00B7B7B700B5B5
      B500B5B5B500BABABA00BABABA00AEAEAE00A2A2A200A2A2A200AEAEAE00BEBE
      BE00BDBDBD00BBBBBB00B6B6B600B1B1B100A0A0A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A30092929200AAAAAA00A0A0A0009C9C9C00A7A7A700BFBFBF00AEAE
      AE00B2B2B200B8B8B8009D9D9D0097979700A2A2A200BFBFBF00BDBDBD00B4B4
      B400ACACAC00BEBEBE00BBBBBB00B5B5B500BCBCBC00AAAAAA00B7B7B7009E9E
      9E00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98005E5E5E00F8F8F800F7F7F700DEDEDE0085858500E6E6E600F6F6F600D4D4
      D4009696960096969600DADADA00ECECEC00F9F9F9008A8A8A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007A7A7A00AAAAAA00E4E4E400A6A6A600F0F0F000FFFFFF00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FAFAFA00F8F8F800F0F0F000F2F2
      F200F0F0F000FFFFFF00FFFFFF00F8F8F800EAEAEA00C9C9C900C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A60096969600A7A7A700B6B6B600A2A2A200A4A4A400B7B7B700B6B6
      B600B6B6B600B8B8B800BCBCBC00BCBCBC00BEBEBE00BEBEBE00BDBDBD00BDBD
      BD00BBBBBB00B9B9B900B7B7B700BDBDBD00A3A3A300A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D0096969600A9A9A9009D9D9D009F9F9F00AEAEAE00B2B2B200A0A0
      A000BBBBBB00A8A8A80000000000A6A6A60097979700A5A5A500BFBFBF00BDBD
      BD00B2B2B200AEAEAE00BDBDBD00BABABA00BCBCBC00A4A4A400A4A4A4009D9D
      9D00AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A0085858500FAFAFA00F7F7F700A6A6A60094949400FEFEFE00EEEE
      EE00ECECEC00ECECEC00EEEEEE00F6F6F600D8D8D8009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D00A2A2A200E6E6E600AAAAAA00EAEAEA00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FCFCFC00F8F8F800F2F2
      F200F4F4F400FEFEFE00FFFFFF00E8E8E800E4E4E400B4B4B400CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A0096969600A6A6A600A0A0A000A2A2A200B8B8B800B7B7
      B700B6B6B600B7B7B700B8B8B800BBBBBB00BCBCBC00BCBCBC00BCBCBC00BBBB
      BB00BABABA00B7B7B700B9B9B900BEBEBE00AEAEAE00A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898009E9E9E00A7A7A7009C9C9C00A3A3A300ABABAB009F9F9F00A1A1
      A100B8B8B800A8A8A8000000000000000000A6A6A60096969600A8A8A800BFBF
      BF00BDBDBD00B0B0B000B0B0B000BCBCBC00BABABA009E9E9E009C9C9C009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80066666600DBDBDB00FAFAFA00F1F1F10085858500D3D3D300F9F9
      F900ECECEC00EEEEEE00ECECEC00FEFEFE00A1A1A100B9B9B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810096969600E8E8E800ADADAD00E2E2E200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00F6F6
      F600F6F6F600FAFAFA00FFFFFF00E2E2E200D7D7D700B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A60094949400A4A4A400A0A0A0009F9F9F00B2B2B200BBBBBB00BABA
      BA00B8B8B800B7B7B700B7B7B700B9B9B900BABABA00BBBBBB00BBBBBB00B8B8
      B800B7B7B700BABABA00A3A3A300A5A5A500A0A0A000ACACAC00000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A80095959500A6A6A600A4A4A4009B9B9B00A5A5A500A1A1A1009C9C9C00A7A7
      A700A9A9A90000000000000000000000000000000000A5A5A50096969600AAAA
      AA00BFBFBF00BDBDBD00AEAEAE00B2B2B200B9B9B900B3B3B300B0B0B000A4A4
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008888880065656500FAFAFA00F7F7F700C1C1C10088888800FEFE
      FE00F2F2F200EEEEEE00F2F2F200FFFFFF008A8A8A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008E8E8E00EAEAEA00AFAFAF00D8D8D800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00F8F8F800FAFAFA00FFFFFF00DDDDDD00B5B5B500CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9F9F0097979700BBBBBB00A8A8A8009F9F9F00B7B7B700B6B6B600A9A9
      A900B5B5B500BABABA00B7B7B700B7B7B700B7B7B700B7B7B700B6B6B600B7B7
      B700BCBCBC00A7A7A7009E9E9E00A6A6A600A7A7A70000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A40092929200AAAAAA00A0A0A0009C9C9C00ACACAC009C9C9C00A2A2A200A7A7
      A700A8A8A8000000000000000000000000000000000000000000A4A4A4009595
      9500ACACAC00BFBFBF00BFBFBF00AFAFAF00ACACAC00A1A1A100ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7B7B70070707000B0B0B000FCFCFC00F5F5F5008B8B8B00BABA
      BA00FFFFFF00F1F1F100F9F9F900DDDDDD009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860086868600EAEAEA00B0B0B000D0D0D000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FAFAFA00FCFCFC00FFFFFF00BCBCBC00BCBCBC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80097979700A5A5A500BEBEBE00A2A2A200A2A2A200A2A2A200A0A0
      A0009F9F9F00ABABAB00BBBBBB00BCBCBC00BBBBBB00BCBCBC00BBBBBB00BDBD
      BD00BEBEBE00A0A0A000A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E9E
      9E0094949400A9A9A9009D9D9D009D9D9D009D9D9D009D9D9D00ACACAC00A4A4
      A400ADADAD00000000000000000000000000000000000000000000000000A4A4
      A40099999900A8A8A800ACACAC00B0B0B000ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898005E5E5E00F8F8F800F9F9F900D9D9D9008585
      8500F7F7F700F9F9F900FFFFFF00A5A5A500B8B8B80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C007A7A7A00ECECEC00B5B5B500C9C9C900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A60099999900A4A4A400B4B4B400A1A1A1009C9C9C00BBBB
      BB00ACACAC009E9E9E00B8B8B800BEBEBE00AAAAAA00A4A4A400A0A0A000AEAE
      AE00BFBFBF00A4A4A400ACACAC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99009D9D9D00A7A7A7009C9C9C009C9C9C009C9C9C00AEAEAE00A8A8A800A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A7A7A0082828200FCFCFC00F7F7F7009E9E
      9E00A0A0A000FFFFFF00FFFFFF00888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009191910072727200EDEDED00BABABA00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000D8D8
      D800C4C4C400B8B8B800BCBCBC00D0D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A900AAAAAA009C9C9C0094949400B1B1
      B100AEAEAE009F9F9F00B8B8B800BABABA00A1A1A100AFAFAF00B3B3B300A2A2
      A200A6A6A600A1A1A100ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9009595
      9500A7A7A700A4A4A4009C9C9C009E9E9E00A4A4A400BBBBBB00ABABAB00AFAF
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A6A6A60066666600DEDEDE00F8F8F800EAEA
      EA0085858500D6D6D600CCCCCC00969696000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000949494006E6E6E00EDEDED00BCBCBC00C0C0C000FFFFFF00FFFF
      FF00F8F8F800E0E0E000C9C9C900BCBCBC00B5B5B500B6B6B600B6B6B600B0B0
      B0009F9F9F00A2A2A200C9C9C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A20096969600B2B2
      B200B9B9B900A2A2A200A4A4A400A6A6A6009B9B9B00A2A2A200B0B0B000B1B1
      B100A1A1A100ACACAC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7009494
      9400B3B3B300A9A9A9009D9D9D00A0A0A000A5A5A500A6A6A600AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888888006E6E6E00FFFFFF00FFFF
      FF00CACACA008C8C8C008B8B8B00B8B8B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A0072727200FFFFFF00C9C9C900AFAFAF00B6B6B600B4B4
      B400BABABA00B8B8B800AFAFAF00A2A2A2009A9A9A00AAAAAA00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A700A0A0
      A0009A9A9A009C9C9C00A0A0A000A3A3A300A8A8A800AAAAAA00A9A9A9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3A3
      A30099999900A2A2A200A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A000858585008C8C
      8C00A5A5A500A5A5A500A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBCBC00868686008E8E8E00D7D7D700ADADAD00A1A1A1009F9F
      9F00AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00A9A9A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ABABAB00A7A7A700A6A6A600A7A7A700ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E9E
      9E00A1A1A1009E9E9E00A3A3A300A1A1A1009D9D9D00A6A6A600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A2A2A20098989800A0A0A0009E9E9E009C9C9C009B9B9B009D9D9D00A0A0
      A000A6A6A600ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A800989898009292920092929200A0A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A60099999900919191008E8E8E008E8E8E008E8E8E008E8E8E008D8D8D008F8F
      8F0096969600A6A6A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A0009595
      9500A6A6A600A2A2A200A2A2A200A7A7A700A7A7A700A3A3A300A1A1A1009E9E
      9E00A6A6A6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900A4A4A4009D9D9D00ADADAD00B0B0B000AEAEAE00A5A5A500A4A4
      A400A0A0A0009E9E9E009D9D9D009C9C9C009D9D9D009F9F9F00A4A4A400A9A9
      A900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A6009494940091919100919191009F9F9F00919191009D9D
      9D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600969696008F8F
      8F008E8E8E0097979700A8A8A800ADADAD00AFAFAF00B0B0B000AFAFAF00ADAD
      AD00A3A3A3009191910092929200A6A6A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900A6A6
      A600A4A4A400A7A7A700A5A5A500A3A3A300B0B0B000AFAFAF00ACACAC00A5A5
      A500A2A2A2009F9F9F009E9E9E00A8A8A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A80092929200B0B0B0009C9C9C00ACACAC00ABABAB00ACACAC00A9A9A900B8B8
      B800B9B9B900B8B8B800B6B6B600B3B3B300AEAEAE00A8A8A800A4A4A400A0A0
      A0009E9E9E009C9C9C009B9B9B009E9E9E00A3A3A300A7A7A700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A800959595009F9F9F0091919100A1A1A100AAAAAA00A5A5A5009191
      91009A9A9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A900A0A0A00098989800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A000909090008E8E8E009595
      9500A9A9A900ADADAD00ACACAC00A8A8A800A6A6A600A6A6A600A7A7A700A8A8
      A800ACACAC00AFAFAF00A8A8A800919191009898980000000000000000000000
      00000000000000000000000000000000000000000000A6A6A60092929200B0B0
      B000A2A2A200A7A7A700A8A8A800A1A1A100B6B6B600ACACAC00AEAEAE00B0B0
      B000B0B0B000ABABAB00A5A5A500A2A2A2009F9F9F009E9E9E00AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A60092929200B1B1B1009C9C9C00AAAAAA00AAAAAA00AAAAAA00A8A8A800B8B8
      B800B9B9B900B8B8B800B8B8B800B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B8B8B800B6B6B600B3B3B300AEAEAE00A8A8A800A3A3A300A0A0A000A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      00009E9E9E009B9B9B00BCBCBC009999990096969600A8A8A800A6A6A600A6A6
      A600929292009898980000000000000000000000000000000000000000000000
      00000000000000000000A3A3A300919191009191910098989800949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009E9E9E008F8F8F008E8E8E009D9D9D00AAAA
      AA00AAAAAA00A4A4A400A1A1A100A1A1A100A1A1A100A1A1A100A1A1A100A2A2
      A200A2A2A200A4A4A400A9A9A900ADADAD009B9B9B0093939300000000000000
      00000000000000000000000000000000000000000000A3A3A30092929200B2B2
      B200A2A2A200A7A7A700AAAAAA009F9F9F00B5B5B500ACACAC00A9A9A900A9A9
      A900ABABAB00AEAEAE00B0B0B000B0B0B000AAAAAA00A4A4A400A2A2A2009E9E
      9E00A1A1A100AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A60092929200B1B1B1009C9C9C00A8A8A800A9A9A900A9A9A900A7A7A700B9B9
      B900BBBBBB00BABABA00BABABA00B9B9B900B9B9B900B9B9B900B9B9B900B8B8
      B800B8B8B800B8B8B800B9B9B900B9B9B900B9B9B900B1B1B100B9B9B900A0A0
      A00000000000000000000000000000000000000000000000000000000000A9A9
      A90095959500B5B5B500BCBCBC00B9B9B9009393930097979700A8A8A800A4A4
      A400A8A8A8009393930096969600000000000000000000000000000000000000
      0000000000009C9C9C008E8E8E009191910098989800A8A8A800A8A8A8009B9B
      9B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F9F9F008F8F8F008E8E8E009B9B9B00A9A9A900A6A6
      A6009F9F9F008E8E8E00979797009E9E9E009D9D9D009D9D9D009D9D9D009E9E
      9E009F9F9F009F9F9F00A0A0A000A4A4A400AAAAAA00A0A0A000939393000000
      00000000000000000000000000000000000000000000A3A3A30091919100B2B2
      B200A1A1A100A7A7A700ADADAD009F9F9F00B1B1B100ADADAD00AAAAAA00A9A9
      A900A8A8A800A7A7A700A7A7A700AAAAAA00AEAEAE00B0B0B000AEAEAE00A8A8
      A800A3A3A300A2A2A2009E9E9E00A2A2A2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A70092929200B1B1B1009D9D9D00A7A7A700A9A9A900A9A9A900A7A7A700B9B9
      B900BDBDBD00BCBCBC00BCBCBC00BCBCBC00BDBDBD00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BABABA00BABABA00BBBBBB00AEAEAE00B5B5B500A0A0
      A00000000000000000000000000000000000000000000000000000000000ABAB
      AB0098989800A3A3A300BCBCBC00BBBBBB00B7B7B700909090009A9A9A00A8A8
      A800A2A2A200A8A8A8009595950094949400000000000000000000000000ABAB
      AB009A9A9A008D8D8D009191910097979700A8A8A8009E9E9E00A5A5A5009B9B
      9B00000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A400929292008E8E8E0093939300A8A8A800A3A3A3009D9D
      9D009B9B9B00959595008D8D8D008F8F8F00979797009A9A9A009A9A9A009A9A
      9A009B9B9B009B9B9B009D9D9D009E9E9E00A1A1A100A9A9A9009E9E9E009797
      97000000000000000000000000000000000000000000A3A3A30094949400B0B0
      B000A1A1A100A8A8A800AEAEAE009F9F9F00AEAEAE00B0B0B000A9A9A900A9A9
      A900A8A8A800A8A8A800A7A7A700A6A6A600A6A6A600A6A6A600AAAAAA00AEAE
      AE00B0B0B000AEAEAE00A8A8A800A4A4A400A2A2A2009D9D9D00A4A4A4000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A80094949400AEAEAE009E9E9E00A5A5A500A9A9A900A7A7A700A6A6A600B7B7
      B700BEBEBE00BCBCBC00BCBCBC00BABABA00BBBBBB00BABABA00BABABA00BABA
      BA00BABABA00BBBBBB00BBBBBB00BBBBBB00BDBDBD00B0B0B000B2B2B200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80097979700A7A7A700BBBBBB00BBBBBB00B4B4B400909090009C9C
      9C00A8A8A800A0A0A000A9A9A9009797970093939300AAAAAA00AAAAAA009999
      99008D8D8D009090900097979700AAAAAA009C9C9C00A8A8A80095959500ACAC
      AC00000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA00979797008E8E8E008D8D8D00A1A1A100A5A5A5009B9B9B009A9A
      9A0098989800989898008E8E8E00B2B2B200919191008F8F8F00969696009696
      960098989800989898009A9A9A009A9A9A009B9B9B009E9E9E00A8A8A8009696
      9600A2A2A20000000000000000000000000000000000A0A0A00094949400B1B1
      B100A0A0A000A8A8A800B0B0B000A0A0A000ACACAC00B3B3B300A9A9A900A9A9
      A900A8A8A800A8A8A800A7A7A700A6A6A600A6A6A600A6A6A600A5A5A500A5A5
      A500A6A6A600AAAAAA00AEAEAE00B0B0B000ADADAD00A7A7A700A3A3A300A2A2
      A200A0A0A000000000000000000000000000000000000000000000000000A9A9
      A90094949400AEAEAE009F9F9F00A3A3A300A8A8A800A7A7A700A5A5A500B6B6
      B600BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BDBDBD00BDBDBD00BEBEBE00B4B4B400AEAEAE00A6A6
      A600ACACAC000000000000000000000000000000000000000000000000000000
      000000000000A6A6A60095959500ACACAC00BBBBBB00BBBBBB00B0B0B0009090
      90009F9F9F00A8A8A8009E9E9E00A9A9A9009999990093939300949494008D8D
      8D009191910096969600AAAAAA009C9C9C00A6A6A6009B9B9B00A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9F9F00929292008E8E8E0093939300A5A5A5009C9C9C00989898009696
      960095959500969696009191910098989800BFBFBF00A2A2A2008D8D8D009191
      910093939300949494009595950096969600989898009A9A9A009D9D9D00A6A6
      A6008F8F8F0000000000000000000000000000000000A0A0A00094949400B0B0
      B000A0A0A000A8A8A800B0B0B000A1A1A100A7A7A700B6B6B600A9A9A900A9A9
      A900A8A8A800A8A8A800A7A7A700A6A6A600A6A6A600A6A6A600A5A5A500A6A6
      A600A5A5A500A5A5A500A5A5A500A6A6A600A9A9A900AEAEAE00B0B0B000ADAD
      AD00A6A6A600ACACAC000000000000000000000000000000000000000000A9A9
      A90094949400AEAEAE009F9F9F00A1A1A100A9A9A900A5A5A500A4A4A400B4B4
      B400BFBFBF00BCBCBC00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BCBCBC00BCBCBC00BDBDBD00BDBDBD00BFBFBF00B8B8B800ABABAB00ABAB
      AB00AAAAAA000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A4A40095959500B1B1B100BBBBBB00BBBBBB00AAAA
      AA0090909000A1A1A100A8A8A8009B9B9B00A9A9A9009B9B9B00909090009090
      900096969600AAAAAA009E9E9E00A2A2A200A4A4A40096969600000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A80094949400969696008D8D8D009B9B9B00A1A1A10095959500959595009494
      94009393930092929200919191008D8D8D00B0B0B000BFBFBF00B8B8B8009191
      91008E8E8E008F8F8F009191910092929200949494009696960098989800A0A0
      A0009A9A9A009E9E9E00000000000000000000000000A0A0A00094949400B0B0
      B000A0A0A000A8A8A800B1B1B100A2A2A200A4A4A400B7B7B700ABABAB00AAAA
      AA00A8A8A800A8A8A800A7A7A700A6A6A600A6A6A600A6A6A600A5A5A500A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A5A5A500A6A6A600A9A9
      A900ADADAD00AAAAAA000000000000000000000000000000000000000000A9A9
      A90094949400AEAEAE00A1A1A100A0A0A000A9A9A900A3A3A300A4A4A400B0B0
      B000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BEBEBE00BFBFBF00BBBBBB00A9A9A900ADAD
      AD00A7A7A7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A2A2A20093939300B5B5B500BBBBBB00BBBB
      BB00A4A4A40090909000A3A3A300A7A7A7009B9B9B00A9A9A9009C9C9C009595
      9500AAAAAA00A0A0A0009C9C9C00A9A9A90091919100AAAAAA00000000000000
      0000000000000000000000000000000000000000000000000000000000009E9E
      9E0093939300939393008D8D8D00A0A0A0009B9B9B0092929200929292009191
      91008F8F8F008F8F8F008F8F8F008F8F8F008D8D8D00BFBFBF00BFBFBF00BFBF
      BF00A7A7A7008D8D8D008F8F8F008F8F8F009191910092929200949494009797
      9700A3A3A30090909000000000000000000000000000A0A0A00094949400B1B1
      B1009F9F9F00A9A9A900B0B0B000A3A3A300A2A2A200B7B7B700ACACAC00ACAC
      AC00AAAAAA00A8A8A800A7A7A700A6A6A600A6A6A600A6A6A600A5A5A500A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A6A6A600A5A5A500A4A4
      A400ACACAC00A6A6A6000000000000000000000000000000000000000000AAAA
      AA0096969600ABABAB00A2A2A2009E9E9E00A9A9A900A3A3A300A3A3A300ACAC
      AC00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00A7A7A700AEAE
      AE00A3A3A3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A00093939300B9B9B900BBBB
      BB00BBBBBB009E9E9E0091919100A5A5A500A6A6A6009A9A9A00A8A8A800AAAA
      AA00A2A2A20098989800AAAAAA00979797009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009797
      97009C9C9C008F8F8F008E8E8E009F9F9F0095959500919191008F8F8F008F8F
      8F008F8F8F009191910091919100929292008F8F8F009F9F9F00BFBFBF00BFBF
      BF00BFBFBF00BBBBBB00949494008E8E8E008F8F8F008F8F8F00919191009292
      92009D9D9D0093939300A6A6A60000000000000000009E9E9E0098989800B0B0
      B0009F9F9F00A9A9A900B0B0B000A6A6A600A1A1A100B5B5B500ADADAD00ACAC
      AC00ACACAC00AAAAAA00A8A8A800A6A6A600A6A6A600A6A6A600A5A5A500A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A6A6A600A5A5A500A4A4
      A400AAAAAA00A4A4A40000000000000000000000000000000000000000000000
      000096969600ABABAB00A3A3A3009E9E9E00A9A9A900A1A1A100A3A3A300A2A2
      A200A2A2A200A2A2A200A3A3A300A4A4A400A5A5A500A5A5A500A6A6A600A7A7
      A700A7A7A700A8A8A800A9A9A900A9A9A900A9A9A900ABABAB00A6A6A600ACAC
      AC00A0A0A0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E0095959500BBBB
      BB00BBBBBB00BDBDBD009999990091919100A4A4A400989898009B9B9B009E9E
      9E0098989800A5A5A500A1A1A100949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7009393
      9300A2A2A2008D8D8D00909090009C9C9C00929292008F8F8F008F8F8F009191
      910092929200929292009393930093939300949494008D8D8D00B8B8B800BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00AAAAAA008E8E8E008F8F8F008F8F8F008F8F
      8F00949494009A9A9A009999990000000000000000009E9E9E0097979700B0B0
      B0009F9F9F00A9A9A900B0B0B000A8A8A8009F9F9F00B1B1B100AEAEAE00ACAC
      AC00ABABAB00ACACAC00ABABAB00A8A8A800A6A6A600A6A6A600A5A5A500A6A6
      A600A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A6A6A600A5A5A500A4A4
      A400A8A8A800A3A3A30000000000000000000000000000000000000000000000
      000096969600ABABAB00A3A3A3009D9D9D00ABABAB00A1A1A100A2A2A200A3A3
      A300A3A3A300A3A3A300A5A5A500A5A5A500A6A6A600A7A7A700A7A7A700A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A7A7A700A7A7A700A7A7A700AAAA
      AA00A0A0A0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009797
      9700BCBCBC00B3B3B3009B9B9B00909090009D9D9D00A0A0A000A0A0A000A0A0
      A000A0A0A0009F9F9F0092929200999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A3009292
      9200A4A4A4008D8D8D00909090009A9A9A008F8F8F008F8F8F00919191009292
      920093939300949494009595950095959500969696009494940090909000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBEBE00989898008E8E8E009191
      91008F8F8F009C9C9C009292920000000000000000009D9D9D0099999900B0B0
      B0009F9F9F00A9A9A900B1B1B100A9A9A900A0A0A000AEAEAE00B0B0B000ACAC
      AC00ABABAB00ACACAC00ACACAC00ABABAB00ABABAB00A8A8A800A5A5A500A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A6A6A600A5A5A500A5A5
      A500A4A4A400A5A5A50000000000000000000000000000000000000000000000
      000096969600AAAAAA00A5A5A5009C9C9C00ACACAC00A2A2A200A1A1A100A1A1
      A100A5A5A500A7A7A700A9A9A900AAAAAA00ABABAB00ABABAB00ABABAB00ABAB
      AB00ABABAB00ABABAB00ABABAB00ABABAB00AAAAAA00A7A7A700A5A5A500A6A6
      A600A0A0A0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA009797
      9700939393008E8E8E0090909000A0A0A000A3A3A300A2A2A200A2A2A200A2A2
      A200A2A2A200A2A2A200A3A3A300949494009898980000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A0009393
      9300A8A8A8008D8D8D008E8E8E009A9A9A009292920092929200939393009494
      9400949494009595950097979700979797009A9A9A009B9B9B008D8D8D00BDBD
      BD00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BCBCBC008D8D8D008F8F
      8F008F8F8F00999999008F8F8F0000000000000000009D9D9D0098989800AEAE
      AE009F9F9F00AAAAAA00B1B1B100ADADAD009F9F9F00ABABAB00B2B2B200ABAB
      AB00ABABAB00ACACAC00ACACAC00ABABAB00ABABAB00ADADAD00ADADAD00AAAA
      AA00A7A7A700A5A5A500A5A5A500A5A5A500A6A6A600A6A6A600A5A5A500A5A5
      A500A2A2A200A5A5A500ABABAB00000000000000000000000000000000000000
      000096969600A6A6A600A7A7A7009C9C9C00AEAEAE00A5A5A500A9A9A900AAAA
      AA00A9A9A900A9A9A900A9A9A900AAAAAA00ABABAB00ABABAB00ABABAB00ACAC
      AC00ABABAB00ABABAB00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00A9A9
      A900A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A0008F8F
      8F008E8E8E0091919100A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300A3A3
      A300A3A3A300A3A3A300A3A3A300A5A5A5009797970096969600000000000000
      00000000000000000000000000000000000000000000000000009F9F9F009292
      9200ABABAB008D8D8D008E8E8E009C9C9C009494940094949400979797009B9B
      9B009E9E9E009F9F9F00A0A0A000A0A0A000A2A2A2009E9E9E0094949400BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00ABABAB008D8D8D00999999009C9C
      9C00959595009A9A9A008E8E8E0000000000000000009D9D9D0098989800B1B1
      B1009F9F9F00ABABAB00B1B1B100AEAEAE00A0A0A000A9A9A900B4B4B400ABAB
      AB00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00AEAEAE00AEAEAE00ACACAC00A9A9A900A7A7A700A5A5A500A5A5A500A5A5
      A500A2A2A200A7A7A700A9A9A900000000000000000000000000000000000000
      000098989800A3A3A300A7A7A7009C9C9C00B4B4B400ACACAC00ADADAD00ACAC
      AC00ACACAC00ACACAC00ACACAC00ABABAB00ABABAB00ACACAC00ADADAD00ADAD
      AD00AEAEAE00AEAEAE00B0B0B000B0B0B000B0B0B000B1B1B100ABABAB00ABAB
      AB00A6A6A600ACACAC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A0008E8E8E008E8E
      8E0091919100A5A5A500A5A5A500A4A4A400A4A4A400A5A5A500A7A7A700A9A9
      A900A9A9A900A5A5A500A5A5A500A5A5A500A8A8A8009C9C9C00959595000000
      0000000000000000000000000000000000000000000000000000A0A0A0009393
      9300ABABAB008F8F8F008D8D8D00A2A2A200A0A0A0009E9E9E009F9F9F009F9F
      9F00A0A0A000A1A1A100A2A2A200A2A2A200A5A5A5008F8F8F00B5B5B500BFBF
      BF00BFBFBF00BFBFBF00BFBFBF009C9C9C008F8F8F00A1A1A100A1A1A100A0A0
      A0009E9E9E00A5A5A5008E8E8E0000000000000000009B9B9B00A0A0A000B0B0
      B0009F9F9F00ABABAB00B1B1B100AEAEAE00A0A0A000A6A6A600B6B6B600ABAB
      AB00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1B100B2B2B200AEAEAE00A7A7
      A700A2A2A200A8A8A800A5A5A500000000000000000000000000000000000000
      000098989800A3A3A300A9A9A9009B9B9B00B4B4B400AEAEAE00ADADAD00ACAC
      AC00A9A9A900A2A2A200A1A1A100B8B8B800B6B6B600B6B6B600B7B7B700B7B7
      B700B9B9B900B9B9B900BABABA00B9B9B900B8B8B800B8B8B800ABABAB00ABAB
      AB00ABABAB00A9A9A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F008E8E8E008F8F8F009191
      9100A7A7A700A7A7A700A6A6A600A7A7A700A8A8A800AAAAAA00B3B3B300A7A7
      A700B0B0B000AFAFAF00AAAAAA00A8A8A800A6A6A600A9A9A900A1A1A1009494
      9400000000000000000000000000000000000000000000000000A3A3A3009191
      9100ADADAD00979797008D8D8D00A4A4A400A4A4A4009F9F9F00A1A1A100A1A1
      A100A2A2A200A2A2A200A2A2A200A5A5A500A3A3A3008E8E8E00BFBFBF00BFBF
      BF00BFBFBF00BCBCBC009090900097979700A5A5A500A5A5A500A2A2A200A2A2
      A200A0A0A000A8A8A8008D8D8D0000000000000000009A9A9A00A0A0A000ADAD
      AD009F9F9F00ABABAB00B0B0B000B0B0B000A2A2A200A4A4A400B5B5B500ABAB
      AB00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B2B2B200B3B3
      B300A9A9A900A4A4A400A3A3A300000000000000000000000000000000000000
      000098989800A3A3A300AAAAAA009B9B9B00B4B4B400AEAEAE00AEAEAE00AEAE
      AE00A5A5A5009898980098989800B9B9B900B6B6B600B7B7B700B7B7B700B7B7
      B700B5B5B5009A9A9A009A9A9A0098989800B5B5B500B9B9B900AEAEAE00ACAC
      AC00AEAEAE00A4A4A40000000000000000000000000000000000000000000000
      00000000000000000000000000009D9D9D008E8E8E008F8F8F0091919100A8A8
      A800A9A9A900A7A7A700A9A9A900ABABAB00ACACAC00B3B3B300AFAFAF009090
      900094949400B5B5B500B1B1B100ACACAC00AAAAAA00A8A8A800AAAAAA00A5A5
      A50092929200AAAAAA0000000000000000000000000000000000A6A6A6009494
      9400ABABAB00A5A5A5008C8C8C009E9E9E00A8A8A800A1A1A100A1A1A100A2A2
      A200A5A5A500A5A5A500A5A5A500A9A9A90093939300AAAAAA00BFBFBF00BFBF
      BF00AFAFAF008D8D8D00A1A1A100AAAAAA00A8A8A800A7A7A700A5A5A500A5A5
      A500A4A4A400A9A9A9008F8F8F0000000000000000009A9A9A00A0A0A000B0B0
      B0009F9F9F00ACACAC00B0B0B000AFAFAF00A3A3A300A1A1A100B4B4B400ACAC
      AC00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B0B0B000B2B2B200B2B2
      B200B4B4B400A7A7A700A2A2A200000000000000000000000000000000000000
      000099999900A0A0A000ABABAB009B9B9B00B4B4B400AEAEAE00AFAFAF00AFAF
      AF00A8A8A8009898980098989800B9B9B900B8B8B800B8B8B800B8B8B800B8B8
      B800B9B9B900979797009999990098989800B4B4B400B9B9B900B1B1B100ACAC
      AC00B1B1B100A1A1A10000000000000000000000000000000000000000000000
      000000000000000000009B9B9B008D8D8D008F8F8F0091919100A8A8A800ACAC
      AC00A8A8A800AAAAAA00ACACAC00AFAFAF00B3B3B300B9B9B90093939300A1A1
      A1009E9E9E0098989800B9B9B900B2B2B200AFAFAF00ACACAC00A9A9A900ACAC
      AC00AAAAAA0093939300A7A7A700000000000000000000000000000000009797
      9700A1A1A100AFAFAF008D8D8D0091919100AAAAAA00A5A5A500A4A4A400A5A5
      A500A5A5A500A7A7A700A8A8A800A9A9A9008D8D8D00BFBFBF00BFBFBF009F9F
      9F008E8E8E00AAAAAA00ACACAC00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7
      A700A7A7A700A7A7A70091919100000000000000000099999900A3A3A300AEAE
      AE009F9F9F00ACACAC00B0B0B000AFAFAF00A5A5A500A1A1A100B1B1B100ADAD
      AD00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B0B0B000B2B2B200B2B2
      B200B2B2B200B4B4B400A4A4A400AEAEAE000000000000000000000000000000
      00009B9B9B009D9D9D00ACACAC009B9B9B00B4B4B400AFAFAF00B0B0B000AFAF
      AF00ABABAB009898980098989800BBBBBB00BBBBBB00B9B9B900B9B9B900B9B9
      B900BABABA00989898009999990098989800B1B1B100BABABA00B5B5B500ADAD
      AD00B4B4B4009F9F9F0000000000000000000000000000000000000000000000
      0000AAAAAA00999999008D8D8D009090900091919100AAAAAA00AEAEAE00A8A8
      A800AAAAAA00AEAEAE00B0B0B000B2B2B200BABABA00A7A7A70091919100BCBC
      BC00BCBCBC00959595009F9F9F00BABABA00B3B3B300B0B0B000ACACAC00A9A9
      A900AEAEAE00AFAFAF0093939300000000000000000000000000000000009D9D
      9D0093939300B4B4B400999999008D8D8D00A5A5A500ABABAB00A5A5A500A7A7
      A700A7A7A700A9A9A900ABABAB009C9C9C00A2A2A200BFBFBF00919191009696
      9600AEAEAE00AEAEAE00ADADAD00ACACAC00ACACAC00ABABAB00AAAAAA00A9A9
      A900ADADAD009D9D9D009A9A9A00000000000000000099999900A1A1A100ACAC
      AC009F9F9F00ACACAC00B0B0B000AFAFAF00A7A7A700A0A0A000AEAEAE00AEAE
      AE00ABABAB00ABABAB00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B0B0B000B1B1B100B2B2
      B200B2B2B200B7B7B700A9A9A900ABABAB000000000000000000000000000000
      00009B9B9B009D9D9D00ADADAD009A9A9A00B4B4B400B1B1B100B1B1B100B0B0
      B000ADADAD009898980097979700BABABA00BDBDBD00BCBCBC00BCBCBC00BCBC
      BC00BEBEBE009A9A9A009999990098989800ABABAB00BCBCBC00B6B6B600AFAF
      AF00AFAFAF00A2A2A2000000000000000000000000000000000000000000AAAA
      AA00989898008D8D8D009090900091919100AAAAAA00B0B0B000A8A8A800AAAA
      AA00AEAEAE00B0B0B000B3B3B300B9B9B900B8B8B8009191910092929200BBBB
      BB00BBBBBB00B9B9B90091919100A7A7A700BABABA00B3B3B300B0B0B000ACAC
      AC00AFAFAF00A6A6A6009D9D9D0000000000000000000000000000000000A6A6
      A60094949400AEAEAE00B0B0B0008C8C8C0093939300ADADAD00ABABAB00A8A8
      A800A9A9A900ABABAB00AEAEAE008D8D8D00AFAFAF008D8D8D00A1A1A100B1B1
      B100B0B0B000AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADADAD00ACACAC00ACAC
      AC00B1B1B1008F8F8F00A7A7A70000000000AAAAAA0099999900A5A5A500AFAF
      AF009F9F9F00AEAEAE00B0B0B000AFAFAF00A9A9A9009F9F9F00ACACAC00B0B0
      B000ABABAB00ABABAB00ACACAC00ACACAC00ABABAB00ABABAB00ADADAD00ADAD
      AD00ACACAC00AEAEAE00AFAFAF00AFAFAF00B0B0B000B0B0B000B1B1B100B2B2
      B200B2B2B200B5B5B500AFAFAF00A8A8A8000000000000000000000000000000
      00009B9B9B009D9D9D00ADADAD009B9B9B00B3B3B300B1B1B100B1B1B100B1B1
      B100AFAFAF009898980097979700B8B8B800BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BFBFBF009D9D9D009999990098989800A5A5A500BCBCBC00B9B9B900B3B3
      B3009E9E9E00ACACAC0000000000000000000000000000000000AAAAAA009898
      9800999999009191910091919100ACACAC00B2B2B200AAAAAA00AAAAAA00AEAE
      AE00B0B0B000B3B3B300B6B6B600BDBDBD0099999900969696009C9C9C009797
      9700BBBBBB00BBBBBB00B7B7B70090909000AEAEAE00BABABA00B3B3B300B0B0
      B000B2B2B2009494940000000000000000000000000000000000000000000000
      00009C9C9C0096969600B8B8B8009D9D9D008C8C8C00A1A1A100B0B0B000ACAC
      AC00ABABAB00ACACAC00A4A4A4008D8D8D008E8E8E00ABABAB00B2B2B200B2B2
      B200B1B1B100B1B1B100B1B1B100B1B1B100B0B0B000AFAFAF00ADADAD00B1B1
      B100A7A7A700909090000000000000000000A9A9A90097979700A7A7A700ADAD
      AD009F9F9F00AEAEAE00B0B0B000AFAFAF00ABABAB00A0A0A000ABABAB00B7B7
      B700B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B4B4
      B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B3B3
      B300B4B4B400B1B1B100AFAFAF00A5A5A5000000000000000000000000000000
      00009C9C9C009B9B9B00AEAEAE009B9B9B00B2B2B200B3B3B300B2B2B200B2B2
      B200B1B1B1009898980098989800B6B6B600BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BFBFBF00A0A0A00098989800979797009F9F9F00BDBDBD00BCBCBC00ADAD
      AD00A1A1A1000000000000000000000000000000000000000000A4A4A4009595
      9500B9B9B900A2A2A20090909000A6A6A600B3B3B300AEAEAE00ACACAC00AFAF
      AF00B2B2B200B5B5B500BCBCBC00ADADAD0091919100ABABAB00000000009B9B
      9B0099999900BCBCBC00BBBBBB00B3B3B30090909000B4B4B400B8B8B800B5B5
      B500A2A2A200A1A1A10000000000000000000000000000000000000000000000
      0000A8A8A80096969600A7A7A700BABABA008F8F8F008D8D8D00AAAAAA00B1B1
      B100AEAEAE00AEAEAE009595950094949400B1B1B100B3B3B300B2B2B200B2B2
      B200B3B3B300B3B3B300B3B3B300B2B2B200B1B1B100B1B1B100B2B2B200B4B4
      B4008E8E8E00A3A3A3000000000000000000A9A9A90097979700A5A5A500ABAB
      AB009F9F9F00AEAEAE00B0B0B000AFAFAF00ACACAC00A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A000A0A0A000A1A1A100A1A1A100A1A1A100A1A1A100A2A2A200A2A2A200A2A2
      A200A4A4A400A4A4A400A5A5A500A6A6A6000000000000000000000000000000
      00009C9C9C0096969600AFAFAF009B9B9B00B1B1B100B4B4B400B3B3B300B3B3
      B300B3B3B3009898980098989800B2B2B200BEBEBE00BDBDBD00BDBDBD00BDBD
      BD00BEBEBE00ACACAC00AAAAAA00B5B5B500BDBDBD00BFBFBF00BFBFBF00A3A3
      A300ACACAC00000000000000000000000000000000000000000000000000A0A0
      A00095959500B8B8B800A9A9A90090909000A2A2A200B3B3B300B0B0B000B1B1
      B100B3B3B300B9B9B900BBBBBB0090909000A1A1A1000000000000000000AAAA
      AA00999999009E9E9E00BCBCBC00BBBBBB00ADADAD0090909000B8B8B800B6B6
      B600939393000000000000000000000000000000000000000000000000000000
      000000000000A3A3A30093939300B4B4B400B6B6B6008D8D8D008D8D8D00ACAC
      AC00B3B3B300B2B2B200B0B0B000B2B2B200B3B3B300B2B2B200B3B3B300B4B4
      B400B4B4B400B4B4B400B4B4B400B4B4B400B2B2B200B4B4B400B7B7B7009999
      990094949400000000000000000000000000A8A8A80097979700A9A9A900AEAE
      AE009F9F9F00AEAEAE00B0B0B000AFAFAF00ADADAD00A7A7A700A7A7A700A7A7
      A700A6A6A600A6A6A600A6A6A600A6A6A600A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A6A6A600A5A5A500A5A5A500A5A5
      A500A4A4A4009D9D9D00A6A6A600000000000000000000000000000000000000
      00009E9E9E0096969600B0B0B0009B9B9B00B0B0B000B5B5B500B3B3B300B3B3
      B300B4B4B4009898980097979700ADADAD00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BEBEBE00BABABA00B1B1B100A7A7A700A0A0A0009E9E9E00A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000A3A3A30095959500B0B0B000B1B1B10090909000A0A0A000B5B5B500B3B3
      B300B6B6B600BDBDBD009D9D9D00959595000000000000000000000000000000
      0000A9A9A90098989800A3A3A300BCBCBC00BBBBBB00A8A8A800949494009E9E
      9E00A4A4A4000000000000000000000000000000000000000000000000000000
      00000000000000000000A1A1A10093939300B8B8B800B4B4B4008D8D8D008D8D
      8D00AAAAAA00B5B5B500B4B4B400B2B2B200B3B3B300B4B4B400B4B4B400B4B4
      B400B4B4B400B4B4B400B4B4B400B5B5B500B7B7B700B8B8B8009D9D9D008F8F
      8F00ACACAC00000000000000000000000000A8A8A80097979700A9A9A900ACAC
      AC009F9F9F00AEAEAE00B1B1B100B0B0B000B0B0B000AEAEAE00ADADAD00ABAB
      AB00A9A9A900A7A7A700A5A5A500A3A3A300A2A2A200A6A6A600A6A6A600A5A5
      A500A6A6A600A6A6A600A6A6A600A5A5A500A6A6A600A5A5A500A6A6A600A5A5
      A500A4A4A400A8A8A80000000000000000000000000000000000000000000000
      00009E9E9E0096969600B0B0B0009B9B9B00AFAFAF00B5B5B500B5B5B500B5B5
      B500B8B8B800A2A2A200A6A6A600B2B2B200BABABA00B1B1B100A7A7A700A1A1
      A1009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009F9F9F00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A60097979700A8A8A800B8B8B800919191009C9C9C00B6B6
      B600BCBCBC00B0B0B00090909000A8A8A8000000000000000000000000000000
      000000000000A6A6A60098989800AAAAAA00BBBBBB00BFBFBF00A7A7A7009797
      9700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A2A2A20094949400B0B0B000BBBBBB008F8F
      8F008C8C8C009C9C9C00B5B5B500B8B8B800B7B7B700B6B6B600B5B5B500B5B5
      B500B5B5B500B6B6B600B8B8B800BABABA00B5B5B500969696008F8F8F00AAAA
      AA0000000000000000000000000000000000A8A8A80097979700A8A8A800ABAB
      AB009F9F9F00A9A9A900A8A8A800A5A5A500A3A3A300A2A2A200A2A2A200A2A2
      A200A2A2A200A2A2A200A2A2A200A4A4A400A0A0A000A5A5A500A6A6A600A5A5
      A500A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A4A4A400A4A4
      A400A3A3A300A9A9A90000000000000000000000000000000000000000000000
      00009F9F9F0096969600B0B0B0009B9B9B00ADADAD00BABABA00B5B5B500AFAF
      AF00A8A8A8009F9F9F009E9E9E009E9E9E009E9E9E009F9F9F009F9F9F009F9F
      9F009F9F9F00A3A3A300A9A9A900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9A9A900999999009F9F9F00BCBCBC00939393009797
      9700B8B8B800929292009B9B9B00000000000000000000000000000000000000
      00000000000000000000ABABAB00A8A8A800A6A6A600A3A3A300A8A8A8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A7009A9A9A009E9E9E00BFBF
      BF00A2A2A2008D8D8D008D8D8D009D9D9D00B2B2B200B8B8B800BABABA00BABA
      BA00BABABA00B8B8B800B1B1B1009C9C9C008D8D8D0094949400ABABAB000000
      000000000000000000000000000000000000A9A9A90099999900AEAEAE00B4B4
      B400A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A4A4A400A2A2A200A1A1
      A1009B9B9B009A9A9A00BDBDBD00BDBDBD00A7A7A700A1A1A100A5A5A500A5A5
      A500A4A4A400A4A4A400A3A3A300A3A3A300A3A3A300A4A4A400A3A3A300A0A0
      A000A0A0A000ACACAC0000000000000000000000000000000000000000000000
      0000A0A0A00096969600B5B5B5009D9D9D009D9D9D009D9D9D009E9E9E009F9F
      9F009F9F9F00A0A0A0009F9F9F00A0A0A000A5A5A500AAAAAA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA009C9C9C0099999900BFBFBF009C9C
      9C00919191009393930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A4009B9B
      9B009D9D9D00ACACAC009D9D9D008E8E8E008D8D8D008D8D8D008F8F8F009191
      91008F8F8F008E8E8E008E8E8E0091919100A0A0A00000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900A3A3A300A0A0
      A000A1A1A100A3A3A300A6A6A600AAAAAA000000000000000000000000000000
      000000000000A0A0A0009B9B9B00B6B6B600BCBCBC00ABABAB00A3A3A300A4A4
      A400A3A3A300A0A0A000A0A0A000A0A0A000A4A4A400A9A9A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A90099999900A6A6A600A3A3A300A0A0A0009F9F9F00A1A1A100A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3A3A3009A9A9A009F9F
      9F009D9D9D00A8A8A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA00A5A5A5009E9E9E009B9B9B009A9A9A0099999900969696009595
      9500989898009C9C9C00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A900A6A6A600A3A3A300A4A4A400A9A9
      A900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFE7FFFFFDFFFFCFFFFFFFEFFFFFF
      FFFFF80FFFFE07FFF001FFFFF803FFFFFFFFE00FFFFC01FFE00007FFF80007FF
      FFFFC003FFF8007FE000001FF000007FFFFF8003FFF0001FE0000003F000003F
      FFFF8003FFC0000FC0000001F000003FFFE10001FF800003E0000001F000003F
      FF800001FF000001E0000001F0000007FF000001FE000001F0000003F0000007
      FC000001FE000001F0000003F0000007F8000001FE000001F8000003F0000007
      F8000003FC000001FC000007F0000007F0000007FC000001FC000007F0000007
      E000000FFC000003FE000007F000001FF000007FFC000003FE00000FF000001F
      F000003FF8000003FF00000FF000001FE000001FF8000003FF80000FF800001F
      C000001FF8000007FF80001FF800001FC000001FF8000007FFC0001FF800001F
      C000007FF0000007FFC0001FF800001FC000007FF0000007FFE0003FF800001F
      F000003FF0020007FFF0003FF800001FF800003FF003000FFFF0003FF800003F
      F000003FE007800FFFF8007FF800003FF000007FE007C01FFFF8007FF800007F
      F00001FFE007E07FFFFC007FF80000FFF80001FFE00FFFFFFFFE00FFF80000FF
      FE0001FFC00FFFFFFFFE00FFF80001FFFF8003FFC01FFFFFFFFF00FFF8001FFF
      FFC01FFFE1FFFFFFFFFF81FFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFF3FFFFFFFFC1FFF
      E03FFFFFF003FFFFFC1FFFFFFFE003FFC007FFFFF0000FFFF80FFFFFFF8000FF
      C000FFFFE000003FF007FE3FFF00007F80001FFFE000000FF003FC1FFE00003F
      800003FFE000000FE001F80FFC00001F800000FFE000000FE000E00FF800000F
      8000001FE000000FF000000FF000000780000007E0000007F800001FF0000007
      80000003E0000007FC00003FE000000380000003E0000007FE00003FE0000003
      80000003E0000007FF00007FE000000180000003F0000007FF8000FFC0000001
      80000003F0000007FFC000FFC000000180000003F0000007FFC0007FC0000001
      80000001F0000007FFC0003FC000000180000001F0000003FF80001FC0000001
      80000001F0000003FF00000FC000000180000001F0000003FE000003C0000001
      80000001F0000003FC000001E000000180000000F0000003F0000001E0000001
      80000000F0000003E0000001E000000100000000F0000003C0000003F0000003
      00000000F0000007C0002003F000000300000000F0000007E0006007F8000007
      00000001F000000FF000F007FC00000700000003F000001FF800F80FFE00000F
      00000003F00001FFFC01FC1FFF00001F00000003F0003FFFFE03FFFFFFC0007F
      80F8003FF00FFFFFFF83FFFFFFF001FFFFFE0FFFFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object XMLDocument1: TXMLDocument
    Left = 688
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
  object ImageList4: TImageList
    Height = 24
    Width = 24
    Left = 608
    Top = 64
    Bitmap = {
      494C010104001000100018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A4009393930097979700A6A6A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000889088006484
      6400528352005E8E5E007F9B7F00ABB1AB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F008D8D8D007B7B7B007C7C7C008C8C8C00A1A1A100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAB
      AB0093867100A58B65009C958B00ACA9A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059595900BCBCBC00C7C7C700CACACA00B9B9B900A8A8A800919191008B8B
      8B0092929200A1A1A100B0B0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0A0004D734D000CA00C0015C1150052E3
      520075F4750075F475005CE65C0026BE26002D9F2D0096B59600000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      92007A7A7A00A8A8A800E9E9E900E0E0E000D2D2D200C1C1C100B0B0B0009898
      9800828282007C7C7C00888888009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      7000D39C4700EC981400F9B54400EFA22200DD890900C07D1A00AE7A34009479
      5800988D7F00A7A39E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F8F
      8F0089898900B9B9B900CFCFCF00E6E6E600EBEBEB00F3F3F300F6F6F600F4F4
      F400EDEDED00E3E0E3009F979F00429341003589330052835100879B86000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00198A190014BC140079F3790094FE940085F8
      850075F4750075F475007FF77F0094FE940094FE940039C839004F984F000000
      0000000000000000000000000000000000000000000000000000000000006767
      6700C7C7C7009E9E9E00E6E6E600E2E2E200E8E8E800EFEFEF00F5F5F500F9F9
      F900F9F9F900F3F3F300E5E5E500D3D3D300BCBCBC00A3A3A3008D8D8D000000
      0000000000000000000000000000000000000000000000000000000000005654
      5100F9BD6000E2992100FFC85B00FFC85B00FED68900FFECC600FFE2AC00FFD7
      9300FDC56E00F7B14200E89B2400C9841900B37B2D00A5804E00A5907600A19C
      9700000000000000000000000000000000000000000000000000000000008383
      830094949400B9B9B900C5C5C500E1E1E100E0E0E000E4E4E400E7E7E700ECEC
      EC00F6F6F600BBB6BB004C954C0035B3330067DF800069EE900040C048000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078787800118F110020C4200085F6850071ED710045DD450051E5
      510051E551004FE34F004FE34F0055E8550060ED600083FB83006BE76B00339C
      3300000000000000000000000000000000000000000000000000000000006464
      6400C7C7C7009C9C9C00E0E0E000DDDDDD00E1E1E100E4E4E400E7E7E700EAEA
      EA00EEEEEE00F1F1F100F4F4F400F7F7F700F8F8F800FAFAFA00DADADA00BABA
      BA00000000000000000000000000000000000000000000000000ADADAD005351
      4E00FAC06700DD911600FFC04C00FFB94000FFCB7B00FEF0D900FFE9C500FFE9
      C500FFEACA00FFECC600FFF0CA00FFEEC800FFEAC100FFE2AC00FFD58C00F9C4
      5F00DC9B30000000000000000000000000000000000000000000000000008989
      890087878700BCBCBC00BEBEBE00DEDEDE00DEDEDE00E1E1E100E7E7E700EEEA
      EE00F0E8F000706470006BC26A0044B1410050CA670039DA74004CC86100A1B8
      A100000000000000000000000000000000000000000000000000000000000000
      0000898989001E7A1E000EB70E0079EF790059E1590042DD420000A4000012B9
      120032D532003AD83A003AD83A003DDA3D0042DD42004BE34B0067EE670071ED
      710040A040000000000000000000000000000000000000000000000000006B6B
      6B00BDBDBD00A0A0A000DBDBDB00DBDBDB00DEDEDE00E1E1E100E3E3E300E6E6
      E600E9E9E900EAEAEA00ECECEC00ECECEC00EBEBEB00EBEBEB00E2E2E200B3B3
      B300000000000000000000000000000000000000000000000000000000005351
      4E00F9C16E00DB8D0E00FFBE4700FEB33600FFC97100FFF9ED00FEF1DD00FEF1
      DD00FEF1DD00FEF0D900FFEED400FFEED400FEEDCD00FFEACA00FFEED400FFDA
      8000E9B657000000000000000000000000000000000000000000000000008E8E
      8E007F7F7F00C2C2C200B6B6B600DDDDDD00DBDBDB00DFDFDF00E4E2E400A19D
      A1003AA03900009300000A9C09000295000046BE57002DCC65004EC767002B84
      2B00498349008EB38E000000000000000000000000000000000000000000A7A7
      A700455A450000AA000059E1590059E1590031D231002DD02D001DC71D006BC9
      6B0032BA32000ABE0A0020CC200024CC24002DD02D0035D435003DDA3D005CE6
      5C0051D9510075A5750000000000000000000000000000000000000000006F6F
      6F00B9B9B900A4A4A400D5D5D500DADADA00DBDBDB00DEDEDE00E0E0E000E3E3
      E300E5E5E500E6E6E600E7E7E700E8E8E800E7E7E700E7E7E700E6E6E600ADAD
      AD00000000000000000000000000000000000000000000000000000000004F4F
      4F00F9C16E00DA890900FFB94400FEAD2A00FFC26100FFFEFE00FFF3E200FEF1
      DD00FEF0D900FEF0D900FEF0D900FEF0D900FEF1DD00FEF1DD00FFF7EC00FFCE
      6D00F0C06500C2B6A40000000000000000000000000000000000000000009292
      920073737300C8C8C800AFAFAF00DBDBDB00D7D7D700DEDEDE00B3B0B3005481
      540051BF50004BBF57004AD780004FD47F004AD27A003DCF6E0046D2760055D5
      7E005ADA85004EAA4D0000000000000000000000000000000000000000006E6E
      6E001EA11E000EB30E0066E2660029D0290021CA21001DC71D0012C5120000AE
      0000FFFEFF0097DA970000AA000002BD020010C110001BC81B0024CC240031D2
      310060E5600022B0220000000000000000000000000000000000000000007676
      7600ADADAD00A9A9A900CECECE00D7D7D700D8D8D800DBDBDB00DDDDDD00DFDF
      DF00E1E1E100E2E2E200E3E3E300E3E3E300E3E3E300E2E2E200E7E7E700A8A8
      A800000000000000000000000000000000000000000000000000000000005252
      5200F8C47500D7840200FFB94000FEA92100FFBA5000FFFEFE00FFF9ED00FFF9
      F200FFFAF400FFFAF400FFFDF800FFFDF800FFFAF400FFFAF400FFFEFE00FFCB
      6E00F9C86A00C4AE8F0000000000000000000000000000000000000000009898
      98006B6B6B00CBCBCB00AAAAAA00DBDBDB00D3D3D300DDDDDD00A39EA3005C84
      5C005AC1590047B84D0063DB90006ADD93006EE1960071E2970071E297006EE0
      970071E19D0043A8430000000000000000000000000000000000A0A0A000485E
      480007AE07002EC62E004AD64A0015C415000EC00E0008BB080001B9010000B6
      00003BBC3B00FFFEFF00F6FBF6002FB72F0000AE000000B600000ABE0A0015C4
      150029D0290052DC520068A86800000000000000000000000000000000007A7A
      7A00A7A7A700ACACAC00C7C7C700D4D4D400D5D5D500D7D7D700D9D9D900DBDB
      DB00DDDDDD00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DEDEDE00E5E5E500A7A7
      A700000000000000000000000000000000000000000000000000000000005252
      5200F9C67A00D4810000FFB63E00FFA41400FFB43A00FFFEFE00FFFEFE00FFFD
      F800FFFDF600FFFDF600FFF9F200FFF7EC00FFF7EC00FFF6E700FFFEFE00FFCD
      7D00FEC86000C6A4720000000000000000000000000000000000000000009B9B
      9B0066666600CFCFCF00A4A4A400DDDDDD00D1D1D100D8D8D800A9A6A9005677
      560060C55F0039B13A0084D995007DD68B0083DC950092F0B30097F1B80061C9
      69005CC965002EA92D000000000000000000000000000000000078787800519E
      510000A400003DD03D0025C5250006BA060000B6000001B9010008BB08000ABE
      0A0000B10000BCE6BC00FFFEFF00FFFEFF00A1DDA10000AA000000B6000001B9
      01000ABE0A0044D6440021A82100000000000000000000000000000000008080
      80009D9D9D00B1B1B100C1C1C100D5D5D500D1D1D100D4D4D400D6D6D600D8D8
      D800D9D9D900DADADA00DBDBDB00DBDBDB00DBDBDB00DADADA00E1E1E100ACAC
      AC00000000000000000000000000000000000000000000000000000000005A5A
      5A00F3C47C00D57E0000FFB43A00FF9C0A00FEA92100FFFEFE00FFFAF400FFFD
      F800FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFDC
      A400FFC25200CC9C52000000000000000000000000000000000000000000A0A0
      A0005F5F5F00D3D3D300A0A0A000E1E1E100D2D2D200D4D4D400A9A7A9006276
      6200C3EEC3002DA82C003BB1390047B4450018A21700B3FCCF00B7FDD2001A97
      17007C877C00A3A9A300000000000000000000000000000000005F5F5F005EC6
      5E00009E00003CCD3C000EBD0E0001B9010008BB08000EC00E0015C115001AC6
      1A0015C4150007AE0700FFFEFF00FFFEFF00FFFEFF00FAFDFA003FBD3F0000B1
      000001B9010015C4150021BD2100ABBAAB000000000000000000000000008585
      850093939300B5B5B500BABABA00D9D9D900D1D1D100D2D2D200D1D1D100D4D4
      D400D5D5D500D6D6D600D7D7D700D7D7D700D7D7D700D6D6D600DADADA00B3B3
      B300000000000000000000000000000000000000000000000000000000005A5A
      5A00F4C47C00D57E0000FFB94000FF970000FF9B0400FF9C0300FF9E0400FFA1
      0B00FFA31500FFA81900FEA71D00FFAA1F00FFAD2700FFAD2700FFB02D00FEAD
      2A00FFB83B00D0973E000000000000000000000000000000000000000000A4A4
      A4005B5B5B00D6D6D6009C9C9C00E4E4E400D4D4D400D6D6D600CFCECF00B0AD
      B000C6C3C6008073800076A2760089D08900139E1200D1FFE800D3FFEA002DA4
      2D000000000000000000000000000000000000000000000000005252520075D7
      7500009E000033C833000EBD0E000ABE0A0010C1100015C415001BC81B0021CA
      210029D029000EC00E008DD68D00FFFEFF00FFFEFF00FFFEFF00FFFEFF008DD6
      8D0000AE000002BD020026C2260089B189000000000000000000000000008B8B
      8B0088888800BBBBBB00B3B3B300DEDEDE00D5D5D500D4D4D400D3D3D300D2D2
      D200D1D1D100D1D1D100D3D3D300D3D3D300D3D3D300D1D1D100D4D4D400C0C0
      C000000000000000000000000000000000000000000000000000000000005A5A
      5A00F3C58100D57E0000FFBD4E00FF970000FF980000FF9C0A00FEA92100FEAF
      3100FFB33F00FFB94400FFB84900FFBA4D00FFBA4D00FFB94400FEB33600FEA9
      2100FFAA1F00D69731000000000000000000000000000000000000000000A7A7
      A70055555500D9D9D90099999900E8E8E800D7D7D700D7D7D700D8D8D800D6D6
      D600DCDCDC00908C90006495640085D28500079D0700D1FADA00B5ECBB0023A7
      23000000000000000000000000000000000000000000000000004E4F4E008BE1
      8B00009B00002EC62E0020C4200020C4200037CF370048D3480050D6500056D8
      56005DDE5D0012B91200EAF7EA00FFFEFF00FFFEFF00FFFEFF0093D8930013B5
      13003DD03D0025C525002EC62E0073AF73000000000000000000000000009090
      90007D7D7D00BFBFBF00AEAEAE00E1E1E100D7D7D700D6D6D600D5D5D500D4D4
      D400D3D3D300D3D3D300D1D1D100D2D2D200D1D1D100D3D3D300D5D5D500CDCD
      CD00B8B8B8000000000000000000000000000000000000000000000000006161
      6100E8BE7C00D57E0000FFC55C00FFAA2600FEB44200FEB54500FEB44200FEB5
      4500FFB84900FFB84900FFBC5300FFBA5000FFBC5400FFBA5000FFBC5300FFBA
      5000FFB63E00E09C30000000000000000000000000000000000000000000ACAC
      AC0053535300DBDBDB0097979700EFEFEF00E0E0E000DCDCDC00D8D8D800D6D6
      D600DBDBDB00ACAAAC007B817B00BED0BE0040A33F003B9A3A0068A8680093AE
      9300000000000000000000000000000000000000000000000000545354008FDF
      8F00009E00004ACE4A0065D965004ED64E0056D856005BD95B0061DD610066E2
      660061DD610028B52800FFFEFF00FFFEFF00FFFEFF0045BE450031C7310061DD
      61005DDA5D0055D655005DD45D006CAE6C000000000000000000000000009595
      950076767600C4C4C400A8A8A800EBEBEB00DCDCDC00D9D9D900D7D7D700D7D7
      D700D6D6D600D6D6D600D5D5D500D5D5D500D5D5D500D6D6D600D8D8D800D9D9
      D900B2B2B2000000000000000000000000000000000000000000000000006565
      6500E1B97C00D57E0000FED68900FFC26100FFC26100FFC56900FDC47000FFCB
      7B00FFCD7D00FFCE8400FFD18900FFD59400FFDB9D00FFDCA200FFDCA400FFD3
      9000FFBA4D00E8AB4300C1B9AD00000000000000000000000000000000000000
      000051515100DDDDDD0096969600F1F1F100E6E6E600E6E6E600E4E4E400DDDD
      DD00DBDBDB00DEDDDE00D7D6D700D7D3D700DCD5DC00E4DBE400E8E1E800CFCA
      CF00B8B8B80000000000000000000000000000000000000000005F5F5F0098D2
      980020AF200025BB25007EE07E0056D8560061DD610068DF68006CE16C0078E6
      780031C73100C2E9C200FFFEFF00DFF3DF0014B0140061DD610078E6780074E5
      74006AE06A0068DF68005DD45D007AB17A000000000000000000000000009B9B
      9B006C6C6C00C8C8C800A1A1A100F1F1F100E7E7E700E5E5E500E0E0E000DADA
      DA00D8D8D800D9D9D900D9D9D900D9D9D900D8D8D800D7D7D700D8D8D800E0E0
      E000ABABAB000000000000000000000000000000000000000000000000006565
      6500E1B97C00D57E0000FAD58900FFC56900FFC56900E6963300C1500000F0C3
      8C00FFEAC100FFE5BA00FFE5BA00FCE0B200E2A15700DF954900FADEB000FFE5
      B600FFBA5000F5BD5E00C2B29B00000000000000000000000000000000000000
      000050505000DCDCDC0096969600EFEFEF00EAEAEA00E8E8E800E7E7E700E7E7
      E700E2E2E200DDDDDD00DDDDDD00DDDDDD00FBFBFB00FDFDFD00FFFFFF00CECE
      CE00BABABA000000000000000000000000000000000000000000787878007896
      780074D27400009E000089E6890070E070006CE16C0074E574007CE77C0085EE
      850014B01400FFFEFF00A1DDA10015B4150085EE85008DEE8D0087EB870081E9
      810078E6780086E486003FC63F0096B596000000000000000000000000009E9E
      9E0068686800CBCBCB009E9E9E00F5F5F500E8E8E800E7E7E700E6E6E600E6E6
      E600DFDFDF00DBDBDB00DCDCDC00DBDBDB00EAEAEA00EAEAEA00F5F5F500FFFF
      FF00ABABAB000000000000000000000000000000000000000000000000006A6A
      6A00D8B27900D9810000FAD58900FFC97100FFCC7300EEA54600C4540000EEBC
      7E00FFEAC100FFE5BA00FFE9BE00FADEB000C4520000C4540000F3CB9500FFEE
      C800FFC05B00FBCA7200C4A88100000000000000000000000000000000000000
      000051515100DCDCDC0097979700ECECEC00EBEBEB00EAEAEA00E9E9E900E9E9
      E900E9E9E900E5E5E500DFDFDF00DDDDDD00FCFCFC00E2E2E200D4D3D400A1A1
      A1000000000000000000000000000000000000000000000000009A9A9A005156
      5100C3F5C300009E000052D0520092E9920078E6780081E981008DEE8D0062DA
      620093D893005EC65E0039C839009FF89F009DF59D009AF49A0097F2970092EE
      92008AEC8A00A2F2A20013A8130000000000000000000000000000000000A4A4
      A4005B5B5B00CECECE009A9A9A00F6F6F600EAEAEA00E9E9E900E9E9E900E8E8
      E800E8E8E800E2E2E200DFDFDF00DDDDDD00F8F8F800F8F8F800E6E6E600C4C4
      C400B3B3B3000000000000000000000000000000000000000000000000007070
      7000CDAA7500D9810000FAD58900FFCE7900FFCE7900F3B25700C4540000E9B6
      8000FFFDEC00FEF0D900FEEDCD00FFF0CA00C85A0000C95D0000ECBE8100FFF9
      D800FFC97100FED68900C89F6400000000000000000000000000000000000000
      000055555500D9D9D90099999900E9E9E900EDEDED00ECECEC00EBEBEB00EBEB
      EB00EAEAEA00EBEBEB00E5E5E500E1E1E100F6F6F600DBDADB00C5C4C500AAAA
      AA00000000000000000000000000000000000000000000000000000000006767
      6700A4C0A40072D17200009E000096EB960098EC980089EB89009DF59D000AAD
      0A0015AE150070E07000ACFCAC00ACFCAC00A9FAA900A6F9A600A2F5A2009CF1
      9C00A2F2A20089E689003DA83D0000000000000000000000000000000000A6A6
      A6005A5A5A00D0D0D00097979700F6F6F600ECECEC00EBEBEB00EBEBEB00EAEA
      EA00EAEAEA00EAEAEA00E2E2E200E0E0E000EDEDED00E8E8E800D2D0D200A7A7
      A700000000000000000000000000000000000000000000000000000000007070
      7000CDAA7500DB860200F7D18400FFD48500FFD48200F6BE6900C4540000E2A6
      6800FFFDF600FEF9E600FEFAE800FFFDF600C95D0000C95D0000E2A45B00FFFF
      E300FED68900E3A13700C2B6A400000000000000000000000000000000000000
      00005B5B5B00D7D7D7009C9C9C00E5E5E500F1F1F100EEEEEE00EEEEEE00EDED
      ED00EDEDED00ECECEC00EBEBEB00E5E5E500F5F5F500D8D7D800A3A3A300BCBC
      BC00000000000000000000000000000000000000000000000000000000009E9E
      9E0054535400E1FBE1001DB01D0015B41500AFF5AF00A2F5A20092EE920004AA
      04009AF39A00B4FEB400B4FEB400B4FEB400B4FEB400B1FDB100ADF9AD00ADF9
      AD00BEFEBE0015AE1500A1BBA10000000000000000000000000000000000ABAB
      AB0055555500D3D3D30094949400F7F7F700EEEEEE00EDEDED00EDEDED00ECEC
      EC00ECECEC00ECECEC00EAEAEA00E4E4E400EBEBEB00EBECEB00C5C5C500A6A6
      A600000000000000000000000000000000000000000000000000000000007070
      7000C6A47200DD890900F5CE7E00FFD98F00FFD58C00F9C87800C4540000DC97
      4E00FFFDF800FEFAE800FEFAE800FFFDF600C95D0000C4520000D88B3B00FFFF
      F000FEE19E00CE933D0000000000000000000000000000000000000000000000
      00005E5E5E00D2D2D200A0A0A000E0E0E000F2F2F200F0F0F000F0F0F000EFEF
      EF00EFEFEF00F0F0F000F2F2F200ECECEC00FCFCFC00BEBEBE00B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000089898900696C6900E2FEE20000A400002BBE2B00BAF9BA00BAF9BA00ADF9
      AD00B4FEB400B4FEB400B8FEB800B8FEB800B8FEB800B8FEB800BEFEBE00CFFF
      CF0049CB49005AB05A0000000000000000000000000000000000000000000000
      000053535300D5D5D50094949400F6F6F600F1F1F100EFEFEF00EFEFEF00EFEF
      EF00EEEEEE00EEEEEE00EFEFEF00E8E8E800EEEEEE00EDEDED00A0A0A000BBBB
      BB00000000000000000000000000000000000000000000000000000000007A7A
      7A00B3976B00DE8C1000F2CA7700FFDE9900FFDB9200FCD28700C4520000D787
      3400FFFEFE00FFFFF000FFFDF800FFFEFE00F6E4CB00FFF9ED00FFFFF000FFF4
      D200EBB35400C4B6A00000000000000000000000000000000000000000000000
      000063636300CCCCCC00A4A4A400DADADA00F8F8F800F5F5F500F8F8F800FBFB
      FB00FCFCFC00F7F7F700ECECEC00DADADA00C6C6C600B0B0B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600716E7100E9FCE90012AD12000AAD0A00A4F3A400D1FF
      D100CAFFCA00C5FFC500C2FEC200C2FEC200CAFFCA00D5FFD500D5FFD50043CB
      43003DA83D000000000000000000000000000000000000000000000000000000
      000052525200D6D6D60094949400F3F3F300F3F3F300F1F1F100F2F2F200F3F3
      F300F5F5F500F7F7F700F9F9F900F7F7F700FBFBFB00D3D3D300A7A7A7000000
      0000000000000000000000000000000000000000000000000000000000007A7A
      7A00B3976B00E1911600F1C67000FFE4A600FFE1A100FFE1A100CD6C0E00DE9A
      5300FFFEFE00FEEDCD00F9D59600F3B95800F1A22500E6920B00CD811500A779
      35009F9079000000000000000000000000000000000000000000000000000000
      000067676700C8C8C800AAAAAA00D4D4D400F6F6F600E2E2E200CBCBCB00B7B7
      B700ACACAC00A2A2A20093939300858585009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A0061616100C7C6C7006CD46C0000A4000030C3
      30009CF19C00CFFFCF00DBFFDB00D5FFD500BEFEBE006AE06A0007B307005695
      5600000000000000000000000000000000000000000000000000000000000000
      00004F4F4F00D7D7D70096969600F6F6F600FEFEFE00FEFEFE00FBFBFB00F0F0
      F000E1E1E100CECECE00BBBBBB00ADADAD009898980097979700000000000000
      0000000000000000000000000000000000000000000000000000000000007D7D
      7D00AF936900E3961F00EDBE6300FEE6A900F8CF7E00F3B95000E8961300EB92
      0300E38B0700C6811A00A0793D008A7C670092908C00A7A7A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000075757500BDBDBD00CBCBCB00A8A8A800A1A1A10091919100858585008B8B
      8B009E9E9E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096959600747074007D877D0045A1
      45000BAA0B0000AE000000B1000000AE00000CA80C00418E41009DA39D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000053535300DDDDDD00A1A1A100C5C5C500BABABA00AEAEAE00A2A2A2009393
      9300838383007F7F7F008F8F8F00A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008B8B
      8B0091897F00FEB44200EB8C0100DD890900C08324009B7B4B008A8172009897
      9500ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009595950091919100A2A2A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A700969596008D8C8D008F908F009E9E9E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000083838300999999009C9C9C0082828200868686009A9A9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000929292008F8D89009E9E9D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F0FFFFFFC0FFF03FFFE0FFFFF001FFFE
      003FE000FFE003FFE0001FFC001FE0001FE0000FE0001FF8000FE0000FC00007
      E0000FF00007E0000FE00007E00003E00003E0000FE00003E00003E00003E000
      0FE00003E00003C00001E0000FE00003E00003C00001E0000FE00003E00003C0
      0000E0000FE00003E0000FC00000E0000FE00003E0000FC00000E00007E00003
      E0000FC00000E00007E00001F00007C00000E00007E00001F00007C00000E000
      07E00001F0000FC00001E00007E00001F0000FE00001E0000FE00001F0000FE0
      0001E0000FE00003F0001FF00003F0000FE00003F0003FF80007F0001FE00007
      F0007FFC000FF0003FE0003FF007FFFF001FF000FFE007FFF8FFFFFFE0FFF03F
      FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList5: TImageList
    Height = 24
    Width = 24
    Left = 640
    Top = 64
    Bitmap = {
      494C010104001000100018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8B8B800A7A7A700ABABAB00BABABA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A0008888
      88007F7F7F008A8A8A00A1A1A100C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000083838300A1A1A1008F8F8F0090909000A1A1A100B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF009696960098989800A8A8A800BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006D6D6D00D0D0D000DBDBDB00DEDEDE00CDCDCD00BCBCBC00A6A6A600A0A0
      A000A6A6A600B5B5B500C4C4C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500747474006A6A6A0080808000AFAF
      AF00C8C8C800C8C8C800B5B5B500868686007A7A7A00BABABA00000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6008E8E8E00BCBCBC00FDFDFD00F4F4F400E6E6E600D5D5D500C4C4C400ACAC
      AC0096969600909090009C9C9C00B0B0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84009F9F9F0091919100B0B0B0009A9A9A00848484007F7F7F00838383008989
      89009F9F9F00B6B6B60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3A3
      A3009D9D9D00CDCDCD00E3E3E300FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F5F500B0B0B0007E7E7E00727272007E7E7E00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000092929200666666007C7C7C00CACACA00DDDDDD00D3D3
      D300C8C8C800C8C8C800CFCFCF00DDDDDD00DDDDDD0095959500888888000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00DBDBDB00B2B2B200FAFAFA00F6F6F600FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9F900E7E7E700D0D0D000B7B7B700A1A1A1000000
      0000000000000000000000000000000000000000000000000000000000006868
      6800BFBFBF0094949400C1C1C100C1C1C100D6D6D600F7F7F700E9E9E900DDDD
      DD00C7C7C700AEAEAE009898980083838300828282008D8D8D00A1A1A100B0B0
      B000000000000000000000000000000000000000000000000000000000009797
      9700A8A8A800CDCDCD00D9D9D900F5F5F500F4F4F400F8F8F800FBFBFB00FFFF
      FF00FFFFFF00CDCDCD008585850087878700B9B9B900C2C2C200959595000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C006464640086868600D2D2D200C3C3C300A6A6A600AFAF
      AF00AFAFAF00ADADAD00ADADAD00B3B3B300BABABA00D4D4D400BDBDBD007C7C
      7C00000000000000000000000000000000000000000000000000000000007878
      7800DBDBDB00B0B0B000F4F4F400F2F2F200F5F5F500F8F8F800FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE00CECE
      CE00000000000000000000000000000000000000000000000000C1C1C1006565
      6500C2C2C2008C8C8C00B9B9B900B2B2B200CFCFCF00FFFFFF00F6F6F600F6F6
      F600F8F8F800F7F7F700F9F9F900F8F8F800F4F4F400E9E9E900D9D9D900BFBF
      BF00989898000000000000000000000000000000000000000000000000009D9D
      9D009B9B9B00D0D0D000D2D2D200F2F2F200F2F2F200F5F5F500FBFBFB00FFFF
      FF00FFFFFF007E7E7E00ABABAB008D8D8D00A3A3A300A2A2A200A0A0A000C1C1
      C100000000000000000000000000000000000000000000000000000000000000
      00009D9D9D006060600077777700C8C8C800B1B1B100A4A4A400676767007A7A
      7A00989898009D9D9D009D9D9D00A0A0A000A4A4A400ABABAB00BFBFBF00C3C3
      C300858585000000000000000000000000000000000000000000000000007F7F
      7F00D1D1D100B5B5B500EFEFEF00EFEFEF00F2F2F200F5F5F500F7F7F700FAFA
      FA00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600C7C7
      C700000000000000000000000000000000000000000000000000000000006565
      6500C5C5C50087878700B6B6B600ACACAC00CBCBCB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FDFDFD00F9F9F900F8F8F800FDFDFD00D3D3
      D300B3B3B300000000000000000000000000000000000000000000000000A2A2
      A20093939300D6D6D600CACACA00F2F2F200EFEFEF00F3F3F300F7F7F700B3B3
      B300818181005E5E5E00676767005F5F5F009898980095959500A0A0A0006C6C
      6C007A7A7A00B5B5B5000000000000000000000000000000000000000000BBBB
      BB00646464006A6A6A00B1B1B100B1B1B100969696009393930087878700AEAE
      AE008A8A8A00787878008A8A8A008C8C8C009393930099999900A0A0A000B5B5
      B500A9A9A900A1A1A10000000000000000000000000000000000000000008383
      8300CDCDCD00B8B8B800E9E9E900EEEEEE00EFEFEF00F2F2F200F4F4F400F7F7
      F700F9F9F900FAFAFA00FBFBFB00FCFCFC00FBFBFB00FBFBFB00FAFAFA00C1C1
      C100000000000000000000000000000000000000000000000000000000006464
      6400C5C5C50083838300B4B4B400A5A5A500C3C3C300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9
      C900BEBEBE00C6C6C6000000000000000000000000000000000000000000A6A6
      A60087878700DDDDDD00C3C3C300EFEFEF00EBEBEB00F2F2F200C6C6C6007F7F
      7F009C9C9C009A9A9A00A9A9A900AAAAAA00A6A6A6009E9E9E00A4A4A400ACAC
      AC00B1B1B1009090900000000000000000000000000000000000000000008282
      82007474740075757500B8B8B8009191910089898900878787007F7F7F006C6C
      6C00FFFFFF00CCCCCC006A6A6A00747474007C7C7C00868686008C8C8C009696
      9600B6B6B6007D7D7D0000000000000000000000000000000000000000008B8B
      8B00C1C1C100BDBDBD00E2E2E200EBEBEB00EDEDED00EFEFEF00F2F2F200F3F3
      F300F5F5F500F6F6F600F7F7F700F7F7F700F7F7F700F6F6F600FBFBFB00BCBC
      BC00000000000000000000000000000000000000000000000000000000006666
      6600C9C9C9007E7E7E00B2B2B200A1A1A100BABABA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9C9
      C900C5C5C500BDBDBD000000000000000000000000000000000000000000ACAC
      AC007F7F7F00DFDFDF00BEBEBE00EFEFEF00E7E7E700F2F2F200B5B5B5008484
      8400A1A1A10095959500B6B6B600BBBBBB00BFBFBF00C0C0C000C0C0C000BEBE
      BE00C0C0C0008989890000000000000000000000000000000000B5B5B5006767
      67006F6F6F008E8E8E00A4A4A400818181007B7B7B0076767600727272007070
      700090909000FFFFFF00FFFFFF00878787006C6C6C0070707000787878008181
      810091919100ABABAB009C9C9C00000000000000000000000000000000008E8E
      8E00BBBBBB00C0C0C000DBDBDB00E8E8E800E9E9E900EBEBEB00EDEDED00EFEF
      EF00F2F2F200F2F2F200F3F3F300F3F3F300F3F3F300F2F2F200F9F9F900BBBB
      BB00000000000000000000000000000000000000000000000000000000006666
      6600CCCCCC007C7C7C00B0B0B0009B9B9B00AFAFAF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D1
      D100C2C2C200AFAFAF000000000000000000000000000000000000000000AFAF
      AF007A7A7A00E3E3E300B8B8B800F2F2F200E5E5E500EDEDED00BCBCBC007B7B
      7B00A6A6A60089898900C4C4C400BFBFBF00C5C5C500D8D8D800DBDBDB00AAAA
      AA00A7A7A70080808000000000000000000000000000000000008C8C8C008C8C
      8C00676767009B9B9B0089898900747474007070700072727200767676007878
      78006D6D6D00E6E6E600FFFFFF00FFFFFF00D4D4D4006A6A6A00707070007272
      720078787800A1A1A10078787800000000000000000000000000000000009494
      9400B1B1B100C5C5C500D5D5D500E9E9E900E5E5E500E8E8E800EAEAEA00EDED
      ED00EDEDED00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EEEEEE00F5F5F500C0C0
      C000000000000000000000000000000000000000000000000000000000006E6E
      6E00CACACA007C7C7C00AFAFAF0095959500A1A1A100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500BBBBBB00A1A1A1000000000000000000000000000000000000000000B5B5
      B50073737300E7E7E700B5B5B500F5F5F500E6E6E600E8E8E800BCBCBC008080
      8000EDEDED007E7E7E008A8A8A009191910071717100EEEEEE00F0F0F0006B6B
      6B0096969600BABABA000000000000000000000000000000000073737300A6A6
      A60064646400999999007A7A7A0072727200767676007B7B7B00808080008484
      8400818181006F6F6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00939393006D6D
      6D00727272008181810083838300C6C6C6000000000000000000000000009999
      9900A7A7A700CACACA00CECECE00EDEDED00E5E5E500E6E6E600E5E5E500E8E8
      E800E9E9E900EAEAEA00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EEEEEE00C7C7
      C700000000000000000000000000000000000000000000000000000000006E6E
      6E00CACACA007C7C7C00B2B2B200909090009393930092929200939393009696
      96009B9B9B009D9D9D009F9F9F00A1A1A100A5A5A500A5A5A500A8A8A800A5A5
      A500B0B0B000999999000000000000000000000000000000000000000000B8B8
      B8006F6F6F00EAEAEA00B0B0B000F8F8F800E8E8E800EAEAEA00E3E3E300C2C2
      C200D9D9D9008E8E8E00A1A1A100C0C0C0006C6C6C00FEFEFE00FFFFFF007D7D
      7D0000000000000000000000000000000000000000000000000066666600BABA
      BA0064646400929292007A7A7A00787878007C7C7C0081818100868686008989
      8900919191007B7B7B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6006C6C6C007474740088888800B1B1B100000000000000000000000000A0A0
      A0009C9C9C00CFCFCF00C7C7C700F2F2F200E9E9E900E8E8E800E7E7E700E6E6
      E600E5E5E500E5E5E500E7E7E700E7E7E700E7E7E700E5E5E500E8E8E800D4D4
      D400000000000000000000000000000000000000000000000000000000006E6E
      6E00CCCCCC007C7C7C00B9B9B900909090009090900095959500A1A1A100A9A9
      A900B1B1B100B4B4B400B6B6B600B8B8B800B8B8B800B4B4B400ACACAC00A1A1
      A100A1A1A100969696000000000000000000000000000000000000000000BBBB
      BB0069696900EDEDED00ADADAD00FCFCFC00EBEBEB00EBEBEB00EDEDED00EAEA
      EA00F0F0F000A2A2A20091919100C0C0C00066666600FBFBFB00E6E6E6007979
      790000000000000000000000000000000000000000000000000063636300CBCB
      CB00626262008E8E8E00868686008686860097979700A2A2A200A7A7A700ABAB
      AB00B2B2B2007A7A7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CACACA007878
      78009B9B9B00898989008E8E8E00A5A5A500000000000000000000000000A4A4
      A40091919100D3D3D300C2C2C200F5F5F500EBEBEB00EAEAEA00E9E9E900E8E8
      E800E7E7E700E7E7E700E5E5E500E6E6E600E5E5E500E7E7E700E9E9E900E1E1
      E100CCCCCC000000000000000000000000000000000000000000000000007575
      7500C5C5C5007C7C7C00C0C0C000A4A4A400B2B2B200B3B3B300B2B2B200B3B3
      B300B6B6B600B6B6B600BBBBBB00BABABA00BCBCBC00BABABA00BBBBBB00BABA
      BA00B0B0B0009A9A9A000000000000000000000000000000000000000000C0C0
      C00068686800EFEFEF00ABABAB00FFFFFF00F4F4F400F0F0F000EDEDED00EAEA
      EA00EFEFEF00BFBFBF0092929200DBDBDB00858585007F7F7F009C9C9C00B5B5
      B50000000000000000000000000000000000000000000000000068686800CBCB
      CB0064646400A0A0A000B3B3B300A6A6A600ABABAB00AEAEAE00B3B3B300B8B8
      B800B3B3B30083838300FFFFFF00FFFFFF00FFFFFF009696960091919100B3B3
      B300AFAFAF00AAAAAA00ADADAD00A1A1A100000000000000000000000000A9A9
      A9008B8B8B00D8D8D800BCBCBC00FFFFFF00F0F0F000EDEDED00EBEBEB00EBEB
      EB00EAEAEA00EAEAEA00E9E9E900E9E9E900E9E9E900EAEAEA00EDEDED00EDED
      ED00C6C6C6000000000000000000000000000000000000000000000000007979
      7900C1C1C1007C7C7C00D6D6D600C3C3C300C3C3C300C7C7C700C9C9C900CFCF
      CF00D1D1D100D5D5D500D7D7D700DCDCDC00E1E1E100E4E4E400E5E5E500DADA
      DA00B8B8B800A8A8A800CBCBCB00000000000000000000000000000000000000
      000065656500F2F2F200AAAAAA00FFFFFF00FAFAFA00FAFAFA00F8F8F800F2F2
      F200EFEFEF00F2F2F200EAEAEA00E9E9E900EDEDED00F4F4F400F9F9F900E1E1
      E100CCCCCC00000000000000000000000000000000000000000073737300CACA
      CA007C7C7C0084848400C3C3C300ABABAB00B3B3B300B8B8B800BBBBBB00C4C4
      C40091919100EAEAEA00FFFFFF00FDFDFD0076767600B3B3B300C4C4C400C0C0
      C000B9B9B900B8B8B800ADADAD00AAAAAA00000000000000000000000000AFAF
      AF0080808000DDDDDD00B5B5B500FFFFFF00FBFBFB00F9F9F900F4F4F400EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00EDEDED00F4F4
      F400BFBFBF000000000000000000000000000000000000000000000000007979
      7900C1C1C1007C7C7C00D5D5D500C7C7C700C7C7C7009D9D9D006E6E6E00D1D1
      D100F4F4F400F0F0F000F0F0F000EAEAEA00AEAEAE00A5A5A500E8E8E800EEEE
      EE00BABABA00BCBCBC00C2C2C200000000000000000000000000000000000000
      000064646400F0F0F000AAAAAA00FFFFFF00FEFEFE00FCFCFC00FBFBFB00FBFB
      FB00F6F6F600F2F2F200F2F2F200F2F2F200FFFFFF00FFFFFF00FFFFFF00E2E2
      E200CECECE0000000000000000000000000000000000000000008C8C8C009C9C
      9C00B7B7B70064646400CCCCCC00BCBCBC00BBBBBB00C0C0C000C6C6C600CECE
      CE0076767600FFFFFF00D4D4D40079797900CECECE00D2D2D200CDCDCD00C9C9
      C900C4C4C400C9C9C90097979700BABABA00000000000000000000000000B2B2
      B2007D7D7D00DFDFDF00B2B2B200FFFFFF00FCFCFC00FBFBFB00FAFAFA00FAFA
      FA00F3F3F300EFEFEF00F0F0F000EFEFEF00FEFEFE00FEFEFE00FFFFFF00FFFF
      FF00BFBFBF000000000000000000000000000000000000000000000000007E7E
      7E00BBBBBB007E7E7E00D5D5D500CBCBCB00CCCCCC00ACACAC0070707000C8C8
      C800F4F4F400F0F0F000F2F2F200E8E8E8007070700070707000D7D7D700F8F8
      F800C0C0C000C9C9C900B5B5B500000000000000000000000000000000000000
      000065656500F0F0F000ABABAB00FFFFFF00FFFFFF00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00F9F9F900F3F3F300F2F2F200FFFFFF00F6F6F600E8E8E800B5B5
      B500000000000000000000000000000000000000000000000000AEAEAE006868
      6800F0F0F00064646400A5A5A500D2D2D200C4C4C400C9C9C900D2D2D200B2B2
      B200CACACA00A6A6A60095959500E0E0E000DEDEDE00DBDBDB00D8D8D800D4D4
      D400D0D0D000DEDEDE007171710000000000000000000000000000000000B8B8
      B8006F6F6F00E2E2E200AEAEAE00FFFFFF00FEFEFE00FDFDFD00FDFDFD00FCFC
      FC00FCFCFC00F6F6F600F3F3F300F2F2F200FFFFFF00FFFFFF00FAFAFA00D8D8
      D800C7C7C7000000000000000000000000000000000000000000000000008484
      8400B4B4B4007E7E7E00D5D5D500CFCFCF00CFCFCF00B7B7B70070707000C6C6
      C600FFFFFF00FFFFFF00F9F9F900F9F9F9007373730074747400C9C9C900FFFF
      FF00CBCBCB00D6D6D600A9A9A900000000000000000000000000000000000000
      000069696900EDEDED00ADADAD00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FFFFFF00F9F9F900F5F5F500FFFFFF00EFEFEF00D9D9D900BEBE
      BE00000000000000000000000000000000000000000000000000000000007B7B
      7B00C6C6C600B5B5B50064646400D5D5D500D6D6D600CECECE00DEDEDE007070
      700076767600BCBCBC00E8E8E800E8E8E800E6E6E600E4E4E400E0E0E000DBDB
      DB00DEDEDE00CCCCCC008787870000000000000000000000000000000000BABA
      BA006E6E6E00E4E4E400ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FEFEFE00F6F6F600F4F4F400FFFFFF00FCFCFC00E5E5E500BBBB
      BB00000000000000000000000000000000000000000000000000000000008484
      8400B4B4B40080808000D1D1D100D5D5D500D4D4D400C2C2C20070707000B7B7
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF007474740074747400B0B0B000FFFF
      FF00D6D6D6009F9F9F00C6C6C600000000000000000000000000000000000000
      00006F6F6F00EBEBEB00B0B0B000F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F9F9F900FFFFFF00ECECEC00B7B7B700D0D0
      D00000000000000000000000000000000000000000000000000000000000B2B2
      B20068686800FFFFFF007B7B7B0079797900E6E6E600E0E0E000D4D4D4006B6B
      6B00DBDBDB00EDEDED00EDEDED00EDEDED00EDEDED00EBEBEB00E7E7E700E7E7
      E700F2F2F20076767600C2C2C20000000000000000000000000000000000BFBF
      BF0069696900E7E7E700A8A8A800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00F8F8F800FFFFFF00FFFFFF00D9D9D900BABA
      BA00000000000000000000000000000000000000000000000000000000008484
      8400AFAFAF0084848400CDCDCD00DADADA00D9D9D900CBCBCB0070707000A6A6
      A600FFFFFF00FFFFFF00FFFFFF00FFFFFF0074747400707070009A9A9A00FFFF
      FF00E2E2E2009797970000000000000000000000000000000000000000000000
      000072727200E6E6E600B5B5B500F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D2D200C5C5C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D007F7F7F00FFFFFF006767670089898900EDEDED00EDEDED00E7E7
      E700EDEDED00EDEDED00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F2F2F200FCFC
      FC009E9E9E009999990000000000000000000000000000000000000000000000
      000068686800E9E9E900A8A8A800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFFFF00FFFFFF00B5B5B500CFCF
      CF00000000000000000000000000000000000000000000000000000000008E8E
      8E00A2A2A20089898900C8C8C800E0E0E000DCDCDC00D5D5D500707070009696
      9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400FFFFFF00FFFFFF00FDFD
      FD00B2B2B200C6C6C60000000000000000000000000000000000000000000000
      000078787800E0E0E000B8B8B800EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EEEEEE00DADADA00C4C4C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A0084848400FFFFFF007373730070707000E0E0E000FDFD
      FD00F9F9F900F7F7F700F4F4F400F4F4F400F9F9F900FEFEFE00FEFEFE009B9B
      9B00878787000000000000000000000000000000000000000000000000000000
      000066666600EAEAEA00A8A8A800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E700BBBBBB000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      8E00A2A2A2008D8D8D00C4C4C400E7E7E700E4E4E400E4E4E4007D7D7D00AAAA
      AA00FFFFFF00F9F9F900DADADA00B8B8B8009D9D9D008A8A8A00838383008080
      8000A0A0A0000000000000000000000000000000000000000000000000000000
      00007B7B7B00DDDDDD00BEBEBE00E8E8E800FFFFFF00F6F6F600DFDFDF00CBCB
      CB00C0C0C000B6B6B600A7A7A70099999900A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE0075757500DBDBDB00B4B4B400676767008E8E
      8E00DBDBDB00FCFCFC00FFFFFF00FEFEFE00F2F2F200B9B9B900727272008A8A
      8A00000000000000000000000000000000000000000000000000000000000000
      000064646400EBEBEB00AAAAAA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F5F500E2E2E200CFCFCF00C1C1C100ACACAC00ABABAB00000000000000
      0000000000000000000000000000000000000000000000000000000000009191
      91009F9F9F0093939300BCBCBC00E8E8E800CECECE00B4B4B4008F8F8F008888
      88008686860082828200818181008C8C8C00A3A3A300BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000089898900D1D1D100DFDFDF00BCBCBC00B5B5B500A6A6A60099999900A0A0
      A000B2B2B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0086868600979797008787
      87006F6F6F006C6C6C006D6D6D006C6C6C006E6E6E007C7C7C00B4B4B4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000068686800F2F2F200B5B5B500D9D9D900CECECE00C2C2C200B6B6B600A7A7
      A7009797970093939300A3A3A300B9B9B9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0009C9C9C00B2B2B2008787870084848400848484008686860092929200AAAA
      AA00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A900A6A6A600B6B6B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BBBB
      BB00AAAAAA00A1A1A100A4A4A400B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097979700ADADAD00B0B0B000969696009A9A9A00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A600A0A0A000B2B2B200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F0FFFFFFC0FFF03FFFE0FFFFF001FFFE
      003FE000FFE003FFE0001FFC001FE0001FE0000FE0001FF8000FE0000FC00007
      E0000FF00007E0000FE00007E00003E00003E0000FE00003E00003E00003E000
      0FE00003E00003C00001E0000FE00003E00003C00001E0000FE00003E00003C0
      0000E0000FE00003E0000FC00000E0000FE00003E0000FC00000E00007E00003
      E0000FC00000E00007E00001F00007C00000E00007E00001F00007C00000E000
      07E00001F0000FC00001E00007E00001F0000FE00001E0000FE00001F0000FE0
      0001E0000FE00003F0001FF00003F0000FE00003F0003FF80007F0001FE00007
      F0007FFC000FF0003FE0003FF007FFFF001FF000FFE007FFF8FFFFFFE0FFF03F
      FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
