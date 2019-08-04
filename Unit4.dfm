object BasketForm: TBasketForm
  Left = 392
  Top = 146
  Width = 629
  Height = 335
  HorzScrollBar.Position = 72
  Caption = 'BasketForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PavlosBasket: TComboBox
    Left = -64
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 0
    Text = 'PavlosBasket'
    OnDblClick = PavlosBasketDblClick
    OnSelect = PavlosBasketSelect
  end
  object MparakosBasket: TComboBox
    Left = 40
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 1
    Text = 'MparakosBasket'
    OnDblClick = MparakosBasketDblClick
    OnSelect = MparakosBasketSelect
  end
  object MpoyrmpakisBasket: TComboBox
    Left = 152
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 2
    Text = 'MpoyrmpakisBasket'
    OnDblClick = MpoyrmpakisBasketDblClick
    OnSelect = MpoyrmpakisBasketSelect
  end
  object ModistraBasket: TComboBox
    Left = 264
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 3
    Text = 'ModistraBasket'
    OnDblClick = ModistraBasketDblClick
    OnSelect = ModistraBasketSelect
  end
  object AkirosisBasket: TComboBox
    Left = 376
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 4
    Text = 'AkirosisBasket'
    OnDblClick = AkirosisBasketDblClick
    OnSelect = AkirosisBasketSelect
  end
  object AnamoniBasket: TComboBox
    Left = 480
    Top = 132
    Width = 100
    Height = 150
    Style = csSimple
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    Sorted = True
    TabOrder = 5
    Text = 'AnamoniBasket'
    OnDblClick = AnamoniBasketDblClick
    OnSelect = AnamoniBasketSelect
  end
  object PavlosToMparakos: TButton
    Left = -72
    Top = 8
    Width = 105
    Height = 25
    Caption = 'PavlosToMparakos'
    TabOrder = 6
    OnClick = PavlosToMparakosClick
  end
  object MparakosToPavlos: TButton
    Left = 48
    Top = 8
    Width = 97
    Height = 25
    Caption = 'MparakosToPavlos'
    TabOrder = 7
    OnClick = MparakosToPavlosClick
  end
  object BufferSG: TStringGrid
    Left = -56
    Top = 288
    Width = 665
    Height = 105
    FixedCols = 0
    TabOrder = 8
  end
  object PavlosToModistra: TButton
    Left = -88
    Top = 72
    Width = 121
    Height = 25
    Caption = 'PavlosToModistra'
    TabOrder = 9
    OnClick = PavlosToModistraClick
  end
  object MparakosToModistra: TButton
    Left = 40
    Top = 72
    Width = 105
    Height = 25
    Caption = 'MparakosToModistra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = MparakosToModistraClick
  end
  object MpoyrmpakisToModistra: TButton
    Left = 152
    Top = 72
    Width = 113
    Height = 25
    Caption = 'MpoyrmpakisToModistra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = MpoyrmpakisToModistraClick
  end
  object PavlosToMpoyrmpakis: TButton
    Left = -72
    Top = 40
    Width = 105
    Height = 25
    Caption = 'PavlosToMpoyrmpakis'
    TabOrder = 12
    OnClick = PavlosToMpoyrmpakisClick
  end
  object ModistraToPalvos: TButton
    Left = 272
    Top = 0
    Width = 100
    Height = 25
    Caption = 'ModistraToPalvos'
    TabOrder = 13
    OnClick = ModistraToPalvosClick
  end
  object ModistraToMparakos: TButton
    Left = 272
    Top = 24
    Width = 100
    Height = 25
    Caption = 'ModistraToMparakos'
    TabOrder = 14
    OnClick = ModistraToMparakosClick
  end
  object ModistraToMpoyrmpakis: TButton
    Left = 264
    Top = 48
    Width = 113
    Height = 25
    Caption = 'ModistraToMpoyrmpakis'
    TabOrder = 15
    OnClick = ModistraToMpoyrmpakisClick
  end
  object PavlosToAnamoni: TButton
    Left = -72
    Top = 104
    Width = 105
    Height = 25
    Caption = 'PavlosToAnamoni'
    TabOrder = 16
    OnClick = PavlosToAnamoniClick
  end
  object LoadBaskets: TButton
    Left = 520
    Top = 0
    Width = 75
    Height = 25
    Caption = 'LoadBaskets'
    TabOrder = 17
    OnClick = LoadBasketsClick
  end
  object SaveBaskets: TButton
    Left = 520
    Top = 24
    Width = 75
    Height = 25
    Caption = 'SaveBaskets'
    TabOrder = 18
    OnClick = SaveBasketsClick
  end
  object MpoyrmpakisToAnamoni: TButton
    Left = 152
    Top = 104
    Width = 113
    Height = 25
    Caption = 'MpoyrmpakisToAnamoni'
    TabOrder = 19
    OnClick = MpoyrmpakisToAnamoniClick
  end
  object AnamoniToPavlos: TButton
    Left = 480
    Top = 56
    Width = 99
    Height = 25
    Caption = 'AnamoniToPavlos'
    TabOrder = 20
    OnClick = AnamoniToPavlosClick
  end
  object AkirosisToPavlos: TButton
    Left = 368
    Top = 80
    Width = 115
    Height = 25
    Caption = 'AkirosisToPavlos'
    TabOrder = 21
    OnClick = AkirosisToPavlosClick
  end
end
