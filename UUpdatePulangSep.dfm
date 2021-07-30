object FUpdatePulangSep: TFUpdatePulangSep
  Left = 1295
  Top = 210
  Width = 406
  Height = 551
  Caption = 'UPDATE PULANG SEP'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 41
    Align = alTop
    Caption = 'UPDATE PULANG SEP'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 390
    Height = 430
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object grpCariNoSep: TGroupBox
      Left = 1
      Top = 1
      Width = 388
      Height = 56
      Align = alTop
      Caption = 'PENCARIAN NOMER SEP'
      TabOrder = 0
      object edtCariNoSep: TEdit
        Left = 8
        Top = 24
        Width = 249
        Height = 24
        TabOrder = 0
      end
      object btnCari: TButton
        Left = 264
        Top = 24
        Width = 75
        Height = 25
        Caption = 'CARI'
        TabOrder = 1
        OnClick = btnCariClick
      end
    end
    object grpDataUpdatePulang: TGroupBox
      Left = 1
      Top = 57
      Width = 388
      Height = 372
      Align = alClient
      Caption = 'DATA UPDATE PULANG'
      TabOrder = 1
      object lblNomerSep: TLabel
        Left = 8
        Top = 32
        Width = 64
        Height = 16
        Caption = 'NOMER SEP'
      end
      object lblSTATUSPULANG: TLabel
        Left = 8
        Top = 64
        Width = 90
        Height = 16
        Caption = 'STATUS PULANG'
      end
      object lblTGLPULANG: TLabel
        Left = 8
        Top = 96
        Width = 68
        Height = 16
        Caption = 'TGL PULANG'
      end
      object edtNOSEP: TEdit
        Left = 112
        Top = 24
        Width = 225
        Height = 24
        Enabled = False
        TabOrder = 0
        Text = 'edtNOSEP'
      end
      object dtpTGLPULANG: TDateTimePicker
        Left = 112
        Top = 88
        Width = 225
        Height = 24
        Date = 44162.397079062500000000
        Time = 44162.397079062500000000
        DateFormat = dfLong
        TabOrder = 1
      end
      object edtStatusPulang: TEdit
        Left = 112
        Top = 56
        Width = 225
        Height = 24
        TabOrder = 2
        Text = 'edtStatusPulang'
        OnClick = edtStatusPulangClick
      end
      object lstStatusPulang: TListBox
        Left = 112
        Top = 80
        Width = 225
        Height = 105
        ItemHeight = 16
        TabOrder = 3
        Visible = False
        OnClick = lstStatusPulangClick
      end
      object grpTampilRespon: TGroupBox
        Left = 8
        Top = 192
        Width = 369
        Height = 161
        Caption = 'TAMPIL RESPON'
        TabOrder = 4
        object mmo1: TMemo
          Left = 2
          Top = 18
          Width = 365
          Height = 141
          Align = alClient
          Lines.Strings = (
            'mmo1')
          TabOrder = 0
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 471
    Width = 390
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    TabOrder = 2
    object btnSIMPAN: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 0
      OnClick = btnSIMPANClick
    end
    object btnKELUAR: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 1
      OnClick = btnKELUARClick
    end
  end
  object idhtpCariSep: TIdHTTP
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
    Left = 17
    Top = 218
  end
  object idhtpStatusPulang: TIdHTTP
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
    Left = 97
    Top = 218
  end
  object idhtpUpdateTgl: TIdHTTP
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
    Left = 353
    Top = 234
  end
end
