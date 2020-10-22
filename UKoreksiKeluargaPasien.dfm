object FKoreksiKeluargaPasien1: TFKoreksiKeluargaPasien1
  Left = 428
  Top = 189
  Width = 601
  Height = 451
  Caption = 'KOREKSI KELUARGA PASIEN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 57
    Align = alTop
    Caption = 'KOREKSI KELUARGA PASIEN'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 447
      Top = 1
      Width = 137
      Height = 55
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 363
    Width = 585
    Height = 49
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnSimpan: TButton
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSimpanClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 57
    Width = 585
    Height = 306
    Align = alClient
    TabOrder = 2
    object lblNoRekamedis: TLabel
      Left = 16
      Top = 16
      Width = 95
      Height = 13
      Caption = 'NO REKAMEDIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNamaPenanggungJawab: TLabel
      Left = 16
      Top = 40
      Width = 173
      Height = 13
      Caption = 'NAMA PENANGGUNG JAWAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblHubungan: TLabel
      Left = 16
      Top = 64
      Width = 71
      Height = 13
      Caption = 'HUBUNGAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAlamat: TLabel
      Left = 16
      Top = 88
      Width = 50
      Height = 13
      Caption = 'ALAMAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblProvinsiDetail: TLabel
      Left = 16
      Top = 128
      Width = 60
      Height = 13
      Caption = 'PROVINSI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKabupatenDetail: TLabel
      Left = 16
      Top = 155
      Width = 75
      Height = 13
      Caption = 'KABUPATEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKecamatanDetail: TLabel
      Left = 16
      Top = 187
      Width = 76
      Height = 13
      Caption = 'KECAMATAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblkeluarahandetail: TLabel
      Left = 16
      Top = 211
      Width = 76
      Height = 13
      Caption = 'KELURAHAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKodePosDetail: TLabel
      Left = 16
      Top = 243
      Width = 64
      Height = 13
      Caption = 'KODE POS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtKdPos1: TEdit
      Left = 192
      Top = 227
      Width = 217
      Height = 21
      TabOrder = 0
      OnKeyPress = edtKdPos1KeyPress
    end
    object mmoAlamat: TMemo
      Left = 192
      Top = 88
      Width = 377
      Height = 33
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object edtHubungan: TEdit
      Left = 192
      Top = 64
      Width = 217
      Height = 21
      TabOrder = 2
      OnKeyPress = edtHubunganKeyPress
    end
    object edtNamaPenanggungJawab: TEdit
      Left = 192
      Top = 40
      Width = 217
      Height = 21
      TabOrder = 3
      OnKeyPress = edtNamaPenanggungJawabKeyPress
    end
    object edtNoRm: TEdit
      Left = 192
      Top = 16
      Width = 217
      Height = 21
      TabOrder = 4
    end
    object edtProvinsi: TEdit
      Left = 192
      Top = 123
      Width = 217
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edtProvinsiKeyPress
      OnKeyUp = edtProvinsiKeyUp
    end
    object edtKabKota: TEdit
      Left = 192
      Top = 150
      Width = 217
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edtKabKotaKeyPress
      OnKeyUp = edtKabKotaKeyUp
    end
    object edtKecamatan: TEdit
      Left = 192
      Top = 174
      Width = 217
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edtKecamatanKeyPress
      OnKeyUp = edtKecamatanKeyUp
    end
    object edtKeluarahan: TEdit
      Left = 192
      Top = 198
      Width = 225
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edtKeluarahanKeyPress
      OnKeyUp = edtKeluarahanKeyUp
    end
    object strngrdDesa: TStringGrid
      Left = 192
      Top = 202
      Width = 441
      Height = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowMoving, goColMoving, goRowSelect]
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnDblClick = strngrdDesaDblClick
      OnKeyPress = strngrdDesaKeyPress
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object strngrdKecamatan: TStringGrid
      Left = 192
      Top = 178
      Width = 441
      Height = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowMoving, goColMoving, goRowSelect]
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnDblClick = strngrdKecamatanDblClick
      OnKeyPress = strngrdKecamatanKeyPress
      ColWidths = (
        64
        64
        64
        64
        64)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object strngrdKabKota: TStringGrid
      Left = 192
      Top = 154
      Width = 441
      Height = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowMoving, goColMoving, goRowSelect]
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnDblClick = strngrdKabKotaDblClick
      OnKeyPress = strngrdKabKotaKeyPress
      ColWidths = (
        64
        64
        64
        64
        64)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object strngrdProvinsi: TStringGrid
      Left = 192
      Top = 127
      Width = 441
      Height = 120
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goRowMoving, goColMoving, goRowSelect]
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnDblClick = strngrdProvinsiDblClick
      OnKeyPress = strngrdProvinsiKeyPress
      RowHeights = (
        24
        24
        24
        24
        24)
    end
  end
end
