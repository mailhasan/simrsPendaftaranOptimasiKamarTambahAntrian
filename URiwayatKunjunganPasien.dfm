object FRiwayatKunjunganPasien: TFRiwayatKunjunganPasien
  Left = 260
  Top = 174
  Width = 1303
  Height = 667
  Align = alClient
  Caption = 'RIWAYAT KUNJUNGAN PASIEN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 57
    Width = 1287
    Height = 530
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object pgcRiwayatKunjungan: TPageControl
      Left = 1
      Top = 1
      Width = 1285
      Height = 528
      ActivePage = tsRajal
      Align = alClient
      TabOrder = 0
      object tsRajal: TTabSheet
        Caption = 'RAWAT JALAN'
        object dbgrdhRiwayatRajal: TDBGridEh
          Left = 0
          Top = 0
          Width = 1277
          Height = 488
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DataSimrs.dsvw_pasienrawatjalan
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -20
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'noDaftar'
              Footers = <>
              Title.Caption = 'NO DAFTAR'
              Width = 167
            end
            item
              EditButtons = <>
              FieldName = 'tglDaftar'
              Footers = <>
              Title.Caption = 'TGL | DAFTAR'
              Width = 190
            end
            item
              EditButtons = <>
              FieldName = 'tglPulang'
              Footers = <>
              Title.Caption = 'TGL | PULANG'
              Width = 157
            end
            item
              EditButtons = <>
              FieldName = 'noRekamedis'
              Footers = <>
              Title.Caption = 'NO RM'
              Width = 146
            end
            item
              EditButtons = <>
              FieldName = 'unit'
              Footer.FieldName = 'unit'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'UNIT'
              Width = 207
            end
            item
              EditButtons = <>
              FieldName = 'asalPasien'
              Footers = <>
              Title.Caption = 'ASAL PASIEN'
              Width = 265
            end
            item
              EditButtons = <>
              FieldName = 'carabayar'
              Footers = <>
              Title.Caption = 'CARA BAYAR'
              Width = 140
            end
            item
              EditButtons = <>
              FieldName = 'penjamin'
              Footers = <>
              Title.Caption = 'PENJAMIN'
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'statusKeluar'
              Footers = <>
              Title.Caption = 'STATUS KELUAR'
              Width = 131
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object tsRanap: TTabSheet
        Caption = 'RAWAT INAP'
        ImageIndex = 1
        object dbgrdhRiwayatRanap: TDBGridEh
          Left = 0
          Top = 0
          Width = 1277
          Height = 488
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DataSimrs.dsvw_pasienrawatinap
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -20
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'noDaftar'
              Footers = <>
              Title.Caption = 'NO DAFTAR'
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'noRekamedis'
              Footers = <>
              Title.Caption = 'NO RM'
              Width = 195
            end
            item
              EditButtons = <>
              FieldName = 'nmPasien'
              Footers = <>
              Title.Caption = 'NAMA PASIEN'
              Width = 178
            end
            item
              EditButtons = <>
              FieldName = 'tempatLahir'
              Footers = <>
              Title.Caption = 'TEMPAT LAHIR'
              Width = 181
            end
            item
              EditButtons = <>
              FieldName = 'tglLahir'
              Footers = <>
              Title.Caption = 'TGL LAHIR'
              Width = 132
            end
            item
              EditButtons = <>
              FieldName = 'jenisKelamin'
              Footers = <>
              Title.Caption = 'JK'
              Width = 124
            end
            item
              EditButtons = <>
              FieldName = 'asalPasien'
              Footers = <>
              Title.Caption = 'ASAL PASIEN'
              Width = 237
            end
            item
              EditButtons = <>
              FieldName = 'carabayar'
              Footers = <>
              Title.Caption = 'CARA BAYAR'
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'penjamin'
              Footers = <>
              Title.Caption = 'PENJAMIN'
              Width = 126
            end
            item
              EditButtons = <>
              FieldName = 'tglMasukRawatInap'
              Footers = <>
              Title.Caption = 'TGL | MASUK RAWAT INAP'
              Width = 205
            end
            item
              EditButtons = <>
              FieldName = 'tglKeluarRawatInap'
              Footers = <>
              Title.Caption = 'TGL |  KELUAR RAWAT INAP'
              Width = 252
            end
            item
              EditButtons = <>
              FieldName = 'asalUnit'
              Footers = <>
              Title.Caption = 'ASAL UNIT'
              Width = 181
            end
            item
              EditButtons = <>
              FieldName = 'rawatInap'
              Footers = <>
              Title.Caption = 'RAWAT INAP'
              Width = 171
            end
            item
              EditButtons = <>
              FieldName = 'noKamar'
              Footers = <>
              Title.Caption = 'NO KAMAR'
              Width = 158
            end
            item
              EditButtons = <>
              FieldName = 'noBed'
              Footers = <>
              Title.Caption = 'NO BED'
              Width = 124
            end
            item
              EditButtons = <>
              FieldName = 'tarifKmr'
              Footers = <>
              Title.Caption = 'TARIF KAMAR'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'jumlahHariMenginap'
              Footers = <>
              Title.Caption = 'JUMLAH HARI MENGINAP'
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'totalMenginap'
              Footers = <>
              Title.Caption = 'TOTAL MENGINAP'
              Width = 132
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object tsLab: TTabSheet
        Caption = 'LABORATORIM'
        ImageIndex = 2
      end
      object tsRadiologi: TTabSheet
        Caption = 'RADIOLOGI'
        ImageIndex = 3
      end
      object tsRawatJalanLama: TTabSheet
        Caption = 'RAWAT JALAN LAMA'
        ImageIndex = 4
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 587
    Width = 1287
    Height = 41
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 57
    Align = alTop
    Caption = 'RIWAYAT KUNJUNGAN PASIEN'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 1149
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
    object edtNoRm: TEdit
      Left = 32
      Top = 16
      Width = 121
      Height = 32
      TabOrder = 1
      Visible = False
    end
  end
end
