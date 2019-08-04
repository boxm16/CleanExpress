unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids,ComObj, StdCtrls;

type
  TDBForm = class(TForm)
    StringGrid1: TStringGrid;
    DB: TStringGrid;
    DBSave: TButton;
    LOAD: TButton;
    Button1: TButton;
    procedure DBSaveClick(Sender: TObject);
    procedure LOADClick(Sender: TObject);
    procedure DBMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBForm: TDBForm;
  DB_MousePosition_Col, DB_MousePosition_Row:integer;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TDBForm.DBSaveClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;


 begin
  AssignFile(F, MainForm.Path.Caption+MainForm.Caption+'DB');
  Rewrite(F);
  with DB do
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
end;

procedure TDBForm.LOADClick(Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;

    begin

  AssignFile(F, MainForm.Path.Caption+MainForm.Caption+'DB');
  Reset(F);
  with DB do
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

end;

procedure TDBForm.DBMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//zdes zadaju poziciu mausa pri ego dvizhenii na Stringgride. chtobi potom ispolzovat dlja vivoda stroki v Display
  DB.MouseToCell(X, Y, DB_MousePosition_Col, DB_MousePosition_Row);
end;

procedure TDBForm.DBDblClick(Sender: TObject);
var a:integer;
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
DisplayForm.SetFocus;


for  a:=0 to 10 do begin
 DisplayForm.DisplaySG.RowCount:=DBForm.DB.ColCount+3;
 DisplayForm.DisplaySG.Cells[1,a]:=DBForm.DB.Cells[a,DB_MousePosition_Row];
end;
 DisplayForm.DisplaySG.Cells[1,11]:=DBForm.DB.Cells[9,DB_MousePosition_Row+1];
 DisplayForm.DisplaySG.Cells[1,12]:=DBForm.DB.Cells[10,DB_MousePosition_Row+1];
 DisplayForm.DisplaySG.Cells[1,13]:=DBForm.DB.Cells[11,DB_MousePosition_Row];
 DisplayForm.DisplaySG.Cells[1,14]:=DBForm.DB.Cells[11,DB_MousePosition_Row+1];
 DisplayForm.DisplaySG.Cells[1,15]:=DBForm.DB.Cells[12,DB_MousePosition_Row];
 DisplayForm.DisplaySG.Cells[1,16]:=DBForm.DB.Cells[13,DB_MousePosition_Row];
 DisplayForm.DisplaySG.Cells[1,17]:=DBForm.DB.Cells[14,DB_MousePosition_Row];
 DisplayForm.DisplaySG.Cells[1,18]:=DBForm.DB.Cells[15,DB_MousePosition_Row];
    end;

procedure TDBForm.Button1Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=DB.RowCount;
  ColCount :=DB.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=DB.Cells[j-1, i-1];

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

end.
