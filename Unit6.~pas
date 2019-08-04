unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Math, ComObj;

type
  TD_TimologisiForm = class(TForm)
    D_Xrostaei: TComboBox;
    SAVE_D_Xrostaei: TButton;
    LOAD: TButton;
    D_Timologio: TStringGrid;
    ADD_TO_TIMOLOGIO: TButton;
    YPOLOGISMOS: TButton;
    D_MONTH: TStringGrid;
    PutInMonth: TButton;
    D_TIM: TEdit;
    D_TIM_NO: TEdit;
    SaveDMonth: TButton;
    EXCEL: TButton;
    NewMonth: TButton;
    procedure SAVE_D_XrostaeiClick(Sender: TObject);
    procedure LOADClick(Sender: TObject);
    procedure D_XrostaeiDblClick(Sender: TObject);
    procedure D_XrostaeiSelect(Sender: TObject);
    procedure ADD_TO_TIMOLOGIOClick(Sender: TObject);
    procedure YPOLOGISMOSClick(Sender: TObject);
    procedure PutInMonthClick(Sender: TObject);
    procedure SaveDMonthClick(Sender: TObject);
    procedure EXCELClick(Sender: TObject);
    procedure NewMonthClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  D_TimologisiForm: TD_TimologisiForm;

implementation

uses Unit1, Unit5, Unit2, Unit4;

{$R *.dfm}

procedure TD_TimologisiForm.SAVE_D_XrostaeiClick(Sender: TObject);
begin
D_Xrostaei.Items.SaveToFile(MainForm.Path.Caption+'D_Xrostaei'+MainForm.Caption);

end;

procedure TD_TimologisiForm.LOADClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

begin
  AssignFile(F, MainForm.Path.Caption+'D_Month'+MainForm.Caption);
  Reset(F);
  with D_Month do
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
  D_Xrostaei.Items.LoadFromFile(MainForm.Path.Caption+'D_Xrostaei'+MainForm.Caption);
  D_TIM_NO.Text:=IntToStr(StrToInt(D_MONTH.Cells[1,D_MONTH.RowCount-1]));



end;



procedure TD_TimologisiForm.D_XrostaeiDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TD_TimologisiForm.D_XrostaeiSelect(Sender: TObject);
var a, nRow, nRow1:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(D_Xrostaei.Text);
 if nRow=-1 then begin
 ShowMessage('NO SUCH ITEM IN DB-'+D_Xrostaei.Text+'-ΠΑΜΕ ΝΑ ΔΟΥΜΕ ΣΤΟ ΑΡΧΕΙΟ ΔΕΛΤΙΩΝ');
 DisplayForm.DisplaySG.RowCount:=4;
 nRow1:=MainForm.D_Archive.Cols[0].IndexOf(D_Xrostaei.Text);
  DisplayForm.DisplaySG.Cells[1,0]:=MainForm.D_Archive.Cells[0,nRow1];
   DisplayForm.DisplaySG.Cells[1,1]:=MainForm.D_Archive.Cells[1,nRow1];
    DisplayForm.DisplaySG.Cells[1,2]:=MainForm.D_Archive.Cells[2,nRow1];
     DisplayForm.DisplaySG.Cells[1,3]:=MainForm.D_Archive.Cells[3,nRow1];
 end
 else begin
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
   end;

procedure TD_TimologisiForm.ADD_TO_TIMOLOGIOClick(Sender: TObject);
var
a,b:integer;
begin
if D_Xrostaei.Text<>'' then begin
a:=D_Timologio.RowCount+1;
D_Timologio.RowCount:=a;
D_Timologio.Cells[0,a-1]:=D_Xrostaei.Text;
b:=MainForm.D_Archive.Cols[0].IndexOf(D_Xrostaei.Text);
D_Timologio.Cells[1,a-1]:=MainForm.D_Archive.Cells[1,b];
D_Timologio.Cells[4,a-1]:='1.24';
D_Timologio.Cells[6,a-1]:=MainForm.D_Archive.Cells[2,b];

D_Xrostaei.DeleteSelected;
end;
 end;
procedure TD_TimologisiForm.YPOLOGISMOSClick(Sender: TObject);
  var a:integer;
  s,j:single;
begin
D_Timologio.Cells[1,0]:=D_TIM_NO.Text;
D_Timologio.Cells[1,1]:=D_TIM.Text;
for a:=3 to D_Timologio.RowCount-1 do
//πρωτα υπλογίζω αξία του κάθε τεμαχιου ξεχωριστά
begin
 s:=StrToFloat(D_Timologio.Cells[3,a])*StrToFloat(D_Timologio.Cells[4,a]);
D_Timologio.Cells[5,a]:=FloatToStr(SimpleRoundTo(s,-2));end;

 //τωρα  υπλογίζω συνοιλκη αξία
 j:=0;
  for a:=3 to D_Timologio.RowCount-1 do
  j:=StrToFloat(D_Timologio.Cells[5,a])+j;
  D_Timologio.Cells[7,1]:=FloatToStr(SimpleRoundTo(j,-2));
end;


procedure TD_TimologisiForm.PutInMonthClick(Sender: TObject);
var
a,b,c,d:integer;
begin
a:=D_Timologio.RowCount;
//zdes dobavljaju NO στο τελος του τιμολογιου, για να το εχω οταν φορτονω
D_Timologio.RowCount:=D_Timologio.RowCount+1;
D_Timologio.Cells[1,a]:=IntToStr(StrToInt(D_TIM_NO.Text)+1);




// τωρα perenoshu Timologio v D_MONTH
b:=D_MONTH.RowCount-1;
D_MONTH.RowCount:=D_MONTH.RowCount+D_Timologio.RowCount-1;
for c:=0 to 8 do begin
for d:=0 to D_Timologio.RowCount-1 do
D_Month.Cells[c,d+b]:=D_Timologio.Cells[c,d];

 end;


//sdes dobavljaju arithmo timologioy  v DB
  for a:=3 to D_Timologio.RowCount-2 do
 begin
 b:=DBForm.DB.Cols[2].IndexOf(D_Timologio.Cells[0,a]);
 if b<>-1 then begin
 if   DBForm.DB.Cells[14,b]<>'' then begin
 ShowMessage('ΤΟ ΤΕΜΑΧΙΟ'+D_Timologio.Cells[0,a]+ 'ΕΧΕΙ ΕΡΘΕΙ ΗΔΗ ΜΕ ΤΙΜΟΛΟΓΙΟ-'+DBForm.DB.Cells[14,b]);
 DBForm.DB.Cells[14,b]:=DBForm.DB.Cells[14,b]+'\\D-'+D_TIM.Text+'('+D_Timologio.Cells[0,a]+')';
 end
   else
     DBForm.DB.Cells[14,b]:='D-'+D_TIM.Text+'('+D_Timologio.Cells[0,a]+')';
               end
                 else ShowMessage('Το τεμάχιο-'+D_Timologio.Cells[0,a]+'-ειναι ΙΧ, δεν υπάρχει στο σύστημα');

 end;


 //zdes izmenjaju porjadkovii nomer v Mpoyrmpakis_NO
 D_TIM_NO.Text:=IntToStr(StrToInt(D_TIM_NO.Text)+1);
 //zdes ochishaju pole dlja sledujushego timologia
 D_TIM.Text:='TIM-';

  //ZDES zachishaju prostranstvo dlja sledushego timologia
    for a:=0 to 7 do begin
    for b:=3 to D_Timologio.RowCount-1 do   begin
     D_Timologio.Cells[a,b]:='';

       end;
       end;
         D_Timologio.RowCount:=3;
         MainForm.SynchroPoziTron.Execute;
end;

procedure TD_TimologisiForm.SaveDMonthClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
  MainForm.SynchroPoziTron.Execute; //πρωτα κανω έλεγχο αν εχει γινει αποσυγχρονισμος
 //τωρα με  MessageDlg δινω δινατοτητα να μην αποθηκευσω αλλαγες αν SynchroPoziTron΄μου βγαζει αποσυγκρονισμο
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, MainForm.Path.Caption+'D_Month'+MainForm.Caption);
  Rewrite(F);
  with D_Month do
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
  SAVE_D_Xrostaei.Click;
  BasketForm.SaveBaskets.Click;
  DBForm.DBSave.Click;
end;
  end;

procedure TD_TimologisiForm.EXCELClick(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=D_MONTH.RowCount;
  ColCount :=D_MONTH.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=D_MONTH.Cells[j-1, i-1];

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

procedure TD_TimologisiForm.NewMonthClick(Sender: TObject);
var
a,b:integer;
begin
  for a:=0 to D_MONTH.ColCount-1 do
  for b:=0 to D_MONTH.RowCount-1 do begin
  D_MONTH.Cells[a,b]:='';
   end;
   D_MONTH.RowCount:=1;
   D_MONTH.Cells[1,0]:='1'; //δεν ειμαι σιγουρος αν το χρειαζεται, το βαζω προληπτικα, θα δουμε στη συνέχεια.
   D_TIM_NO.Text:='1';//ξεκιναψ μέτρηση από τη ναρχή πάλι.
 end;

end.
