object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Delivery CRM'
  ClientHeight = 742
  ClientWidth = 1220
  Color = 16052974
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 17
  object PanelHeader: TPanel
    Left = 0
    Top = 0
    Width = 1220
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 6904915
    ParentBackground = False
    TabOrder = 1
    object Shape1: TShape
      Left = 817
      Top = 0
      Width = 1
      Height = 57
      Align = alLeft
      Brush.Color = 8089704
      Pen.Color = 8089704
      ExplicitLeft = 811
      ExplicitTop = -6
    end
    object Shape2: TShape
      Left = 329
      Top = 0
      Width = 1
      Height = 57
      Align = alLeft
      Brush.Color = 8089704
      Pen.Color = 8089704
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 329
      Height = 57
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 113
        Height = 51
        Align = alLeft
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Delivery'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqAntialiased
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitHeight = 57
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 122
        Top = 3
        Width = 113
        Height = 51
        Align = alLeft
        AutoSize = False
        Caption = 'CRM'
        Color = 15910447
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2391530
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqAntialiased
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 210
        ExplicitTop = -6
        ExplicitHeight = 57
      end
    end
    object PanelMainSearch: TPanel
      Left = 330
      Top = 0
      Width = 487
      Height = 57
      Align = alLeft
      BevelOuter = bvNone
      Color = 6904915
      ParentBackground = False
      TabOrder = 1
      object EditSearch: TEdit
        AlignWithMargins = True
        Left = 17
        Top = 17
        Width = 403
        Height = 23
        Margins.Left = 17
        Margins.Top = 17
        Margins.Right = 7
        Margins.Bottom = 17
        Align = alClient
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        Text = #1080#1089#1082#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072', '#1079#1072#1082#1072#1079', '#1087#1088#1086#1095#1077#1077'...'
        OnEnter = EditSearchEnter
        OnExit = EditSearchExit
      end
      object ButtonFlatMainSearch: TButtonFlat
        AlignWithMargins = True
        Left = 437
        Top = 10
        Width = 40
        Height = 37
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alRight
        Caption = ''
        ColorNormal = 6904915
        ColorOver = 7826274
        ColorPressed = 6904915
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentRight = 3
        ImageIndex = 0
        Images = ImageList24
        RoundRectParam = 0
        Shape = stCircle
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
    end
    object Panel3: TPanel
      Left = 818
      Top = 0
      Width = 234
      Height = 57
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object LabelTime: TLabel
        Left = 0
        Top = 0
        Width = 113
        Height = 57
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '00:31'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -40
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Font.Quality = fqAntialiased
        ParentFont = False
        Layout = tlCenter
      end
      object LabelDate: TLabel
        AlignWithMargins = True
        Left = 116
        Top = 10
        Width = 77
        Height = 37
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        AutoSize = False
        Caption = '22.08.2018'#13#10#1055#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 57
    Width = 235
    Height = 685
    Align = alLeft
    BevelOuter = bvNone
    Color = 16052974
    ParentBackground = False
    TabOrder = 2
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 222
      Height = 62
      Margins.Left = 10
      Margins.Top = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object ButtonFlat2: TButtonFlat
        AlignWithMargins = True
        Left = 164
        Top = 10
        Width = 43
        Height = 42
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 15
        Margins.Bottom = 10
        Align = alRight
        Caption = ''
        ColorNormal = 2223546
        ColorOver = 4387012
        ColorPressed = 2223546
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6250335
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        GroupItemKind = giRight
        IgnorBounds = True
        ImageIndentLeft = 8
        ImageIndex = 1
        Images = ImageListSmall
        OnClick = ButtonFlat2Click
        RoundRectParam = 42
        Shape = stRoundSquare
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object ButtonFlatNewOrder: TButtonFlat
        AlignWithMargins = True
        Left = 15
        Top = 10
        Width = 149
        Height = 42
        Margins.Left = 15
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 10
        Align = alClient
        Caption = #1053#1054#1042#1067#1049' '#1047#1040#1050#1040#1047
        ColorNormal = 2223546
        ColorOver = 4387012
        ColorPressed = 2223546
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6250335
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = 6250335
        FontOver.Height = -13
        FontOver.Name = 'Segoe UI'
        FontOver.Style = [fsBold]
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = 6250335
        FontDown.Height = -13
        FontDown.Name = 'Segoe UI'
        FontDown.Style = [fsBold]
        GroupItemKind = giLeft
        IgnorBounds = True
        ImageIndentLeft = 10
        ImageIndentRight = 8
        ImageIndex = 0
        Images = ImageListSmall
        OnClick = ButtonFlatOrderAddClick
        RoundRectParam = 42
        Shape = stRoundRect
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
      end
    end
    object ButtonFlat3: TButtonFlat
      AlignWithMargins = True
      Left = 10
      Top = 85
      Width = 215
      Height = 28
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = #1056#1040#1041#1054#1058#1040
      ColorNormal = 16052974
      ColorOver = 16052974
      ColorPressed = 16052974
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 6
      ImageIndentRight = 6
      ImageIndex = 7
      Images = ImageListSmall
      Transparent = True
      RoundRectParam = 8
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatClients: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 184
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1050#1083#1080#1077#1085#1090#1099
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatClientsClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 2
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatOrders: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 152
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1047#1072#1082#1072#1079#1099
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatOrdersClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 3
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatCalendar: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 216
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatCalendarClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 4
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatStatistics: TButtonFlat
      AlignWithMargins = True
      Left = 10
      Top = 358
      Width = 215
      Height = 28
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = #1057#1058#1040#1058#1048#1057#1058#1048#1050#1040
      ColorNormal = 16052974
      ColorOver = 16052974
      ColorPressed = 16052974
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 6
      ImageIndentRight = 6
      ImageIndex = 2
      Images = ImageListSmall
      Transparent = True
      RoundRectParam = 8
      ShowFocusRect = False
      TabOrder = 5
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatFeed: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 120
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1046#1080#1074#1072#1103' '#1083#1077#1085#1090#1072
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatFeedClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 6
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlat4: TButtonFlat
      AlignWithMargins = True
      Left = 10
      Top = 256
      Width = 215
      Height = 28
      Cursor = crDefault
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      Caption = #1057#1050#1051#1040#1044
      ColorNormal = 16052974
      ColorOver = 16052974
      ColorPressed = 16052974
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWhite
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWhite
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 6
      ImageIndentRight = 6
      ImageIndex = 15
      Images = ImageListSmall
      Transparent = True
      RoundRectParam = 8
      ShowFocusRect = False
      TabOrder = 7
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatDBConfig: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 323
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatDBConfigClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 8
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatStorage: TButtonFlat
      AlignWithMargins = True
      Left = 15
      Top = 291
      Width = 205
      Height = 28
      Margins.Left = 15
      Margins.Top = 2
      Margins.Right = 15
      Margins.Bottom = 2
      Align = alTop
      Caption = #1054#1089#1090#1072#1090#1082#1080
      ColorNormal = 16052974
      ColorOver = 15131097
      ColorPressed = 16053232
      EllipseRectVertical = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6250335
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 6250335
      FontOver.Height = -16
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 6250335
      FontDown.Height = -16
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      ImageIndentLeft = 30
      ImageIndentRight = 6
      ImageIndex = 0
      OnClick = ButtonFlatStorageClick
      RoundRectParam = 8
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 9
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
  end
  object PanelClient: TPanel
    Left = 235
    Top = 57
    Width = 985
    Height = 685
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelDriver: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 12
      Visible = False
      object Panel61: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object LabelCurDriver: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 140
          Height = 76
          Margins.Left = 15
          Align = alLeft
          Caption = #1042#1086#1076#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 45
        end
      end
      object Panel62: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel63: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel64: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatDriverSave: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 6
              Images = ImageListSmall
              OnClick = ButtonFlatDriverSaveClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatDriverClose: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1088#1099#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 5
              Images = ImageListSmall
              OnClick = ButtonFlatDriverCloseClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object Panel65: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 277
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 1
            object Label38: TLabel
              Left = 17
              Top = 24
              Width = 31
              Height = 17
              Caption = #1060#1048#1054
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 17
              Top = 55
              Width = 56
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 17
              Top = 86
              Width = 56
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label42: TLabel
              Left = 17
              Top = 148
              Width = 64
              Height = 17
              Caption = #1044#1086#1073#1072#1074#1083#1077#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label37: TLabel
              Left = 17
              Top = 117
              Width = 60
              Height = 17
              Caption = #1044#1086#1089#1090#1091#1087#1077#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditDriverF: TEdit
              Left = 114
              Top = 21
              Width = 145
              Height = 25
              Color = 16645627
              TabOrder = 0
              TextHint = #1060#1072#1084#1080#1083#1080#1103
            end
            object EditDriverI: TEdit
              Left = 265
              Top = 21
              Width = 137
              Height = 25
              Color = 16645627
              TabOrder = 1
              TextHint = #1048#1084#1103
            end
            object EditDriverO: TEdit
              Left = 408
              Top = 21
              Width = 177
              Height = 25
              Color = 16645627
              TabOrder = 2
              TextHint = #1054#1090#1095#1077#1089#1090#1074#1086
            end
            object EditDriverPhone1: TEdit
              Left = 114
              Top = 52
              Width = 199
              Height = 25
              Color = 16645627
              TabOrder = 3
              TextHint = '+7 987 654 32 10'
            end
            object EditDriverPhone2: TEdit
              Left = 114
              Top = 83
              Width = 199
              Height = 25
              Color = 16645627
              TabOrder = 4
              TextHint = '+7 987 654 32 10'
            end
            object EditDriverDateCreate: TEdit
              Left = 114
              Top = 145
              Width = 199
              Height = 25
              Color = 16645627
              ReadOnly = True
              TabOrder = 5
              Text = #1089#1077#1081#1095#1072#1089
            end
            object CheckBoxDriverIsAvailable: TCheckBox
              Left = 114
              Top = 118
              Width = 199
              Height = 17
              TabOrder = 6
            end
          end
          object PanelDriverOrders: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 322
            Width = 953
            Height = 280
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alBottom
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object Label43: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 10
              Width = 933
              Height = 28
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 0
              Align = alTop
              Caption = #1042#1089#1077' '#1079#1072#1082#1072#1079#1099
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 97
            end
            object TableExDriverOrders: TTableEx
              AlignWithMargins = True
              Left = 10
              Top = 48
              Width = 933
              Height = 222
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              BorderStyle = bsNone
              DefaultRowHeight = 25
              ParentColor = True
              TabOrder = 0
              ItemIndex = -1
              GetData = TableExCurClientAddrsGetData
              Columns = <>
              CanNoSelect = False
              ItemCount = 1
              LineColor = 16250610
              LineColorXor = 16250610
              LineHotColor = 14934226
              LineSelColor = 10921638
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = 2631720
              FontHotLine.Height = -11
              FontHotLine.Name = 'Tahoma'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = 2631720
              FontLine.Height = -11
              FontLine.Name = 'Tahoma'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = clWhite
              FontSelLine.Height = -11
              FontSelLine.Name = 'Tahoma'
              FontSelLine.Style = []
              ShowColumns = False
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = 2631720
              ColumnsFont.Height = -11
              ColumnsFont.Name = 'Tahoma'
              ColumnsFont.Style = []
              LastColumnAutoSize = False
            end
          end
        end
      end
    end
    object PanelCurClient: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      Visible = False
      object Panel21: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object LabelSelClient: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 105
          Height = 76
          Margins.Left = 15
          Align = alLeft
          Caption = #1050#1083#1080#1077#1085#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 45
        end
      end
      object Panel22: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel23: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel24: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatClientSave: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 6
              Images = ImageListSmall
              OnClick = ButtonFlatClientSaveClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatClientClose: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1088#1099#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 5
              Images = ImageListSmall
              OnClick = ButtonFlatClientCloseClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object Panel25: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 277
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 1
            object Label12: TLabel
              Left = 17
              Top = 24
              Width = 31
              Height = 17
              Caption = #1060#1048#1054
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 17
              Top = 55
              Width = 38
              Height = 17
              Caption = #1040#1076#1088#1077#1089
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 17
              Top = 86
              Width = 56
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 17
              Top = 117
              Width = 56
              Height = 17
              Caption = #1058#1077#1083#1077#1092#1086#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 17
              Top = 148
              Width = 64
              Height = 17
              Caption = #1044#1086#1073#1072#1074#1083#1077#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditClientF: TEdit
              Left = 114
              Top = 21
              Width = 145
              Height = 25
              TabOrder = 0
              TextHint = #1060#1072#1084#1080#1083#1080#1103
            end
            object EditClientI: TEdit
              Left = 265
              Top = 21
              Width = 137
              Height = 25
              TabOrder = 1
              TextHint = #1048#1084#1103
            end
            object EditClientO: TEdit
              Left = 408
              Top = 21
              Width = 177
              Height = 25
              TabOrder = 2
              TextHint = #1054#1090#1095#1077#1089#1090#1074#1086
            end
            object EditClientAddr: TEdit
              Left = 114
              Top = 52
              Width = 471
              Height = 25
              TabOrder = 3
              TextHint = #1075'. '#1045#1082#1072#1090#1077#1088#1080#1085#1073#1091#1088#1075', '#1091#1083'. '#1051#1077#1085#1080#1085#1072', 100'
            end
            object EditClientPhone1: TEdit
              Left = 114
              Top = 83
              Width = 199
              Height = 25
              TabOrder = 4
              TextHint = '+7 012 345 67 89'
            end
            object EditClientPhone2: TEdit
              Left = 114
              Top = 114
              Width = 199
              Height = 25
              TabOrder = 5
              TextHint = '+7 012 345 67 89'
            end
            object EditClientDateCreate: TEdit
              Left = 114
              Top = 145
              Width = 199
              Height = 25
              ReadOnly = True
              TabOrder = 6
              Text = #1057#1077#1081#1095#1072#1089
            end
          end
          object PanelCurClientAddr: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 322
            Width = 953
            Height = 280
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alBottom
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 2
            object Label15: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 10
              Width = 933
              Height = 28
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 0
              Align = alTop
              Caption = #1042#1089#1077' '#1072#1076#1088#1077#1089#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -20
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 185
            end
            object TableExCurClientAddrs: TTableEx
              AlignWithMargins = True
              Left = 10
              Top = 48
              Width = 933
              Height = 222
              Margins.Left = 10
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              BorderStyle = bsNone
              DefaultRowHeight = 25
              ParentColor = True
              TabOrder = 0
              ItemIndex = -1
              GetData = TableExCurClientAddrsGetData
              Columns = <>
              CanNoSelect = False
              ItemCount = 1
              LineColor = 16250610
              LineColorXor = 16250610
              LineHotColor = 14934226
              LineSelColor = 10921638
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = 2631720
              FontHotLine.Height = -11
              FontHotLine.Name = 'Tahoma'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = 2631720
              FontLine.Height = -11
              FontLine.Name = 'Tahoma'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = clWhite
              FontSelLine.Height = -11
              FontSelLine.Name = 'Tahoma'
              FontSelLine.Style = []
              ShowColumns = False
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = 2631720
              ColumnsFont.Height = -11
              ColumnsFont.Name = 'Tahoma'
              ColumnsFont.Style = []
              LastColumnAutoSize = False
            end
          end
        end
      end
    end
    object PanelProdKind: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Panel30: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object LabelSelProdKind: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 276
          Height = 76
          Margins.Left = 15
          Align = alLeft
          Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1090#1086#1074#1072#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 45
        end
      end
      object Panel31: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel32: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatProdKindSave: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 6
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindSaveClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatProdKindClose: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1088#1099#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 5
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindCloseClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object Panel34: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 562
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 1
            object Label18: TLabel
              Left = 17
              Top = 24
              Width = 96
              Height = 17
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 17
              Top = 55
              Width = 62
              Height = 17
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 17
              Top = 86
              Width = 92
              Height = 17
              Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditProdKindName: TEdit
              Left = 119
              Top = 21
              Width = 466
              Height = 25
              TabOrder = 0
              TextHint = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1090#1086#1074#1072#1088#1072
            end
            object EditProdKindComment: TEdit
              Left = 119
              Top = 52
              Width = 466
              Height = 25
              TabOrder = 1
              TextHint = #1054#1087#1080#1089#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1090#1086#1074#1072#1088#1072
            end
            object ComboBoxProdKindUnit: TComboBox
              Left = 119
              Top = 83
              Width = 154
              Height = 25
              Style = csDropDownList
              TabOrder = 2
              TextHint = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
            end
          end
        end
      end
    end
    object PanelStorageItem: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 9
      Visible = False
      object Panel47: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label24: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 320
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object Panel48: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel49: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel50: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatStorageItemSave: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 6
              Images = ImageListSmall
              OnClick = ButtonFlatStorageItemSaveClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatStorageItemClose: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1088#1099#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 5
              Images = ImageListSmall
              OnClick = ButtonFlatStorageItemCloseClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object Panel51: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 562
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 1
            object Label25: TLabel
              Left = 17
              Top = 24
              Width = 39
              Height = 17
              Caption = #1058#1086#1074#1072#1088
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 17
              Top = 55
              Width = 45
              Height = 17
              Caption = #1050#1086#1083'-'#1074#1086
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboBoxStorageItemProduct: TComboBox
              Left = 114
              Top = 21
              Width = 290
              Height = 25
              TabOrder = 0
              OnChange = ComboBoxSelOrderClientChange
            end
            object SpinEditStorageItemAmount: TlkSpinEdit
              Left = 114
              Top = 52
              Width = 145
              Height = 25
              MaxValue = 99999999
              MinValue = 1
              TabOrder = 1
              Value = 1
            end
            object ButtonFlatStorageItemAddProduct: TButtonFlat
              Left = 410
              Top = 21
              Width = 138
              Height = 25
              Caption = #1053#1086#1074#1099#1081' '#1090#1086#1074#1072#1088
              ColorNormal = 16250610
              ColorOver = 16514041
              ColorPressed = 15789800
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatStorageItemAddProductClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelTableClients: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object PanelTableClientHead: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1050#1083#1080#1077#1085#1090#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object PanelTableClientsClient: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object TableExClients: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExClientsGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
            LastColumnAutoSize = False
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlatClientsAdd: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1053#1086#1074#1099#1081
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatClientsAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatClientsEdit: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 12
              Images = ImageListSmall
              OnClick = ButtonFlatClientsEditClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatClientsDel: TButtonFlat
              AlignWithMargins = True
              Left = 265
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatClientsDelClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatClientsLoad: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatClientsLoadClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelTableProdKind: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 6
      Visible = False
      object Panel36: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label20: TLabel
          AlignWithMargins = True
          Left = 138
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1042#1080#1076#1099' '#1090#1086#1074#1072#1088#1086#1074
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 15
        end
        object ButtonFlat10: TButtonFlat
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 117
          Height = 42
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alLeft
          Caption = #1053#1072#1079#1072#1076
          ColorNormal = 16052974
          ColorOver = 15131097
          ColorPressed = 16053232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5197647
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FontOver.Charset = DEFAULT_CHARSET
          FontOver.Color = 5197647
          FontOver.Height = -13
          FontOver.Name = 'Tahoma'
          FontOver.Style = []
          FontDown.Charset = DEFAULT_CHARSET
          FontDown.Color = 5197647
          FontDown.Height = -13
          FontDown.Name = 'Tahoma'
          FontDown.Style = []
          IgnorBounds = True
          ImageIndentLeft = 10
          ImageIndentRight = 8
          ImageIndex = 16
          Images = ImageListSmall
          OnClick = ButtonFlatDBConfigClick
          RoundRectParam = 42
          Shape = stRoundRect
          ShowFocusRect = False
          TabOrder = 0
          TabStop = True
          TextFormat = [tfSingleLine, tfVerticalCenter]
        end
      end
      object Panel37: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel38: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object TableExProdKind: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExProdKindGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
            LastColumnAutoSize = False
          end
          object Panel39: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlatProdKindAdd: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1053#1086#1074#1099#1081
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatProdKindEdit: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 12
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindEditClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatProdKindDel: TButtonFlat
              AlignWithMargins = True
              Left = 265
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindDelClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatProdKindLoad: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatProdKindLoadClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelTableStorage: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 8
      Visible = False
      object Panel42: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label23: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1057#1082#1083#1072#1076' - '#1054#1089#1090#1072#1090#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object Panel44: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel45: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object TableExStorage: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExStorageGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
            LastColumnAutoSize = False
          end
          object Panel46: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlatStorageAdd: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1055#1086#1087#1086#1083#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatStorageAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlat6: TButtonFlat
              AlignWithMargins = True
              Left = 265
              Top = 5
              Width = 180
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1087#1080#1089#1072#1090#1100' '#1087#1086#1083#1085#1086#1089#1090#1100#1102
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDeleteClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlat7: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1087#1080#1089#1072#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 3
              Images = ImageListSmall
              OnClick = ButtonFlatOrderEditClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlat8: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatLoadOrdersClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelTableStorageProtocol: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 10
      Visible = False
      object Panel53: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label34: TLabel
          AlignWithMargins = True
          Left = 138
          Top = 3
          Width = 658
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1081'/'#1089#1087#1080#1089#1072#1085#1080#1081' '#1089#1086' '#1089#1082#1083#1072#1076#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 15
        end
        object ButtonFlat11: TButtonFlat
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 117
          Height = 42
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alLeft
          Caption = #1053#1072#1079#1072#1076
          ColorNormal = 16052974
          ColorOver = 15131097
          ColorPressed = 16053232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5197647
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FontOver.Charset = DEFAULT_CHARSET
          FontOver.Color = 5197647
          FontOver.Height = -13
          FontOver.Name = 'Tahoma'
          FontOver.Style = []
          FontDown.Charset = DEFAULT_CHARSET
          FontDown.Color = 5197647
          FontDown.Height = -13
          FontDown.Name = 'Tahoma'
          FontDown.Style = []
          IgnorBounds = True
          ImageIndentLeft = 10
          ImageIndentRight = 8
          ImageIndex = 16
          Images = ImageListSmall
          OnClick = ButtonFlatDBConfigClick
          RoundRectParam = 42
          Shape = stRoundRect
          ShowFocusRect = False
          TabOrder = 0
          TabStop = True
          TextFormat = [tfSingleLine, tfVerticalCenter]
        end
      end
      object Panel54: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel55: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object TableExStorageProtocol: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExStorageProtocolGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
            LastColumnAutoSize = False
          end
          object Panel56: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlat16: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatLoadOrdersClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelOrder: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object LabelSelectOrder: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1047#1072#1082#1072#1079' 000001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object Panel13: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatOrderSave: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 6
              Images = ImageListSmall
              OnClick = ButtonFlatOrderSaveClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderClose: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1088#1099#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 5
              ImageIndentRight = -5
              ImageIndex = 5
              Images = ImageListSmall
              OnClick = ButtonFlatOrderCloseClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 562
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 1
            object Label5: TLabel
              Left = 17
              Top = 24
              Width = 45
              Height = 17
              Caption = #1050#1083#1080#1077#1085#1090
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 17
              Top = 55
              Width = 30
              Height = 17
              Caption = #1050#1091#1076#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 17
              Top = 117
              Width = 51
              Height = 17
              Caption = #1044#1072#1085#1085#1099#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 17
              Top = 166
              Width = 88
              Height = 17
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 17
              Top = 86
              Width = 36
              Height = 17
              Caption = #1050#1086#1075#1076#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 17
              Top = 442
              Width = 40
              Height = 17
              Caption = #1057#1090#1072#1090#1091#1089
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 17
              Top = 216
              Width = 87
              Height = 17
              Caption = #1057#1086#1089#1090#1072#1074' '#1079#1072#1082#1072#1079#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 17
              Top = 473
              Width = 60
              Height = 17
              Caption = #1042#1086#1076#1080#1090#1077#1083#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelOrderProductUnit: TLabel
              Left = 438
              Top = 386
              Width = 42
              Height = 17
              AutoSize = False
              Caption = #1075#1088#1072#1084#1084
              EllipsisPosition = epEndEllipsis
            end
            object ComboBoxSelOrderClient: TComboBox
              Left = 114
              Top = 21
              Width = 471
              Height = 25
              TabOrder = 0
              OnChange = ComboBoxSelOrderClientChange
            end
            object ComboBoxSelOrderAddr: TComboBox
              Left = 114
              Top = 52
              Width = 471
              Height = 25
              TabOrder = 1
            end
            object MemoSelOrderData: TMemo
              Left = 114
              Top = 114
              Width = 471
              Height = 43
              ScrollBars = ssVertical
              TabOrder = 2
            end
            object MemoSelOrderComment: TMemo
              Left = 114
              Top = 163
              Width = 471
              Height = 43
              ScrollBars = ssVertical
              TabOrder = 3
            end
            object DateTimePickerSelOrderTime: TDateTimePicker
              Left = 231
              Top = 83
              Width = 66
              Height = 24
              Date = 43334.000000000000000000
              Format = 'HH:mm'
              Time = 0.836574074077361700
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Kind = dtkTime
              ParentFont = False
              TabOrder = 4
              OnChange = DateTimePickerSelOrderTimeChange
            end
            object DateTimePickerSelOrderDate: TDateTimePicker
              Left = 114
              Top = 83
              Width = 111
              Height = 24
              Date = 43334.000000000000000000
              Time = 0.128251226851716600
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object ButtonFlatOrderDraft: TButtonFlat
              Left = 114
              Top = 439
              Width = 109
              Height = 25
              Caption = #1063#1077#1088#1085#1086#1074#1080#1082
              ColorNormal = 16242577
              ColorOver = 16442294
              ColorPressed = 16242577
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 8
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDraftClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 6
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderNormal: TButtonFlat
              Tag = 1
              Left = 229
              Top = 439
              Width = 100
              Height = 25
              Caption = #1054#1078#1080#1076#1072#1077#1090
              ColorNormal = 16250610
              ColorOver = 16442294
              ColorPressed = 16242577
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 9
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDraftClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 7
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderDelivery: TButtonFlat
              Tag = 2
              Left = 335
              Top = 439
              Width = 130
              Height = 25
              Caption = #1044#1086#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103
              ColorNormal = 16250610
              ColorOver = 16442294
              ColorPressed = 16242577
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 10
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDraftClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 8
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderDelivered: TButtonFlat
              Tag = 3
              Left = 471
              Top = 439
              Width = 114
              Height = 25
              Caption = #1044#1086#1089#1090#1072#1074#1083#1077#1085
              ColorNormal = 16250610
              ColorOver = 16442294
              ColorPressed = 16242577
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 11
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDraftClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 9
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderNewClient: TButtonFlat
              Left = 591
              Top = 21
              Width = 150
              Height = 25
              Caption = #1053#1086#1074#1099#1081' '#1082#1083#1080#1077#1085#1090
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 4
              ImageIndentRight = 5
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatOrderNewClientClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 10
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object TableExOrderProducts: TTableEx
              Left = 114
              Top = 212
              Width = 471
              Height = 165
              Color = clWhite
              DefaultRowHeight = 25
              TabOrder = 11
              ItemIndex = -1
              GetData = TableExOrderProductsGetData
              Columns = <
                item
                  Width = 32
                  MinWidth = 32
                end
                item
                  Caption = #1042#1080#1076' '#1090#1086#1074#1072#1088#1072
                  Width = 64
                  MinWidth = 200
                end
                item
                  Caption = #1050#1086#1083'-'#1074#1086
                  Width = 64
                  MinWidth = 70
                end
                item
                  Width = 290
                  MinWidth = 10
                end>
              CanNoSelect = False
              ItemCount = 1
              LineColor = clWhite
              LineColorXor = clWhite
              LineHotColor = 16250610
              LineSelColor = 14803425
              ColumnsColor = 15329769
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = 2631720
              FontHotLine.Height = -13
              FontHotLine.Name = 'Tahoma'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = 2631720
              FontLine.Height = -13
              FontLine.Name = 'Tahoma'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = 2631720
              FontSelLine.Height = -13
              FontSelLine.Name = 'Tahoma'
              FontSelLine.Style = []
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = 2631720
              ColumnsFont.Height = -13
              ColumnsFont.Name = 'Tahoma'
              ColumnsFont.Style = []
              ShowFocus = True
              DrawColumnBorded = False
              LastColumnAutoSize = False
            end
            object ButtonFlatCurOrderProductAdd: TButtonFlat
              Left = 486
              Top = 383
              Width = 99
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 4
              ImageIndentRight = 5
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatCurOrderProductAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 12
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatCurOrderProductDelete: TButtonFlat
              Left = 591
              Top = 212
              Width = 150
              Height = 25
              Caption = #1059#1073#1088#1072#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 4
              ImageIndentRight = 5
              ImageIndex = 3
              Images = ImageListSmall
              OnClick = ButtonFlatCurOrderProductDeleteClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 13
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatCurOrderProductClear: TButtonFlat
              Left = 591
              Top = 243
              Width = 150
              Height = 25
              Caption = #1054#1095#1080#1089#1090#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 4
              ImageIndentRight = 5
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatCurOrderProductClearClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 14
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object ComboBoxSelOrderDriver: TComboBox
              Left = 114
              Top = 470
              Width = 471
              Height = 25
              TabOrder = 15
            end
            object ButtonFlatOrderNewDriver: TButtonFlat
              Left = 591
              Top = 470
              Width = 150
              Height = 25
              Caption = #1053#1086#1074#1099#1081' '#1074#1086#1076#1080#1090#1077#1083#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 4
              ImageIndentRight = 5
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatOrderNewDriverClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 16
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object ComboBoxOrderProduct: TComboBox
              Left = 114
              Top = 383
              Width = 246
              Height = 25
              TabOrder = 17
              OnChange = ComboBoxOrderProductChange
            end
            object SpinEditOrderProductAmount: TlkSpinEdit
              Left = 366
              Top = 383
              Width = 66
              Height = 25
              MaxValue = 99999999
              MinValue = 1
              TabOrder = 18
              Value = 1
            end
          end
        end
      end
    end
    object PanelTableDrivers: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 11
      Visible = False
      object Panel57: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label36: TLabel
          AlignWithMargins = True
          Left = 138
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1042#1086#1076#1080#1090#1077#1083#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 15
        end
        object ButtonFlat9: TButtonFlat
          AlignWithMargins = True
          Left = 3
          Top = 20
          Width = 117
          Height = 42
          Margins.Top = 20
          Margins.Bottom = 20
          Align = alLeft
          Caption = #1053#1072#1079#1072#1076
          ColorNormal = 16052974
          ColorOver = 15131097
          ColorPressed = 16053232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5197647
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FontOver.Charset = DEFAULT_CHARSET
          FontOver.Color = 5197647
          FontOver.Height = -13
          FontOver.Name = 'Tahoma'
          FontOver.Style = []
          FontDown.Charset = DEFAULT_CHARSET
          FontDown.Color = 5197647
          FontDown.Height = -13
          FontDown.Name = 'Tahoma'
          FontDown.Style = []
          IgnorBounds = True
          ImageIndentLeft = 10
          ImageIndentRight = 8
          ImageIndex = 16
          Images = ImageListSmall
          OnClick = ButtonFlatDBConfigClick
          RoundRectParam = 42
          Shape = stRoundRect
          ShowFocusRect = False
          TabOrder = 0
          TabStop = True
          TextFormat = [tfSingleLine, tfVerticalCenter]
        end
      end
      object Panel58: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel59: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object TableExDrivers: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExDriversGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
          end
          object Panel60: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlatDriversAdd: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1053#1086#1074#1099#1081
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatDriversAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatDriverEdit: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 12
              Images = ImageListSmall
              OnClick = ButtonFlatDriverEditClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatDriverDelete: TButtonFlat
              AlignWithMargins = True
              Left = 265
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatClientsDelClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatDriversUpdate: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatDriversUpdateClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
    object PanelTableOrders: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1047#1072#1082#1072#1079#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 963
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object ButtonFlatOrderAdd: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1053#1086#1074#1099#1081
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatOrderAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderDelete: TButtonFlat
              AlignWithMargins = True
              Left = 265
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 4
              Images = ImageListSmall
              OnClick = ButtonFlatOrderDeleteClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderEdit: TButtonFlat
              AlignWithMargins = True
              Left = 135
              Top = 5
              Width = 130
              Height = 30
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -13
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -13
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 12
              Images = ImageListSmall
              OnClick = ButtonFlatOrderEditClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatLoadOrders: TButtonFlat
              AlignWithMargins = True
              Left = 917
              Top = 5
              Width = 41
              Height = 30
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 13
              Images = ImageListSmall
              OnClick = ButtonFlatLoadOrdersClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderSetState3: TButtonFlat
              AlignWithMargins = True
              Left = 485
              Top = 5
              Width = 40
              Height = 30
              Hint = #1044#1086#1089#1090#1072#1074#1083#1077#1085
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              GroupItemKind = giRight
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 11
              Images = ImageListSmall
              OnClick = ButtonFlatOrderSetState3Click
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 4
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderSetState2: TButtonFlat
              AlignWithMargins = True
              Left = 445
              Top = 5
              Width = 40
              Height = 30
              Hint = #1044#1086#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              GroupItemKind = giCenter
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 10
              Images = ImageListSmall
              OnClick = ButtonFlatOrderSetState2Click
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 5
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatOrderSetState1: TButtonFlat
              AlignWithMargins = True
              Left = 405
              Top = 5
              Width = 40
              Height = 30
              Hint = #1054#1078#1080#1076#1072#1077#1090
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = ''
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              GroupItemKind = giLeft
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndex = 9
              Images = ImageListSmall
              OnClick = ButtonFlatOrderSetState1Click
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 6
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
          end
          object TableExOrders: TTableEx
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 953
            Height = 557
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BorderStyle = bsNone
            Color = clWhite
            DefaultRowHeight = 30
            TabOrder = 0
            OnDrawCellData = TableExOrdersDrawCellData
            ItemIndex = -1
            GetData = TableExOrdersGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 1
            LineColor = clWhite
            LineColorXor = clWhite
            LineHotColor = 16250610
            LineSelColor = 14803425
            ColumnsColor = 15329769
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -13
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -13
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = 2631720
            FontSelLine.Height = -13
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -13
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            ShowFocus = True
            DrawColumnBorded = False
            FlashSelectedCol = True
          end
        end
      end
    end
    object PanelFeed: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label10: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 250
          Height = 76
          Margins.Left = 15
          Align = alLeft
          AutoSize = False
          Caption = #1051#1077#1085#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object Panel18: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          ParentBackground = False
          TabOrder = 0
          object Panel20: TPanel
            Left = 10
            Top = 10
            Width = 943
            Height = 52
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            object ButtonFlatFeedNewOrder: TButtonFlat
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 120
              Height = 42
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1047#1072#1082#1072#1079
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              EllipseRectVertical = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -16
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -16
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndentRight = -4
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatOrderAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatFeedNewClient: TButtonFlat
              AlignWithMargins = True
              Left = 130
              Top = 5
              Width = 120
              Height = 42
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 5
              Align = alLeft
              Caption = #1050#1083#1080#1077#1085#1090
              ColorNormal = 16250610
              ColorOver = 15789800
              ColorPressed = 14276036
              EllipseRectVertical = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -16
              FontOver.Name = 'Segoe UI'
              FontOver.Style = [fsBold]
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -16
              FontDown.Name = 'Segoe UI'
              FontDown.Style = [fsBold]
              IgnorBounds = True
              ImageIndentLeft = 8
              ImageIndentRight = -4
              ImageIndex = 0
              Images = ImageListSmall
              OnClick = ButtonFlatClientsAddClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object Panel29: TPanel
              AlignWithMargins = True
              Left = 588
              Top = 5
              Width = 350
              Height = 42
              Margins.Left = 0
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Align = alRight
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 2
              object EditSearchFeed: TEdit
                Left = 0
                Top = 0
                Width = 314
                Height = 42
                Margins.Left = 0
                Margins.Top = 15
                Margins.Right = 0
                Margins.Bottom = 15
                Align = alClient
                BevelInner = bvSpace
                BevelKind = bkSoft
                BevelOuter = bvNone
                BevelWidth = 8
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = #1048#1089#1082#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072', '#1079#1072#1082#1072#1079', '#1087#1088#1086#1095#1077#1077'...'
              end
              object ButtonFlatSearchFeed: TButtonFlat
                Left = 314
                Top = 0
                Width = 36
                Height = 42
                Margins.Left = 0
                Margins.Top = 15
                Margins.Right = 0
                Margins.Bottom = 15
                Align = alRight
                Caption = ''
                ColorNormal = clWhite
                ColorOver = clWhite
                ColorPressed = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FontOver.Charset = DEFAULT_CHARSET
                FontOver.Color = clWhite
                FontOver.Height = -13
                FontOver.Name = 'Tahoma'
                FontOver.Style = []
                FontDown.Charset = DEFAULT_CHARSET
                FontDown.Color = clWhite
                FontDown.Height = -13
                FontDown.Name = 'Tahoma'
                FontDown.Style = []
                IgnorBounds = True
                ImageIndentLeft = 7
                ImageIndentRight = 3
                ImageIndex = 14
                Images = ImageListSmall
                RoundRectParam = 0
                ShowFocusRect = False
                TabOrder = 1
                TabStop = True
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
              end
            end
          end
          object PanelFeedHotOrders: TPanel
            AlignWithMargins = True
            Left = 666
            Top = 80
            Width = 267
            Height = 472
            Margins.Right = 20
            Margins.Bottom = 50
            Align = alRight
            BevelOuter = bvNone
            Color = 14867923
            Padding.Left = 1
            Padding.Top = 1
            Padding.Right = 1
            Padding.Bottom = 1
            ParentBackground = False
            TabOrder = 1
            object TableExHotOrders: TTableEx
              Left = 1
              Top = 43
              Width = 265
              Height = 428
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DefaultRowHeight = 120
              TabOrder = 0
              OnDrawCellData = TableExHotOrdersDrawCellData
              ItemIndex = -1
              OnItemClick = TableExHotOrdersItemClick
              ProcEmpty = True
              Columns = <>
              DefaultDataDrawing = False
              CanNoSelect = False
              ItemCount = 1
              LineColor = clWhite
              LineColorXor = clWhite
              LineHotColor = clWhite
              LineSelColor = clWhite
              ColumnsColor = 15329769
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = 2631720
              FontHotLine.Height = -13
              FontHotLine.Name = 'Tahoma'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = 2631720
              FontLine.Height = -13
              FontLine.Name = 'Tahoma'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = 2631720
              FontSelLine.Height = -13
              FontSelLine.Name = 'Tahoma'
              FontSelLine.Style = []
              ShowColumns = False
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = 2631720
              ColumnsFont.Height = -13
              ColumnsFont.Name = 'Tahoma'
              ColumnsFont.Style = []
              DrawColumnBorded = False
              FlashSelectedCol = True
              LastColumnAutoSize = False
            end
            object Panel26: TPanel
              Left = 1
              Top = 1
              Width = 265
              Height = 40
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  '#1041#1083#1080#1078#1072#1081#1096#1080#1077' '#1079#1072#1082#1072#1079#1099
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 3881787
              Font.Height = -17
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              object ButtonFlatFeedUpdate: TButtonFlat
                AlignWithMargins = True
                Left = 219
                Top = 5
                Width = 41
                Height = 30
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alRight
                Caption = ''
                ColorNormal = 16250610
                ColorOver = 16514041
                ColorPressed = 15789800
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6250335
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                FontOver.Charset = DEFAULT_CHARSET
                FontOver.Color = clWhite
                FontOver.Height = -13
                FontOver.Name = 'Tahoma'
                FontOver.Style = []
                FontDown.Charset = DEFAULT_CHARSET
                FontDown.Color = clWhite
                FontDown.Height = -13
                FontDown.Name = 'Tahoma'
                FontDown.Style = []
                IgnorBounds = True
                ImageIndentLeft = 8
                ImageIndex = 13
                Images = ImageListSmall
                Transparent = True
                OnClick = ButtonFlatFeedUpdateClick
                RoundRectParam = 8
                Shape = stRoundRect
                ShowFocusRect = False
                TabOrder = 0
                TabStop = True
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
              end
            end
            object Panel27: TPanel
              Left = 1
              Top = 41
              Width = 265
              Height = 2
              Align = alTop
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 2
              object Shape3: TShape
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 255
                Height = 1
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Brush.Color = clSilver
                Pen.Color = clSilver
                ExplicitLeft = 6
                ExplicitTop = 41
                ExplicitWidth = 298
              end
            end
          end
          object Panel28: TPanel
            AlignWithMargins = True
            Left = 15
            Top = 67
            Width = 933
            Height = 5
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Shape4: TShape
              AlignWithMargins = True
              Left = 5
              Top = 2
              Width = 923
              Height = 1
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 5
              Margins.Bottom = 2
              Align = alClient
              Brush.Color = 15461355
              Pen.Color = 15461355
              ExplicitWidth = 932
            end
          end
          object TableExFeed: TTableEx
            AlignWithMargins = True
            Left = 13
            Top = 80
            Width = 647
            Height = 519
            Align = alClient
            BevelInner = bvSpace
            BorderStyle = bsNone
            DefaultRowHeight = 50
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Helvetica'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnDrawCellData = TableExFeedDrawCellData
            ItemIndex = -1
            Columns = <>
            DefaultDataDrawing = False
            ShowScrollBar = False
            CanNoSelect = False
            ItemCount = 1
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = 2631720
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = 2631720
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clWhite
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ShowColumns = False
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
            SetFocusOnEnter = True
          end
        end
      end
    end
    object PanelCalendar: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 13
      Visible = False
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label29: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 160
          Height = 76
          Margins.Left = 15
          Align = alLeft
          Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 45
        end
      end
      object Panel52: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel66: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel67: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 40
            Width = 953
            Height = 562
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            Color = 16250610
            ParentBackground = False
            TabOrder = 0
            object TableExCalendar: TTableEx
              Left = 0
              Top = 0
              Width = 953
              Height = 562
              Align = alClient
              BorderStyle = bsNone
              DefaultRowHeight = 25
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2631720
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ItemIndex = -1
              GetData = TableExCalendarGetData
              Columns = <
                item
                  Caption = #1042#1086#1076#1080#1090#1077#1083#1100
                  Width = 150
                  MinWidth = 100
                end
                item
                  Caption = '1'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '2'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '3'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '4'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '5'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '6'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '7'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '8'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '9'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '10'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '11'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '12'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '13'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '14'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '15'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '16'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '17'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '18'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '19'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '20'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '21'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '22'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '23'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '24'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '25'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '26'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '27'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '28'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '29'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '30'
                  Width = 64
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end
                item
                  Caption = '31'
                  Width = 24
                  Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
                  MinWidth = 24
                end>
              ShowScrollBar = False
              CanNoSelect = False
              ItemCount = 10
              LineColor = clWindow
              LineColorXor = clWindow
              LineHotColor = clWindow
              LineSelColor = clWindow
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = 2631720
              FontHotLine.Height = -16
              FontHotLine.Name = 'Segoe UI'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = 2631720
              FontLine.Height = -16
              FontLine.Name = 'Segoe UI'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = 2631720
              FontSelLine.Height = -16
              FontSelLine.Name = 'Segoe UI'
              FontSelLine.Style = []
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = 2631720
              ColumnsFont.Height = -13
              ColumnsFont.Name = 'Segoe UI'
              ColumnsFont.Style = []
              ShowFocus = True
              DrawColumnBorded = False
              FlashSelectedCol = True
              PaintGrid = True
              LastColumnAutoSize = False
            end
          end
          object Panel2: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 953
            Height = 30
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object SpinEditCalendarYear: TlkSpinEdit
              Left = 0
              Top = 0
              Width = 65
              Height = 30
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxValue = 9999
              MinValue = 2000
              ParentFont = False
              TabOrder = 0
              Value = 2018
              OnChange = ComboBoxCalendarMonthChange
              ExplicitHeight = 29
            end
            object ComboBoxCalendarMonth: TComboBox
              AlignWithMargins = True
              Left = 70
              Top = 0
              Width = 139
              Height = 29
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 1
              Text = #1071#1085#1074#1072#1088#1100
              OnChange = ComboBoxCalendarMonthChange
              Items.Strings = (
                #1071#1085#1074#1072#1088#1100
                #1060#1077#1074#1088#1072#1083#1100
                #1052#1072#1088#1090
                #1040#1087#1088#1077#1083#1100
                #1052#1072#1081
                #1048#1102#1085#1100
                #1048#1102#1083#1100
                #1040#1074#1075#1091#1089#1090
                #1057#1077#1085#1090#1103#1073#1088#1100
                #1054#1082#1090#1103#1073#1088#1100
                #1053#1086#1103#1073#1088#1100
                #1044#1077#1082#1072#1073#1088#1100)
            end
          end
        end
      end
    end
    object PanelDBConfig: TPanel
      Left = 0
      Top = 0
      Width = 985
      Height = 685
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 7
      Visible = False
      object Panel35: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 82
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label22: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 3
          Width = 220
          Height = 76
          Margins.Left = 15
          Align = alLeft
          Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6250335
          Font.Height = -33
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 45
        end
      end
      object Panel40: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 82
        Width = 965
        Height = 603
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 20
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = 15724009
        Padding.Left = 1
        Padding.Top = 1
        Padding.Right = 1
        ParentBackground = False
        TabOrder = 1
        object Panel41: TPanel
          Left = 1
          Top = 1
          Width = 963
          Height = 602
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel43: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 690
            Height = 597
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            Color = 16250610
            Padding.Left = 20
            Padding.Top = 20
            Padding.Right = 20
            Padding.Bottom = 20
            ParentBackground = False
            TabOrder = 0
            object Shape6: TShape
              Left = 38
              Top = 203
              Width = 2
              Height = 104
              Brush.Color = 9142358
              Pen.Color = 9142358
            end
            object Shape7: TShape
              Left = 38
              Top = 53
              Width = 2
              Height = 30
              Brush.Color = 9142358
              Pen.Color = 9142358
            end
            object Shape8: TShape
              Left = 38
              Top = 82
              Width = 30
              Height = 2
              Brush.Color = 9142358
              Pen.Color = 9142358
            end
            object Shape9: TShape
              Left = 38
              Top = 235
              Width = 30
              Height = 2
              Brush.Color = 9142358
              Pen.Color = 9142358
            end
            object Shape10: TShape
              Left = 38
              Top = 305
              Width = 30
              Height = 2
              Brush.Color = 9142358
              Pen.Color = 9142358
            end
            object ButtonFlatProdKind: TButtonFlat
              AlignWithMargins = True
              Left = 71
              Top = 210
              Width = 177
              Height = 50
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 2
              Caption = #1042#1080#1076#1099' '#1090#1086#1074#1072#1088#1086#1074
              ColorNormal = 16052974
              ColorOver = 15789800
              ColorPressed = 14276036
              EllipseRectVertical = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -16
              FontOver.Name = 'Segoe UI'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -16
              FontDown.Name = 'Segoe UI'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 0
              ImageIndex = 0
              OnClick = ButtonFlatProdKindClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 0
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlatStorageProtocol: TButtonFlat
              AlignWithMargins = True
              Left = 71
              Top = 268
              Width = 177
              Height = 69
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 2
              Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1081'/'#1089#1087#1080#1089#1072#1085#1080#1081' '#1089#1082#1083#1072#1076#1072
              ColorNormal = 16052974
              ColorOver = 15789800
              ColorPressed = 14276036
              EllipseRectVertical = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -16
              FontOver.Name = 'Segoe UI'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -16
              FontDown.Name = 'Segoe UI'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 0
              ImageIndex = 0
              OnClick = ButtonFlatStorageProtocolClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 1
              TabStop = True
              TextFormat = [tfCenter, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
            end
            object ButtonFlatTableDrivers: TButtonFlat
              AlignWithMargins = True
              Left = 71
              Top = 57
              Width = 177
              Height = 50
              Margins.Left = 0
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 2
              Caption = #1042#1086#1076#1080#1090#1077#1083#1080
              ColorNormal = 16052974
              ColorOver = 15789800
              ColorPressed = 14276036
              EllipseRectVertical = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = 6250335
              FontOver.Height = -16
              FontOver.Name = 'Segoe UI'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = 6250335
              FontDown.Height = -16
              FontDown.Name = 'Segoe UI'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 0
              ImageIndex = 0
              OnClick = ButtonFlatTableDriversClick
              RoundRectParam = 8
              Shape = stRoundRect
              ShowFocusRect = False
              TabOrder = 2
              TabStop = True
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlat1: TButtonFlat
              AlignWithMargins = True
              Left = 20
              Top = 20
              Width = 129
              Height = 28
              Cursor = crDefault
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Caption = #1044#1086#1089#1090#1072#1074#1082#1072
              ColorNormal = 16052974
              ColorOver = 16052974
              ColorPressed = 16052974
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 6
              ImageIndentRight = 6
              ImageIndex = 7
              Images = ImageListSmall
              Transparent = True
              RoundRectParam = 8
              ShowFocusRect = False
              TabOrder = 3
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
            object ButtonFlat12: TButtonFlat
              AlignWithMargins = True
              Left = 20
              Top = 167
              Width = 198
              Height = 28
              Cursor = crDefault
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072#1084#1080
              ColorNormal = 16052974
              ColorOver = 16052974
              ColorPressed = 16052974
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6250335
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FontOver.Charset = DEFAULT_CHARSET
              FontOver.Color = clWhite
              FontOver.Height = -13
              FontOver.Name = 'Tahoma'
              FontOver.Style = []
              FontDown.Charset = DEFAULT_CHARSET
              FontDown.Color = clWhite
              FontDown.Height = -13
              FontDown.Name = 'Tahoma'
              FontDown.Style = []
              IgnorBounds = True
              ImageIndentLeft = 6
              ImageIndentRight = 6
              ImageIndex = 15
              Images = ImageListSmall
              Transparent = True
              RoundRectParam = 8
              ShowFocusRect = False
              TabOrder = 4
              TabStop = True
              TextFormat = [tfSingleLine, tfVerticalCenter]
            end
          end
        end
      end
    end
  end
  object ImageList24: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 1008
    Top = 8
    Bitmap = {
      494C010103000500040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101041F1F1F680000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010104343434AD4E4E4EFF2F2F
      2F9C000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010104343434AD4E4E4EFF4E4E4EFF4E4E
      4EFF1F1F1F680000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010104343434AD4E4E4EFF4E4E4EFF4E4E4EFF3434
      34AD010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010104343434AD4E4E4EFF4E4E4EFF4E4E4EFF343434AD0101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030F323232A5363636B215151545000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010104343434AD4E4E4EFF4E4E4EFF4E4E4EFF343434AD010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030E0000000300000000000000000000000000000000000000000101
      0104343434AD4E4E4EFF4E4E4EFF4E4E4EFF343434AD01010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C2B2B2B2B8E424242D64C4C
      4CF94E4E4EFF4E4E4EFD454545E1303030A01212123E00000000000000002F2F
      2F9E4E4E4EFF4E4E4EFF4E4E4EFF343434AD0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030A2F2F2F9B4D4D4DFC4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF393939B90707071A4141
      41D34E4E4EFF4E4E4EFF343434AD010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606193F3F3FCF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4747
      47E9414141D3454545E24E4E4EFD4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF44E4E
      4EFF414141D32F2F2F9E01010104000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001212123F3A3A3ABF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030A3E3E3ECC4E4E4EFF4E4E4EFF4D4D4DFC2E2E2E980C0C0C280000
      0000000000000000000006060618252525784A4A4AF04E4E4EFF4E4E4EFF4A4A
      4AF40707071A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001212123F4E4E4EFF4E4E4EFF3A3A3ABF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2B2B8F4E4E4EFF4E4E4EFF4A4A4AF31515154800000000000000000000
      0000000000000000000000000000000000000A0A0A25424242DA4E4E4EFF4E4E
      4EFF393939B90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000090909201D1D1D631D1D1D631D1D1D631D1D
      1D631D1D1D631D1D1D63222222714A4A4AF34E4E4EFF303030A01D1D1D631D1D
      1D631D1D1D631D1D1D631D1D1D631D1D1D631515154500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001212123F4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF3A3A3ABF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      091E4B4B4BF84E4E4EFF4E4E4EFF181818520000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A254A4A4AF04E4E
      4EFF4E4E4EFF1212123E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000181818524E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF363636B200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001212123F4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF3A3A
      3ABF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002222
      22744E4E4EFF4E4E4EFF373737B4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000252525784E4E
      4EFF4E4E4EFF303030A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001616164C484848EC484848EC484848EC4848
      48EC484848EC484848EC494949ED4E4E4EFD4E4E4EFF4A4A4AF3484848EC4848
      48EC484848EC484848EC484848EC484848EC323232A500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      123F4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF3A3A3ABF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003838
      38B84E4E4EFF4E4E4EFF18181852000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606184E4E
      4EFD4E4E4EFF454545E100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101070606061606060616060606160606
      061606060616060606160C0C0C2A494949ED4E4E4EFF22222271060606160606
      0616060606160606061606060616060606160303030F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001212123F4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF3A3A3ABF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004141
      41D54E4E4EFF4E4E4EFF0909091E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004545
      45E24E4E4EFF4E4E4EFD00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004646
      46E34E4E4EFF4E4E4EFF05050510000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004141
      41D34E4E4EFF4E4E4EFF0303030E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003F3F
      3FD04E4E4EFF4E4E4EFF0A0A0A25000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004747
      47E94E4E4EFF4B4B4BF800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      35AC4E4E4EFF4E4E4EFF1E1E1E64000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C284E4E
      4EFF4E4E4EFF424242D600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D634E4E4EFF4E4E4EFF404040D1000000020000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E984E4E
      4EFF4E4E4EFF2B2B2B8E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      030F474747EB4E4E4EFF4E4E4EFF272727800000000000000000000000000000
      00000000000000000000000000000000000000000000151515484D4D4DFC4E4E
      4EFF4D4D4DFC0C0C0C2B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616484848EC4E4E4EFF1D1D1D63000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002121216E4E4E4EFF4E4E4EFF4D4D4DFE2727278000000002000000000000
      000000000000000000000000000000000000181818524A4A4AF34E4E4EFF4E4E
      4EFF2F2F2F9B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101071616164C1818185209090920000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000333333A84E4E4EFF4E4E4EFF4E4E4EFF404040D11E1E1E640A0A
      0A25050505100909091E18181852373737B44E4E4EFF4E4E4EFF4E4E4EFF3F3F
      3FCF0303030A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020208333333A84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF3E3E3ECC0606
      0619000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002121216E474747EB4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4B4B4BF82B2B2B8F0303030A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030F1D1D1D63353535AC3F3F
      3FD0464646E3414141D5383838B8222222740909091E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFF8FFFFFFFFFFFFFFFFF00000000FFFFFF07FFFFFFFFFFFFFFFF00000000
      FFFFFE07FFFFFFFFFFFFFFFF00000000FFFFFC07FFFFFFFFFFFFFFFF00000000
      FFFFF80FFFFC3FFFFFFFFFFF00000000FFFFF01FFFFC3FFFFFFFFFFF00000000
      FFF3E03FFFFC3FFFFFFFFFFF00000000FF00607FFFFC3FFFFFFFFFFF00000000
      FC0000FFFFFC3FFFFFFFFFFF00000000F80001FFFFFC3FFFFFFE7FFF00000000
      F01C07FFFFFC3FFFFFFC3FFF00000000F07F07FFFE00007FFFF81FFF00000000
      E0FF83FFFE00007FFFF00FFF00000000E1FFC3FFFE00007FFFE007FF00000000
      E1FFC3FFFE00007FFFC003FF00000000E1FFE1FFFFFC3FFFFFFFFFFF00000000
      E1FFE1FFFFFC3FFFFFFFFFFF00000000E1FFE3FFFFFC3FFFFFFFFFFF00000000
      E1FFC3FFFFFC3FFFFFFFFFFF00000000E0FFC3FFFFFC3FFFFFFFFFFF00000000
      E0FF83FFFFFC3FFFFFFFFFFF00000000F03F07FFFFFC3FFFFFFFFFFF00000000
      F80007FFFFFFFFFFFFFFFFFF00000000F8000FFFFFFFFFFFFFFFFFFF00000000
      FE001FFFFFFFFFFFFFFFFFFF00000000FF007FFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object TimerTime: TTimer
    OnTimer = TimerTimeTimer
    Left = 1064
    Top = 8
  end
  object ImageListSmall: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 1129
    Top = 9
    Bitmap = {
      494C010111001500040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      104B222222940101010600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212533A3A
      3AF43C3C3CFF2121219200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012121253393939F03C3C
      3CFF363636E90F0F0F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010104B3A3A3AF43C3C3CFF3838
      38F10E0E0E3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121212533A3A3AF43C3C3CFF373737EA0F0F
      0F3F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000012121253393939F03C3C3CFF373737EB0F0F0F440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010104B3A3A3AF43C3C3CFF393939F30E0E0E41000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000121212533A3A3AF43C3C3CFF383838EC0E0E0E4300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1253393939F03C3C3CFF3C3C3CFF262626A61616166316161663161616631616
      1663161616631616166316161663161616631616166316161663161616631616
      1663161616631414145801010106000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E423A3A
      3AF43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
      3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
      3CFF3C3C3CFF353535E203030311000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404132F2F
      2FCB3C3C3CFF3C3C3CFF3C3C3CFF383838EF383838EC383838EC383838EC3838
      38EC383838EC383838EC383838EC383838EC383838EC383838EC383838EC3838
      38EC383838EC313131D103030310000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      061B2E2E2EC73C3C3CFF3C3C3CFF262626A60606061C04040416040404160404
      0416040404160404041604040416040404160404041604040416040404160404
      0416040404160404041300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000606061B2F2F2FCB3B3B3BFE3C3C3CFC2121219100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404132F2F2FCB3C3C3CFF3C3C3CFF2222228F000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606061B2E2E2EC73C3C3CFF3C3C3CFC2020208C0000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000606061B2F2F2FCB3B3B3BFE3C3C3CFC2020
      208C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404132F2F2FCB3C3C3CFF3C3C
      3CFF2020208A0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000606061B2E2E2EC73C3C
      3CFF3B3B3BFB1E1E1E8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000606061B2F2F
      2FCB3A3A3AF41414145400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04130E0E0E420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00022121215C0101010400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104595959F02F2F2F8200000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      07172E2E2E973131319F3131319F1A1A1A570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104595959F35D5D5DFD32323289000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000090909221212123F1212123F1212123F1212123F1212123F1212123F1212
      123F1212123F1212123F1212123F1212123F1212123F1212123F1212123F1010
      1039010101040000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4A4A4AF41C1C1C6000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000002131313383838389B515151DE5252
      52E05D5D5DFD5E5E5EFF5D5D5DFD2F2F2F800101010200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030D2C2C2C780404
      040D000000000000000000000000000000000000000000000000000000000303
      030C414141D84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4C4C
      4CFB191919550000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4B4B4BF81A1A1A58000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030A353535915C5C5CF85E5E5EFF5D5D5DFE5D5D
      5DFE5D5D5DFE5E5E5EFF5D5D5DFE303030840101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030D434343B85D5D5DFE2F2F
      2F81000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4B4B4BF81C1C1C600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030A454545BE5E5E5EFF595959F03333338B0F0F0F2B0101
      0104595959F35C5C5CFB30303084000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060610454545BC5E5E5EFF464646C00606
      0610000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000101
      0104282828874C4C4CFB4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF41C1C
      1C60000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003363636945D5D5DFE525252DD1212123400000000000000000101
      0104585858EF30303084010101040000000000000000000000000404040D0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030D454545BC5D5D5DFE484848C4060606100000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      000001010104282828884D4D4DFE4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4B4B
      4BF81A1A1A580000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000131313375B5B5BF7585858EF1414143A0000000000000000000000000101
      01042C2C2C79010101040000000000000000000000000909091C4C4C4CD01616
      163F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121212333333338D464646BF464646BF3333
      338C1111113201010107414141B15D5D5DFE484848C406060614000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      00000000000000000000282828884C4C4CFB4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4B4B4BF81C1C1C6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636955E5E5EFF3434348E000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F825D5D5DFE3B3B
      3BA1000000000000000000000000000000000000000000000000000000000000
      000000000000010101063939399B5D5D5DFD5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5D5D5DFD3C3C3CA5595959F4464646C00606061000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      0000000000000000000001010104282828874C4C4CFB4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4A4A4AF41C1C1C60000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01064E4E4ED65D5D5DFE13131338000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F2C5D5D5DFE4F4F
      4FD9020202090000000000000000000000000000000000000000000000000000
      000000000005373737985D5D5DFE4D4D4DD11B1B1B4B0A0A0A1F0A0A0A1F1B1B
      1B4D4D4D4DD35D5D5DFE3D3D3DA70303030D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010104282828884D4D4DFE4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4B4B4BF81A1A1A580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040F545454E55C5C5CFA0404040E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101075A5A5AF45656
      56EA070707160000000000000000000000000000000000000000000000000000
      0000181818435C5C5CFA4C4C4CCE070707160000000000000000000000000000
      0000070707164D4D4DD15C5C5CFB1010102F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE4D4D
      4DFE4D4D4DFE4D4D4DFE4D4D4DFE4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000282828884C4C4CFB4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4B4B4BF81C1C1C6000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      040F545454E55C5C5CFA0404040E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101075A5A5AF45656
      56EA070707160000000000000000000000000000000000000000000000000000
      00003A3A3AA05E5E5EFF1A1A1A49000000000000000000000000000000000000
      0000000000001B1B1B4D5D5D5DFE3333338D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1717174E0000
      0000000000000303030C414141D34E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010104282828874C4C
      4CFB4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF31616164A000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01054C4C4CD05D5D5DFE13131338000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F2C5D5D5DFE5151
      51DE0303030A0000000000000000000000000000000000000000000000000000
      0001484848C55B5B5BF90404040D000000000000000000000000000000000000
      0000000000000909091B575757EE434343B80000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE363636B22626
      267F2626267F2A2A2A8A494949F14E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF1E1E1E650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101042828
      28884D4D4DFE4E4E4EFF4E4E4EFF4D4D4DFE383838B80303030F040404120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636945E5E5EFF3434348E000000000000000000000000000000000000
      000000000000000000000000000000000000000000002F2F2F825D5D5DFE3B3B
      3BA1000000000000000000000000000000000000000000000000000000000000
      0001484848C65C5C5CF80404040E000000000000000000000000000000000000
      00000000000007070718565656EC454545BC0101010200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0411464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D
      4DFE1E1E1E650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000282828884C4C4CFB4E4E4EFF363636B40303030C15151546484848EF1C1C
      1C60000000000000000000000000000000000000000000000000000000000000
      0000121212354D4D4DD40B0B0B22000000000000000000000000000000032B2B
      2B740303030B00000000000000000000000011111132565656EC5C5C5CF91818
      1840000000000000000000000000000000000000000000000000000000000000
      00003939399C5E5E5EFF18181845000000000000000000000000000000000000
      0000000000001A1A1A4A5D5D5DFD353535930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00011717174F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C
      1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1C1C1C5F1D1D
      1D5E0707071A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101010428282886363636B50303030C1515154A484848EE4E4E4EFF4A4A
      4AF41717174E0000000000000000000000000000000000000000000000000000
      0000000000010404040D000000000000000000000000000000032C2C2C7A5A5A
      5AF50303030B00000000000000001010102E4F4F4FD75E5E5EFF3A3A3A9E0101
      0104000000000000000000000000000000000000000000000000000000000000
      0000181818435C5C5CFA494949C7060606140000000000000000000000000000
      000005050511484848C55D5D5DFD1515153D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      257B444444DF444444DF444444DF444444DF444444DF444444DF444444DF4444
      44DF444444DF444444DF444444DF444444DF444444DF444444DF444444DF4444
      44DF3E3E3ECE0303030C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000030202020815151546494949ED4E4E4EFF4E4E4EFF4C4C
      4CFB1A1A1A580000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C2C2C795C5C5CFA5C5C
      5CF90303030B0E0E0E2731313187575757ED5D5D5DFE494949C70404040D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000053C3C3CA55D5D5DFE494949C71616163F00000000000000001616
      163F494949C75D5D5DFE3C3C3CA5000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      32A84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4C4C4CFC0606061800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000282828884C4C4CFB4E4E4EFF4D4D4DFA2323
      2375000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000032C2C2C795D5D5DFE5E5E5EFF5E5E
      5EFF5E5E5EFF5E5E5EFF5E5E5EFF5C5C5CFA373737980303030D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101053D3D3DA85D5D5DFC5E5E5EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5D5D5DFE3A3A3AA002020209000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      32A84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4C4C4CFC0606061800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010429292985494949F1232323750000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000012A2A2A755C5C5CFB5E5E5EFF5D5D
      5DFE525252E0515151DE3B3B3B9F1515153D0101010200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101061B1B1B4B3A3A3AA0525252DE515151DE3B3B
      3B9F1A1A1A4B0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      31A24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4B4B4BF90505051500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020A0A0A25000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002E2E2E7E5C5C5CFB5C5C
      5CF90303030B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      091E1212123F1212123F1212123F1212123F1212123F1212123F1212123F1212
      123F1212123F1212123F1212123F1212123F1212123F1212123F1212123F1212
      123F101010380000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002C2C2C785A5A
      5AF50303030B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030909
      091C000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606162626267E3131319F3131319F3131319F3131319F3131319F3131
      319F3131319F3131319F3131319F3131319F3131319F3131319F2F2F2F9B1111
      113D000000000000000000000000000000000000000000000000000000000000
      0000060606162626267E3131319F3131319F3131319F3131319F3131319F3131
      319F3131319F3131319F3131319F3131319F3131319F3131319F2F2F2F9B1111
      113D000000000000000000000000000000000000000000000000000000000000
      0000060606162626267E3131319F3131319F3131319F3131319F3131319F3131
      319F3131319F3131319F3131319F3131319F3131319F3131319F2F2F2F9B1111
      113D000000000000000000000000000000000000000000000000000000000000
      0000060606162626267E3131319F3131319F3131319F3131319F3131319F3131
      319F3131319F3131319F3131319F3131319F3131319F3131319F2F2F2F9B1111
      113D000000000000000000000000000000000000000000000000000000000202
      02093C3C3CC54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A
      4AF4151515460000000000000000000000000000000000000000000000000202
      02093C3C3CC54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A
      4AF4151515460000000000000000000000000000000000000000000000000202
      02093C3C3CC54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A
      4AF4151515460000000000000000000000000000000000000000000000000202
      02093C3C3CC54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A
      4AF4151515460000000000000000000000000000000000000000000000000909
      09234A4A4AF04E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF262626810000000000000000000000000000000000000000000000000909
      09234A4A4AF04E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF262626810000000000000000000000000000000000000000000000000909
      09234A4A4AF04E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF262626810000000000000000000000000000000000000000000000000909
      09234A4A4AF04E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF262626810000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD2A2A
      2A8C1D1D1D61454545E44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4343
      43DE434343DF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF313131A20808081F0808081F0808081F0808
      081F0808081F0C0C0C2B444444DF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1414
      144700000003404040D54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF424242DA0C0C
      0C293D3D3DC84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF424242DA2525257C4B4B
      4BF64E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF2D2D2D950000000000000000000000000000
      0000000000000303030E424242DA4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3F3F
      3FD13A3A3AC04A4A4AF44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF434343DE0C0C0C290000
      00003C3C3CC84D4D4DFE4D4D4DFE4D4D4DFE4D4D4DFE4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF474747E90C0C0C2B000000011B1B
      1B5D4D4D4DFC4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF434343DE09090922000000000000
      00000000000000000000000000000A0A0A26494949F24E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF444444E10D0D0D2F000000000303030F0000
      00001B1B1B5D4B4B4BF64E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF494949F1444444DE444444DE444444DE4444
      44DE444444DE444444DE444444DE444444DE454545E44D4D4DFE4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1B1B
      1B5E09090922424242DA4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF454545E40C0C0C2900000000000000000000
      00000000000000000000000000000A0A0A26494949F24E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF474747EA0F0F0F34000000001D1D1D623F3F3FD00B0B
      0B2A000000011C1C1C604B4B4BF64E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF2C2C2C950000000000000000000000000000
      0000000000000000000000000000000000000D0D0D2D4C4C4CFB4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1414
      144700000003404040D54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF494949ED1313134300000000000000000000
      00000000000000000000000000000A0A0A26494949F24E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF494949F11717174F1B1B1B5B4C4C4CF84E4E4EFF4343
      43DE09090922000000011B1B1B5D4D4D4DFC4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF363636AF1212123F1212123F1212123F1212
      123F1212123F1212123F1212123F1212123F1D1D1D614C4C4CFC4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1414
      144700000003404040D54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF513131343000000000000
      00000F0F0F321212123F1212123F1C1C1C5C4A4A4AF54E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF434343DE0B0B0B2A000000001B1B1B5D4B4B4BF64E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1414
      144700000003404040D54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF494949ED151515470000
      00003D3D3DC84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF434343DC0F0F0F30000000011C1C1C604B4B4BF64E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF414141D73030309E3030309E3030309E3030
      309E3030309E3030309E3030309E3030309E363636AF4E4E4EFD4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD1414
      144700000003404040D54E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF494949ED1313
      13433D3D3DC84E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF464646E60C0C0C2A00000001292929854D4D4DFE4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF2C2C2C950000000000000000000000000000
      0000000000000000000000000000000000000D0D0D2D4C4C4CFB4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3838
      38BA303030A0494949EF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A
      4AF5474747EA4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF464646E61F1F1F69494949ED4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF3D3D3DCA2626267F2626267F2626267F2626
      267F2626267F2626267F2626267F2626267F2D2D2D964E4E4EFD4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000A0A
      0A26494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF292929850000000000000000000000000000000000000000000000000707
      071C494949ED4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3232
      32A721212170494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF232323770000000000000000000000000000000000000000000000000707
      071C494949ED4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3232
      32A721212170494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF232323770000000000000000000000000000000000000000000000000707
      071C494949ED4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3232
      32A721212170494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF232323770000000000000000000000000000000000000000000000000707
      071C494949ED4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE3232
      32A721212170494949F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF232323770000000000000000000000000000000000000000000000000000
      0002272727834A4A4AF44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE2222
      22740909091E464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD3E3E
      3EC90808081D0000000000000000000000000000000000000000000000000000
      0002272727834A4A4AF44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE2222
      22740909091E464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD3E3E
      3EC90808081D0000000000000000000000000000000000000000000000000000
      0002272727834A4A4AF44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE2222
      22740909091E464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD3E3E
      3EC90808081D0000000000000000000000000000000000000000000000000000
      0002272727834A4A4AF44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE2222
      22740909091E464646E74E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFD3E3E
      3EC90808081D0000000000000000000000000000000000000000000000000000
      0000000000000C0C0C291212123F1212123F1212123F1C1C1C604B4B4BF64B4B
      4BF8434343DD4D4D4DFE333333A91212123F1212123F1212123F1212123C0101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C291212123F1212123F1212123F1C1C1C604B4B4BF64B4B
      4BF8434343DD4D4D4DFE333333A91212123F1212123F1212123F1212123C0101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C291212123F1212123F1212123F1C1C1C604B4B4BF64B4B
      4BF8434343DD4D4D4DFE333333A91212123F1212123F1212123F1212123C0101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C291212123F1212123F1212123F1C1C1C604B4B4BF64B4B
      4BF8434343DD4D4D4DFE333333A91212123F1212123F1212123F1212123C0101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919543E3E
      3ECD474747E82E2E2E980303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919543E3E
      3ECD474747E82E2E2E980303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919543E3E
      3ECD474747E82E2E2E980303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919543E3E
      3ECD474747E82E2E2E980303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010102151515161919191A1919191A1919191A1919
      191A1919191A1919191A1919191A1919191A1818181907070708000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005E5E5EEB575757F4575757F4575757F45757
      57F4575757F4575757F4575757F4575757F4595959F200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4DFE4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020203000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020203000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202036161617144444449000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000222222237B7B7BB41E1E1E1F0000000000000000000000000000
      000000000000000000000000000000000000171717187B7B7BB42929292A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000062626274535353FA5C5C5CEF4545454A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF0000000000000000000000000000
      0000000000000000000000000000000000004E4E4EFF4E4E4EFF4E4E4EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202037B7B7BB15C5C5CFF757575D62121212200000000000000000000
      00000000000000000000000000001B1B1B1C777777D05C5C5CFF7B7B7BBB0505
      0506000000000000000000000000000000000000000000000000000000000000
      000000000000000000006666667A505050FB4C4C4CFF4C4C4CFF595959F24848
      484E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF2D2D2D90000000002D2D2D904E4E4EFF00000000000000000000
      00000000000000000000000000054E4E4EFF2D2D2D90000000002D2D2D904E4E
      4EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000017171718787878CF5C5C5CFF757575D61E1E1E1F000000000000
      0000000000000000000017171718777777D05C5C5CFF767676D51D1D1D1E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020362626274505050FB505050FD7474749F727272C44D4D4DFE5959
      59F24545454A0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030C4E4E4EFF4E4E
      4EFF4E4E4EFF0000000000000000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000000303030F4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B1C787878CF5C5C5CFF777777D21E1E1E1F0000
      00000000000017171718797979CC5C5C5CFF767676D521212122000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000062626274535353FA4D4D4DFE7373739C0707070815151516727272C44D4D
      4DFE5C5C5CEF4545454A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF2D2D2D90000000002D2D2D904E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF2D2D2D90000000002D2D2D904E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017171718797979CC5C5C5CFF757575D62121
      21221B1B1B1C777777D05C5C5CFF777777D21D1D1D1E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      667A505050FB4C4C4CFF72727297050505060000000000000000111111127373
      73C04D4D4DFE595959F24848484E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017171718787878CF5C5C5CFF7575
      75D6777777D05C5C5CFF767676D51D1D1D1E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B0C6D6D
      6DD6505050FD7373739C05050506000000000000000000000000000000001111
      1112727272C44D4D4DFE595959F24545454A0000000000000000000000000000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B1C787878CF5C5C
      5CFF5C5C5CFF757575D621212122000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      2627696969810707070800000000000000000000000000000000000000000000
      000015151516737373C34D4D4DFE5C5C5CEF4545454A00000000000000000000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFE4D4D4DFE4D4D
      4DFE4D4D4DFE4E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B1C777777D05C5C
      5CFF5C5C5CFF757575D621212122000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111112747474BF4D4D4DFE585858F34949494F000000000000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000003000000000000
      0000000000004E4E4EFF00000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017171718777777D05C5C5CFF7676
      76D5787878CF5C5C5CFF757575D61E1E1E1F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011111112737373C34D4D4DFE585858F34545454A0000
      000000000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000003000000000000
      00004E4E4EFF0000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000017171718797979CC5C5C5CFF767676D52121
      21221B1B1B1C787878CF5C5C5CFF777777D21E1E1E1F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015151516737373C34D4D4DFE5B5B5BF04545
      454A00000000000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B1C777777D05C5C5CFF777777D21D1D1D1E0000
      00000000000017171718797979CC5C5C5CFF757575D621212122000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000011111112747474BF4D4D4DFE5858
      58F34949494F000000000000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000017171718777777D05C5C5CFF767676D51D1D1D1E000000000000
      0000000000000000000017171718787878CF5C5C5CFF757575D61E1E1E1F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111112737373C34D4D
      4DFE585858F34545454A0000000000000000000000000303030D4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202037B7B7BB15D5D5DFE767676D52121212200000000000000000000
      00000000000000000000000000001B1B1B1C787878CF5C5C5CFF7B7B7BBB0505
      0506000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151515167373
      73C34D4D4DFE747474BA0606060700000000000000000303030B4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000222222237B7B7BB41D1D1D1E0000000000000000000000000000
      000000000000000000000000000000000000171717187B7B7BB32929292A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      11127171719511111112000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020203000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020203000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004D4D4DFE4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003737
      37B44E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF373737B40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000373737B44D4D
      4DFE4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF373737B400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4D4D4DFE4D4D4DFE4D4D4DFE4D4D4DFE4D4D4DFE4D4D
      4DFE4D4D4DFE4D4D4DFE4E4E4EFF4D4D4DFE4D4D4DFE4E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4B4B4BF60000
      0000000000004E4E4EFF4E4E4EFF00000000000000004E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF00000000000000004E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF00000000000000004E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF00000000000000004E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF00000000000000004E4E4EFF4D4D4DFE4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      00004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF000000000000000000000000000000000000000000000000000000000000
      00004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      00004C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF00000000000000004D4D4DFE4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4A4A4AF30000
      0000000000004E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E4E
      4EFF4E4E4EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000373737B44D4D
      4DFE4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4D4D4DFE373737B400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      267F4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E
      4EFF373737B40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFF7FF00
      0000000000000000FFE3FF000000000000000000FFC3FF000000000000000000
      FF83FF000000000000000000FF07FF000000000000000000FE0FFF0000000000
      00000000FC1FFF000000000000000000F83FFF000000000000000000F07FFF00
      0000000000000000E00001000000000000000000C00001000000000000000000
      C00001000000000000000000E00001000000000000000000F07FFF0000000000
      00000000F81FFF000000000000000000FC0FFF000000000000000000FE0FFF00
      0000000000000000FF03FF000000000000000000FF83FF000000000000000000
      FFC3FF000000000000000000FFE7FF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E3FFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFE0FFFFFFE0FFFFFFFFF00007
      E07FFFFE007FFFFF8FE00007E03FFFFC007FFFFF0FE00007E01FFFF801FFFFFE
      0FE00007E00FFFF061CFFFFC1FE00007F007FFF0E38FFE003FE00007FC03FFF1
      FF8FF8007FE00007FC01FFE1FF87F000FFE00007FE00FFE1FF87F0F0FFE00007
      FF807FE1FF87F1F8FFE01807FF803FE1FF87E1F87FE00007FFC01FF1FF8FE1F8
      7FE00007FFF00FF1C70FF1F8FFE00007FFF007F3860FF0F0FFE00003FFF807FF
      801FF060FFE00003FFFE0FFE003FF801FFE00003FFFE0FFE007FFC03FFE00003
      FFFF3FFF87FFFFFFFFE00007FFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFC7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000F
      E00007E00007E00007E00007E00007E00007E00007E00007E00007E00007E000
      07E00007E00007E00007E00007E00007E0F807E00007E01007E00007E00007E0
      0007E03E07E05007E00007E00007E07E07E08007E0FF07E00007E07E07E00007
      E00007E00007E03007E00207E00007E00007E01007E00007E00007E00007E000
      07E00007E0FF07E00007E00007E00007E00007E00007E00007E00007E00007E0
      0007E00007E00007E00007E00007E00007E00007E00007E00007E00007E00007
      F8000FF8000FF8000FF8000FFFC1FFFFC1FFFFC1FFFFC1FFFFE7FFFFE7FFFFE7
      FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFF
      FFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFF
      FC002FFDFFBFFE3FFFFFFFFFFC003FF8FF1FFE1FFFF8FF1FFC003FF07E0FFC0F
      FFF27C4FFC003FF83C1FF007FF8700C3FC003FFC183FF003FF820043FC003FFE
      007FE0C1FF800003FC003FFF00FFC1E0FF800003FC003FFF81FFE3F07F800003
      FC003FFF81FFFFF83F80003BFC003FFF00FFFFFC1F800037FC003FFE007FFFFE
      0F80000FFC003FFC183FFFFF0780007FFC003FF83C1FFFFF8380007FFFFFFFF0
      7E0FFFFFC180003FF8001FF8FF1FFFFFE3C0003FF8001FFDFFBFFFFFFFFFFFFF
      FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFC00003FFFFFF
      FFE7FFFFFFFFC00003FFFFFFFFE7FFFFFFFFC00003FFFFFFFFE7FFFFFFFFC199
      83FFFFFFFFE7FFFFFFFFC19983FFFFFFFFE7FFFFE7FFC19983FFFFFFFFE7FFFF
      C3FFC19983FFFFFFFFE7FFFF81FFC19983FFFFFFF0000FFF00FFC19803F0000F
      F0000FFE007FC19803F0000FFFE7FFFC003FC19803FFFFFFFFE7FFFFFFFFC018
      03FFFFFFFFE7FFFFFFFFC01803FFFFFFFFE7FFFFFFFFC01803FFFFFFFFE7FFFF
      FFFFC00003FFFFFFFFE7FFFFFFFFC00003FFFFFFFFE7FFFFFFFFC00003FFFFFF
      FFFFFFFFFFFFC00003FFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenuAdd: TPopupMenu
    Left = 1192
    Top = 9
    object MenuItemAddOrder: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1079#1072#1082#1072#1079
      OnClick = ButtonFlatOrderAddClick
    end
    object MenuItemAddClient: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1082#1083#1080#1077#1085#1090
      OnClick = ButtonFlatClientsAddClick
    end
    object MenuItemN1: TMenuItem
      Caption = '-'
    end
    object MenuItemAddStorageItem: TMenuItem
      Caption = #1055#1086#1087#1086#1083#1077#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
      OnClick = ButtonFlatStorageAddClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuItemAddProduct: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1090#1086#1074#1072#1088#1072
      OnClick = ButtonFlatProdKindAddClick
    end
    object MenuItemAddDriver: TMenuItem
      Caption = #1053#1086#1074#1099#1081' '#1074#1086#1076#1080#1090#1077#1083#1100
      OnClick = ButtonFlatDriversAddClick
    end
  end
end
