unit UResponseManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, frxClass, frxDBSet;

type
  TFResponseManual = class(TForm)
    mmoRespone: TMemo;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    btnCetak: TButton;
    lblNOSEP: TLabel;
    btnPreview: TButton;
    frxrprtSep: TfrxReport;
    frxdbdtstSep: TfrxDBDataset;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResponseManual: TFResponseManual;

implementation

{$R *.dfm}
uses UDataSimrs, ADODB, DB;

// Cek Nama Komputer
function GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

procedure TFResponseManual.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFResponseManual.btnPreviewClick(Sender: TObject);
begin
with DataSimrs.qryt_bridingsep do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_bridingsep where no_sep="'+lblNOSEP.Caption+'"';
  Open;
end;

with DataSimrs.qryt_komputer do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
  Open;
end;

frxrprtSep.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\printsep.fr3');
frxrprtSep.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerKarcis').AsString;
frxrprtSep.PrintOptions.ShowDialog:=True;
frxrprtSep.PrepareReport;
frxrprtSep.ShowReport();
end;

procedure TFResponseManual.btnCetakClick(Sender: TObject);
begin
with DataSimrs.qryt_bridingsep do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_bridingsep where no_sep="'+lblNOSEP.Caption+'"';
  Open;
end;

with DataSimrs.qryt_komputer do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
  Open;
end;

frxrprtSep.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\printsep.fr3');
frxrprtSep.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerKarcis').AsString;
//frxrprtSep.PrintOptions.ShowDialog:=True;
frxrprtSep.PrepareReport;
frxrprtSep.Print;
end;

end.
