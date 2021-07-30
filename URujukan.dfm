object FRujukan: TFRujukan
  Left = 1041
  Top = 215
  Width = 699
  Height = 495
  Caption = 'RUJUKAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpPencarian: TGroupBox
    Left = 0
    Top = 0
    Width = 683
    Height = 73
    Align = alTop
    Caption = 'PENCARIAN'
    TabOrder = 0
    object lblJenisNomerSep: TLabel
      Left = 8
      Top = 16
      Width = 77
      Height = 16
      Caption = 'Jenis Nomer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbbJenisNomer: TComboBox
      Left = 96
      Top = 16
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'cbbJenisNomer'
      Items.Strings = (
        'NOMER RUJUKAN'
        'NOMER KARTU'
        'NOMER SEP')
    end
    object btnCari: TButton
      Left = 304
      Top = 16
      Width = 49
      Height = 25
      Caption = 'CARI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpIsianData: TGroupBox
    Left = 0
    Top = 73
    Width = 683
    Height = 331
    Align = alClient
    Caption = 'DATA PENGISIAN...!'
    TabOrder = 1
    object lblNOSEP: TLabel
      Left = 8
      Top = 24
      Width = 40
      Height = 13
      Caption = 'NO SEP'
    end
    object lblTGLRUJUKAN: TLabel
      Left = 8
      Top = 48
      Width = 75
      Height = 13
      Caption = 'TGL RUJUKAN'
    end
    object lblPPKRUJUKAN: TLabel
      Left = 8
      Top = 72
      Width = 116
      Height = 13
      Caption = 'PPK RUJUKAN / KODE'
    end
    object lblJENISPELAYANAN: TLabel
      Left = 8
      Top = 96
      Width = 97
      Height = 13
      Caption = 'JENIS PELAYANAN'
    end
    object lblCATATAN: TLabel
      Left = 8
      Top = 128
      Width = 50
      Height = 13
      Caption = 'CATATAN'
    end
    object lblDIAGNOSARUJUKAN: TLabel
      Left = 8
      Top = 184
      Width = 110
      Height = 13
      Caption = 'DIAGNOSA RUJUKAN'
    end
    object lblTIPERUJUKAN: TLabel
      Left = 8
      Top = 208
      Width = 78
      Height = 13
      Caption = 'TIPE RUJUKAN'
    end
    object lblPOLIRUJUKAN: TLabel
      Left = 8
      Top = 232
      Width = 78
      Height = 13
      Caption = 'POLI RUJUKAN'
    end
    object edtNOSEP: TEdit
      Left = 152
      Top = 16
      Width = 193
      Height = 21
      TabOrder = 0
      Text = 'edtNOSEP'
    end
    object dtpTGLRUJUKAN: TDateTimePicker
      Left = 152
      Top = 40
      Width = 186
      Height = 21
      Date = 44256.593741180560000000
      Time = 44256.593741180560000000
      TabOrder = 1
    end
    object edtPPKRUJUKAN: TEdit
      Left = 152
      Top = 64
      Width = 329
      Height = 21
      TabOrder = 2
      Text = 'edtPPKRUJUKAN'
      OnKeyPress = edtPPKRUJUKANKeyPress
    end
    object cbbFASKES: TComboBox
      Left = 152
      Top = 88
      Width = 137
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Text = 'cbbFASKES'
      Items.Strings = (
        'RAWAT JALAN'
        'RAWAT INAP')
    end
    object mmoCATATAN: TMemo
      Left = 152
      Top = 120
      Width = 329
      Height = 49
      Lines.Strings = (
        'mmoCATATAN')
      TabOrder = 4
    end
    object edtDIAGNOSA: TEdit
      Left = 152
      Top = 176
      Width = 401
      Height = 21
      TabOrder = 5
      Text = 'edtDIAGNOSA'
      OnKeyPress = edtDIAGNOSAKeyPress
    end
    object cbbTIPEPERUJUK: TComboBox
      Left = 152
      Top = 200
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = 'cbbTIPEPERUJUK'
      Items.Strings = (
        '0.penuh'
        '1.Partial'
        '2.rujuk balik')
    end
    object edtPOLIPERUJUK: TEdit
      Left = 152
      Top = 224
      Width = 329
      Height = 21
      TabOrder = 7
      Text = 'edtPOLIPERUJUK'
      OnKeyPress = edtPOLIPERUJUKKeyPress
    end
    object edtKODEPPK: TEdit
      Left = 488
      Top = 64
      Width = 57
      Height = 21
      TabOrder = 8
      Text = 'edtKODEPPK'
    end
    object edtKODEDIAGNOSA: TEdit
      Left = 560
      Top = 176
      Width = 65
      Height = 21
      TabOrder = 9
      Text = 'edtKODEDIAGNOSA'
    end
    object edtKODEPOLI: TEdit
      Left = 488
      Top = 224
      Width = 57
      Height = 21
      TabOrder = 10
      Text = 'edtKODEPOLI'
    end
    object lstDiagnosaManual: TListBox
      Left = 160
      Top = 194
      Width = 473
      Height = 127
      ItemHeight = 13
      TabOrder = 11
      Visible = False
      OnDblClick = lstDiagnosaManualDblClick
      OnKeyPress = lstDiagnosaManualKeyPress
    end
    object lstKodeDiagnosa: TListBox
      Left = 648
      Top = 178
      Width = 27
      Height = 145
      ItemHeight = 13
      TabOrder = 12
      Visible = False
    end
    object lstPPKASALPESERTAMANUAL: TListBox
      Left = 156
      Top = 88
      Width = 333
      Height = 121
      ItemHeight = 13
      TabOrder = 13
      Visible = False
      OnDblClick = lstPPKASALPESERTAMANUALDblClick
      OnKeyPress = lstPPKASALPESERTAMANUALKeyPress
    end
    object lstKodePPK: TListBox
      Left = 650
      Top = 24
      Width = 23
      Height = 153
      ItemHeight = 13
      TabOrder = 14
      Visible = False
    end
    object lstSubSepesialis: TListBox
      Left = 160
      Top = 240
      Width = 433
      Height = 89
      ItemHeight = 13
      TabOrder = 15
      Visible = False
      OnClick = lstSubSepesialisClick
      OnKeyPress = lstSubSepesialisKeyPress
    end
    object lstKodeSubSpesialis: TListBox
      Left = 624
      Top = 16
      Width = 19
      Height = 153
      ItemHeight = 13
      TabOrder = 16
      Visible = False
    end
  end
  object grpMENU: TGroupBox
    Left = 0
    Top = 404
    Width = 683
    Height = 52
    Align = alBottom
    Caption = 'MENU'
    TabOrder = 2
    object btnSIMPAN: TButton
      Left = 88
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 0
      OnClick = btnSIMPANClick
    end
    object btnUBAH: TButton
      Left = 168
      Top = 16
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 1
    end
    object btnHAPUS: TButton
      Left = 248
      Top = 16
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 2
    end
    object btnBARU: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 3
      OnClick = btnBARUClick
    end
  end
  object idhtpRujukan: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 422
    Top = 99
  end
  object idhtpDiagnosaiRujuk: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 526
    Top = 91
  end
  object idhtpPoli: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 550
    Top = 155
  end
end
