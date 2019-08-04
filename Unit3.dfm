object TimokatalogosForm: TTimokatalogosForm
  Left = 316
  Top = -2
  Width = 709
  Height = 555
  Caption = 'TimokatalogosForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TimokatalogosSG: TStringGrid
    Left = 0
    Top = 56
    Width = 689
    Height = 417
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    ColWidths = (
      72
      396
      64
      64
      64)
  end
  object LoadTimokatalogosXalkidona: TButton
    Left = 8
    Top = 8
    Width = 161
    Height = 25
    Caption = 'LoadTimokatalogosXalkidona'
    TabOrder = 1
    OnClick = LoadTimokatalogosXalkidonaClick
  end
  object LoadTimokatalogosKeratsini: TButton
    Left = 256
    Top = 8
    Width = 169
    Height = 25
    Caption = 'LoadTimokatalogosKeratsini'
    TabOrder = 2
    OnClick = LoadTimokatalogosKeratsiniClick
  end
  object LoadTimokatalogosKallithea: TButton
    Left = 496
    Top = 8
    Width = 169
    Height = 25
    Caption = 'LoadTimokatalogosKallithea'
    TabOrder = 3
    OnClick = LoadTimokatalogosKallitheaClick
  end
  object SaveTimokatalogos: TButton
    Left = 512
    Top = 488
    Width = 121
    Height = 25
    Caption = 'SaveTimokatalogos'
    TabOrder = 4
    OnClick = SaveTimokatalogosClick
  end
  object InsertNewLineAfterTheCode: TButton
    Left = 8
    Top = 488
    Width = 185
    Height = 25
    Caption = 'InsertNewLineAfterTheCode'
    TabOrder = 5
    OnClick = InsertNewLineAfterTheCodeClick
  end
  object Code: TEdit
    Left = 192
    Top = 488
    Width = 89
    Height = 21
    TabOrder = 6
    Text = 'Code'
  end
  object Button1: TButton
    Left = 336
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
end
