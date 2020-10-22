object FLAPORAN: TFLAPORAN
  Left = 286
  Top = 192
  Width = 1235
  Height = 717
  Caption = 'LAPORAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxnvbrLaporan: TdxNavBar
    Left = 0
    Top = 0
    Width = 281
    Height = 678
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    object dxnvbrgrpLaporanGroupPendaftaran: TdxNavBarGroup
      Caption = 'LAPORAN PENDAFTARAN'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxnvbrtmLaporanItem1
        end>
    end
    object dxnvbrtmLaporanItem1: TdxNavBarItem
      Action = actKUNJUNGANRAWATJALAN
    end
    object dxnvbrtmLaporanItem2: TdxNavBarItem
      Caption = 'dxnvbrtmLaporanItem2'
    end
  end
  object pnlTengah: TPanel
    Left = 281
    Top = 0
    Width = 938
    Height = 678
    Align = alClient
    TabOrder = 1
    object grpLpKunjunganRajalIgd: TGroupBox
      Left = 8
      Top = 8
      Width = 297
      Height = 201
      Caption = 'LAPORAN KUNJUGAN RAJAL / IGD'
      TabOrder = 0
    end
  end
  object actlstLAPORAN: TActionList
    Left = 160
    Top = 96
    object actKUNJUNGANRAWATJALAN: TAction
      Caption = 'KUNJUNGAN RAWAT JALAN / IGD'
    end
  end
end
