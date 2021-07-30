object FFotoBerkas: TFFotoBerkas
  Left = 399
  Top = 88
  Width = 542
  Height = 762
  Caption = 'FOTO BERKAS '
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
  object pnlBawah: TPanel
    Left = 0
    Top = 668
    Width = 526
    Height = 55
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnSimpan: TButton
      Left = 16
      Top = 16
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 49
    Align = alTop
    Caption = 'FOTO BERKAS'
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 388
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
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 526
    Height = 619
    Align = alClient
    TabOrder = 2
    object grpDataFoto: TGroupBox
      Left = 1
      Top = 1
      Width = 524
      Height = 617
      Align = alClient
      Caption = 'DATA FOTO'
      TabOrder = 0
      object cxlblNoRekamedis: TcxLabel
        Left = 8
        Top = 16
        Caption = 'cxlblNoRekamedis'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.IsFontAssigned = True
      end
      object cxlblNamaPasien: TcxLabel
        Left = 160
        Top = 16
        Caption = 'cxlblNamaPasien'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.IsFontAssigned = True
      end
      object btnUpploadFotoProfil: TButton
        Left = 8
        Top = 296
        Width = 177
        Height = 25
        Caption = 'UPPLOAD FOTO KTP'
        TabOrder = 2
        OnClick = btnUpploadFotoProfilClick
      end
      object btnUploadFotoPenjamin: TButton
        Left = 8
        Top = 584
        Width = 193
        Height = 25
        Caption = 'UPPLOAD FOTO PENJAMIN'
        TabOrder = 3
        OnClick = btnUploadFotoPenjaminClick
      end
      object pnlFotoProfil: TPanel
        Left = 8
        Top = 40
        Width = 481
        Height = 249
        TabOrder = 4
        object imgFotoProfil: TImage
          Left = 1
          Top = 1
          Width = 479
          Height = 247
          Align = alClient
          Stretch = True
        end
      end
      object pnlFotoUpploadPenjamin: TPanel
        Left = 8
        Top = 328
        Width = 481
        Height = 249
        TabOrder = 5
        object imgFotoBerkas: TImage
          Left = 1
          Top = 1
          Width = 479
          Height = 247
          Align = alClient
          Center = True
          Stretch = True
        end
      end
      object edtFotoProfil: TEdit
        Left = 208
        Top = 296
        Width = 297
        Height = 21
        TabOrder = 6
        Text = 'edtFotoProfil'
        Visible = False
      end
      object edtFotoPenjamin: TEdit
        Left = 208
        Top = 584
        Width = 305
        Height = 21
        TabOrder = 7
        Text = 'edtFotoPenjamin'
        Visible = False
      end
    end
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = 'S'
    Filter = 
      'All (*.gif;*.png;*.png;*.png;*.jpg;*.jpeg;*.jpg;*.jpeg;*.bmp;*.i' +
      'co;*.emf;*.wmf)|*.gif;*.png;*.png;*.png;*.jpg;*.jpeg;*.jpg;*.jpe' +
      'g;*.bmp;*.ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|Portable Netwo' +
      'rk Graphics (*.png)|*.png|Portable network graphics (AlphaContro' +
      'ls) (*.png)|*.png|PNG graphics from DevExpress (*.png)|*.png|JPE' +
      'G Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|JPEG ' +
      'Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps' +
      ' (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.' +
      'emf|Metafiles (*.wmf)|*.wmf'
    Left = 464
    Top = 96
  end
  object dst_fotoberkas: TDataSource
    DataSet = qryt_fotoberkas
    Left = 400
    Top = 80
  end
  object qryt_fotoberkas: TZQuery
    Connection = DataSimrs.conSimrs1
    Active = True
    SQL.Strings = (
      'select * from t_fotoberkas')
    Params = <>
    Left = 345
    Top = 186
  end
end
