object FDaftarPasienRawatInap: TFDaftarPasienRawatInap
  Left = 325
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'DAFTAR DATA PASIEN RAWAT INAP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1289
    Height = 534
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxgrdPasienRawatInap: TcxGrid
      Left = 1
      Top = 1
      Width = 1287
      Height = 532
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSimrs.dsvw_pasienrawatinap
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
          Caption = 'NO REKAMEDIS'
          DataBinding.FieldName = 'noRekamedis'
          Width = 175
        end
        object cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn
          Caption = 'NAMA PASIEN'
          DataBinding.FieldName = 'nmPasien'
          Width = 329
        end
        object cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn
          Caption = 'TEMPATL LAHIR'
          DataBinding.FieldName = 'tempatLahir'
          Width = 266
        end
        object cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn
          Caption = 'TGL LAHIR'
          DataBinding.FieldName = 'tglLahir'
        end
        object cxgrdbclmnGrid1DBTableView1jenisKelamin: TcxGridDBColumn
          Caption = 'JK'
          DataBinding.FieldName = 'jenisKelamin'
          Width = 58
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'ALAMAT'
          DataBinding.FieldName = 'alamat'
          Width = 200
        end
        object cxgrdbclmnGrid1DBTableView1provinsi: TcxGridDBColumn
          Caption = 'PROVINSI'
          DataBinding.FieldName = 'provinsi'
          Width = 739
        end
        object cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn
          Caption = 'NO DAFTAR'
          DataBinding.FieldName = 'noDaftar'
          Width = 220
        end
        object cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn
          Caption = 'TGL DAFTAR'
          DataBinding.FieldName = 'tglDaftar'
          Width = 215
        end
        object cxgrdbclmnGrid1DBTableView1tglPulang: TcxGridDBColumn
          Caption = 'TGL PULANG'
          DataBinding.FieldName = 'tglPulang'
          Width = 160
        end
        object cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn
          Caption = 'PETUGAS MEDIS'
          DataBinding.FieldName = 'namapetugasMedis'
          Width = 367
        end
        object cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn
          Caption = 'ASAL PASIEN'
          DataBinding.FieldName = 'asalPasien'
          Width = 190
        end
        object cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn
          Caption = 'CARA BAYAR'
          DataBinding.FieldName = 'carabayar'
          Width = 178
        end
        object cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn
          Caption = 'PENJAMIN'
          DataBinding.FieldName = 'penjamin'
          Width = 277
        end
        object cxgrdbclmnGrid1DBTableView1rawatInap: TcxGridDBColumn
          Caption = 'RAWAT INAP'
          DataBinding.FieldName = 'rawatInap'
          Width = 149
        end
        object cxgrdbclmnGrid1DBTableView1kelas: TcxGridDBColumn
          Caption = 'KELAS'
          DataBinding.FieldName = 'kelas'
          Width = 105
        end
        object cxgrdbclmnGrid1DBTableView1noKamar: TcxGridDBColumn
          Caption = 'NO KAMAR'
          DataBinding.FieldName = 'noKamar'
          Width = 131
        end
        object cxgrdbclmnGrid1DBTableView1noBed: TcxGridDBColumn
          Caption = 'NO BED'
          DataBinding.FieldName = 'noBed'
          Width = 94
        end
        object cxgrdbclmnGrid1DBTableView1tarifKmr: TcxGridDBColumn
          Caption = 'TARIF KAMAR'
          DataBinding.FieldName = 'tarifKmr'
          Width = 153
        end
        object cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn
          Caption = 'KETERANGAN'
          DataBinding.FieldName = 'statusKeluar'
          Width = 216
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 583
    Width = 1289
    Height = 53
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblNoRmNama: TLabel
      Left = 8
      Top = 17
      Width = 148
      Height = 23
      Caption = 'No. RM / Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNoRmNama: TEdit
      Left = 160
      Top = 10
      Width = 257
      Height = 33
      TabOrder = 0
      OnChange = edtNoRmNamaChange
    end
    object btnBatalPasien: TcxButton
      Left = 1288
      Top = 15
      Width = 129
      Height = 25
      Caption = 'BATAL PASIEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Caption = 'DAFTAR DATA PASIEN RAWAT INAP'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 1151
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
end
