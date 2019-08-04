unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TBasketForm = class(TForm)
    PavlosBasket: TComboBox;
    MparakosBasket: TComboBox;
    MpoyrmpakisBasket: TComboBox;
    ModistraBasket: TComboBox;
    AkirosisBasket: TComboBox;
    AnamoniBasket: TComboBox;
    PavlosToMparakos: TButton;
    MparakosToPavlos: TButton;
    BufferSG: TStringGrid;
    PavlosToModistra: TButton;
    MparakosToModistra: TButton;
    MpoyrmpakisToModistra: TButton;
    PavlosToMpoyrmpakis: TButton;
    ModistraToPalvos: TButton;
    ModistraToMparakos: TButton;
    ModistraToMpoyrmpakis: TButton;
    PavlosToAnamoni: TButton;
    LoadBaskets: TButton;
    SaveBaskets: TButton;
    MpoyrmpakisToAnamoni: TButton;
    AnamoniToPavlos: TButton;
    AkirosisToPavlos: TButton;
    procedure PavlosBasketDblClick(Sender: TObject);
    procedure PavlosBasketSelect(Sender: TObject);
    procedure PavlosToMparakosClick(Sender: TObject);
    procedure MparakosToPavlosClick(Sender: TObject);
    procedure MparakosToModistraClick(Sender: TObject);
    procedure PavlosToModistraClick(Sender: TObject);
    procedure MparakosBasketDblClick(Sender: TObject);
    procedure MpoyrmpakisBasketDblClick(Sender: TObject);
    procedure AkirosisBasketDblClick(Sender: TObject);
    procedure MparakosBasketSelect(Sender: TObject);
    procedure MpoyrmpakisBasketSelect(Sender: TObject);
    procedure AkirosisBasketSelect(Sender: TObject);
    procedure AnamoniBasketSelect(Sender: TObject);
    procedure AnamoniBasketDblClick(Sender: TObject);
    procedure PavlosToMpoyrmpakisClick(Sender: TObject);
    procedure ModistraToPalvosClick(Sender: TObject);
    procedure ModistraToMparakosClick(Sender: TObject);
    procedure ModistraToMpoyrmpakisClick(Sender: TObject);
    procedure MpoyrmpakisToModistraClick(Sender: TObject);
    procedure PavlosToAnamoniClick(Sender: TObject);
    procedure LoadBasketsClick(Sender: TObject);
    procedure SaveBasketsClick(Sender: TObject);
    procedure ModistraBasketDblClick(Sender: TObject);
    procedure ModistraBasketSelect(Sender: TObject);
    procedure MpoyrmpakisToAnamoniClick(Sender: TObject);
    procedure AnamoniToPavlosClick(Sender: TObject);
    procedure AkirosisToPavlosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasketForm: TBasketForm;

implementation

uses Unit5, Unit1, Unit2;

{$R *.dfm}

procedure TBasketForm.PavlosBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.PavlosBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(PavlosBasket.Text);
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
procedure TBasketForm.PavlosToMparakosClick(Sender: TObject);
begin
if PavlosBasket.Text<>'' then begin
MparakosBasket.Items.Add(PavlosBasket.Text);
PavlosBasket.DeleteSelected;
end;
                                end;

procedure TBasketForm.MparakosToPavlosClick(Sender: TObject);
begin
if MparakosBasket.Text<>'' then begin
PavlosBasket.Items.Add(MparakosBasket.Text);
MparakosBasket.DeleteSelected;
end;
end;

procedure TBasketForm.MparakosToModistraClick(Sender: TObject);
begin
if MparakosBasket.Text<>'' then begin
ModistraBasket.Items.Add(MparakosBasket.Text);
MparakosBasket.DeleteSelected;
end;
end;

procedure TBasketForm.PavlosToModistraClick(Sender: TObject);
begin
if PavlosBasket.Text<>'' then begin
ModistraBasket.Items.Add(PavlosBasket.Text);
PavlosBasket.DeleteSelected;
end;
end;

procedure TBasketForm.MparakosBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.MpoyrmpakisBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.AkirosisBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.MparakosBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(MparakosBasket.Text);
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
 
procedure TBasketForm.MpoyrmpakisBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(MpoyrmpakisBasket.Text);
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

procedure TBasketForm.AkirosisBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(AkirosisBasket.Text);
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
 procedure TBasketForm.AnamoniBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(AnamoniBasket.Text);
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
 DisplayForm.DisplaySG.Cells[1,17]:=DBForm.DB.Cells[14,nRow];
 DisplayForm.DisplaySG.Cells[1,18]:=DBForm.DB.Cells[15,nRow];
    end;

procedure TBasketForm.AnamoniBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.PavlosToMpoyrmpakisClick(Sender: TObject);
begin
if PavlosBasket.Text<>'' then begin
MpoyrmpakisBasket.Items.Add(PavlosBasket.Text);
PavlosBasket.DeleteSelected;
end;
end;

procedure TBasketForm.ModistraToPalvosClick(Sender: TObject);
begin
if ModistraBasket.Text<>'' then begin
PavlosBasket.Items.Add(ModistraBasket.Text);
ModistraBasket.DeleteSelected;
end;
end;

procedure TBasketForm.ModistraToMparakosClick(Sender: TObject);
begin
if ModistraBasket.Text<>'' then begin
MparakosBasket.Items.Add(ModistraBasket.Text);
ModistraBasket.DeleteSelected;
end;
end;

procedure TBasketForm.ModistraToMpoyrmpakisClick(Sender: TObject);
begin
if ModistraBasket.Text<>'' then begin
MpoyrmpakisBasket.Items.Add(ModistraBasket.Text);
ModistraBasket.DeleteSelected;
end;
end;

procedure TBasketForm.MpoyrmpakisToModistraClick(Sender: TObject);
begin
if MpoyrmpakisBasket.Text<>'' then begin
ModistraBasket.Items.Add(MpoyrmpakisBasket.Text);
MpoyrmpakisBasket.DeleteSelected;
end;
end;

procedure TBasketForm.PavlosToAnamoniClick(Sender: TObject);
begin
if PavlosBasket.Text<>'' then begin
AnamoniBasket.Items.Add(PavlosBasket.Text);
PavlosBasket.DeleteSelected;
end;
    end;
procedure TBasketForm.LoadBasketsClick(Sender: TObject);
begin
ModistraBasket.Items.LoadFromFile(MainForm.Path.Caption+'ModistraBasketAA');
AnamoniBasket.Items.LoadFromFile(MainForm.Path.Caption+'Anamoni'+MainForm.Caption);
end;

procedure TBasketForm.SaveBasketsClick(Sender: TObject);
begin
BasketForm.ModistraBasket.Items.SaveToFile(MainForm.Path.Caption+'ModistraBasketAA');
  BasketForm.AnamoniBasket.Items.SaveToFile(MainForm.Path.Caption+'Anamoni'+MainForm.Caption);
end;

procedure TBasketForm.ModistraBasketDblClick(Sender: TObject);
begin
DisplayForm.Visible:=true;
DisplayForm.FormStyle:=fsStayOnTop;
end;

procedure TBasketForm.ModistraBasketSelect(Sender: TObject);
var a, nRow:integer;
   begin
 nRow:=DBForm.DB.Cols[2].IndexOf(ModistraBasket.Text);
 if nRow=-1 then ShowMessage('Τεμάχιο από άλλο κατάστημα')
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
procedure TBasketForm.MpoyrmpakisToAnamoniClick(Sender: TObject);
begin
if MpoyrmpakisBasket.Text<>'' then begin
AnamoniBasket.Items.Add(MpoyrmpakisBasket.Text);
MpoyrmpakisBasket.DeleteSelected;
end;
end;

procedure TBasketForm.AnamoniToPavlosClick(Sender: TObject);
begin
if AnamoniBasket.Text<>'' then begin
PavlosBasket.Items.Add(AnamoniBasket.Text);
AnamoniBasket.DeleteSelected;
end;
end;
procedure TBasketForm.AkirosisToPavlosClick(Sender: TObject);
begin
if AkirosisBasket.Text<>'' then begin
PavlosBasket.Items.Add(AkirosisBasket.Text);
AkirosisBasket.DeleteSelected;
end;
end;
end.
