unit UInformasiKetersedianRawatInap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFInformasiKetersedianRawatInap = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbgrdh1: TDBGridEh;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInformasiKetersedianRawatInap: TFInformasiKetersedianRawatInap;

implementation

{$R *.dfm}

uses UDataSImrs;

procedure TFInformasiKetersedianRawatInap.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

end.
