object MainForm: TMainForm
  Left = 353
  Top = 186
  Caption = #1055#1088#1080#1073#1086#1088' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1088#1072#1089#1089#1077#1103#1085#1080#1103
  ClientHeight = 837
  ClientWidth = 965
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
    Width = 965
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
    Width = 965
    Height = 38
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 121
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
    object ToolButton6: TToolButton
      Left = 0
      Top = 0
      Caption = #1047#1072#1087#1080#1089#1100' '#1089#1080#1075#1085#1072#1083#1072
      ImageIndex = 3
      OnClick = Button8Click
    end
    object ToolButton1: TToolButton
      Left = 121
      Top = 0
      AutoSize = True
      Caption = #1054#1090#1082#1088#1099#1090#1100
      DropdownMenu = PopupMenu2
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 214
      Top = 0
      AutoSize = True
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 4
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 318
      Top = 0
      AutoSize = True
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      DropdownMenu = PopupMenu1
      ImageIndex = 1
    end
    object ToolButton5: TToolButton
      Left = 420
      Top = 0
      AutoSize = True
      Caption = #1054#1090#1095#1077#1090
      ImageIndex = 5
      OnClick = ToolButton5Click
    end
    object ToolButton4: TToolButton
      Left = 499
      Top = 0
      AutoSize = True
      Caption = #1042#1099#1081#1090#1080
      ImageIndex = 2
      OnClick = ToolButton4Click
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
    Width = 965
    Height = 289
    Align = alTop
    BevelEdges = []
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = 'Panel5'
    TabOrder = 2
    ExplicitTop = 40
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
        Frame.Visible = False
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
          Left = 177
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
          Images = ImageList4
          List = True
          ShowCaptions = True
          TabOrder = 1
          object ToolButton7: TToolButton
            Left = 0
            Top = 0
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1090#1095#1077#1090
            ImageIndex = 0
          end
        end
      end
    end
    object ListView3: TListView
      Left = 492
      Top = 0
      Width = 473
      Height = 289
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Columns = <
        item
          Caption = #1044#1072#1090#1072
          Width = 70
        end
        item
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 110
        end
        item
          Caption = #8470' '#1089#1077#1088#1080#1080
          Width = 60
        end
        item
          Caption = #8470' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
          Width = 90
        end
        item
          Caption = #1040#1050#1060
          Width = 90
        end
        item
          Caption = #1059#1075#1086#1083
        end
        item
          Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
          Width = 80
        end>
      ColumnClick = False
      FlatScrollBars = True
      GridLines = True
      Groups = <
        item
          Header = #1057#1077#1088#1080#1103' 1'
          GroupID = 0
          State = []
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
          ExtendedImage = -1
        end
        item
          Header = #1057#1077#1088#1080#1103' 2'
          GroupID = 1
          State = []
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          Subtitle = #1092#1099#1074#1092#1074
          TitleImage = -1
          ExtendedImage = -1
          SubsetTitle = #1092#1099#1074#1092#1099
        end
        item
          GroupID = 2
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
          ExtendedImage = -1
        end
        item
          GroupID = 3
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
          ExtendedImage = -1
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 1
      ViewStyle = vsReport
      OnDblClick = ListView3DblClick
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 330
    Width = 965
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 332
    ExplicitHeight = 505
    object Splitter3: TSplitter
      Left = 492
      Top = 0
      Height = 507
      Color = clBtnFace
      ParentColor = False
      ExplicitLeft = 728
      ExplicitTop = 88
      ExplicitHeight = 100
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 492
      Height = 507
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 505
      object Splitter6: TSplitter
        Left = 0
        Top = 55
        Width = 492
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 57
        ExplicitWidth = 55
      end
      object Chart3: TChart
        Left = 0
        Top = 58
        Width = 492
        Height = 449
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
        ExplicitHeight = 447
        PrintMargins = (
          15
          20
          15
          20)
        ColorPaletteIndex = 13
        object Panel1: TPanel
          Left = 128
          Top = 80
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
        Width = 492
        Height = 55
        Align = alTop
        BevelOuter = bvNone
        Constraints.MaxHeight = 55
        Constraints.MinHeight = 55
        TabOrder = 1
        object Label14: TLabel
          Left = 0
          Top = 19
          Width = 27
          Height = 13
          Alignment = taCenter
          Caption = '(0; 0)'
        end
        object Button2: TButton
          Left = 104
          Top = 10
          Width = 75
          Height = 25
          Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 0
          Visible = False
          OnClick = Button2Click
        end
        object ToolBar3: TToolBar
          Left = 317
          Top = 0
          Width = 175
          Height = 55
          Align = alRight
          ButtonHeight = 30
          ButtonWidth = 174
          Caption = 'ToolBar2'
          Images = ImageList4
          List = True
          ShowCaptions = True
          TabOrder = 1
          object ToolButton8: TToolButton
            Left = 0
            Top = 0
            Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
            ImageIndex = 1
            OnClick = Button2Click
          end
        end
      end
    end
    object Memo1: TMemo
      Left = 495
      Top = 0
      Width = 470
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
      TabOrder = 1
      ExplicitHeight = 505
    end
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 552
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    Filter = 'IDAT|*.idat|'#1090#1077#1082#1089#1090#1086#1074#1099#1077'|*.txt'
    Left = 648
    Top = 112
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 496
    Top = 89
    Bitmap = {
      494C0101060008000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00B3B0AC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A9
      A90070707000A36A1700DD8E1500DA840000F3BD5800E18D0A00EDAD3B00B987
      3D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000898989006F583500E2890100EC940700EB9F2F00E39E
      3900E6951400C87F1500A9977E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A000605A
      5900C78F3B00E2880000E4992000F7B64500FFCD6900FFD06C00FFD06A00E194
      1900C57E1500B8AA950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000845F2900E5890000EC940700EBA33800DB943800EDC7
      8800E3A95500EDB85C00E6991B00B6772200AFA4950000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000979999005E564F00E7B0
      5C00FFECCB00E2A54800EAA32B00FFD57500FFF9C100FDDB8800FFCF6C00FFD0
      6A00F6B84A00C886250000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007676760096661D00E2890100F1990E00E7A13C00DF9F4800DC9B4100FEFE
      EA00F0D09500F2D5A200EABC7400F5C46A00E28D0B00B2823E00B3ADA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065656500CBAE8100FFE6
      BD00D79A3B00D0760000F4B34000FFE69C00EABE6300D0760000D9830000FFD5
      7500FFC75E00C1893A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD006D6D
      6D00AC711500E5890000F1990E00E4A14400ECC48200F3CC9100DEA14900FFFF
      F200FEFCE300EDC78800F7EBCA00F2D9A500EFBD6100F4B54400D8830600A784
      5100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A2A2
      A20082828200787979009E9E9E0000000000A3A4A40054545500685D4D00E4A2
      3C00E4A23C00DA880100FFC85E00FFE08C00DD941A00ECD0A900E5B46700EBAE
      4000FFDC8500E4941600B6915700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A50062626200C37B
      0D00E2890100EF981400E2A44B00F7E8BE00E3AA5800FBE5BA00E8B66B00FEFE
      EA00FFFDDD00FFFCD900EBC17C00FAEDCA00FEFAD800E8B16500FBC05700F2A1
      1F00CE800D00A590710000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A7A8006B6B6B008D90
      9000888A89008D9090008485850078797900525252008082820082868A008782
      7700EADBC200DF9B3300E89F2400FFD98000EBB04600D1871800D07F0600E4A3
      3400FFE69C00EDA52B00C9882600000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5005D5D5D00D1891A00E289
      0100EB9C1B00E3A95500FEF8D500E4AC5B00FCE9BD00F0D09500F2D9A500FEFE
      EA00FFFCD900FEFAD800FEFAD800EABC7400FAEDCA00FFFDDD00F2D5A200ECAD
      4600FFB73800F1990E00C0822300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A9A900656565009B9C9C00B7B9
      BA007E808000E8E7EA00A1A1A3007A7C7C007C7E7E007E808000C1C2C5008287
      8E00D4CCC200EFC58800D7860600FFD58100FFD78600E7A12D00DE901300FCDF
      9700FFE39600E1941900C0AE9300000000000000000000000000000000000000
      0000000000000000000000000000A5A5A50062626200CF963F00E28D0B00E289
      0100E3A75400FEFCE300F4D49D00ECC48200FEF9DE00E4AD5D00FDF4D200FFFF
      F200FFFCD900FEF8D500FEF8D500FDF4D200E9B86E00FCE9BD00FEF8D500FAEC
      C500E6B66E00FBAC2F00D7880F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD0094959500686868005C5C5C00BBBCBC007E80
      800076787900E2E2E400DEE0E100BFBFC100BCBEBE00ACAEB200CED0D4009093
      95009B845F00E8A53C00E0921800F6C66F00FFD88700FFE7A400FFEEB100FFEC
      AD00FFD58100E5A83F00B99E7900000000000000000000000000000000000000
      00000000000000000000000000007979790074614300F1B25100D6810000EB9C
      1B00EDCA9000FFFDDD00DEA14900FDF4D200FEFCE300DD9D3E00FFFFF200FEFE
      EA00FEFCE300FEF8D500FDF4D200FDF4D200FEF2CC00E8B66B00FCE9BD00FEF2
      CC00FFEDC500EB9A2300CB8B2C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A9A9006868680075767600888A89007C7E7E00767876007A7C
      7C00C8C9CA00E2E2E400D4D5D600D2D4D500D5D6D800D5D6D800D2D4D500BFC0
      C5007D83880084827A00C37D0E00CC7E0300E7A12D00FFD88700FFD58100FFD8
      8700E2961F00DC8B0B00C7A97B00000000000000000000000000000000000000
      000000000000000000000000000062626200AA824400E8A64000D37B0000EAA1
      3500F9EAC000FCEBC100EBC17C00FEF8D500FDF5D900E0A14700FFFFF600FEFE
      EA00FEFCE300FEFAD800FDF4D200FDF4D200FFEDC500FFECC300E8B16500FCE9
      BD00FAE2B500EC940C00C59B5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D007576760084858500A6A7A800D9DADC00A8A9A900DCDD
      DE00D9DADC00D1D3D400DADCDD00DEDFE000D8DADA00D0D2D200CECED100D6D8
      D900D2D4D50090949A00BABEC3007C889800CB820F00E7AD4C00D6830100E8B0
      5200D4891500A6A1990000000000000000000000000000000000000000000000
      00000000000000000000A1A1A10053535300E2A44B00DD962700D6810000E5A4
      4500FEFCE300F0D09500F7DEAA00FEF9DE00FAE2B500ECBF7900FFFFF200FEFE
      EA00FEFCE300FFFCD900FDF4D200FEF2CC00FAEDCA00FFECC300FBE5BA00ECBF
      7900F3CC9100E2890100C3AB8600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800062646300E2E4E500848585008D8F9000E9EAEA00EDEDED00D5D6
      D800D5D6D800EDEDED00E6E7E800D6D8D900CCCECE00C8C9CA00CACCD000C8C9
      CA00D4D5D600D8DADA00EBECED00848A9200C9A05F00E18D0A00FFF2D700F0A9
      3B00CC9E54000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C004E4B4600F6B55000DA8A0A00DC8D1200E4AA
      5800FFFFF200E4AF6000FEF2CC00FEFCE300ECC48200F6E3B500FFFFF200FEFE
      EA00FEFCE300FEFCE300FEF8D500FEF2CC00FEF2CC00FFEDC500F9DEAE00F4D4
      9D00E9B25A00D8800100C0B7AA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A9
      A9005C5C5C00C0C2C200FEFEFE00CCCECE0075767600A8A9A900DADCDD00D2D4
      D500EAEAEC00E4E5E600E7E8E900E7E8E900DADCDB00CECED100D2D4D500D9DA
      DC00D0D2D200D1D3D400CECED100767A7D00FDF1DC00E3D9CD0099999900A3A4
      A400000000000000000000000000000000000000000000000000000000000000
      000000000000000000007676760066584200F1B04D00D57D0000E4A33600ECC4
      8200FEFEEA00DEA14900FFFDDD00FEFEEA00E4A65100FEFCE300FEFEEA00FEFE
      EA00FEFCE300FEFCE300FEF8D500FEF2CC00FEF2CC00FFEDC500F3CC9100FAEC
      C500EAA13500D384110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000787979004E4E4E00D4D5D600A8A9A90076787600BEC0C100D4D5D600DADC
      DD00E2E2E400E2E4E500EEEFF0009C9D9D00787A7E007A7C8000AAACB000DEDF
      E000E4E5E600D6D8D900DADCDB00898A8D008282820000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000062626200AA824400E8A64000D37B0000E9B25A00F6E3
      B500FFFCD900E3A75400FEFCE300FEFEEA00DD9D3E00FFFFF600FDF5D900F7EB
      CA00FEFEEA00FEFEEA00FEF8D500FEF2CC00FEF2CC00FFEDC500EABC7400FEF2
      CC00EC940C00CB8B2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E00525252007F807F007E80800078797900D2D4D500D2D4D500DCDD
      DE00D4D5D600E4E5E600909191007C7F8200C0C1C200C6C6C600787A7E00B5B6
      B800EEEFF000DEDFE000D6D8D900B2B2B2007A7C7C008A8C8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A1A1A10053535300E9AA4900DF992B00D57D0000E3A95500FFFD
      DD00FBE5BA00ECC48200FEFEEA00FEF8D500E3A95500FFFEF900FDF5D900FDF5
      D900F8EAC500FEFEEA00FEFAD800FDF4D200FEF2CC00FEF2CC00E5B36500F5E4
      BC00E5890000C59B5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9C
      9C00656565007E808000808282007C7E7E00898A8D00D4D5D600D2D4D500D5D6
      D800CACCD000D0D2D2007A7C8000B9BABA00FEFEFE00EDEDED00BCBDBF007E80
      8000F1F1F100E9EAEA00D8DADA00E0E1E200E0E1E200888A8900B7B9BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C004A494600F6B55000DC8D1200DA8A0A00E3A95500FFFF
      F200ECC48200FAE2B500FEFEEA00F2D39B00DEA14900FFFEF900FDF4D200FDF4
      D200FDF5D900FDF4D200FEFAD800FDF4D200FEF2CC00FEF2CC00E9B86E00EDC7
      8800E0850000C0AC8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009B9C9C005454
      5500B5B7B7009091910084858500C8C9CD00CACCD000D1D3D400D2D4D500CECE
      D100C8C9CA00C1C2C5007A7C80003F3F3F00C8C9CD00BFBFC100B1B2B4007577
      7900F1F1F100EDEDED00D9DADC00DEE0E100E9EAEA00888A8900B0B0B0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007676760066584200F1B25100D6810000E19B2A00EABB7900FFFF
      F200E3A75400FEF9DE00FEFEEA00DD933200D2760000E3A95500FFFFF200FDF4
      D200FAEDCA00FEFEEA00FEF9DE00FDF4D200FEF2CC00FBE5BA00F2D5A200EBAC
      5000D88001000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D8D8D004A4A
      4A00C0C2C2008E90900080828200BEC0C100C8C9CA00CFD0D000D2D4D500CACC
      D000D5D6D800D0D2D2008485850044434500979999008D8F9000808284007C7F
      8200F7F7F800F1F1F100E0E1E200D4D5D6007A7C7C008D8D8D00BBBCBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000064646400AF864800E9AA4900D57D0000E5A54000F6E3B500FEFE
      EA00E0A14700FFFFF600F5D89E00EABB7900F8E7CC00DB912200E3AC5900FFFF
      F200FDF5D900F8EAC500FEFCE300FDF4D200FDF4D200F4D49D00FAEDCA00EB9A
      2300CD8312000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909191004A4A
      4A00E2E2E400BABABC007A7C7C0076787600767A7D00C6C7C900D9DADC00CFD0
      D000D9DADC00E0E1E200ABABAF00787A7E0064676A005F61610076787900B9BA
      BA00F7F7F800EDEDED00DEE0E100DADCDB007A7C7C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A1A1A10055555500E1A65100E2A03900D57D0000DD9D3E00FFFDDD00FEF8
      D500E4AD5D00FFFEF900DC9B4100B9BABC00FEFEFE00FEFEFE00F2D8B800E9B8
      6E00FFFFF200FDF5D900F7E8BE00FEF8D500FEFAD800EBC17C00FDF4D200EB8C
      0200CA8E35000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A4A4006B6B
      6B0084858500C2C3C300F5F5F500D0D2D20076787900B7B9BA00DCDDDE00D6D8
      D900D5D6D800E9EAEA00EAEAEC00BABABC00898A8D00898A8D00BBBCBC00F9F9
      F900F5F5F500EDEDED00DADCDD00C7C8C8008284840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C004A494600F6B55000DA8F1B00D6810000E4A65100FFFFF600EBC1
      7C00F1D49D00FCE9BD00967953005D5D5D008D8A8600FFFFF600FEF8F000F0D3
      AE00EABC7400FFFFF200FDF5D900F9DEAE00FFFCD900E5B36500F5E4BC00E589
      0000C39D62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFE7FFFFFDFFF0000000000000000
      FFFFF80FFFFE07FF0000000000000000FFFFE00FFFFC01FF0000000000000000
      FFFFC003FFF8007F0000000000000000FFFF8003FFF0001F0000000000000000
      FFFF8003FFC0000F0000000000000000FFE10001FF8000030000000000000000
      FF800001FF0000010000000000000000FF000001FE0000010000000000000000
      FC000001FE0000010000000000000000F8000001FE0000010000000000000000
      F8000003FC0000010000000000000000F0000007FC0000010000000000000000
      E000000FFC0000030000000000000000F000007FFC0000030000000000000000
      F000003FF80000030000000000000000E000001FF80000030000000000000000
      C000001FF80000070000000000000000C000001FF80000070000000000000000
      C000007FF00000070000000000000000C000007FF00000070000000000000000
      F000003FF00200070000000000000000F800003FF003000F0000000000000000
      F000003FE007800F0000000000000000F000007FE007C01F0000000000000000
      F00001FFE007E07F0000000000000000F80001FFE00FFFFF0000000000000000
      FE0001FFC00FFFFF0000000000000000FF8003FFC01FFFFF0000000000000000
      FFC01FFFE1FFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000
      FFFFFFFFFFFFFFFF0000000000000000FDFFFFFFFDFFFFFFFF3FFFFFFFFC1FFF
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
    Left = 698
    Top = 156
  end
  object ImageList2: TImageList
    Left = 527
    Top = 90
    Bitmap = {
      494C0101040006000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    Top = 64
    object N1: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      ImageIndex = 2
      OnClick = bbtnSaveClick
    end
    object N2: TMenuItem
      Caption = #1040#1074#1090#1086#1082#1086#1088#1088#1077#1083#1103#1094#1080#1086#1085#1085#1091#1102' '#1092#1091#1085#1082#1094#1080#1102
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object N5: TMenuItem
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1095#1072#1089#1090#1080#1094
      OnClick = N5Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 656
    Top = 65
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
    Left = 563
    Top = 93
    Bitmap = {
      494C0101060008000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ABABAB00ABABAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA009C9C9C0098989800A0A0A0009D9D9D00ABABAB009F9F9F00A7A7A7009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A2A2A200959595009E9E9E00A0A0A000A4A4A400A4A4
      A400A1A1A1009D9D9D00A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8A8009696
      9600A1A1A1009E9E9E00A2A2A200A9A9A900AFAFAF00AFAFAF00AFAFAF00A1A1
      A1009C9C9C00A9A9A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A0A000969696009E9E9E00A0A0A000A5A5A500A3A3A300AFAF
      AF00A8A8A800AAAAAA00A2A2A2009B9B9B00A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A60095959500A9A9
      A900B9B9B900A6A6A600A4A4A400B0B0B000BABABA00B2B2B200AFAFAF00AFAF
      AF00AAAAAA009E9E9E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9D9D00979797009E9E9E00A2A2A200A5A5A500A5A5A500A4A4A400BDBD
      BD00B1B1B100B3B3B300ACACAC00ADADAD009F9F9F009E9E9E00ABABAB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900AAAAAA00B8B8
      B800A3A3A3009B9B9B00A8A8A800B5B5B500ABABAB009B9B9B009D9D9D00B0B0
      B000ADADAD00A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB009B9B
      9B00999999009E9E9E00A2A2A200A6A6A600AEAEAE00B1B1B100A6A6A600BEBE
      BE00BDBDBD00AFAFAF00B9B9B900B4B4B400ABABAB00A9A9A9009D9D9D009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A800A0A0A0009E9E9E00A7A7A70000000000A8A8A8009595950096969600A5A5
      A500A5A5A5009D9D9D00ADADAD00B3B3B300A0A0A000B3B3B300AAAAAA00A7A7
      A700B2B2B200A1A1A100A2A2A200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900989898009B9B
      9B009E9E9E00A2A2A200A6A6A600B7B7B700A8A8A800B7B7B700ABABAB00BDBD
      BD00BCBCBC00BCBCBC00AEAEAE00B9B9B900BCBCBC00AAAAAA00ACACAC00A4A4
      A4009C9C9C00A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A9009A9A9A00A3A3
      A300A2A2A200A3A3A300A1A1A1009E9E9E0094949400A0A0A000A1A1A100A0A0
      A000B5B5B500A3A3A300A3A3A300B2B2B200A8A8A8009E9E9E009C9C9C00A4A4
      A400B5B5B500A5A5A5009F9F9F00000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A900979797009F9F9F009E9E
      9E00A2A2A200A8A8A800BBBBBB00A8A8A800B8B8B800B1B1B100B4B4B400BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00ACACAC00B9B9B900BCBCBC00B3B3B300A7A7
      A700A9A9A900A2A2A2009D9D9D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0099999900A6A6A600AEAE
      AE009F9F9F00BABABA00A8A8A8009E9E9E009F9F9F009F9F9F00B0B0B000A1A1
      A100B2B2B200AFAFAF009D9D9D00B1B1B100B2B2B200A4A4A400A0A0A000B4B4
      B400B4B4B400A1A1A100AAAAAA00000000000000000000000000000000000000
      0000000000000000000000000000A9A9A90098989800A3A3A3009F9F9F009E9E
      9E00A7A7A700BDBDBD00B3B3B300AEAEAE00BCBCBC00A9A9A900BABABA00BEBE
      BE00BCBCBC00BBBBBB00BBBBBB00BABABA00ABABAB00B8B8B800BBBBBB00B8B8
      B800ABABAB00A7A7A7009E9E9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ABABAB00A5A5A5009A9A9A0097979700AEAEAE009F9F
      9F009D9D9D00B8B8B800B7B7B700AFAFAF00AFAFAF00ABABAB00B4B4B400A4A4
      A4009F9F9F00A6A6A600A0A0A000AEAEAE00B2B2B200B6B6B600B7B7B700B7B7
      B700B1B1B100A6A6A600A6A6A600000000000000000000000000000000000000
      00000000000000000000000000009E9E9E0097979700A9A9A9009C9C9C00A2A2
      A200B0B0B000BCBCBC00A6A6A600BABABA00BDBDBD00A4A4A400BEBEBE00BDBD
      BD00BDBDBD00BBBBBB00BABABA00BABABA00BABABA00ABABAB00B8B8B800BABA
      BA00B9B9B900A3A3A300A0A0A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA009A9A9A009D9D9D00A2A2A2009F9F9F009D9D9D009E9E
      9E00B2B2B200B8B8B800B5B5B500B4B4B400B5B5B500B5B5B500B4B4B400B0B0
      B000A0A0A000A0A0A0009B9B9B009B9B9B00A4A4A400B2B2B200B1B1B100B2B2
      B200A1A1A1009E9E9E00A8A8A800000000000000000000000000000000000000
      0000000000000000000000000000989898009E9E9E00A6A6A6009B9B9B00A5A5
      A500B8B8B800B8B8B800AEAEAE00BBBBBB00BBBBBB00A6A6A600BFBFBF00BDBD
      BD00BDBDBD00BCBCBC00BABABA00BABABA00B9B9B900B9B9B900AAAAAA00B8B8
      B800B6B6B600A1A1A100A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B9B9B009D9D9D00A1A1A100A9A9A900B6B6B600AAAAAA00B7B7
      B700B6B6B600B4B4B400B6B6B600B7B7B700B6B6B600B4B4B400B3B3B300B5B5
      B500B4B4B400A5A5A500AFAFAF00A2A2A2009D9D9D00A8A8A8009C9C9C00A8A8
      A8009E9E9E00A8A8A80000000000000000000000000000000000000000000000
      00000000000000000000A8A8A80094949400A6A6A600A2A2A2009C9C9C00A6A6
      A600BDBDBD00B1B1B100B5B5B500BCBCBC00B6B6B600ADADAD00BEBEBE00BDBD
      BD00BDBDBD00BCBCBC00BABABA00BABABA00B9B9B900B9B9B900B7B7B700ADAD
      AD00B1B1B1009E9E9E00A9A9A900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0A0A00098989800B8B8B800A1A1A100A3A3A300BABABA00BBBBBB00B5B5
      B500B5B5B500BBBBBB00B9B9B900B5B5B500B3B3B300B2B2B200B3B3B300B2B2
      B200B5B5B500B6B6B600BBBBBB00A2A2A200A6A6A6009F9F9F00BBBBBB00A7A7
      A700A5A5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000A3A3A30092929200AAAAAA009E9E9E009F9F9F00A8A8
      A800BEBEBE00A9A9A900BABABA00BDBDBD00AEAEAE00B6B6B600BEBEBE00BDBD
      BD00BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900B5B5B500B3B3
      B300A9A9A9009C9C9C00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA0097979700B0B0B000BFBFBF00B3B3B3009D9D9D00AAAAAA00B6B6B600B4B4
      B400BABABA00B9B9B900BABABA00BABABA00B6B6B600B3B3B300B4B4B400B6B6
      B600B4B4B400B4B4B400B3B3B3009E9E9E00BBBBBB00B6B6B600A6A6A600A8A8
      A800000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D9D9D0095959500A9A9A9009C9C9C00A5A5A500AEAE
      AE00BDBDBD00A6A6A600BCBCBC00BDBDBD00A7A7A700BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900B1B1B100B8B8
      B800A5A5A5009E9E9E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E9E9E0093939300B5B5B500AAAAAA009D9D9D00AFAFAF00B5B5B500B6B6
      B600B8B8B800B8B8B800BBBBBB00A7A7A7009E9E9E009F9F9F00ABABAB00B7B7
      B700B9B9B900B5B5B500B6B6B600A2A2A200A0A0A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898009E9E9E00A6A6A6009B9B9B00A9A9A900B6B6
      B600BCBCBC00A7A7A700BDBDBD00BDBDBD00A4A4A400BFBFBF00BBBBBB00B9B9
      B900BDBDBD00BDBDBD00BBBBBB00BABABA00BABABA00B9B9B900ACACAC00BABA
      BA00A1A1A100A0A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700949494009F9F9F009F9F9F009E9E9E00B4B4B400B4B4B400B7B7
      B700B5B5B500B9B9B900A4A4A4009F9F9F00B0B0B000B1B1B1009E9E9E00ADAD
      AD00BBBBBB00B7B7B700B5B5B500ACACAC009E9E9E00A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A8A80094949400A7A7A700A2A2A2009C9C9C00A8A8A800BCBC
      BC00B7B7B700AEAEAE00BDBDBD00BBBBBB00A8A8A800BFBFBF00BBBBBB00BBBB
      BB00B8B8B800BDBDBD00BCBCBC00BABABA00BABABA00BABABA00AAAAAA00B7B7
      B7009E9E9E00A4A4A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A600999999009F9F9F00A0A0A0009F9F9F00A2A2A200B5B5B500B4B4B400B5B5
      B500B3B3B300B4B4B4009F9F9F00AEAEAE00BFBFBF00BBBBBB00AFAFAF009F9F
      9F00BCBCBC00BABABA00B6B6B600B8B8B800B8B8B800A2A2A200AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3A3A30092929200AAAAAA009F9F9F009E9E9E00A8A8A800BEBE
      BE00AEAEAE00B6B6B600BDBDBD00B2B2B200A6A6A600BFBFBF00BABABA00BABA
      BA00BBBBBB00BABABA00BCBCBC00BABABA00BABABA00BABABA00ABABAB00AFAF
      AF009D9D9D00AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6009595
      9500ADADAD00A4A4A400A1A1A100B2B2B200B3B3B300B4B4B400B4B4B400B3B3
      B300B2B2B200B0B0B0009F9F9F008F8F8F00B2B2B200AFAFAF00ACACAC009D9D
      9D00BCBCBC00BBBBBB00B6B6B600B7B7B700BABABA00A2A2A200ACACAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009D9D9D0095959500A9A9A9009C9C9C00A3A3A300ADADAD00BEBE
      BE00A7A7A700BCBCBC00BDBDBD00A2A2A2009B9B9B00A8A8A800BEBEBE00BABA
      BA00B9B9B900BDBDBD00BCBCBC00BABABA00BABABA00B7B7B700B3B3B300A8A8
      A8009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A3009292
      9200B0B0B000A3A3A300A0A0A000AFAFAF00B2B2B200B3B3B300B4B4B400B3B3
      B300B5B5B500B4B4B400A1A1A10091919100A6A6A600A3A3A300A0A0A0009F9F
      9F00BDBDBD00BCBCBC00B8B8B800B5B5B5009E9E9E00A3A3A300AEAEAE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999999009F9F9F00A7A7A7009C9C9C00A6A6A600B6B6B600BDBD
      BD00A6A6A600BFBFBF00B3B3B300ADADAD00B8B8B800A1A1A100A8A8A800BEBE
      BE00BBBBBB00B8B8B800BDBDBD00BABABA00BABABA00B3B3B300B9B9B900A3A3
      A3009D9D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A4A4A4009292
      9200B8B8B800AEAEAE009E9E9E009D9D9D009E9E9E00B1B1B100B6B6B600B3B3
      B300B6B6B600B8B8B800ABABAB009E9E9E0099999900989898009D9D9D00AEAE
      AE00BDBDBD00BBBBBB00B7B7B700B6B6B6009E9E9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A80095959500A7A7A700A4A4A4009C9C9C00A4A4A400BCBCBC00BBBB
      BB00A9A9A900BFBFBF00A4A4A400AEAEAE00BFBFBF00BFBFBF00B5B5B500ABAB
      AB00BEBEBE00BBBBBB00B7B7B700BBBBBB00BCBCBC00AEAEAE00BABABA009F9F
      9F00A1A1A1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8A8009A9A
      9A00A1A1A100B0B0B000BDBDBD00B4B4B4009D9D9D00AEAEAE00B7B7B700B5B5
      B500B5B5B500BABABA00BABABA00AEAEAE00A2A2A200A2A2A200AEAEAE00BEBE
      BE00BDBDBD00BBBBBB00B6B6B600B1B1B100A0A0A00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A3A30092929200AAAAAA00A0A0A0009C9C9C00A7A7A700BFBFBF00AEAE
      AE00B2B2B200B8B8B8009D9D9D0097979700A2A2A200BFBFBF00BDBDBD00B4B4
      B400ACACAC00BEBEBE00BBBBBB00B5B5B500BCBCBC00AAAAAA00B7B7B7009E9E
      9E00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFFE7FFFFFDFFF0000000000000000
      FFFFF80FFFFE07FF0000000000000000FFFFE00FFFFC01FF0000000000000000
      FFFFC003FFF8007F0000000000000000FFFF8003FFF0001F0000000000000000
      FFFF8003FFC0000F0000000000000000FFE10001FF8000030000000000000000
      FF800001FF0000010000000000000000FF000001FE0000010000000000000000
      FC000001FE0000010000000000000000F8000001FE0000010000000000000000
      F8000003FC0000010000000000000000F0000007FC0000010000000000000000
      E000000FFC0000030000000000000000F000007FFC0000030000000000000000
      F000003FF80000030000000000000000E000001FF80000030000000000000000
      C000001FF80000070000000000000000C000001FF80000070000000000000000
      C000007FF00000070000000000000000C000007FF00000070000000000000000
      F000003FF00200070000000000000000F800003FF003000F0000000000000000
      F000003FE007800F0000000000000000F000007FE007C01F0000000000000000
      F00001FFE007E07F0000000000000000F80001FFE00FFFFF0000000000000000
      FE0001FFC00FFFFF0000000000000000FF8003FFC01FFFFF0000000000000000
      FFC01FFFE1FFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000
      FFFFFFFFFFFFFFFF0000000000000000FDFFFFFFFDFFFFFFFF3FFFFFFFFC1FFF
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
    Left = 512
    Top = 152
    DOMVendorDesc = 'MSXML'
  end
  object ImageList4: TImageList
    Height = 24
    Width = 24
    Left = 600
    Top = 96
    Bitmap = {
      494C010102000400040018001800FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A4009393930097979700A6A6A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000889088006484
      6400528352005E8E5E007F9B7F00ABB1AB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059595900BCBCBC00C7C7C700CACACA00B9B9B900A8A8A800919191008B8B
      8B0092929200A1A1A100B0B0B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A0A0A0004D734D000CA00C0015C1150052E3
      520075F4750075F475005CE65C0026BE26002D9F2D0096B59600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F8F
      8F0089898900B9B9B900CFCFCF00E6E6E600EBEBEB00F3F3F300F6F6F600F4F4
      F400EDEDED00E3E0E3009F979F00429341003589330052835100879B86000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00198A190014BC140079F3790094FE940085F8
      850075F4750075F475007FF77F0094FE940094FE940039C839004F984F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008383
      830094949400B9B9B900C5C5C500E1E1E100E0E0E000E4E4E400E7E7E700ECEC
      EC00F6F6F600BBB6BB004C954C0035B3330067DF800069EE900040C048000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078787800118F110020C4200085F6850071ED710045DD450051E5
      510051E551004FE34F004FE34F0055E8550060ED600083FB83006BE76B00339C
      3300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008989
      890087878700BCBCBC00BEBEBE00DEDEDE00DEDEDE00E1E1E100E7E7E700EEEA
      EE00F0E8F000706470006BC26A0044B1410050CA670039DA74004CC86100A1B8
      A100000000000000000000000000000000000000000000000000000000000000
      0000898989001E7A1E000EB70E0079EF790059E1590042DD420000A4000012B9
      120032D532003AD83A003AD83A003DDA3D0042DD42004BE34B0067EE670071ED
      710040A040000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      8E007F7F7F00C2C2C200B6B6B600DDDDDD00DBDBDB00DFDFDF00E4E2E400A19D
      A1003AA03900009300000A9C09000295000046BE57002DCC65004EC767002B84
      2B00498349008EB38E000000000000000000000000000000000000000000A7A7
      A700455A450000AA000059E1590059E1590031D231002DD02D001DC71D006BC9
      6B0032BA32000ABE0A0020CC200024CC24002DD02D0035D435003DDA3D005CE6
      5C0051D9510075A5750000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      920073737300C8C8C800AFAFAF00DBDBDB00D7D7D700DEDEDE00B3B0B3005481
      540051BF50004BBF57004AD780004FD47F004AD27A003DCF6E0046D2760055D5
      7E005ADA85004EAA4D0000000000000000000000000000000000000000006E6E
      6E001EA11E000EB30E0066E2660029D0290021CA21001DC71D0012C5120000AE
      0000FFFEFF0097DA970000AA000002BD020010C110001BC81B0024CC240031D2
      310060E5600022B0220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009898
      98006B6B6B00CBCBCB00AAAAAA00DBDBDB00D3D3D300DDDDDD00A39EA3005C84
      5C005AC1590047B84D0063DB90006ADD93006EE1960071E2970071E297006EE0
      970071E19D0043A8430000000000000000000000000000000000A0A0A000485E
      480007AE07002EC62E004AD64A0015C415000EC00E0008BB080001B9010000B6
      00003BBC3B00FFFEFF00F6FBF6002FB72F0000AE000000B600000ABE0A0015C4
      150029D0290052DC520068A86800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B0066666600CFCFCF00A4A4A400DDDDDD00D1D1D100D8D8D800A9A6A9005677
      560060C55F0039B13A0084D995007DD68B0083DC950092F0B30097F1B80061C9
      69005CC965002EA92D000000000000000000000000000000000078787800519E
      510000A400003DD03D0025C5250006BA060000B6000001B9010008BB08000ABE
      0A0000B10000BCE6BC00FFFEFF00FFFEFF00A1DDA10000AA000000B6000001B9
      01000ABE0A0044D6440021A82100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      A0005F5F5F00D3D3D300A0A0A000E1E1E100D2D2D200D4D4D400A9A7A9006276
      6200C3EEC3002DA82C003BB1390047B4450018A21700B3FCCF00B7FDD2001A97
      17007C877C00A3A9A300000000000000000000000000000000005F5F5F005EC6
      5E00009E00003CCD3C000EBD0E0001B9010008BB08000EC00E0015C115001AC6
      1A0015C4150007AE0700FFFEFF00FFFEFF00FFFEFF00FAFDFA003FBD3F0000B1
      000001B9010015C4150021BD2100ABBAAB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A4005B5B5B00D6D6D6009C9C9C00E4E4E400D4D4D400D6D6D600CFCECF00B0AD
      B000C6C3C6008073800076A2760089D08900139E1200D1FFE800D3FFEA002DA4
      2D000000000000000000000000000000000000000000000000005252520075D7
      7500009E000033C833000EBD0E000ABE0A0010C1100015C415001BC81B0021CA
      210029D029000EC00E008DD68D00FFFEFF00FFFEFF00FFFEFF00FFFEFF008DD6
      8D0000AE000002BD020026C2260089B189000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A70055555500D9D9D90099999900E8E8E800D7D7D700D7D7D700D8D8D800D6D6
      D600DCDCDC00908C90006495640085D28500079D0700D1FADA00B5ECBB0023A7
      23000000000000000000000000000000000000000000000000004E4F4E008BE1
      8B00009B00002EC62E0020C4200020C4200037CF370048D3480050D6500056D8
      56005DDE5D0012B91200EAF7EA00FFFEFF00FFFEFF00FFFEFF0093D8930013B5
      13003DD03D0025C525002EC62E0073AF73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACAC
      AC0053535300DBDBDB0097979700EFEFEF00E0E0E000DCDCDC00D8D8D800D6D6
      D600DBDBDB00ACAAAC007B817B00BED0BE0040A33F003B9A3A0068A8680093AE
      9300000000000000000000000000000000000000000000000000545354008FDF
      8F00009E00004ACE4A0065D965004ED64E0056D856005BD95B0061DD610066E2
      660061DD610028B52800FFFEFF00FFFEFF00FFFEFF0045BE450031C7310061DD
      61005DDA5D0055D655005DD45D006CAE6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000051515100DDDDDD0096969600F1F1F100E6E6E600E6E6E600E4E4E400DDDD
      DD00DBDBDB00DEDDDE00D7D6D700D7D3D700DCD5DC00E4DBE400E8E1E800CFCA
      CF00B8B8B80000000000000000000000000000000000000000005F5F5F0098D2
      980020AF200025BB25007EE07E0056D8560061DD610068DF68006CE16C0078E6
      780031C73100C2E9C200FFFEFF00DFF3DF0014B0140061DD610078E6780074E5
      74006AE06A0068DF68005DD45D007AB17A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000050505000DCDCDC0096969600EFEFEF00EAEAEA00E8E8E800E7E7E700E7E7
      E700E2E2E200DDDDDD00DDDDDD00DDDDDD00FBFBFB00FDFDFD00FFFFFF00CECE
      CE00BABABA000000000000000000000000000000000000000000787878007896
      780074D27400009E000089E6890070E070006CE16C0074E574007CE77C0085EE
      850014B01400FFFEFF00A1DDA10015B4150085EE85008DEE8D0087EB870081E9
      810078E6780086E486003FC63F0096B596000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000051515100DCDCDC0097979700ECECEC00EBEBEB00EAEAEA00E9E9E900E9E9
      E900E9E9E900E5E5E500DFDFDF00DDDDDD00FCFCFC00E2E2E200D4D3D400A1A1
      A1000000000000000000000000000000000000000000000000009A9A9A005156
      5100C3F5C300009E000052D0520092E9920078E6780081E981008DEE8D0062DA
      620093D893005EC65E0039C839009FF89F009DF59D009AF49A0097F2970092EE
      92008AEC8A00A2F2A20013A81300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055555500D9D9D90099999900E9E9E900EDEDED00ECECEC00EBEBEB00EBEB
      EB00EAEAEA00EBEBEB00E5E5E500E1E1E100F6F6F600DBDADB00C5C4C500AAAA
      AA00000000000000000000000000000000000000000000000000000000006767
      6700A4C0A40072D17200009E000096EB960098EC980089EB89009DF59D000AAD
      0A0015AE150070E07000ACFCAC00ACFCAC00A9FAA900A6F9A600A2F5A2009CF1
      9C00A2F2A20089E689003DA83D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B00D7D7D7009C9C9C00E5E5E500F1F1F100EEEEEE00EEEEEE00EDED
      ED00EDEDED00ECECEC00EBEBEB00E5E5E500F5F5F500D8D7D800A3A3A300BCBC
      BC00000000000000000000000000000000000000000000000000000000009E9E
      9E0054535400E1FBE1001DB01D0015B41500AFF5AF00A2F5A20092EE920004AA
      04009AF39A00B4FEB400B4FEB400B4FEB400B4FEB400B1FDB100ADF9AD00ADF9
      AD00BEFEBE0015AE1500A1BBA100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005E5E5E00D2D2D200A0A0A000E0E0E000F2F2F200F0F0F000F0F0F000EFEF
      EF00EFEFEF00F0F0F000F2F2F200ECECEC00FCFCFC00BEBEBE00B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000089898900696C6900E2FEE20000A400002BBE2B00BAF9BA00BAF9BA00ADF9
      AD00B4FEB400B4FEB400B8FEB800B8FEB800B8FEB800B8FEB800BEFEBE00CFFF
      CF0049CB49005AB05A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063636300CCCCCC00A4A4A400DADADA00F8F8F800F5F5F500F8F8F800FBFB
      FB00FCFCFC00F7F7F700ECECEC00DADADA00C6C6C600B0B0B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000086868600716E7100E9FCE90012AD12000AAD0A00A4F3A400D1FF
      D100CAFFCA00C5FFC500C2FEC200C2FEC200CAFFCA00D5FFD500D5FFD50043CB
      43003DA83D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000067676700C8C8C800AAAAAA00D4D4D400F6F6F600E2E2E200CBCBCB00B7B7
      B700ACACAC00A2A2A20093939300858585009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009A9A9A0061616100C7C6C7006CD46C0000A4000030C3
      30009CF19C00CFFFCF00DBFFDB00D5FFD500BEFEBE006AE06A0007B307005695
      5600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000075757500BDBDBD00CBCBCB00A8A8A800A1A1A10091919100858585008B8B
      8B009E9E9E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096959600747074007D877D0045A1
      45000BAA0B0000AE000000B1000000AE00000CA80C00418E41009DA39D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009595950091919100A2A2A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A700969596008D8C8D008F908F009E9E9E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00F0FFFFFFC0FF000000000000F001FFFE
      003F000000000000E0001FFC001F000000000000E0001FF8000F000000000000
      E0000FF00007000000000000E00003E00003000000000000E00003E000030000
      00000000E00003C00001000000000000E00003C00001000000000000E00003C0
      0000000000000000E0000FC00000000000000000E0000FC00000000000000000
      E0000FC00000000000000000F00007C00000000000000000F00007C000000000
      00000000F0000FC00001000000000000F0000FE00001000000000000F0000FE0
      0001000000000000F0001FF00003000000000000F0003FF80007000000000000
      F0007FFC000F000000000000F007FFFF001F000000000000F8FFFFFFE0FF0000
      00000000FFFFFFFFFFFF000000000000}
  end
end
