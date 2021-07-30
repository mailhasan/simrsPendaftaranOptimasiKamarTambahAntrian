unit UCekVersiAplikasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFCekVersiUpdate = class(TForm)
    lblVersiUpdate: TLabel;
    btnProses: TButton;
    edtVERSIUPDATE: TEdit;
    lblTujuanCopyExe: TLabel;
    edtTUJUANCOPYEXE: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCekVersiUpdate: TFCekVersiUpdate;

implementation

{$R *.dfm}

procedure TFCekVersiUpdate.FormShow(Sender: TObject);
begin
  edtVERSIUPDATE.Text := '\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI PENDAFTARAN & RAJAL_IGD\update\pendaftaran\pendaftaran10112020';
end;

end.
