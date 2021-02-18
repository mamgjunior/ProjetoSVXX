object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sistema de Valida'#231#227'o de Arquivos XML por Arquivos XSD'
  ClientHeight = 609
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 609
    Align = alClient
    Color = 3814189
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 400
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlHeader: TPanel
      Left = 1
      Top = 1
      Width = 891
      Height = 260
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        891
        260)
      object lblCredor: TLabel
        Left = 20
        Top = 32
        Width = 459
        Height = 47
        Caption = 'XML Schema Definition - XSD'
        Color = 8815746
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -35
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 10
        Width = 395
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8025713
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 20
        Top = 129
        Width = 547
        Height = 47
        Caption = 'Extensible Markup Language - XML'
        Color = 8815746
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -35
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object pnlXSD: TPanel
        Left = 738
        Top = 125
        Width = 142
        Height = 35
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        OnClick = pnlXSDClick
        object Shape1: TShape
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Brush.Color = 3748910
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 0
          ExplicitTop = 18
          ExplicitWidth = 129
          ExplicitHeight = 33
        end
        object lblXSD: TLabel
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = 'Diret'#243'rio XSD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8025713
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = pnlXSDClick
          ExplicitWidth = 95
          ExplicitHeight = 21
        end
      end
      object pnlPesquisa: TPanel
        Left = 20
        Top = 81
        Width = 860
        Height = 47
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object shpPesquisa: TShape
          Left = 5
          Top = 5
          Width = 850
          Height = 37
          Align = alClient
          Brush.Color = 3748910
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitWidth = 652
        end
        object edtXSD: TEdit
          Left = 16
          Top = 18
          Width = 830
          Height = 20
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 3748910
          DoubleBuffered = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8025713
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          StyleElements = [seClient, seBorder]
        end
      end
      object pnlValidar: TPanel
        Left = 730
        Top = 5
        Width = 151
        Height = 41
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = 8621685
        ParentBackground = False
        TabOrder = 2
        OnClick = pnlValidarClick
        object Label6: TLabel
          Left = 16
          Top = 9
          Width = 107
          Height = 21
          Caption = 'Validar Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = pnlValidarClick
        end
        object Label7: TLabel
          Left = 123
          Top = 12
          Width = 17
          Height = 17
          Caption = ' + '
          OnClick = pnlValidarClick
        end
      end
      object pnlXML: TPanel
        Left = 738
        Top = 222
        Width = 142
        Height = 35
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 3
        OnClick = pnlXMLClick
        object Shape2: TShape
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Brush.Color = 3748910
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 0
          ExplicitTop = 18
          ExplicitWidth = 129
          ExplicitHeight = 33
        end
        object lblXML: TLabel
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = 'Diret'#243'rio XML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8025713
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = pnlXMLClick
          ExplicitWidth = 97
          ExplicitHeight = 21
        end
      end
      object Panel3: TPanel
        Left = 20
        Top = 178
        Width = 860
        Height = 47
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 4
        object Shape5: TShape
          Left = 5
          Top = 5
          Width = 850
          Height = 37
          Align = alClient
          Brush.Color = 3748910
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 0
          ExplicitTop = 18
          ExplicitWidth = 129
          ExplicitHeight = 33
        end
        object edtXML: TEdit
          Left = 16
          Top = 13
          Width = 830
          Height = 20
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 3748910
          DoubleBuffered = False
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8025713
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          StyleElements = [seClient, seBorder]
        end
      end
      object pnlLimpar: TPanel
        Left = 739
        Top = 47
        Width = 142
        Height = 35
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 5
        OnClick = pnlLimparClick
        object Shape3: TShape
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Brush.Color = 3748910
          Pen.Color = 11710638
          Shape = stRoundRect
          ExplicitLeft = 0
          ExplicitTop = 18
          ExplicitWidth = 129
          ExplicitHeight = 33
        end
        object lblExcluir: TLabel
          Left = 5
          Top = 5
          Width = 132
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = 'Limpar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = pnlLimparClick
          ExplicitWidth = 49
          ExplicitHeight = 21
        end
        object lblMenos: TLabel
          Left = 100
          Top = 8
          Width = 13
          Height = 17
          Caption = ' - '
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = pnlLimparClick
        end
      end
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 591
      Width = 891
      Height = 17
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 620
      ExplicitWidth = 897
    end
    object mmoInformacoes: TMemo
      Left = 1
      Top = 261
      Width = 891
      Height = 330
      Align = alClient
      Color = 2827810
      Font.Charset = ANSI_CHARSET
      Font.Color = 8815746
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ExplicitLeft = 8
      ExplicitTop = 295
      ExplicitWidth = 878
      ExplicitHeight = 319
    end
  end
  object dlgDiretoriosXML: TOpenDialog
    Left = 833
    Top = 305
  end
  object dlgDiretoriosXSD: TOpenDialog
    Left = 832
    Top = 360
  end
end
