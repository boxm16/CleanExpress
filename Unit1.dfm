object MainForm: TMainForm
  Left = 146
  Top = 0
  Width = 878
  Height = 567
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelLab1: TLabel
    Left = 840
    Top = 16
    Width = 50
    Height = 13
    Caption = 'LabelLab1'
    Visible = False
  end
  object LabelLab2: TLabel
    Left = 816
    Top = 32
    Width = 50
    Height = 13
    Caption = 'LabelLab2'
    Visible = False
  end
  object XALKIDONA: TButton
    Left = 0
    Top = 0
    Width = 90
    Height = 25
    Caption = 'XALKIDONA'
    TabOrder = 0
    TabStop = False
    OnClick = XALKIDONAClick
  end
  object KERATSINI: TButton
    Left = 96
    Top = 0
    Width = 90
    Height = 25
    Caption = 'KERATSINI'
    TabOrder = 18
    TabStop = False
    OnClick = KERATSINIClick
  end
  object KALLITHEA: TButton
    Left = 192
    Top = 0
    Width = 90
    Height = 25
    Caption = 'KALLITHEA'
    TabOrder = 19
    TabStop = False
    OnClick = KALLITHEAClick
  end
  object ExcelToDB: TButton
    Left = 0
    Top = 32
    Width = 65
    Height = 25
    Caption = 'ExcelToDB'
    TabOrder = 20
    TabStop = False
    OnClick = ExcelToDBClick
  end
  object ShowDB: TButton
    Left = 584
    Top = 0
    Width = 113
    Height = 25
    Caption = 'ShowDB'
    TabOrder = 21
    TabStop = False
    OnClick = ShowDBClick
  end
  object EditLab1: TEdit
    Left = 696
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 5
    Text = 'EditLab1'
    Visible = False
  end
  object EditLab2: TEdit
    Left = 720
    Top = 24
    Width = 129
    Height = 24
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Text = 'EditLab2'
  end
  object DBFirstLoad: TButton
    Left = 696
    Top = 0
    Width = 59
    Height = 25
    Caption = 'DBFirstLoad'
    TabOrder = 6
    Visible = False
    OnClick = DBFirstLoadClick
  end
  object Find_IN_DB: TButton
    Left = 736
    Top = 0
    Width = 91
    Height = 25
    Caption = 'Find_IN_DB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    TabStop = False
    OnClick = Find_IN_DBClick
  end
  object PageControl: TPageControl
    Left = 0
    Top = 56
    Width = 865
    Height = 473
    ActivePage = MPARAKOS
    TabIndex = 1
    TabOrder = 8
    TabStop = False
    object PAVLOS: TTabSheet
      Caption = 'PAVLOS'
      object Label1: TLabel
        Left = 130
        Top = 0
        Width = 36
        Height = 24
        Caption = 'DA-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 256
        Top = 0
        Width = 43
        Height = 24
        Caption = 'TIM-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object FillPavlosBasket: TButton
        Left = 0
        Top = 0
        Width = 89
        Height = 25
        Caption = 'FillPavlosBasket'
        TabOrder = 8
        OnClick = FillPavlosBasketClick
      end
      object Fill_PAVLOS_DA_TIM_INVS: TButton
        Left = 0
        Top = 240
        Width = 153
        Height = 25
        Caption = 'Fill_PAVLOS_DA_TIM_INVS'
        TabOrder = 0
        TabStop = False
        OnClick = Fill_PAVLOS_DA_TIM_INVSClick
      end
      object PAVLOS_DA_TIM_INVS: TStringGrid
        Left = 432
        Top = 240
        Width = 145
        Height = 25
        TabStop = False
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 1
        ColWidths = (
          64
          69
          64
          64
          64)
      end
      object PAVLOS_DA_TIM_AA: TComboBox
        Left = 312
        Top = 240
        Width = 121
        Height = 21
        ItemHeight = 13
        Sorted = True
        TabOrder = 2
        TabStop = False
        Text = 'PAVLOS_DA_TIM_AA'
      end
      object PAVLOS_DA_TIM: TStringGrid
        Left = 0
        Top = 32
        Width = 593
        Height = 209
        TabStop = False
        FixedCols = 0
        RowCount = 8
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 3
        ColWidths = (
          64
          260
          68
          64
          50)
      end
      object Empty_PAVLOS_DA_TIM: TButton
        Left = 152
        Top = 240
        Width = 153
        Height = 25
        Caption = 'Empty_PAVLOS_DA_TIM'
        TabOrder = 5
        TabStop = False
        OnClick = Empty_PAVLOS_DA_TIMClick
      end
      object TaksinomisiMeOnomasia: TButton
        Left = 720
        Top = 0
        Width = 137
        Height = 25
        Caption = 'TaksinomisiMeOnomasia'
        TabOrder = 9
        TabStop = False
        OnClick = TaksinomisiMeOnomasiaClick
      end
      object YpologismosSunolouEidous: TButton
        Left = 704
        Top = 32
        Width = 153
        Height = 25
        Caption = 'YpologismosSunolouEidous'
        TabOrder = 10
        TabStop = False
        OnClick = YpologismosSunolouEidousClick
      end
      object YpologismosSunolou: TButton
        Left = 736
        Top = 64
        Width = 121
        Height = 25
        Caption = 'YpologismosSunolou'
        TabOrder = 11
        TabStop = False
        OnClick = YpologismosSunolouClick
      end
      object YpologismosEkptosis: TButton
        Left = 736
        Top = 96
        Width = 121
        Height = 25
        Caption = 'YpologismosEkptosis'
        TabOrder = 12
        TabStop = False
        OnClick = YpologismosEkptosisClick
      end
      object YpologismosSunolouMeEkptosi: TButton
        Left = 672
        Top = 128
        Width = 185
        Height = 25
        Caption = 'YpologismosSunolouMeEkptosi'
        TabOrder = 13
        TabStop = False
        OnClick = YpologismosSunolouMeEkptosiClick
      end
      object YpologismosFPA: TButton
        Left = 736
        Top = 160
        Width = 121
        Height = 25
        Caption = 'YpologismosFPA'
        TabOrder = 14
        TabStop = False
        OnClick = YpologismosFPAClick
      end
      object YpologismosTelikouSunolou: TButton
        Left = 696
        Top = 192
        Width = 153
        Height = 25
        Caption = 'YpologismosTelikouSunolou'
        TabOrder = 15
        TabStop = False
        OnClick = YpologismosTelikouSunolouClick
      end
      object YPOLOGISMOS: TButton
        Left = 536
        Top = 0
        Width = 129
        Height = 25
        Caption = 'YPOLOGISMOS'
        TabOrder = 16
        OnClick = YPOLOGISMOSClick
      end
      object PAVLOS_NO: TEdit
        Left = 96
        Top = 0
        Width = 33
        Height = 21
        TabStop = False
        TabOrder = 17
        Text = '1'
      end
      object PAVLOS_DA: TEdit
        Left = 168
        Top = 0
        Width = 81
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnKeyPress = PAVLOS_DAKeyPress
      end
      object PAVLOS_TIM: TEdit
        Left = 304
        Top = 0
        Width = 81
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnKeyPress = PAVLOS_TIMKeyPress
      end
      object PavlosMonth: TStringGrid
        Left = 0
        Top = 272
        Width = 353
        Height = 177
        TabStop = False
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 18
      end
      object LoadMonth: TButton
        Left = 360
        Top = 280
        Width = 75
        Height = 25
        Caption = 'LoadMonth'
        TabOrder = 19
        TabStop = False
        OnClick = LoadMonthClick
      end
      object SaveMonth: TButton
        Left = 584
        Top = 344
        Width = 75
        Height = 41
        Caption = 'SaveMonth'
        TabOrder = 20
        TabStop = False
        OnClick = SaveMonthClick
      end
      object PutInMonth: TButton
        Left = 592
        Top = 288
        Width = 75
        Height = 41
        Caption = 'PutInMonth'
        TabOrder = 21
        TabStop = False
        OnClick = PutInMonthClick
      end
      object EXCEL: TButton
        Left = 760
        Top = 360
        Width = 75
        Height = 25
        Caption = 'EXCEL'
        TabOrder = 22
        TabStop = False
        OnClick = EXCELClick
      end
      object NewMonth: TButton
        Left = 360
        Top = 320
        Width = 75
        Height = 25
        Caption = 'NewMonth'
        TabOrder = 23
        TabStop = False
        OnClick = NewMonthClick
      end
      object EXCEL_MONTH: TButton
        Left = 752
        Top = 400
        Width = 91
        Height = 25
        Caption = 'EXCEL_MONTH'
        TabOrder = 24
        TabStop = False
        OnClick = EXCEL_MONTHClick
      end
      object PAVLOS_TIM_DATE: TMaskEdit
        Left = 392
        Top = 0
        Width = 113
        Height = 32
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 7
        Text = '01/03/2018'
        OnKeyPress = PAVLOS_TIM_DATEKeyPress
      end
    end
    object MPARAKOS: TTabSheet
      Caption = 'MPARAKOS'
      ImageIndex = 1
      object FillMparakosBasket: TButton
        Left = 0
        Top = 0
        Width = 105
        Height = 25
        Caption = 'FillMparakosBasket'
        TabOrder = 0
        OnClick = FillMparakosBasketClick
      end
      object Otseivatel: TButton
        Left = 328
        Top = 264
        Width = 73
        Height = 25
        Caption = 'Otseivatel'
        TabOrder = 1
        Visible = False
        OnClick = OtseivatelClick
      end
      object PK_DeltioApostolis: TStringGrid
        Left = 0
        Top = 32
        Width = 273
        Height = 153
        ColCount = 3
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 2
        ColWidths = (
          65
          122
          67)
      end
      object MPARAKOS_DA_TIM_INVS: TStringGrid
        Left = 424
        Top = 424
        Width = 105
        Height = 25
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 3
      end
      object MPARAKOS_DA_TIM_AA: TComboBox
        Left = 280
        Top = 424
        Width = 145
        Height = 21
        ItemHeight = 13
        Sorted = True
        TabOrder = 4
        Text = 'MPARAKOS_DA_TIM_AA'
      end
      object Fill_MPARAKOS_DA_TIM_INVS: TButton
        Left = 320
        Top = 312
        Width = 169
        Height = 25
        Caption = 'Fill_MPARAKOS_DA_TIM_INVS'
        TabOrder = 5
        Visible = False
        OnClick = Fill_MPARAKOS_DA_TIM_INVSClick
      end
      object Empty_MPARAKOS_DA_TIM: TButton
        Left = 320
        Top = 344
        Width = 145
        Height = 25
        Caption = 'Empty_MPARAKOS_DA_TIM'
        TabOrder = 6
        Visible = False
        OnClick = Empty_MPARAKOS_DA_TIMClick
      end
      object TaksinomisiMeOnomasia_P_K: TButton
        Left = 320
        Top = 368
        Width = 177
        Height = 25
        Caption = 'TaksinomisiMeOnomasia_P_K'
        TabOrder = 7
        Visible = False
        OnClick = TaksinomisiMeOnomasia_P_KClick
      end
      object MPARAKOS_DA: TEdit
        Left = 168
        Top = 0
        Width = 73
        Height = 21
        TabOrder = 8
      end
      object Mparakos_NO: TEdit
        Left = 104
        Top = 0
        Width = 33
        Height = 21
        TabOrder = 9
        Text = '1'
      end
      object YPOLOGISMOS_TEMAXION: TButton
        Left = 264
        Top = 0
        Width = 153
        Height = 25
        Caption = 'YPOLOGISMOS_TEMAXION'
        TabOrder = 10
        OnClick = YPOLOGISMOS_TEMAXIONClick
      end
      object B_DeltioApostolis: TStringGrid
        Left = 536
        Top = 48
        Width = 273
        Height = 129
        ColCount = 3
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 11
        ColWidths = (
          64
          118
          64)
      end
      object PackageDeal: TButton
        Left = 664
        Top = 0
        Width = 105
        Height = 25
        Caption = 'PackageDeal'
        TabOrder = 12
        OnClick = PackageDealClick
      end
      object PK_Xrostaei: TComboBox
        Left = 344
        Top = 24
        Width = 65
        Height = 177
        Style = csSimple
        ItemHeight = 13
        Sorted = True
        TabOrder = 13
        Text = 'PK_Xrostaei'
        OnDblClick = PK_XrostaeiDblClick
        OnSelect = PK_XrostaeiSelect
      end
      object SAVE_PK_Archive: TButton
        Left = 416
        Top = 32
        Width = 105
        Height = 25
        Caption = 'SAVE_PK_Archive'
        TabOrder = 14
        OnClick = SAVE_PK_ArchiveClick
      end
      object Save_PK_Xrostaei: TButton
        Left = 384
        Top = 192
        Width = 105
        Height = 25
        Caption = 'Save_PK_Xrostaei'
        TabOrder = 15
        OnClick = Save_PK_XrostaeiClick
      end
      object LOAD_PK_ARCHIVE: TButton
        Left = 16
        Top = 200
        Width = 113
        Height = 25
        Caption = 'LOAD_PK_ARCHIVE'
        TabOrder = 16
        OnClick = LOAD_PK_ARCHIVEClick
      end
      object LOAD_B_ARCHIVE: TButton
        Left = 544
        Top = 176
        Width = 105
        Height = 25
        Caption = 'LOAD_B_ARCHIVE'
        TabOrder = 17
        OnClick = LOAD_B_ARCHIVEClick
      end
      object PK_Archive: TStringGrid
        Left = 0
        Top = 232
        Width = 313
        Height = 209
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 18
        ColWidths = (
          49
          60
          58
          59)
        RowHeights = (
          40
          24)
      end
      object ADD_Archive: TButton
        Left = 424
        Top = 0
        Width = 97
        Height = 25
        Caption = 'ADD_Archive'
        TabOrder = 19
        OnClick = ADD_ArchiveClick
      end
      object NewStart: TButton
        Left = 320
        Top = 224
        Width = 75
        Height = 25
        Caption = 'NewStart'
        TabOrder = 20
        OnClick = NewStartClick
      end
      object EnaEna: TButton
        Left = 416
        Top = 104
        Width = 59
        Height = 25
        Caption = 'EnaEna'
        TabOrder = 21
        OnClick = EnaEnaClick
      end
      object B_NO: TEdit
        Left = 528
        Top = 0
        Width = 41
        Height = 21
        TabOrder = 22
        Text = '1'
      end
      object B_DA: TEdit
        Left = 576
        Top = 0
        Width = 89
        Height = 21
        TabOrder = 23
      end
      object TaksinomisiMeOnomasia_B_DA: TButton
        Left = 528
        Top = 416
        Width = 193
        Height = 25
        Caption = 'TaksinomisiMeOnomasia_B_DA'
        TabOrder = 24
        Visible = False
        OnClick = TaksinomisiMeOnomasia_B_DAClick
      end
      object ADD_B_Archive: TButton
        Left = 664
        Top = 24
        Width = 105
        Height = 25
        Caption = 'ADD_B_Archive'
        TabOrder = 25
        OnClick = ADD_B_ArchiveClick
      end
      object B_Archive: TStringGrid
        Left = 520
        Top = 240
        Width = 320
        Height = 169
        RowCount = 2
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 26
      end
      object B_NewMont: TButton
        Left = 648
        Top = 208
        Width = 75
        Height = 25
        Caption = 'B_NewMont'
        TabOrder = 27
        OnClick = B_NewMontClick
      end
      object SAVE_B_ARCHIVE: TButton
        Left = 768
        Top = 24
        Width = 107
        Height = 25
        Caption = 'SAVE_B_ARCHIVE'
        TabOrder = 28
        OnClick = SAVE_B_ARCHIVEClick
      end
      object B_Aksia_DA: TButton
        Left = 752
        Top = 208
        Width = 75
        Height = 25
        Caption = 'B_Aksia_DA'
        TabOrder = 29
        OnClick = B_Aksia_DAClick
      end
      object Load_PK_Xrostaei: TButton
        Left = 264
        Top = 192
        Width = 107
        Height = 25
        Caption = 'Load_PK_Xrostaei'
        TabOrder = 30
        OnClick = Load_PK_XrostaeiClick
      end
      object PK_Archive_Excel: TButton
        Left = 320
        Top = 392
        Width = 97
        Height = 25
        Caption = 'PK_Archive_Excel'
        TabOrder = 31
        OnClick = PK_Archive_ExcelClick
      end
      object B_Archive_EXCEL: TButton
        Left = 744
        Top = 416
        Width = 115
        Height = 25
        Caption = 'B_Archive_EXCEL'
        TabOrder = 32
        OnClick = B_Archive_EXCELClick
      end
      object Counter: TButton
        Left = 424
        Top = 72
        Width = 75
        Height = 25
        Caption = '0'
        TabOrder = 33
        OnClick = CounterClick
      end
    end
    object MPOYRMPAKIS: TTabSheet
      Caption = 'MPOYRMPAKIS'
      ImageIndex = 2
      object FillMpoyrmpakisBasket: TButton
        Left = 0
        Top = 0
        Width = 129
        Height = 25
        Caption = 'FillMpoyrmpakisBasket'
        TabOrder = 0
        OnClick = FillMpoyrmpakisBasketClick
      end
      object D_Otseivatel: TButton
        Left = 0
        Top = 416
        Width = 75
        Height = 25
        Caption = 'D_Otseivatel'
        TabOrder = 1
        OnClick = D_OtseivatelClick
      end
      object Fill_D_DeltioApostolis: TButton
        Left = 304
        Top = 8
        Width = 113
        Height = 25
        Caption = 'Fill_D_DeltioApostolis'
        TabOrder = 2
        OnClick = Fill_D_DeltioApostolisClick
      end
      object D_DeltioApostolis: TStringGrid
        Left = 0
        Top = 48
        Width = 433
        Height = 273
        ColCount = 4
        FixedCols = 0
        RowCount = 3
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 3
        ColWidths = (
          87
          200
          64
          74)
        RowHeights = (
          24
          24
          24)
      end
      object Mpoyrmpakis_DA: TEdit
        Left = 200
        Top = 8
        Width = 97
        Height = 21
        TabOrder = 4
      end
      object Mpoyrmpakis_NO: TEdit
        Left = 136
        Top = 8
        Width = 41
        Height = 21
        TabOrder = 5
        Text = '1'
      end
      object ADD_IX: TButton
        Left = 0
        Top = 352
        Width = 75
        Height = 25
        Caption = 'ADD_IX'
        TabOrder = 6
        OnClick = ADD_IXClick
      end
      object D_Archive: TStringGrid
        Left = 448
        Top = 48
        Width = 409
        Height = 353
        ColCount = 4
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 7
        ColWidths = (
          85
          180
          64
          72)
      end
      object ADD_D_ARCHIVE: TButton
        Left = 456
        Top = 8
        Width = 105
        Height = 25
        Caption = 'ADD_D_ARCHIVE'
        TabOrder = 8
        OnClick = ADD_D_ARCHIVEClick
      end
      object SAVE_D_ARCHIVE: TButton
        Left = 728
        Top = 8
        Width = 115
        Height = 25
        Caption = 'SAVE_D_ARCHIVE'
        TabOrder = 9
        OnClick = SAVE_D_ARCHIVEClick
      end
      object LOAD_D_ARCHIVE: TButton
        Left = 480
        Top = 408
        Width = 105
        Height = 25
        Caption = 'LOAD_D_ARCHIVE'
        TabOrder = 10
        OnClick = LOAD_D_ARCHIVEClick
      end
      object ShowD_TimolgisiForm: TButton
        Left = 224
        Top = 360
        Width = 169
        Height = 49
        Caption = 'ShowD_TimolgisiForm'
        TabOrder = 11
        OnClick = ShowD_TimolgisiFormClick
      end
      object IX_Number: TEdit
        Left = 0
        Top = 328
        Width = 97
        Height = 21
        TabOrder = 12
        Text = '0'
      end
      object IX_Perigrafi: TEdit
        Left = 104
        Top = 328
        Width = 281
        Height = 21
        TabOrder = 13
        Text = 'IX_Perigrafi'
      end
      object ADD_ROW_COUNT: TButton
        Left = 672
        Top = 408
        Width = 123
        Height = 25
        Caption = 'ADD_ROW_COUNT'
        TabOrder = 14
        OnClick = ADD_ROW_COUNTClick
      end
    end
    object TOOLS: TTabSheet
      Caption = 'TOOLS'
      ImageIndex = 3
      object SynchroPoziTronButton: TButton
        Left = 256
        Top = 56
        Width = 147
        Height = 25
        Caption = 'SynchroPoziTronButton'
        TabOrder = 0
        OnClick = SynchroPoziTronButtonClick
      end
      object MaskEdit1: TMaskEdit
        Left = 352
        Top = 112
        Width = 108
        Height = 21
        EditMask = 'DA-!9999;1;_'
        MaxLength = 7
        TabOrder = 1
        Text = 'DA-    '
      end
    end
  end
  object ShowTimokatalogos: TButton
    Left = 536
    Top = 32
    Width = 113
    Height = 25
    Caption = 'ShowTimokatalogos'
    TabOrder = 9
    TabStop = False
    OnClick = ShowTimokatalogosClick
  end
  object StartDate: TMaskEdit
    Left = 288
    Top = 0
    Width = 96
    Height = 28
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '03/01/2018'
    OnKeyPress = StartDateKeyPress
  end
  object StartHourMask: TMaskEdit
    Left = 288
    Top = 32
    Width = 56
    Height = 28
    EditMask = '!90:00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 2
    Text = '14:12'
    OnKeyPress = StartHourMaskKeyPress
  end
  object EndDate: TMaskEdit
    Left = 392
    Top = 0
    Width = 96
    Height = 28
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    Text = '04/01/2018'
    OnKeyPress = EndDateKeyPress
  end
  object EndHourMask: TMaskEdit
    Left = 392
    Top = 32
    Width = 56
    Height = 28
    EditMask = '!90:00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 4
    Text = '14:48'
    OnKeyPress = EndHourMaskKeyPress
  end
  object FindStartTIme: TButton
    Left = 344
    Top = 34
    Width = 33
    Height = 23
    Caption = 'FindStartTIme'
    TabOrder = 10
    TabStop = False
    OnClick = FindStartTImeClick
  end
  object FindEndTime: TButton
    Left = 448
    Top = 34
    Width = 33
    Height = 23
    Caption = 'FindEndTime'
    TabOrder = 11
    TabStop = False
    OnClick = FindEndTimeClick
  end
  object ShowBasketForm: TButton
    Left = 488
    Top = 0
    Width = 97
    Height = 25
    Caption = 'ShowBasketForm'
    TabOrder = 12
    TabStop = False
    OnClick = ShowBasketFormClick
  end
  object NextDay: TButton
    Left = 192
    Top = 32
    Width = 91
    Height = 25
    Caption = 'NextDay'
    TabOrder = 13
    TabStop = False
    OnClick = NextDayClick
  end
  object Path: TPanel
    Left = 272
    Top = 60
    Width = 593
    Height = 17
    Caption = 'C:\CleanExpressFiles\'
    TabOrder = 14
  end
  object RadioGroup1: TRadioGroup
    Left = 64
    Top = 24
    Width = 97
    Height = 35
    TabOrder = 15
  end
  object RadioButton1: TRadioButton
    Left = 64
    Top = 24
    Width = 113
    Height = 17
    Caption = 'StandartLoad'
    Checked = True
    TabOrder = 16
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 64
    Top = 40
    Width = 113
    Height = 17
    Caption = 'NetLoad'
    TabOrder = 17
    OnClick = RadioButton2Click
  end
  object ActionList1: TActionList
    Left = 832
    object SetAnchor: TAction
      Caption = 'SetAnchor'
      OnExecute = SetAnchorExecute
    end
    object NumberCleaning: TAction
      Caption = 'NumberCleaning'
      OnExecute = NumberCleaningExecute
    end
    object DateCleaning: TAction
      Caption = 'DateCleaning'
      OnExecute = DateCleaningExecute
    end
    object KourtinesMetra: TAction
      OnExecute = KourtinesMetraExecute
    end
    object AddData: TAction
      Caption = 'AddData'
      OnExecute = AddDataExecute
    end
    object SynchroPoziTron: TAction
      Caption = 'SynchroPoziTron'
      OnExecute = SynchroPoziTronExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 65528
    Top = 16
  end
end
