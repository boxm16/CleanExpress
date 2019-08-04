unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComObj;

type
  TTimokatalogosForm = class(TForm)
    TimokatalogosSG: TStringGrid;
    LoadTimokatalogosXalkidona: TButton;
    LoadTimokatalogosKeratsini: TButton;
    LoadTimokatalogosKallithea: TButton;
    SaveTimokatalogos: TButton;
    InsertNewLineAfterTheCode: TButton;
    Code: TEdit;
    Button1: TButton;
    procedure LoadTimokatalogosXalkidonaClick(Sender: TObject);
    procedure LoadTimokatalogosKeratsiniClick(Sender: TObject);
    procedure LoadTimokatalogosKallitheaClick(Sender: TObject);
    procedure InsertNewLineAfterTheCodeClick(Sender: TObject);
    procedure SaveTimokatalogosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TimokatalogosForm: TTimokatalogosForm;

implementation

uses Unit1;

{$R *.dfm}

procedure TTimokatalogosForm.LoadTimokatalogosXalkidonaClick(
  Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;
begin
  AssignFile(F, MainForm.Path.Caption+'TimokatalogosXalkidona');
  Reset(F);
  with TimokatalogosSG do
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
   TimokatalogosSG.Color:=clGreen;
  


end;

procedure TTimokatalogosForm.LoadTimokatalogosKeratsiniClick(
  Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;
begin
  AssignFile(F, MainForm.Path.Caption+'TimokatalogosKeratsini');
  Reset(F);
  with TimokatalogosSG do
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
  TimokatalogosSG.Color:=clPurple;
 



end;

procedure TTimokatalogosForm.LoadTimokatalogosKallitheaClick(
  Sender: TObject);
var
  F: TextFile;
  Tmp, I, K: Integer;
  StrTemp: String;
begin
  AssignFile(F, MainForm.Path.Caption+'TimokatalogosKallithea');
  Reset(F);
  with TimokatalogosSG do
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
  TimokatalogosSG.Color:=clYellow;
  



end;

procedure TTimokatalogosForm.InsertNewLineAfterTheCodeClick(Sender: TObject);
var
a, iRow:integer;
begin
 a:=TimokatalogosSG.Cols[0].IndexOf(Code.Text);
 if a=-1 then ShowMessage('There is no such code, look better')
 else begin
  TimokatalogosSG.Row:=a;
 TimokatalogosSG.RowCount := TimokatalogosSG.RowCount + 1;
  for iRow := TimokatalogosSG.RowCount-1 downto a do
    TimokatalogosSG.Rows[iRow] := TimokatalogosSG.Rows[iRow-1];
  TimokatalogosSG.Rows[a].Clear;

end;
end;

procedure TTimokatalogosForm.SaveTimokatalogosClick(Sender: TObject);
var
  F: TextFile;
  I, K: Integer;
begin
 MainForm.SynchroPoziTron.Execute;//����� ���� ������ �� ���� ����� ���������������
   //���� ��  MessageDlg ���� ���������� �� ��� ���������� ������� �� SynchroPoziTron���� ������ ��������������
  if MessageDlg('Do you REALLY want to save changes?', mtConfirmation, [mbYes, mbNO], 0) = mrYes then
begin

  AssignFile(F, MainForm.Path.Caption+'Timokatalogos'+MainForm.Caption);
  Rewrite(F);
  with TimokatalogosSG do
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
  end;

procedure TTimokatalogosForm.Button1Click(Sender: TObject);
var
  xls, wb, Range: OLEVariant;
  arrData: Variant;
  RowCount, ColCount, i, j: Integer;
begin
  {create variant array where we'll copy our data}
  RowCount :=TimokatalogosSG.RowCount;
  ColCount :=TimokatalogosSG.ColCount ;
  arrData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

  {fill array}
  for i := 1 to RowCount do
    for j := 1 to ColCount do
      arrData[i, j] :=TimokatalogosSG.Cells[j-1, i-1];

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
