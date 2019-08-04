unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComObj, Grids, ActnList, ComCtrls, Mask, Math,
  ExtCtrls;

type
  TMainForm = class(TForm)
    XALKIDONA: TButton;
    KERATSINI: TButton;
    KALLITHEA: TButton;
    ExcelToDB: TButton;
    ShowDB: TButton;
    ActionList1: TActionList;
    SetAnchor: TAction;
    NumberCleaning: TAction;
    DateCleaning: TAction;
    EditLab1: TEdit;
    EditLab2: TEdit;
    LabelLab1: TLabel;
    LabelLab2: TLabel;
    OpenDialog1: TOpenDialog;
    DBFirstLoad: TButton;
    AddData: TAction;
    Find_IN_DB: TButton;
    PageControl: TPageControl;
    PAVLOS: TTabSheet;
    MPARAKOS: TTabSheet;
    MPOYRMPAKIS: TTabSheet;
    ShowTimokatalogos: TButton;
    StartDate: TMaskEdit;
    StartHourMask: TMaskEdit;
    EndDate: TMaskEdit;
    EndHourMask: TMaskEdit;
    FindStartTIme: TButton;
    FindEndTime: TButton;
    ShowBasketForm: TButton;
    KourtinesMetra: TAction;
    FillPavlosBasket: TButton;
    Fill_PAVLOS_DA_TIM_INVS: TButton;
    PAVLOS_DA_TIM_INVS: TStringGrid;
    PAVLOS_DA_TIM_AA: TComboBox;
    PAVLOS_DA_TIM: TStringGrid;
    Empty_PAVLOS_DA_TIM: TButton;
    TaksinomisiMeOnomasia: TButton;
    YpologismosSunolouEidous: TButton;
    YpologismosSunolou: TButton;
    YpologismosEkptosis: TButton;
    YpologismosSunolouMeEkptosi: TButton;
    YpologismosFPA: TButton;
    YpologismosTelikouSunolou: TButton;
    YPOLOGISMOS: TButton;
    PAVLOS_NO: TEdit;
    PAVLOS_DA: TEdit;
    PAVLOS_TIM: TEdit;
    PavlosMonth: TStringGrid;
    LoadMonth: TButton;
    SaveMonth: TButton;
    PutInMonth: TButton;
    EXCEL: TButton;
    NextDay: TButton;
    NewMonth: TButton;
    FillMparakosBasket: TButton;
    Otseivatel: TButton;
    PK_DeltioApostolis: TStringGrid;
    MPARAKOS_DA_TIM_INVS: TStringGrid;
    MPARAKOS_DA_TIM_AA: TComboBox;
    Fill_MPARAKOS_DA_TIM_INVS: TButton;
    Empty_MPARAKOS_DA_TIM: TButton;
    TaksinomisiMeOnomasia_P_K: TButton;
    EXCEL_MONTH: TButton;
    MPARAKOS_DA: TEdit;
    Mparakos_NO: TEdit;
    YPOLOGISMOS_TEMAXION: TButton;
    FillMpoyrmpakisBasket: TButton;
    D_Otseivatel: TButton;
    Fill_D_DeltioApostolis: TButton;
    D_DeltioApostolis: TStringGrid;
    Mpoyrmpakis_DA: TEdit;
    Mpoyrmpakis_NO: TEdit;
    ADD_IX: TButton;
    D_Archive: TStringGrid;
    ADD_D_ARCHIVE: TButton;
    SAVE_D_ARCHIVE: TButton;
    LOAD_D_ARCHIVE: TButton;
    ShowD_TimolgisiForm: TButton;
    IX_Number: TEdit;
    IX_Perigrafi: TEdit;
    ADD_ROW_COUNT: TButton;
    SynchroPoziTron: TAction;
    TOOLS: TTabSheet;
    SynchroPoziTronButton: TButton;
    Path: TPanel;
    B_DeltioApostolis: TStringGrid;
    PackageDeal: TButton;
    PK_Xrostaei: TComboBox;
    SAVE_PK_Archive: TButton;
    Save_PK_Xrostaei: TButton;
    LOAD_PK_ARCHIVE: TButton;
    LOAD_B_ARCHIVE: TButton;
    PK_Archive: TStringGrid;
    ADD_Archive: TButton;
    NewStart: TButton;
    EnaEna: TButton;
    B_NO: TEdit;
    B_DA: TEdit;
    TaksinomisiMeOnomasia_B_DA: TButton;
    ADD_B_Archive: TButton;
    B_Archive: TStringGrid;
    B_NewMont: TButton;
    SAVE_B_ARCHIVE: TButton;
    B_Aksia_DA: TButton;
    Load_PK_Xrostaei: TButton;
    PK_Archive_Excel: TButton;
    B_Archive_EXCEL: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    PAVLOS_TIM_DATE: TMaskEdit;
    Counter: TButton;
    procedure ShowDBClick(Sender: TObject);
    procedure SetAnchorExecute(Sender: TObject);
    procedure NumberCleaningExecute(Sender: TObject);
    procedure DateCleaningExecute(Sender: TObject);
    procedure ExcelToDBClick(Sender: TObject);
    procedure DBFirstLoadClick(Sender: TObject);
    procedure AddDataExecute(Sender: TObject);
    procedure Find_IN_DBClick(Sender: TObject);
    procedure ShowTimokatalogosClick(Sender: TObject);
    procedure XALKIDONAClick(Sender: TObject);
    procedure KERATSINIClick(Sender: TObject);
    procedure KALLITHEAClick(Sender: TObject);
    procedure FindStartTImeClick(Sender: TObject);
    procedure FindEndTimeClick(Sender: TObject);
    procedure ShowBasketFormClick(Sender: TObject);
    procedure KourtinesMetraExecute(Sender: TObject);
    procedure FillPavlosBasketClick(Sender: TObject);
    procedure Fill_PAVLOS_DA_TIM_INVSClick(Sender: TObject);
    procedure TaksinomisiMeOnomasiaClick(Sender: TObject);
    procedure Empty_PAVLOS_DA_TIMClick(Sender: TObject);
    procedure YpologismosTelikouSunolouClick(Sender: TObject);
    procedure YpologismosFPAClick(Sender: TObject);
    procedure YpologismosSunolouMeEkptosiClick(Sender: TObject);
    procedure YpologismosEkptosisClick(Sender: TObject);
    procedure YpologismosSunolouClick(Sender: TObject);
    procedure YpologismosSunolouEidousClick(Sender: TObject);
    procedure YPOLOGISMOSClick(Sender: TObject);
    procedure LoadMonthClick(Sender: TObject);
    procedure SaveMonthClick(Sender: TObject);
    procedure PutInMonthClick(Sender: TObject);
    procedure EXCELClick(Sender: TObject);
    procedure NextDayClick(Sender: TObject);
    procedure NewMonthClick(Sender: TObject);
    procedure FillMparakosBasketClick(Sender: TObject);
    procedure OtseivatelClick(Sender: TObject);
    procedure Empty_MPARAKOS_DA_TIMClick(Sender: TObject);
    procedure Fill_MPARAKOS_DA_TIM_INVSClick(Sender: TObject);
    procedure TaksinomisiMeOnomasia_P_KClick(Sender: TObject);
    procedure EXCEL_MONTHClick(Sender: TObject);
    procedure YPOLOGISMOS_TEMAXIONClick(Sender: TObject);
    procedure FillMpoyrmpakisBasketClick(Sender: TObject);
    procedure D_OtseivatelClick(Sender: TObject);
    procedure Fill_D_DeltioApostolisClick(Sender: TObject);
    procedure ADD_IXClick(Sender: TObject);
    procedure SAVE_D_ARCHIVEClick(Sender: TObject);
    procedure LOAD_D_ARCHIVEClick(Sender: TObject);
    procedure ADD_D_ARCHIVEClick(Sender: TObject);
    procedure ShowD_TimolgisiFormClick(Sender: TObject);
    procedure ADD_ROW_COUNTClick(Sender: TObject);
    procedure SynchroPoziTronExecute(Sender: TObject);
    procedure SynchroPoziTronButtonClick(Sender: TObject);
    procedure SAVE_PK_ArchiveClick(Sender: TObject);
    procedure LOAD_PK_ARCHIVEClick(Sender: TObject);
    procedure PK_XrostaeiDblClick(Sender: TObject);
    procedure PK_XrostaeiSelect(Sender: TObject);
    procedure ADD_ArchiveClick(Sender: TObject);
    procedure NewStartClick(Sender: TObject);
    procedure PackageDealClick(Sender: TObject);
    procedure TaksinomisiMeOnomasia_B_DAClick(Sender: TObject);
    procedure ADD_B_ArchiveClick(Sender: TObject);
    procedure B_NewMontClick(Sender: TObject);
    procedure SAVE_B_ARCHIVEClick(Sender: TObject);
    procedure LOAD_B_ARCHIVEClick(Sender: TObject);
    procedure B_Aksia_DAClick(Sender: TObject);
    procedure Save_PK_XrostaeiClick(Sender: TObject);
    procedure Load_PK_XrostaeiClick(Sender: TObject);
    procedure PK_Archive_ExcelClick(Sender: TObject);
    procedure B_Archive_EXCELClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure EnaEnaClick(Sender: TObject);
    procedure EndHourMaskKeyPress(Sender: TObject; var Key: Char);
    procedure PAVLOS_DAKeyPress(Sender: TObject; var Key: Char);
    procedure PAVLOS_TIMKeyPress(Sender: TObject; var Key: Char);
    procedure PAVLOS_TIM_DATEKeyPress(Sender: TObject; var Key: Char);
    procedure StartDateKeyPress(Sender: TObject; var Key: Char);
    procedure EndDateKeyPress(Sender: TObject; var Key: Char);
    procedure StartHourMaskKeyPress(Sender: TObject; var Key: Char);
    procedure CounterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  anchor:integer;
   StartRow:integer;
   EndRow:integer;


implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TMainForm.ShowDBClick(Sender: TObject);
begin
DBForm.Visible:=true;
DBForm.FormStyle:=fsStayOnTop;
end;

procedure TMainForm.SetAnchorExecute(Sender: TObject);
var
	nCol : integer;
	nRow : integer;
begin
	for nCol := 0 to DBForm.StringGrid1.ColCount - 1 do
	begin
		nRow := DBForm.StringGrid1.Cols[nCol].IndexOf('Batch');

		if (nRow > -1) then
			    anchor:=nCol ;

	end;
        end;

procedure TMainForm.NumberCleaningExecute(Sender: TObject);
label 10;
var a:integer;
 begin
    a:=3;
  10:
MainForm.EditLab1.Text:=DBForm.StringGrid1.Cells[(anchor+1),a];
MainForm.EditLab1.SelStart:=3;
MainForm.EditLab1.SelLength:=1;
if MainForm.EditLab1.SelText=',' then MainForm.EditLab1.SelText:='';
MainForm.LabelLab1.Caption:=MainForm.EditLab1.Text;
DBForm.StringGrid1.Cells[(anchor+1),a]:=MainForm.LabelLab1.Caption;
a:=a+2;
if a>DBForm.StringGrid1.RowCount-1 then exit;
goto 10;

end;

procedure TMainForm.DateCleaningExecute(Sender: TObject);
label 10;
var a:integer;
 begin

 a:=2;
  10:
MainForm.EditLab1.Text:=DBForm.StringGrid1.Cells[(anchor+8),a];
MainForm.EditLab1.SelStart:=0;
MainForm.EditLab1.SelLength:=10;
MainForm.LabelLab1.Caption:=MainForm.EditLab1.SelText;
DBForm.StringGrid1.Cells[(anchor+8),a]:=MainForm.LabelLab1.Caption;
a:=a+2;
if a>DBForm.StringGrid1.RowCount-1 then exit;
goto 10;

end;


procedure TMainForm.ExcelToDBClick(Sender: TObject);


function Xls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r: Integer;
  filename:string ;
begin
opendialog1.Execute;
filename:=opendialog1.FileName;
  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(filename);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(filename)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;

    // Set Stringgrid's row &col dimensions.

    AGrid.RowCount := x;
    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //  Define the loop for filling in the TStringGrid
    k := 1;
    repeat
      for r := 1 to y do
        AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      // XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;
    end;
  end;
end;
  var filename:string;


begin
  Xls_To_StringGrid(DBForm.StringGrid1, filename) ;
     setAnchor.Execute;
    NumberCleaning.Execute;
  DateCleaning.Execute;
  KourtinesMetra.Execute;
AddData.Execute;
end;

procedure TMainForm.DBFirstLoadClick(Sender: TObject);
var a,b:integer;
begin
for a:=0 to DBForm.StringGrid1.ColCount-1 do
for b:=0 to DBForm.StringGrid1.RowCount-1 do   begin
DBForm.DB.Cells[a,b]:=DBForm.StringGrid1.Cells[(anchor-1)+a,b];//(anchor-1)+a--zdes viravnivaju tak chtobi pervii stolbik ne bil pustoi dlja keratsini i kallithei
DBForm.DB.ColCount:=DBForm.StringGrid1.ColCount;
DBForm.DB.RowCount:=DBForm.StringGrid1.RowCount;
    end;
end;

procedure TMainForm.AddDataExecute(Sender: TObject);
var
 nRowDB, nRowSG1, a ,b, difference, c : integer;

begin
//����� naxodim poslednii Batch(naxozhu standartnoe slovo (Deleted :) v konce i vichisljaju mesto poslednego Batch
  nRowDB:=DBForm.DB.Cols[0].IndexOf('Deleted :');
 	if (nRowDB > -1) then begin
  nRowDB:=nRowDB-8;
  EditLab1.Text:=DBForm.DB.Cells[1,nRowDB];
end;
//���� ����� �� ���� �� ������� BATCH  ��� excel ��� ������
EditLab2.Text:=IntToStr(StrToInt(EditLab1.Text)+1);
nRowSG1:=DBForm.StringGrid1.Cols[anchor].IndexOf(EditLab2.Text);
if (nRowSG1>-1) then begin
// now i set the space
DBForm.DB.RowCount:=DBForm.DB.RowCount+(DBForm.StringGrid1.RowCount-9-nRowSG1);
  //now i fill the space
for a:=0 to DBForm.StringGrid1.ColCount-1 do
for b:=nRowSG1 to DBForm.StringGrid1.RowCount-1 do begin
difference:=nRowDB-nRowSG1;
DBForm.DB.Cells[a,b+(difference)+2]:=DBForm.StringGrid1.Cells[(anchor-1)+a,b]; //anchor-1)+a -amit imas vshvebi ropirveli svei ar iyosxolme carieli kallitheashi da keratsnishi.
               //b+(difference)+2 amit vedzeb rigebis gadabms adglis.


end;

                          end

else ShowMessage('��� ����� �� ��� �� ��������� Batch ��� Excel, ���� ���� Excel');

 //now i copy ����� ������� culomn ��� ��������� culomn, ��� �� ������� ���� �� ���� SynchroPoziTron.

 for c:=0 to DBForm.DB.RowCount do
 DBForm.DB.Cells[16,c]:=DBForm.DB.Cells[2,c];
   end;



procedure TMainForm.Find_IN_DBClick(Sender: TObject);
var
a:integer;
nCol:integer;
nRow:integer;
begin
for nCol:=0 to DBForm.DB.ColCount-1 do begin
nRow:=DBForm.DB.Cols[nCol].IndexOf(EditLab2.Text);

if (nRow > -1) then  begin

 for  a:=0 to 10 do begin
 DisplayForm.DisplaySG.RowCount:=DBForm.DB.ColCount+3;
 DisplayForm.DisplaySG.Cells[1,a]:=DBForm.DB.Cells[a,nRow];
end;
 DisplayForm.DisplaySG.Cells[1,11]:=DBForm.DB.Cells[9,nRow+1];
 DisplayForm.DisplaySG.Cells[1,12]:=DBForm.DB.Cells[10,nRow+1];
 DisplayForm.DisplaySG.Cells[1,13]:=DBForm.DB.Cells[11,nRow];
 DisplayForm.DisplaySG.Cells[1,14]:=DBForm.DB.Cells[11,nRow+1];
 DisplayForm.DisplaySG.Cells[1,15]:=DBForm.DB.Cells[12,nRow];
 DisplayForm.DisplaySG.Cells[1,16]:=DBForm.DB.Cells[13,nRow];
 DisplayForm.DisplaySG.Cells[1,17]:=DBForm.DB.Cells[14,nRow];
 DisplayForm.DisplaySG.Cells[1,18]:=DBForm.DB.Cells[15,nRow];

DBForm.Visible:=true;
DBForm.DB.Row:=nRow ;
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
Find_IN_DB.Caption:='Col'+IntToStr(nCol)+':'+'Row'+IntToStr(nRow);

     end;



end;

end;

procedure TMainForm.ShowTimokatalogosClick(Sender: TObject);
begin
TimokatalogosForm.Visible:=true;
TimokatalogosForm.FormStyle:=fsStayOnTop;
end;

procedure TMainForm.XALKIDONAClick(Sender: TObject);
begin
MainForm.Caption:='XALKIDONA';
TimokatalogosForm.LoadTimokatalogosXalkidona.Click;
DBForm.LOAD.Click;
Path.Color:=clGreen;
LoadMonth.Click;
BasketForm.LoadBaskets.Click;
Load_PK_ARCHIVE.Click;
Load_PK_Xrostaei.Click;
Load_B_Archive.Click;
Load_D_ARCHIVE.Click;
end;

procedure TMainForm.KERATSINIClick(Sender: TObject);
begin
MainForm.Caption:='KERATSINI';
TimokatalogosForm.LoadTimokatalogosKeratsini.Click;
DBForm.LOAD.Click;
Path.Color:=clPurple;
LoadMonth.Click;
BasketForm.LoadBaskets.Click;
Load_PK_ARCHIVE.Click;
Load_PK_Xrostaei.Click;
Load_B_Archive.Click;
Load_D_ARCHIVE.Click;

end;

procedure TMainForm.KALLITHEAClick(Sender: TObject);
begin
MainForm.Caption:='KALLITHEA';
TimokatalogosForm.LoadTimokatalogosKallithea.Click;
DBForm.LOAD.Click;
Path.Color:=clYellow;
LoadMonth.Click;
BasketForm.LoadBaskets.Click;
Load_PK_ARCHIVE.Click;
Load_PK_Xrostaei.Click;
Load_B_Archive.Click;
Load_D_ARCHIVE.Click;
end;

procedure TMainForm.FindStartTImeClick(Sender: TObject);
var
	nCol : integer;
	nRow : integer;
        HCol:integer;
        startHour:integer;
        startHourStopSignal:integer;
  label 10;
  Label 20;
begin         //snachala ishem datu
	for nCol := 1 to DBForm.DB.ColCount - 1 do
	begin
		nRow := DBForm.DB.Cols[nCol].IndexOf(StartDate.Text);
                                  //datu nashli, teper ishem chas-hour
		if (nRow > -1) then   begin
      HCol:=nCol+1;  //  changing  focus on cell with hour stamp
       10:
			DBForm.DB.Col:=HCol;
      DBForm.DB.Row:=nRow;

                    // zdes v laboratorii (EditLab1) videljaem CHASI-HOURS v Stringgride(pervije 2 cifri)
      EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=0;
      EditLab1.SelLength:=2;
      LabelLab1.Caption:=EditLab1.SelText;
                   // zdes v laboratorii (EditLab2) videljaem CHASI-HOURS v StartHourMaksk-e(pervije 2 cifri)
      Editlab2.Text:=StartHourMask.Text;
      EditLab2.SelStart:=0;
      EditLab2.SelLength:=2;
      startHour:=StrToInt(EditLab2.SelText);
      LabelLab2.Caption:=EditLab2.SelText;

                            //naidja nuzhnoe vremja-CHAS-HOUR, teper ja otsilaju na poisk minut(label 20)
      if DBForm.DB.Cells[HCol-1,nRow]<>Startdate.Text then begin    //eto perestraxovka. Esli ne straxovatsja tak, poisk mozhet zanesti menja nadrugoi den.
            {esli naprimer, ja zadaju poisk s 20:30, a poslednee paralavi proizoshlo do etogo,
            naprimer 20:25, poisk budet prodolzhatsja i na sledujushii den. poetomu ja zadaju stop signal esli izmenjaetsja data}
      StartRow:=nRow;
       exit;
    end;
    if StrToInt(LabelLab1.Caption)>StrToInt(LabelLab2.Caption) then begin
        StartRow:=nRow;
       exit;
    end;
      if StrToInt(LabelLab1.Caption)=StrToInt(LabelLab2.Caption) then goto 20;
      nRow:=nRow+2;
      if nRow=DBForm.DB.RowCount-1 then exit;
      goto 10;

      20:
     DBForm.DB.Col:=HCol;
     DBForm.DB.Row:=nRow;
                         // zdes v laboratorii (EditLab) videljaem MINUTI-MINUTES  /
            EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=0;
      EditLab1.SelLength:=2;
      startHourStopSignal:=StrToInt(EditLab1.SelText);
      LabelLab1.Caption:=EditLab1.SelText;

           EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=3;
      EditLab1.SelLength:=2;
      LabelLab1.Caption:=EditLab1.SelText;

      Editlab2.Text:=StartHourMask.Text;
      EditLab2.SelStart:=3;
      EditLab2.SelLength:=2;
      LabelLab2.Caption:=EditLab2.SelText;
      if DBForm.DB.Cells[HCol-1,nRow]<>Startdate.Text then begin    //eto perestraxovka. Esli ne straxovatsja tak, poisk mozhet zanesti menja nadrugoi den.
            {esli naprimer, ja zadaju poisk s 20:30, a poslednee paralavi proizoshlo do etogo,
            naprimer 20:25, poisk budet prodolzhatsja i na sledujushii den. poetomu ja zadaju stop signal esli izmenjaetsja data}
      StartRow:=nRow;
       exit;
    end;
       if startHour<StartHourStopSignal then begin //zdes zadaju  stop signal esli izmenjaetsja value o hour
                                //nu, ���� �������, �������� ��� �� ��������
  StartRow:=nRow;
       exit;
    end;
          if StrToInt(LabelLab1.Caption)>=StrToInt(LabelLab2.Caption) then
          begin
           StartRow:=nRow;
       exit;
    end;

       nRow:=nRow+2;
      if nRow=DBForm.DB.RowCount-1 then exit;
      goto 20;

                               end;
          	end;
        end;



procedure TMainForm.FindEndTimeClick(Sender: TObject);
var
	nCol : integer;
	nRow : integer;
        HCol:integer;
        EndHour:integer;
        EndHourStopSignal:integer;
  label 10;
  Label 20;
begin         //snachala ishem datu
	for nCol := 1 to DBForm.DB.ColCount - 1 do
	begin
		nRow := DBForm.DB.Cols[nCol].IndexOf(EndDate.Text);
                                  //datu nashli, teper ishem chas-hour
		if (nRow > -1) then   begin
      HCol:=nCol+1;  //  changing  focus on cell with hour stamp
       10:
			DBForm.DB.Col:=HCol;
      DBForm.DB.Row:=nRow;

                    // zdes v laboratorii (EditLab1) videljaem CHASI-HOURS v Stringgride(pervije 2 cifri)
      EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=0;
      EditLab1.SelLength:=2;
      LabelLab1.Caption:=EditLab1.SelText;
                   // zdes v laboratorii (EditLab2) videljaem CHASI-HOURS v StartHourMaksk-e(pervije 2 cifri)
      Editlab2.Text:=EndHourMask.Text;
      EditLab2.SelStart:=0;
      EditLab2.SelLength:=2;
      EndHour:=StrToInt(EditLab2.SelText);
      LabelLab2.Caption:=EditLab2.SelText;


      if DBForm.DB.Cells[HCol-1,nRow]<>EndDate.Text then begin  //esli izmenjaetsja dara,toest pereshli na drugoi den, then exit;
       exit;
       EndRow:=nRow-2;
    end;
    if StrToInt(LabelLab1.Caption)>StrToInt(LabelLab2.Caption) then begin  //esli izmenjaetsja chas, toest perechli na drugoi chas  then exit

       EndRow:=nRow-2;
      exit;

    end;
      if StrToInt(LabelLab1.Caption)=StrToInt(LabelLab2.Caption) then goto 20;
      nRow:=nRow+2;
      if nRow=DBForm.DB.RowCount-1 then exit;
      goto 10;

      20:
     DBForm.DB.Col:=HCol;
     DBForm.DB.Row:=nRow;
                         // zdes v laboratorii (EditLab) videljaem MINUTI-MINUTES  /
            EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=0;
      EditLab1.SelLength:=2;
      EndHourStopSignal:=StrToInt(EditLab1.SelText);
      LabelLab1.Caption:=EditLab1.SelText;

           EditLab1.Text:=DBForm.DB.Cells[HCol,nRow];
      EditLab1.SelStart:=3;
      EditLab1.SelLength:=2;
      LabelLab1.Caption:=EditLab1.SelText;

      Editlab2.Text:=EndHourMask.Text;
      EditLab2.SelStart:=3;
      EditLab2.SelLength:=2;
      LabelLab2.Caption:=EditLab2.SelText;
      if DBForm.DB.Cells[HCol-1,nRow]<>EndDate.Text then begin
     EndRow:=nRow-2;
       exit;
    end;
       if EndHour<EndHourStopSignal then begin //zdes zadaju  stop signal esli izmenjaetsja value o hour
                                //nu, ���� �������, �������� ��� �� ��������
  EndRow:=nRow-2;
       exit;
    end;
          if StrToInt(LabelLab1.Caption)>StrToInt(LabelLab2.Caption) then
          begin
           EndRow:=nRow-2;
       exit;
    end;

       nRow:=nRow+2;
      if nRow=DBForm.DB.RowCount-1 then exit;
      goto 20;

                               end;
          	end;
        end;




procedure TMainForm.ShowBasketFormClick(Sender: TObject);
begin
BasketForm.Visible:=true;
BasketForm.FormStyle:=fsStayOnTop;
end;

procedure TMainForm.KourtinesMetraExecute(Sender: TObject);
label 10;
var a:integer;
KodikosEidous:String;
 begin

 a:=2;
  10:
MainForm.EditLab1.Text:=DBForm.StringGrid1.Cells[(anchor+2),a];
MainForm.EditLab1.SelStart:=0;
MainForm.EditLab1.SelLength:=4;
KodikosEidous:=MainForm.EditLab1.SelText;
  //��� ��������� �� ����� ��� ���������  ����� ��� ��������� ����� ��� ����, ���������� ����������������� �� ���������� �� SimpleRoundTo (dlja etoi funkcii nuzhno podkoluchit modul Math in uses

 if KodikosEidous='0024' then   DBForm.StringGrid1.Cells[anchor+4,a]:=FloatToStr(SimpleRoundTo((StrToFloat( DBForm.StringGrid1.Cells[anchor+3,a])/6.50),-2));
 if KodikosEidous='0025' then   DBForm.StringGrid1.Cells[anchor+4,a]:=FloatToStr(SimpleRoundTo((StrToFloat( DBForm.StringGrid1.Cells[anchor+3,a])/3.80),-2));
 if KodikosEidous='0067' then   DBForm.StringGrid1.Cells[anchor+4,a]:=FloatToStr(SimpleRoundTo((StrToFloat( DBForm.StringGrid1.Cells[anchor+3,a])/5.50),-2));
 if KodikosEidous='0068' then   DBForm.StringGrid1.Cells[anchor+4,a]:=FloatToStr(SimpleRoundTo((StrToFloat( DBForm.StringGrid1.Cells[anchor+3,a])/3.00),-2));


a:=a+2;
if a>DBForm.StringGrid1.RowCount-1 then exit;
goto 10;

end;

procedure TMainForm.FillPavlosBasketClick(Sender: TObject);
var
i:integer;
nRow:integer;
KodikosEidous, akiro1, akiro2:String;
label 10;
begin
//����� �������  PavlosBasket, MparakosBasket and MpoyrmpakisBasket and AkirosisBasket  ��� ����������� �������
BasketForm.PavlosBasket.Clear ;
BasketForm.MparakosBasket.Clear ;
BasketForm.MpoyrmpakisBasket.Clear ;
BasketForm.AkirosisBasket.Clear ;

//then finding startTima and EndTime
FindStartTime.Click;
FindEndTime.Click;
 ShowBasketForm.Click;
    //nachinaju loop
   i:=StartRow;
10:
//zdesvideljaju ������ ������ ��� ��������� ������
EditLab1.Text:=DBForm.DB.Cells[3,i];
EditLab1.SelStart:=0;
EditLab1.SelLength:=4;
KodikosEidous:=EditLab1.SelText;

//zdes videljaju kodiko pros akirosi
EditLab2.Text:=DBForm.DB.Cells[11,i];
EditLab2.SelLength:=0;
EditLab2.SelLength:=1;
akiro1:=EditLab2.SelText;

//zdes videljaju kodiko pros akirosi vo vtoroi stroke
EditLab2.Text:=DBForm.DB.Cells[11,i+1];
EditLab2.SelLength:=0;
EditLab2.SelLength:=1;
akiro2:=EditLab2.SelText;

// spernva otseivaju akirosis
       if (DBForm.DB.Cells[8,i]='9') or (akiro1='9') or (akiro2='9')   then
      BasketForm.AkirosisBasket.Items.Add(DBForm.DB.Cells[2,i])
      else begin

  //tora naxodim  kodikoseidous v timokataloge
 nRow:=TimokatalogosForm.TimokatalogosSG.Cols[0].IndexOf(KodikosEidous);
  if (nRow>-1)then begin
  //smotrim k kakoi kategorii otnositsja etot eidos  i otsilaejm ego v nuzhnujua korzinu

       if TimokatalogosForm.TimokatalogosSG.Cells[3,nRow]='P' then   //P znachit pavlos
       BasketForm.PavlosBasket.Items.Add(DBForm.DB.Cells[2,i]);
       if TimokatalogosForm.TimokatalogosSG.Cells[3,nRow]='P\K' then     //P\K znachit paplomata\koubertes toestMparakos
        BasketForm.MparakosBasket.Items.Add(DBForm.DB.Cells[2,i]);
       if TimokatalogosForm.TimokatalogosSG.Cells[3,nRow]='D' then    //D znachit dermatina, znachit zagruzhaem korzinu mpourmpaki
        BasketForm.MpoyrmpakisBasket.Items.Add(DBForm.DB.Cells[2,i]); //vavsemt kodis nomers

              end;

      end;

   i:=i+2;
   if i>EndRow then exit;
   goto 10;



end;

procedure TMainForm.Fill_PAVLOS_DA_TIM_INVSClick(Sender: TObject);
var
   a, b,nRow,DBRow,nRowTimokatalogosSG:integer;
   kodikosEidous:string;
   label 10;
begin
Empty_PAVLOS_DA_TIM.Click;

 a:=0;
  b:=0;
   10:
  //sperva naxozhu nuzhnii kodikos paralavis  v DB
 BasketForm.PavlosBasket.ItemIndex:=a;
 DBRow:=DBForm.DB.Cols[2].IndexOf(BasketForm.PavlosBasket.Text);

 //exl vshli kods da perigrafis - kodis nacilad da perigrafis nacilad
EditLab1.Text:=DBForm.DB.Cells[3,DBRow];
EditLab1.SelStart:=0;
EditLab1.SelLength:=4;
kodikosEidous:=EditLab1.SelText;


nRow:=PAVLOS_DA_TIM_INVS.Cols[0].IndexOf(kodikosEidous);
if (nRow>-1) then  

PAVLOS_DA_TIM_INVS.Cells[2,nRow]:=FloatToStr(StrToFloat(PAVLOS_DA_TIM_INVS.Cells[2,nRow])+StrToFloat(DBForm.DB.Cells[5,DBRow]))

else begin


PAVLOS_DA_TIM_INVS.Cells[0,b]:=kodikosEidous;
//���� ������ �� ������ ��� ������������ ��� ��������� ������
nRowTimokatalogosSG:=TimokatalogosForm.TimokatalogosSG.Cols[0].IndexOf(kodikosEidous);

PAVLOS_DA_TIM_INVS.Cells[1,b]:=TimokatalogosForm.TimokatalogosSG.Cells[1,nRowTimokatalogosSG];

PAVLOS_DA_TIM_INVS.Cells[2,b]:=DBForm.DB.Cells[5,DBRow];

PAVLOS_DA_TIM_INVS.Cells[3,b]:=TimokatalogosForm.TimokatalogosSG.Cells[4,nRowTimokatalogosSG];


b:=b+1;
PAVLOS_DA_TIM_INVS.RowCount:=PAVLOS_DA_TIM_INVS.RowCount+1;
end;
a:=a+1;
if a>=BasketForm.PavlosBasket.Items.Count then exit;


goto 10;
   end;

procedure TMainForm.TaksinomisiMeOnomasiaClick(Sender: TObject);
var
a,b,c:integer;
begin
Fill_PAVLOS_DA_TIM_INVS.Click;
//zagruzjau PAVLOS_DA_TIM_AA
for a:=0 to PAVLOS_DA_TIM_INVS.RowCount-2 do
PAVLOS_DA_TIM_AA.Items.Add(PAVLOS_DA_TIM_INVS.Cells[1,a]);
 //azgruzhajuPAVLOS_DA_TIM
for b:=0 to PAVLOS_DA_TIM_AA.Items.Count do begin
           PAVLOS_DA_TIM_AA.ItemIndex:=b;
 c:=PAVLOS_DA_TIM_INVS.Cols[1].IndexOf(PAVLOS_DA_TIM_AA.Text);
PAVLOS_DA_TIM.Cells[0,b+8]:=PAVLOS_DA_TIM_INVS.Cells[0,c];
PAVLOS_DA_TIM.Cells[1,b+8]:=PAVLOS_DA_TIM_INVS.Cells[1,c];
PAVLOS_DA_TIM.Cells[2,b+8]:=PAVLOS_DA_TIM_INVS.Cells[2,c];
PAVLOS_DA_TIM.Cells[3,b+8]:=PAVLOS_DA_TIM_INVS.Cells[3,c];
PAVLOS_DA_TIM.Cells[4,b+8]:=PAVLOS_DA_TIM_INVS.Cells[4,c];

//vivozhu teksti
PAVLOS_DA_TIM.Cells[2,3]:='������';
PAVLOS_DA_TIM.Cells[2,4]:='�������';
  //��� ����� ��������� ��� ��������
  if MainForm.Caption='KALLITHEA' then
PAVLOS_DA_TIM.Cells[3,4]:='0'  else
PAVLOS_DA_TIM.Cells[3,4]:='5';

PAVLOS_DA_TIM.Cells[2,5]:='������ �� �������';
PAVLOS_DA_TIM.Cells[2,6]:='���';
PAVLOS_DA_TIM.Cells[3,6]:='24';
PAVLOS_DA_TIM.Cells[2,7]:='������ ������';

PAVLOS_DA_TIM.RowCount:=b+8;
   end;

end;

procedure TMainForm.Empty_PAVLOS_DA_TIMClick(Sender: TObject);
var
i:integer;
b:integer;
c,d:integer;
begin
//snachala zachishaju vsjo, v sluchae esli ja xochu sdelat proceduru zanovo, chtobi ne ostalos starix dannix

for i:=0 to PAVLOS_DA_TIM_Invs.ColCount-1 do
for b:=0 to PAVLOS_DA_TIM_Invs.RowCount-1 do
 PAVLOS_DA_TIM_Invs.Cells[i,b]:='';
 PAVLOS_DA_TIM_Invs.RowCount:=1;

PAVLOS_DA_TIM_AA.Clear;
For c:=0 to PAVLOS_DA_TIM.ColCount-1 do
for d:=0 to PAVLOS_DA_TIM.RowCount-1 do
 PAVLOS_DA_TIM.Cells[c,d]:='';
 PAVLOS_DA_TIM.RowCount:=1;
 end;

procedure TMainForm.YpologismosTelikouSunolouClick(Sender: TObject);
begin
PAVLOS_DA_TIM.Cells[4,7]:=FloatToStr(StrToFLoat(PAVLOS_DA_TIM.Cells[4,5])+StrToFloat(PAVLOS_DA_TIM.Cells[4,6]));
end;

procedure TMainForm.YpologismosFPAClick(Sender: TObject);
var
a:single;
begin
a:=(StrToFloat(PAVLOS_DA_TIM.Cells[4,5])*StrToFloat(PAVLOS_DA_TIM.Cells[3,6]))/100;
PAVLOS_DA_TIM.Cells[4,6]:=FloatToStrf(a,ffFIxed,4,2);
YpologismosTelikouSunolou.Click;
end;

procedure TMainForm.YpologismosSunolouMeEkptosiClick(Sender: TObject);
begin
PAVLOS_DA_TIM.Cells[4,5]:=FloatToStr(StrToFloat(PAVLOS_DA_TIM.Cells[4,3])-StrToFloat(PAVLOS_DA_TIM.Cells[4,4]));
YpologismosFPA.Click;
end;

procedure TMainForm.YpologismosEkptosisClick(Sender: TObject);
  var
  a:Single;
begin
a:=(StrToFloat(PAVLOS_DA_TIM.Cells[4,3])*StrToFloat(PAVLOS_DA_TIM.Cells[3,4]))/100;
PAVLOS_DA_TIM.Cells[4,4]:=FloatToStr(SimpleRoundTo(a,-2));
YpologismosSunolouMeEkptosi.Click;
end;

procedure TMainForm.YpologismosSunolouClick(Sender: TObject);
  var
  a:integer;
  s:single;
 begin
 s:=0;
  for a:=8 to PAVLOS_DA_TIM.RowCount-1 do
  s:=StrToFloat(PAVLOS_DA_TIM.Cells[4,a])+s;
  PAVLOS_DA_TIM.Cells[4,3]:=FloatToStr(SimpleRoundTo(s,-2));
  YPologismosEkptosis.Click;
end;

procedure TMainForm.YpologismosSunolouEidousClick(Sender: TObject);
  var a:integer;
  s:single;
begin
for a:=8 to PAVLOS_DA_TIM.RowCount-1 do
//����� �������� ���� ��� ���� ������ ���������
begin
 s:=StrToFloat(PAVLOS_DA_TIM.Cells[2,a])*StrToFloat(PAVLOS_DA_TIM.Cells[3,a]);
PAVLOS_DA_TIM.Cells[4,a]:=FloatToStr(SimpleRoundTo(s,-2));end;
 YpologismosSunolou.Click;
end;

procedure TMainForm.YPOLOGISMOSClick(Sender: TObject);
begin
TaksinomisiMeOnomasia.Click;
YpologismosSunolouEidous.Click;
PAVLOS_DA_TIM.Cells[0,0]:=PAVLOS_No.Text;
PAVLOS_DA_TIM.Cells[1,1]:='DA-'+PAVLOS_Da.Text+'-'+EndDate.Text;
PAVLOS_DA_TIM.Cells[2,1]:=StartDate.Text;
PAVLOS_DA_TIM.Cells[2,2]:=StartHourMask.Text;
PAVLOS_DA_TIM.Cells[3,1]:=EndDate.Text;
PAVLOS_DA_TIM.Cells[3,2]:=EndHourMask.Text;
PAVLOS_DA_TIM.Cells[4,1]:='TIM-'+PAVLOS_Tim.Text+'-'+PAVLOS_TIM_DATE.Text;
BasketForm.Visible:=false;
DisplayForm.Visible:=false;
end;

procedure TMainForm.LoadMonthClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

begin
  AssignFile(F, Path.Caption+'PavlosMonth'+MainForm.Caption);
  Reset(F);
  with PavlosMonth do
  begin
    // Get number of columns
    Readln(F, Tmp);
    ColCount := Tmp;
    // Get number of rows
    Readln(F, Tmp);
    RowCount := Tmp;
    // loop through cells & fill in values
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
      begin
        Readln(F, StrTemp);
        Cells[I, K] := StrTemp;
      end;
  end;
  CloseFile(F);
 PAVLOS_No.Text:=IntToStr(StrToInt(PavlosMonth.Cells[(PavlosMonth.ColCount-5),0])+1);


end;



procedure TMainForm.SaveMonthClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
 SynchroPoziTron.Execute;//����� ���� ������ �� ���� ����� ���������������
   //���� ��  MessageDlg ���� ���������� �� ��� ���������� ������� �� SynchroPoziTron���� ������ ��������������
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, Path.Caption+'PavlosMonth'+MainForm.Caption);
  Rewrite(F);
  with PavlosMonth do
  begin
    // Write number of Columns/Rows
    Writeln(F, ColCount);
    Writeln(F, RowCount);
    // loop through cells
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
        Writeln(F, Cells[I, K]);
  end;
  CloseFile(F);
  BasketForm.SaveBaskets.Click;
  DBForm.DBSave.Click;
end;
  end;

procedure TMainForm.PutInMonthClick(Sender: TObject);
var
nCol,nRow:integer;
anchorCol:integer;
a, b:integer;
begin
for nCol:=0 to PAVLOS_DA_TIM.ColCount-1 do
for nRow:=0 to PAVLOS_DA_TIM.RowCount-1 do

  begin
  anchorCol:=StrToInt(PAVLOS_DA_TIM.Cells[0,0]);
PavlosMonth.Cells[nCol+((anchorCol*5)-5),nRow]:=PAVLOS_DA_TIM.Cells[nCol,nRow];
PavlosMonth.ColCount:=anchorCol*5;
if PAVLOS_DA_TIM.RowCount>PavlosMonth.RowCount then
 PavlosMonth.RowCount:=PAVLOS_DA_TIM.RowCount;

 end;
 PAVLOS_No.Text:=IntToStr(StrToInt(PAVLOS_No.Text)+1);

 //putting DA-TIM Stamp on sent item
 for a:=0 to BasketForm.PavlosBasket.Items.Count-1 do
 begin
 BasketForm.PavlosBasket.ItemIndex:=a;
 b:=DBForm.DB.Cols[2].IndexOf(BasketForm.PavlosBasket.Text);
if   DBForm.DB.Cells[13,b]<>'' then  begin
 ShowMessage('�� �������'+BasketForm.PavlosBasket.Text+ '���� ������ ��� �� ������ ���������-'+DBForm.DB.Cells[13,b]);
 DBForm.DB.Cells[13,b]:=DBForm.DB.Cells[13,b]+'\\D-'+PAVLOS_DA.Text+'('+BasketForm.PavlosBasket.Text+')';
 end
   else
         begin
 DBForm.DB.Cells[13,b]:='P-'+PAVLOS_DA_TIM.Cells[1,1]+ '('+BasketForm.PavlosBasket.Text+')';
 DBForm.DB.Cells[14,b]:='P-'+PAVLOS_DA_TIM.Cells[4,1]+'('+BasketForm.PavlosBasket.Text+')';
     end;
     end;
 
 NextDay.Click;
 PAVLOS_DA.Text:='';
 PAVLOS_TIM.Text:='';
 SynchroPoziTron.Execute;


     end;

procedure TMainForm.EXCELClick(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=PavlosMonth.RowCount;
  ColCount :=PavlosMonth.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=PavlosMonth.Cells[j-1, i-1];

  {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application');

  {create workbook}
  wb := xls.Workbooks.Add;

  {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1],
                                  wb.WorkSheets[1].Cells[RowCount, ColCount]];

  {copy data from allocated variant array}
  Range.Value := arrData;

  {show Excel with our data}
  xls.Visible := True;
end;

procedure TMainForm.NextDayClick(Sender: TObject);
begin
StartDate.Text:=EndDate.Text;
StartHourMask.Text:=EndHourMask.Text;
end;

procedure TMainForm.NewMonthClick(Sender: TObject);
var
i:integer;
b:integer;
begin
for i:=0 to PavlosMonth.ColCount-1 do
for b:=0 to PavlosMonth.RowCount-1 do
 PavlosMonth.Cells[i,b]:='';
 PavlosMonth.Cells[0,0]:='0';
 PavlosMonth.RowCount:=1;
 PavlosMonth.ColCount:=5;
 PAVLOS_NO.Text:='1';
end;

procedure TMainForm.FillMparakosBasketClick(Sender: TObject);
var
i:integer;
nRow:integer;
KodikosEidous:String;
begin
//����� �������  PavlosBasket, MparakosBasket and MpoyrmpakisBasket and AkirosisBasket  ��� ����������� �������
BasketForm.PavlosBasket.Clear ;
BasketForm.MparakosBasket.Clear ;
BasketForm.MpoyrmpakisBasket.Clear ;
BasketForm.AkirosisBasket.Clear ;

//then finding startTima and EndTime
FindStartTime.Click;
FindEndTime.Click;

for i:=StartRow to EndRow do begin
//zdesvideljaju ������ ������ ��� ��������� ������
EditLab1.Text:=DBForm.DB.Cells[3,i];
EditLab1.SelStart:=0;
EditLab1.SelLength:=4;
KodikosEidous:=EditLab1.SelText;




  //tora naxodim  kodikoseidous v timokataloge
 nRow:=TimokatalogosForm.TimokatalogosSG.Cols[0].IndexOf(KodikosEidous);
  if (nRow>-1)then begin

  //zapolnjaju korzinu Mparakou
        if TimokatalogosForm.TimokatalogosSG.Cells[3,nRow]='P\K' then     //P\K znachit paplomata\koubertes toestMparakos
        BasketForm.MparakosBasket.Items.Add(DBForm.DB.Cells[2,i]);


              end;

        


         
   end;
   ShowBasketForm.Click;
   Otseivatel.Click;

end;

procedure TMainForm.OtseivatelClick(Sender: TObject);
 var
 a,b:integer;
 akiro1, akiro2:string;
label 10;
begin
      //teper nachinaju otseivanie

     a:=0;
     10:

         //sperva naxodim nuzhnii item v DB
      BasketForm.MparakosBasket.ItemIndex:=a;
      b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MparakosBasket.Text);

       //teper otseivaju uzhe poslannie k pavlu temaxia

              EditLab1.Text:=DBForm.DB.Cells[13,b];
              EditLab1.SelStart:=0;
              EditLab1.SelLength:=1;

          if EditLab1.SelText='P' then begin
                BasketForm.PavlosBasket.Items.Add(BasketForm.MparakosBasket.Text);
                BasketForm.MparakosBasket.DeleteSelected;
                  a:=a-1;
                  goto 10;
                  end;

     //zdes videljaju kodiko pros akirosi
        EditLab2.Text:=DBForm.DB.Cells[11,b];
        EditLab2.SelLength:=0;
        EditLab2.SelLength:=1;
        akiro1:=EditLab2.SelText;

        //zdes videljaju kodiko pros akirosi vo vtoroi stroke
EditLab2.Text:=DBForm.DB.Cells[11,b+1];
EditLab2.SelLength:=0;
EditLab2.SelLength:=1;
akiro2:=EditLab2.SelText;

// otseivaju akirosis
          if (DBForm.DB.Cells[8,b]='9') or (akiro1='9') or (akiro2='9')  then begin
         BasketForm.AkirosisBasket.Items.Add(BasketForm.MparakosBasket.Text);
         BasketForm.MparakosBasket.DeleteSelected;
         a:=a-1;

          end;
          a:=a+1;
          if a>BasketForm.MparakosBasket.Items.Count then exit;
         goto 10;



   end;
procedure TMainForm.Empty_MPARAKOS_DA_TIMClick(Sender: TObject);
var
i:integer;
b:integer;
c,d:integer;
begin
//snachala zachishaju vsjo, v sluchae esli ja xochu sdelat proceduru zanovo, chtobi ne ostalos starix dannix

for i:=0 to MPARAKOS_DA_TIM_Invs.ColCount-1 do
for b:=0 to MPARAKOS_DA_TIM_Invs.RowCount-1 do
 MPARAKOS_DA_TIM_Invs.Cells[i,b]:='';
 MPARAKOS_DA_TIM_Invs.RowCount:=1;

MPARAKOS_DA_TIM_AA.Clear;
For c:=0 to PK_DeltioApostolis.ColCount-1 do
for d:=0 to PK_DeltioApostolis.RowCount-1 do
 PK_DeltioApostolis.Cells[c,d]:='';
 PK_DeltioApostolis.RowCount:=1;
 end;

procedure TMainForm.Fill_MPARAKOS_DA_TIM_INVSClick(Sender: TObject);
var
   a, b,nRow,DBRow,nRowTimokatalogosSG:integer;
   kodikosEidous:string;
   label 10;
begin
Empty_MPARAKOS_DA_TIM.Click;

 a:=0;
  b:=0;
   10:
  //sperva naxozhu nuzhnii kodikos paralavis  v DB
 BasketForm.MparakosBasket.ItemIndex:=a;
 DBRow:=DBForm.DB.Cols[2].IndexOf(BasketForm.MparakosBasket.Text);

 //exl vshli kods da perigrafis - kodis nacilad da perigrafis nacilad
EditLab1.Text:=DBForm.DB.Cells[3,DBRow];
EditLab1.SelStart:=0;
EditLab1.SelLength:=4;
kodikosEidous:=EditLab1.SelText;


nRow:=MPARAKOS_DA_TIM_INVS.Cols[0].IndexOf(kodikosEidous);
if (nRow>-1) then  

MPARAKOS_DA_TIM_INVS.Cells[2,nRow]:=FloatToStr(StrToFloat(MPARAKOS_DA_TIM_INVS.Cells[2,nRow])+StrToFloat(DBForm.DB.Cells[5,DBRow]))

else begin


MPARAKOS_DA_TIM_INVS.Cells[0,b]:=kodikosEidous;
//���� ������ �� ������ ��� ������������ ��� ��������� ������
nRowTimokatalogosSG:=TimokatalogosForm.TimokatalogosSG.Cols[0].IndexOf(kodikosEidous);

MPARAKOS_DA_TIM_INVS.Cells[1,b]:=TimokatalogosForm.TimokatalogosSG.Cells[1,nRowTimokatalogosSG];

MPARAKOS_DA_TIM_INVS.Cells[2,b]:=DBForm.DB.Cells[5,DBRow];




b:=b+1;
MPARAKOS_DA_TIM_INVS.RowCount:=MPARAKOS_DA_TIM_INVS.RowCount+1;
end;
a:=a+1;
if a>=BasketForm.MparakosBasket.Items.Count then exit;


goto 10;
   end;


procedure TMainForm.TaksinomisiMeOnomasia_P_KClick(Sender: TObject);
var
a,b,c:integer;
begin
Fill_MPARAKOS_DA_TIM_INVS.Click;
//zagruzjau MPARAKOS_DA_TIM_AA
for a:=0 to MPARAKOS_DA_TIM_INVS.RowCount-2 do
MPARAKOS_DA_TIM_AA.Items.Add(MPARAKOS_DA_TIM_INVS.Cells[1,a]);
 //azgruzhaju MPARAKOS_DA_TIM
for b:=0 to MPARAKOS_DA_TIM_AA.Items.Count do begin
           MPARAKOS_DA_TIM_AA.ItemIndex:=b;
 c:=MPARAKOS_DA_TIM_INVS.Cols[1].IndexOf(MPARAKOS_DA_TIM_AA.Text);
PK_DeltioApostolis.Cells[0,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[0,c];
PK_DeltioApostolis.Cells[1,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[1,c];
PK_DeltioApostolis.Cells[2,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[2,c];

{//vivozhu teksti
MPARAKOS_DA_TIM.Cells[2,3]:='������';
MPARAKOS_DA_TIM.Cells[2,4]:='�������';
  //��� ����� ��������� ��� ��������
  if MainForm.Caption='KALLITHEA' then
MPARAKOS_DA_TIM.Cells[3,4]:='0'  else
MPARAKOS_DA_TIM.Cells[3,4]:='5';

MPARAKOS_DA_TIM.Cells[2,5]:='������ �� �������';
MPARAKOS_DA_TIM.Cells[2,6]:='���';
MPARAKOS_DA_TIM.Cells[3,6]:='24';
MPARAKOS_DA_TIM.Cells[2,7]:='������ ������';}

PK_DeltioApostolis.RowCount:=b+3;
   end;

end;


procedure TMainForm.EXCEL_MONTHClick(Sender: TObject);
var
a:integer;

  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
//����� PAVLOS_DA_TIM_INVS-shi valageb ise rogorc minda ro gamovagdo mere excel-shi
PAVLOS_DA_TIM_INVS.Cells[0,0]:=MainForm.Caption;
for a:=1 to PavlosMonth.ColCount-2 do begin
PAVLOS_DA_TIM_INVS.RowCount:=30;
PAVLOS_DA_TIM_INVS.Cells[0,a]:=PavlosMonth.Cells[(a*5)-1,1];
PAVLOS_DA_TIM_INVS.Cells[1,a]:=PavlosMonth.Cells[(a*5)-1,7];
PAVLOS_DA_TIM_INVS.Cells[3,a]:=PavlosMonth.Cells[(a*5)-4,0];
       end;

//exla excelshi amogdeba
 {create variant array where we'll copy our data}
  RowCount :=PAVLOS_DA_TIM_INVS.RowCount;
  ColCount :=PAVLOS_DA_TIM_INVS.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=PAVLOS_DA_TIM_INVS.Cells[j-1, i-1];

  {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application');

  {create workbook}
  wb := xls.Workbooks.Add;

  {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1],
                                  wb.WorkSheets[1].Cells[RowCount, ColCount]];

  {copy data from allocated variant array}
  Range.Value := arrData;

  {show Excel with our data}
  xls.Visible := True;

end;

procedure TMainForm.YPOLOGISMOS_TEMAXIONClick(Sender: TObject);
begin
TaksinomisiMeOnomasia_P_K.Click;


PK_DeltioApostolis.Cells[0,1]:=StartDate.Text;
PK_DeltioApostolis.Cells[0,2]:=StartHourMask.Text;
PK_DeltioApostolis.Cells[1,1]:='DA-'+MPARAKOS_DA.Text+'-'+EndDate.Text;;
PK_DeltioApostolis.Cells[2,1]:=EndDate.Text;
PK_DeltioApostolis.Cells[2,2]:=EndHourMask.Text;
PK_DeltioApostolis.Cells[1,0]:=MPARAKOS_NO.Text;


BasketForm.Visible:=false;
DisplayForm.Visible:=false;

end;

procedure TMainForm.FillMpoyrmpakisBasketClick(Sender: TObject);
begin
FillPavlosBasket.Click;
D_Otseivatel.Click;
end;

procedure TMainForm.D_OtseivatelClick(Sender: TObject);
var
 a,b:integer;

label 10;
begin
      //teper nachinaju otseivanie

     a:=0;
     10:

         //sperva naxodim nuzhnii item v DB
      BasketForm.MpoyrmpakisBasket.ItemIndex:=a;
      b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MpoyrmpakisBasket.Text);

       //teper otseivaju uzhe poslannie k pavlu temaxia

              EditLab1.Text:=DBForm.DB.Cells[13,b];
              EditLab1.SelStart:=0;
              EditLab1.SelLength:=1;

          if EditLab1.SelText='P' then begin
                BasketForm.PavlosBasket.Items.Add(BasketForm.MpoyrmpakisBasket.Text);
                BasketForm.MpoyrmpakisBasket.DeleteSelected;
                  a:=a-1;
                  goto 10;
                  end;

    { //zdes videljaju kodiko pros akirosi
        EditLab2.Text:=DBForm.DB.Cells[11,b];
        EditLab2.SelLength:=0;
        EditLab2.SelLength:=1;
        akiro1:=EditLab2.SelText;

        //zdes videljaju kodiko pros akirosi vo vtoroi stroke
EditLab2.Text:=DBForm.DB.Cells[11,b+1];
EditLab2.SelLength:=0;
EditLab2.SelLength:=1;
akiro2:=EditLab2.SelText;

// otseivaju akirosis
          if (DBForm.DB.Cells[8,b]='9') or (akiro1='9') or (akiro2='9')  then begin
         BasketForm.AkirosisBasket.Items.Add(BasketForm.MpoyrmpakisBasket.Text);
         BasketForm.MpoyrmpakisBasket.DeleteSelected;
         a:=a-1;

          end;}
          
          a:=a+1;
          if a>BasketForm.MpoyrmpakisBasket.Items.Count then exit;
         goto 10;



end;

procedure TMainForm.Fill_D_DeltioApostolisClick(Sender: TObject);
var
a,b:integer;
begin
//tora zapolnjaju deltio apostolis
D_DeltioApostolis.Cells[1,0]:=Mpoyrmpakis_NO.Text;

D_DeltioApostolis.Cells[0,1]:=StartDate.Text;
D_DeltioApostolis.Cells[0,2]:=StartHourMask.Text;

D_DeltioApostolis.Cells[1,1]:='DA-'+Mpoyrmpakis_DA.Text+'-'+EndDate.Text;

D_DeltioApostolis.Cells[2,1]:=EndDate.Text;
D_DeltioApostolis.Cells[2,2]:=EndHourMask.Text;

  for a:=0 to BasketForm.MpoyrmpakisBasket.Items.Count-1 do  begin
 BasketForm.MpoyrmpakisBasket.ItemIndex:=a;
 b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MpoyrmpakisBasket.Text);
D_DeltioApostolis.Cells[0,a+3]:=BasketForm.MpoyrmpakisBasket.Text;
D_DeltioApostolis.Cells[1,a+3]:=DBForm.DB.Cells[3,b];
D_DeltioApostolis.Cells[2,a+3]:=DBForm.DB.Cells[4,b];
D_DeltioApostolis.Cells[3,a+3]:='DA-'+Mpoyrmpakis_DA.Text+'-'+EndDate.Text;
D_DeltioApostolis.RowCount:=BasketForm.MpoyrmpakisBasket.Items.Count+3;
  end;


//zakrivajua BasketForm
BasketForm.Visible:=false;


end;

procedure TMainForm.ADD_IXClick(Sender: TObject);
var
a:integer;
begin
a:=D_DeltioApostolis.RowCount;
D_DeltioApostolis.RowCount:=a+1;
D_DeltioApostolis.Cells[0,a]:=IX_Number.Text;
D_DeltioApostolis.Cells[1,a]:=IX_Perigrafi.Text;
D_DeltioApostolis.Cells[2,a]:='0';
D_DeltioApostolis.Cells[3,a]:=Mpoyrmpakis_DA.Text;
IX_Number.Text:=IntToStr(StrToInt(IX_Number.Text)+1);

end;

procedure TMainForm.SAVE_D_ARCHIVEClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
  SynchroPoziTron.Execute;//����� ���� ������ �� ���� ����� ���������������
  //���� ��  MessageDlg ���� ���������� �� ��� ���������� ������� �� SynchroPoziTron���� ������ ��������������
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, Path.Caption+'D_Archive'+MainForm.Caption);
  Rewrite(F);
  with D_Archive do
  begin
    // Write number of Columns/Rows
    Writeln(F, ColCount);
    Writeln(F, RowCount);
    // loop through cells
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
        Writeln(F, Cells[I, K]);
  end;
  CloseFile(F);
  BasketForm.SaveBaskets.Click;
  DBForm.DBSave.Click;
  D_TimologisiForm.SAVE_D_Xrostaei.Click;
end;
  end;

procedure TMainForm.LOAD_D_ARCHIVEClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

begin
  AssignFile(F, Path.Caption+'D_Archive'+MainForm.Caption);
  Reset(F);
  with D_Archive do
  begin
    // Get number of columns
    Readln(F, Tmp);
    ColCount := Tmp;
    // Get number of rows
    Readln(F, Tmp);
    RowCount := Tmp;
    // loop through cells & fill in values
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
      begin
        Readln(F, StrTemp);
        Cells[I, K] := StrTemp;
      end;
  end;
  CloseFile(F);
  Mpoyrmpakis_NO.Text:=IntToStr(StrToInt(D_Archive.Cells[1,D_Archive.RowCount-1]));
  IX_Number.Text:=IntToStr(StrToInt(D_Archive.Cells[3,D_Archive.RowCount-1]));
  D_TimologisiForm.LOAD.Click;


end;

procedure TMainForm.ADD_D_ARCHIVEClick(Sender: TObject);
var
a,b,c,d,f:integer;
begin
a:=D_DeltioApostolis.RowCount;
//zdes dobavljaju NO ��� ����� ��� �������, ��� �� �� ��� ���� �������
D_DeltioApostolis.RowCount:=D_DeltioApostolis.RowCount+1;
D_DeltioApostolis.Cells[1,a]:=IntToStr(StrToInt(Mpoyrmpakis_NO.Text)+1);
//zdes dobavljaju pustotu, chtobi po oshibke mne ne vivodilo tekst ot predidushego Deltio, potomuchto uvelichivaju rowcount ne zachishaja nichego, tak chot tam mochet ostatsja chtonibud.
D_DeltioApostolis.Cells[2,a]:='';
//sdes dobavljaju IX_Number  ��� ����� ��� �������, ��� �� �� ��� ���� �������
D_DeltioApostolis.Cells[3,a]:=IX_Number.Text;

// ���� perenoshu DeltioApostolis v Archive
b:=D_Archive.RowCount-1;
D_Archive.RowCount:=D_Archive.RowCount+D_DeltioApostolis.RowCount-1;
for c:=0 to 3 do begin
for d:=0 to D_DeltioApostolis.RowCount-1 do begin
D_Archive.Cells[c,d+b]:=D_DeltioApostolis.Cells[c,d];


end;
 end;
 //zdes dobavljaju items v korzinu D_Xrostaei
for f:=3 to D_DeltioApostolis.RowCount-2 do begin
D_TimologisiForm.D_Xrostaei.Items.Add(D_DeltioApostolis.Cells[0,f])

end;

//sdes dobavljaju arithmo deltiou apostolis v DB
  for a:=0 to BasketForm.MpoyrmpakisBasket.Items.Count-1 do
 begin
 BasketForm.MpoyrmpakisBasket.ItemIndex:=a;
 b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MpoyrmpakisBasket.Text);
 if   DBForm.DB.Cells[13,b]<>'' then  begin
 ShowMessage('�� �������'+BasketForm.MpoyrmpakisBasket.Text+ '���� ������ ��� �� ������ ���������-'+DBForm.DB.Cells[13,b]);
 DBForm.DB.Cells[13,b]:=DBForm.DB.Cells[13,b]+'\\D-'+D_DeltioApostolis.Cells[1,1]+'('+BasketForm.MpoyrmpakisBasket.Text+')';
 end
   else
    DBForm.DB.Cells[13,b]:='D-'+D_DeltioApostolis.Cells[1,1]+'('+BasketForm.MpoyrmpakisBasket.Text+')';

 end;


 //zdes izmenjaju porjadkovii nomer v Mpoyrmpakis_NO
 Mpoyrmpakis_NO.Text:=IntToStr(StrToInt(Mpoyrmpakis_NO.Text)+1);
 //zdes ochishaju pole dlja DA
 Mpoyrmpakis_DA.Text:='';
 SynchroPoziTron.Execute;


end;

procedure TMainForm.ShowD_TimolgisiFormClick(Sender: TObject);
begin
D_TimologisiForm.Visible:=true;
D_TimologisiForm.FormStyle:=fsStayOnTop;
D_TimologisiForm.D_Timologio.Cells[0,2]:='�������';
D_TimologisiForm.D_Timologio.Cells[1,2]:='��������';
D_TimologisiForm.D_Timologio.Cells[2,2]:='����������';
D_TimologisiForm.D_Timologio.Cells[3,2]:='����';
D_TimologisiForm.D_Timologio.Cells[4,2]:='���';
D_TimologisiForm.D_Timologio.Cells[5,2]:='���� �� ���';
D_TimologisiForm.D_Timologio.Cells[6,2]:='���� CLEAN POINT';
D_TimologisiForm.D_Timologio.Cells[6,1]:='������';
end;

procedure TMainForm.ADD_ROW_COUNTClick(Sender: TObject);
begin
D_archive.RowCount:=D_archive.RowCount+1;
end;

procedure TMainForm.SynchroPoziTronExecute(Sender: TObject);
var
row:integer;
begin
row:=DBForm.DB.RowCount-11;
if (DBForm.DB.Cells[2,row]<>DBForm.DB.Cells[16,row]) or
   (DBForm.DB.Cells[2,row-1]<>DBForm.DB.Cells[16,row-1]) OR
   (DBForm.DB.Cells[2,row-1]<>DBForm.DB.Cells[16,row+1]) then
   ShowMessage('Synchronization Lost!!!!!!!!!!Synchronization Lost!!!!!!!!!!!!!!!!!!Synchronization Lost!!!!!!!!!!!!!!!!!!!!!!Synchronization Lost!!!!!!!!!!!!!!!Synchronization Lost!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Synchronization Lost!');

end;

procedure TMainForm.SynchroPoziTronButtonClick(Sender: TObject);
begin
synchropozitron.Execute;
end;

procedure TMainForm.SAVE_PK_ArchiveClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
  SynchroPoziTron.Execute;//����� ���� ������ �� ���� ����� ���������������
  //���� ��  MessageDlg ���� ���������� �� ��� ���������� ������� �� SynchroPoziTron���� ������ ��������������
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, Path.Caption+'PK_Archive'+MainForm.Caption);
  Rewrite(F);
  with PK_Archive do
  begin
    // Write number of Columns/Rows
    Writeln(F, ColCount);
    Writeln(F, RowCount);
    // loop through cells
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
        Writeln(F, Cells[I, K]);
  end;
  CloseFile(F);
  BasketForm.SaveBaskets.Click;
  DBForm.DBSave.Click;
  Save_PK_Xrostaei.Click; 
end;
  end;

procedure TMainForm.LOAD_PK_ARCHIVEClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

begin
  AssignFile(F, Path.Caption+'PK_Archive'+MainForm.Caption);
  Reset(F);
  with PK_Archive do
  begin
    // Get number of columns
    Readln(F, Tmp);
    ColCount := Tmp;
    // Get number of rows
    Readln(F, Tmp);
    RowCount := Tmp;
    // loop through cells & fill in values
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
      begin
        Readln(F, StrTemp);
        Cells[I, K] := StrTemp;
      end;
  end;
  CloseFile(F);
  Mparakos_NO.Text:=IntToStr(StrToInt(PK_Archive.Cells[0,PK_Archive.RowCount-1])+1);
LOAD_B_Archive.Click;
   end;
procedure TMainForm.PK_XrostaeiDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TMainForm.PK_XrostaeiSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(PK_Xrostaei.Text);
 for  a:=0 to 10 do begin
 DisplayForm.DisplaySG.RowCount:=DBForm.DB.ColCount+3;
 DisplayForm.DisplaySG.Cells[1,a]:=DBForm.DB.Cells[a,nRow];
end;
 DisplayForm.DisplaySG.Cells[1,11]:=DBForm.DB.Cells[9,nRow+1];
 DisplayForm.DisplaySG.Cells[1,12]:=DBForm.DB.Cells[10,nRow+1];
 DisplayForm.DisplaySG.Cells[1,13]:=DBForm.DB.Cells[11,nRow];
 DisplayForm.DisplaySG.Cells[1,14]:=DBForm.DB.Cells[11,nRow+1];
 DisplayForm.DisplaySG.Cells[1,15]:=DBForm.DB.Cells[12,nRow];
 DisplayForm.DisplaySG.Cells[1,16]:=DBForm.DB.Cells[13,nRow];
 DisplayForm.DisplaySG.Cells[1,17]:=DBForm.DB.Cells[14,nRow];
 DisplayForm.DisplaySG.Cells[1,18]:=DBForm.DB.Cells[15,nRow];
    end;

procedure TMainForm.ADD_ArchiveClick(Sender: TObject);
var
a,b,c,d,f:integer;
begin


       // ���� perenoshu DeltioApostolis v Archive
Mparakos_NO.Text:=IntToStr(StrToInt(Mparakos_NO.Text)+1); //zdes izmenjaju porjadkovii nomer v Mparakos_NO
PK_Archive.RowCount:=PK_Archive.RowCount+1;//dobavljajiu stroku v konce, chtobi zapolnit
a:=PK_Archive.RowCount-1;
PK_Archive.Cells[0,a]:=PK_DeltioApostolis.Cells[1,0];
                            //zapolnjau ������ ������� ���������, ���� �� ��� ����������� ��� ����
 PK_Archive.Cells[1,a]:=PK_DeltioApostolis.Cells[1,1]+'('+
                        PK_DeltioApostolis.Cells[0,1]+'['+
                        PK_DeltioApostolis.Cells[0,2]+'-'+
                        PK_DeltioApostolis.Cells[2,1]+'['+
                        PK_DeltioApostolis.Cells[2,2]+']';

   for c:=3 to PK_DeltioApostolis.RowCount-1 do begin
    d:=PK_Archive.Rows[0].IndexOf(PK_DeltioApostolis.Cells[0,c]);
       if d=-1 then begin   //�� ��� ��� ������ ������ �����, ����� ���� ��� ����� ���������, ��� ���� ���� ��� �������
       PK_Archive.ColCount:=PK_Archive.ColCount+1;
       PK_Archive.Cells[PK_Archive.ColCount-1,0]:=PK_DeltioApostolis.Cells[0,c];
       PK_Archive.Cells[PK_Archive.ColCount-1,a]:=PK_DeltioApostolis.Cells[2,c];
       end
       else    //���� ������� ������� ������� ��� ����� ����������, ���� ���� �������
       PK_Archive.Cells[d,a]:=PK_DeltioApostolis.Cells[2,c];
       end;

 //zdes dobavljaju items v korzinu PK_Xrostaei
for f:=0 to BasketForm.MparakosBasket.Items.Count-1 do
begin
BasketForm.MparakosBasket.ItemIndex:=f;
PK_Xrostaei.Items.Add(BasketForm.MparakosBasket.Text);

end;

//sdes dobavljaju arithmo deltiou apostolis v DB
  for a:=0 to BasketForm.MparakosBasket.Items.Count-1 do
 begin
 BasketForm.MparakosBasket.ItemIndex:=a;
 b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MparakosBasket.Text);
 if   DBForm.DB.Cells[13,b]<>'' then  begin
 ShowMessage('�� �������'+BasketForm.MparakosBasket.Text+ '���� ������ ��� �� ������ ���������-'+DBForm.DB.Cells[13,b]);
 DBForm.DB.Cells[13,b]:=DBForm.DB.Cells[13,b]+'\\K\P-'+PK_DeltioApostolis.Cells[1,1]+'('+BasketForm.MparakosBasket.Text+')';
 end
   else
    DBForm.DB.Cells[13,b]:='K\P-'+PK_DeltioApostolis.Cells[1,1]+'('+BasketForm.MparakosBasket.Text+')';

 end;



 //zdes ochishaju pole dlja DA
 Mparakos_DA.Text:='';
 SynchroPoziTron.Execute;


end;

procedure TMainForm.NewStartClick(Sender: TObject);
begin
PK_Archive.RowCount:=2;
PK_Archive.Cells[0,1]:='0';
PK_Archive.Cells[2,0]:='0020';
PK_Archive.Cells[3,0]:='0031';
Mparakos_NO.Text:='1';
end;

procedure TMainForm.PackageDealClick(Sender: TObject);
var
a:integer;
begin
//sperva zapolnjaju MparakosBasket �� ������� ���� ��� ������� ��������� (PackageDeal)
BasketForm.MparakosBasket.Items.Clear;
 for a:=0 to PK_Xrostaei.Items.Count-1 do
 begin
 PK_Xrostaei.ItemIndex:=a;
 BasketForm.MparakosBasket.Items.Add(PK_Xrostaei.Text);
 end;
 PK_Xrostaei.Items.Clear;
 TaksinomisiMeOnomasia_B_DA.Click;
B_DeltioApostolis.Cells[1,1]:=B_DA.Text;
B_DeltioApostolis.Cells[1,0]:=B_NO.Text;

 
end;

procedure TMainForm.TaksinomisiMeOnomasia_B_DAClick(Sender: TObject);
var
a,b,c:integer;
begin
Fill_MPARAKOS_DA_TIM_INVS.Click;
//zagruzjau MPARAKOS_DA_TIM_AA
for a:=0 to MPARAKOS_DA_TIM_INVS.RowCount-2 do
MPARAKOS_DA_TIM_AA.Items.Add(MPARAKOS_DA_TIM_INVS.Cells[1,a]);
 //azgruzhaju MPARAKOS_DA_TIM
for b:=0 to MPARAKOS_DA_TIM_AA.Items.Count do begin
           MPARAKOS_DA_TIM_AA.ItemIndex:=b;
 c:=MPARAKOS_DA_TIM_INVS.Cols[1].IndexOf(MPARAKOS_DA_TIM_AA.Text);
B_DeltioApostolis.Cells[0,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[0,c];
B_DeltioApostolis.Cells[1,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[1,c];
B_DeltioApostolis.Cells[2,b+3]:=MPARAKOS_DA_TIM_INVS.Cells[2,c];

B_DeltioApostolis.RowCount:=b+3;
   end;

end;
procedure TMainForm.ADD_B_ArchiveClick(Sender: TObject);
var
a,b,c,d:integer;

begin


       // ���� perenoshu B_DeltioApostolis v Archive
B_NO.Text:=IntToStr(StrToInt(B_NO.Text)+1); //zdes izmenjaju porjadkovii nomer v B_NO
B_Archive.RowCount:=B_Archive.RowCount+1;//dobavljajiu stroku v konce, chtobi zapolnit
a:=B_Archive.RowCount-1;
B_Archive.Cells[0,a]:=B_DeltioApostolis.Cells[1,0];
                            //zapolnjau ������ ������� ���������
 B_Archive.Cells[1,a]:=B_DeltioApostolis.Cells[1,1];

   for c:=3 to B_DeltioApostolis.RowCount-1 do begin
    d:=B_Archive.Rows[0].IndexOf(B_DeltioApostolis.Cells[0,c]);
       if d=-1 then begin   //�� ��� ��� ������ ������ �����, ����� ���� ��� ����� ���������, ���������� ���� ���������(1) ��� ���� ���� ��� �������
       B_Archive.ColCount:=B_Archive.ColCount+1;
       B_Archive.Cells[B_Archive.ColCount-1,0]:=B_DeltioApostolis.Cells[0,c];
       B_Archive.Cells[B_Archive.ColCount-1,1]:='1';
       B_Archive.Cells[B_Archive.ColCount-1,a]:=B_DeltioApostolis.Cells[2,c];
       end
       else    //���� ������� ������� ������� ��� ����� ����������, ���� ���� �������
       B_Archive.Cells[d,a]:=B_DeltioApostolis.Cells[2,c];
       end;
 
   B_Aksia_DA.Click;//ypologizv aksia toy deltioy

//sdes dobavljaju arithmo deltiou apostolis v DB
  for a:=0 to BasketForm.MparakosBasket.Items.Count-1 do
 begin
 BasketForm.MparakosBasket.ItemIndex:=a;
 b:=DBForm.DB.Cols[2].IndexOf(BasketForm.MparakosBasket.Text);
 if   DBForm.DB.Cells[14,b]<>'' then  begin
 ShowMessage('�� �������-'+BasketForm.MparakosBasket.Text+ '-���� ����� ��� �� ������ ���������-'+DBForm.DB.Cells[13,b]);
 DBForm.DB.Cells[14,b]:=DBForm.DB.Cells[14,b]+'\\D-'+B_DA.Text+'('+BasketForm.MparakosBasket.Text+')';
 end
   else
    DBForm.DB.Cells[14,b]:='K\P-'+B_DA.Text+'('+BasketForm.MparakosBasket.Text+')';

 end;



 //zdes ochishaju pole dlja sledujushegogo DA
 //B_DA.Text:='DA-';
 for a:=0 to B_DeltioApostolis.ColCount-1 do
 for b:=0 to B_DeltioApostolis.RowCount-1 do
 B_DeltioApostolis.Cells[a,b]:='';
 B_DeltioApostolis.RowCount:=1;

 SynchroPoziTron.Execute;


end;

procedure TMainForm.B_NewMontClick(Sender: TObject);
begin
B_Archive.ColCount:=5;
B_Archive.RowCount:=2;
B_Archive.Cells[0,0]:='';
B_Archive.Cells[0,1]:='0';
B_Archive.Cells[1,0]:='DA';
B_Archive.Cells[1,1]:='';
B_Archive.Cells[2,0]:='���.����';
B_Archive.Cells[2,1]:='';
B_Archive.Cells[3,0]:='0020';
B_Archive.Cells[3,1]:='3';
B_Archive.Cells[4,0]:='0031';
B_Archive.Cells[4,1]:='4';
B_NO.Text:='1';
end;

procedure TMainForm.SAVE_B_ARCHIVEClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
  SynchroPoziTron.Execute;//����� ���� ������ �� ���� ����� ���������������
  //���� ��  MessageDlg ���� ���������� �� ��� ���������� ������� �� SynchroPoziTron���� ������ ��������������
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, Path.Caption+'B_Archive'+MainForm.Caption);
  Rewrite(F);
  with B_Archive do
  begin
    // Write number of Columns/Rows
    Writeln(F, ColCount);
    Writeln(F, RowCount);
    // loop through cells
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
        Writeln(F, Cells[I, K]);
  end;
  CloseFile(F);
  BasketForm.SaveBaskets.Click;
  DBForm.DBSave.Click;
  Save_PK_Archive.Click;
  Save_PK_Xrostaei.Click;
end;
  end;

procedure TMainForm.LOAD_B_ARCHIVEClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

begin
  AssignFile(F, Path.Caption+'B_Archive'+MainForm.Caption);
  Reset(F);
  with B_Archive do
  begin
    // Get number of columns
    Readln(F, Tmp);
    ColCount := Tmp;
    // Get number of rows
    Readln(F, Tmp);
    RowCount := Tmp;
    // loop through cells & fill in values
    for I := 0 to ColCount - 1 do
      for K := 0 to RowCount - 1 do
      begin
        Readln(F, StrTemp);
        Cells[I, K] := StrTemp;
      end;
  end;
  CloseFile(F);
  B_NO.Text:=IntToStr(StrToInt(B_Archive.Cells[0,B_Archive.RowCount-1])+1);

   end;

procedure TMainForm.B_Aksia_DAClick(Sender: TObject);
var
a,b:integer;
begin
b:=B_archive.RowCount-1;
B_archive.RowCount:=B_archive.RowCount+1;//dobavljau stroku, chtobi tam zapisat kakieto rezultati vichislenija, potom sotru
B_Archive.Cells[2,b]:='0';
for a:=3 to B_Archive.ColCount-1 do begin
if B_Archive.Cells[a,b]='' then B_Archive.Cells[a,b]:='0';
B_Archive.Cells[a,b+1]:=FloatToStr(StrToFloat(B_Archive.Cells[a,b])*StrToFloat(B_Archive.Cells[a,1]));
B_Archive.Cells[2,b]:=FloatToStr(StrToFloat(B_Archive.Cells[2,b])+StrToFloat(B_Archive.Cells[a,b+1])*1.24);
//����� ������ ���� ��� ��� ���������, �� ���� ��� ���� ��� �� �����
B_Archive.Cells[a,b+1]:='';
end;
B_Archive.RowCount:=B_Archive.RowCount-1;
 end;
procedure TMainForm.Save_PK_XrostaeiClick(Sender: TObject);
begin
PK_Xrostaei.Items.SaveToFile(Path.Caption+'PK_Xrostaei'+MainForm.Caption);
end;

procedure TMainForm.Load_PK_XrostaeiClick(Sender: TObject);
begin
PK_Xrostaei.Items.LoadFromFile(Path.Caption+'PK_Xrostaei'+MainForm.Caption);
end;

procedure TMainForm.PK_Archive_ExcelClick(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=PK_Archive.RowCount;
  ColCount :=PK_Archive.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=PK_Archive.Cells[j-1, i-1];

  {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application');

  {create workbook}
  wb := xls.Workbooks.Add;

  {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1],
                                  wb.WorkSheets[1].Cells[RowCount, ColCount]];

  {copy data from allocated variant array}
  Range.Value := arrData;

  {show Excel with our data}
  xls.Visible := True;
end;


procedure TMainForm.B_Archive_EXCELClick(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=B_Archive.RowCount;
  ColCount :=B_Archive.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=B_Archive.Cells[j-1, i-1];

  {initialize an instance of Excel}
  xls := CreateOLEObject('Excel.Application');

  {create workbook}
  wb := xls.Workbooks.Add;

  {retrieve a range where data must be placed}
  Range := wb.WorkSheets[1].Range[wb.WorkSheets[1].Cells[1, 1],
                                  wb.WorkSheets[1].Cells[RowCount, ColCount]];

  {copy data from allocated variant array}
  Range.Value := arrData;

  {show Excel with our data}
  xls.Visible := True;
end;


procedure TMainForm.RadioButton1Click(Sender: TObject);
begin
path.Caption:='C:\CleanExpressFiles\';
end;

procedure TMainForm.RadioButton2Click(Sender: TObject);
begin
Path.Caption:='\\Misha\c\CleanExpressFiles\';
end;

procedure TMainForm.EnaEnaClick(Sender: TObject);
begin
BasketForm.MparakosBasket.Items.Clear;
BasketForm.MparakosBasket.Items.Add(PK_Xrostaei.Text);
PK_Xrostaei.DeleteSelected;
TaksinomisiMeOnomasia_B_DA.Click;
B_DeltioApostolis.Cells[1,1]:=B_DA.Text;
B_DeltioApostolis.Cells[1,0]:=B_NO.Text;

ADD_B_Archive.Click;
Counter.Caption:=IntToStr(StrToInt(Counter.Caption)+1) ;
end;

procedure TMainForm.EndHourMaskKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then PAVLOS_DA.SetFocus;
end;

procedure TMainForm.PAVLOS_DAKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then PAVLOS_TIM.SetFocus;
end;

procedure TMainForm.PAVLOS_TIMKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
PAVLOS_TIM_DATE.SetFocus;
PAVLOS_TIM_DATE.SelStart:=0;
end;
end;

procedure TMainForm.PAVLOS_TIM_DATEKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then FillPavlosBasket.Click;
end;

procedure TMainForm.StartDateKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then StartHourMask.SetFocus;
end;

procedure TMainForm.EndDateKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then EndHourMask.SetFocus;
end;

procedure TMainForm.StartHourMaskKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then begin
EndDate.SetFocus;
EndDate.SelStart:=0;
end;
end;

procedure TMainForm.CounterClick(Sender: TObject);
begin
Counter.Caption:='0';
end;

end.
