object DBForm: TDBForm
  Left = 0
  Top = 110
  Width = 1024
  Height = 442
  Caption = 'DBForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 1009
    Height = 129
    TabOrder = 0
    ColWidths = (
      64
      64
      63
      64
      64)
  end
  object DB: TStringGrid
    Left = 0
    Top = 168
    Width = 1009
    Height = 233
    ColCount = 17
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
    OnDblClick = DBDblClick
    OnMouseMove = DBMouseMove
    ColWidths = (
      159
      54
      47
      84
      31
      28
      20
      20
      19
      64
      37
      35
      28
      128
      98
      64
      56)
    RowHeights = (
      24
      24
      24
      24
      24)
  end
  object DBSave: TButton
    Left = 920
    Top = 136
    Width = 75
    Height = 25
    Caption = 'DBSave'
    TabOrder = 2
    OnClick = DBSaveClick
  end
  object LOAD: TButton
    Left = 32
    Top = 136
    Width = 75
    Height = 25
    Caption = 'LOAD'
    TabOrder = 3
    OnClick = LOADClick
  end
  object Button1: TButton
    Left = 440
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
end
