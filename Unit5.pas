unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TDisplayForm = class(TForm)
    DisplaySG: TStringGrid;
    procedure DisplaySGDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisplayForm: TDisplayForm;

implementation

{$R *.dfm}

procedure TDisplayForm.DisplaySGDblClick(Sender: TObject);
begin
 ShowMessage(DisplaySG.Cells[1,18]);
end;

end.
