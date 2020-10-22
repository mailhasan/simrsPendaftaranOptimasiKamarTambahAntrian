object FDataPendaftaranPasien: TFDataPendaftaranPasien
  Left = 293
  Top = 146
  Width = 1305
  Height = 675
  Caption = 'DAFTAR DATA PASIEN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1289
    Height = 535
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbgrdhDaftarDataPasien: TDBGridEh
      Left = 1
      Top = 89
      Width = 1287
      Height = 445
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataSimrs.dsVwPasien
      DrawMemoText = True
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -20
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrdhDaftarDataPasienDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'norekamedis'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'NO RM'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'nmPasien'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'NAMA'
          Width = 175
        end
        item
          EditButtons = <>
          FieldName = 'tempatLahir'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'TEMPAT LAHIR'
          Width = 152
        end
        item
          EditButtons = <>
          FieldName = 'tglLahir'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'TGL LAHIR'
          Width = 111
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'jenisKelamin'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'JK'
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'agama'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'AGAMA'
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'alamat'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT'
          Width = 446
        end
        item
          EditButtons = <>
          FieldName = 'kelurahan'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'KELURAHAN'
          Width = 193
        end
        item
          EditButtons = <>
          FieldName = 'kecamatan'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'KECAMATAN'
          Width = 138
        end
        item
          EditButtons = <>
          FieldName = 'kabupaten'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'KABUPATEN'
          Width = 206
        end
        item
          EditButtons = <>
          FieldName = 'provinsi'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'PROVINSI'
          Width = 122
        end
        item
          EditButtons = <>
          FieldName = 'pekerjaan'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'PEKERJAAN'
          Width = 220
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grpPencarian: TGroupBox
      Left = 1
      Top = 1
      Width = 1287
      Height = 88
      Align = alTop
      Caption = 'PENCARIAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblNama: TLabel
        Left = 8
        Top = 24
        Width = 45
        Height = 19
        Caption = 'NAMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAlamat: TLabel
        Left = 216
        Top = 24
        Width = 63
        Height = 19
        Caption = 'ALAMAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtNoRmNama: TEdit
        Left = 8
        Top = 56
        Width = 193
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtNoRmNamaChange
        OnKeyPress = edtNoRmNamaKeyPress
      end
      object edtAlamat: TEdit
        Left = 216
        Top = 48
        Width = 449
        Height = 32
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edtAlamatChange
        OnKeyPress = edtAlamatKeyPress
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 584
    Width = 1289
    Height = 52
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnDaftar: TButton
      Left = 16
      Top = 9
      Width = 321
      Height = 32
      Caption = 'DAFTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnDaftarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Caption = 'DAFTAR DATA PASIEN'
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
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
end
