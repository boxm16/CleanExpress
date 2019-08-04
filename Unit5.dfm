object DisplayForm: TDisplayForm
  Left = 0
  Top = 0
  Width = 362
  Height = 583
  Caption = 'DisplayForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DisplaySG: TStringGrid
    Left = 8
    Top = 0
    Width = 337
    Height = 545
    ColCount = 2
    FixedCols = 0
    RowCount = 15
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnDblClick = DisplaySGDblClick
    ColWidths = (
      64
      601)
  end
end
