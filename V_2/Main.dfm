object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'OSM Editor V.2'
  ClientHeight = 702
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 679
    Width = 895
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxrMainRibbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 895
    Height = 126
    BarManager = dxbmMainMenu
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxrtMain: TdxRibbonTab
      Caption = #1043#1083#1072#1074#1085#1072#1103
      Groups = <
        item
          ToolbarName = 'dxbmbCommon'
        end
        item
          ToolbarName = 'dxbmbPrint'
        end>
      Index = 0
    end
    object dxrtMap: TdxRibbonTab
      Active = True
      Caption = #1050#1072#1088#1090#1072
      Groups = <
        item
          ToolbarName = 'dxbmShapes'
        end>
      Index = 1
    end
    object dxrtStyle: TdxRibbonTab
      Caption = #1042#1080#1076
      Groups = <>
      Index = 2
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 126
    Align = alLeft
    PanelStyle.Active = True
    TabOrder = 2
    Height = 553
    Width = 300
    object cxListBox1: TcxListBox
      Left = 3
      Top = 135
      Width = 291
      Height = 338
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 300
    Top = 126
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 3
    Height = 553
    Width = 595
    object dxMapControl1: TdxMapControl
      Left = 10
      Top = 2
      Width = 583
      Height = 549
      Align = alClient
      CenterPoint.Longitude = 33.400000000000000000
      CenterPoint.Latitude = 47.900000000000000000
      PopupMenu = PopupMenu1
      TabOrder = 0
      ZoomLevel = 10.000000000000000000
      OnMouseDown = dxMapControl1MouseDown
      OnMouseMove = dxMapControl1MouseMove
      OnMouseUp = dxMapControl1MouseUp
      object dxMapControl1ImageTileLayer1: TdxMapImageTileLayer
        ProviderClassName = 'TdxMapControlOpenStreetMapImageryDataProvider'
        Provider.Subdomains.Strings = (
          'a'
          'b'
          'c')
        Provider.UrlTemplate = 'http://[subdomain].tile.openstreetmap.org/[z]/[x]/[y].png'
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 2
      Top = 2
      Width = 8
      Height = 549
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      HotZoneClassName = 'TcxSimpleStyle'
      HotZone.SizePercent = 100
      HotZone.Visible = False
      AutoSnap = True
      MinSize = 295
      ResizeUpdate = True
      Control = cxGroupBox1
    end
  end
  object cxlbRoutes: TcxListBox
    Left = 3
    Top = 132
    Width = 291
    Height = 123
    ItemHeight = 13
    TabOrder = 8
  end
  object dxbmMainMenu: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 456
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbmbCommon: TdxBar
      Caption = #1054#1073#1097#1080#1077
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 929
      FloatTop = 50
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbmbPrint: TdxBar
      Caption = #1055#1077#1095#1072#1090#1100
      CaptionButtons = <>
      DockedLeft = 49
      DockedTop = 0
      FloatLeft = 929
      FloatTop = 50
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbmShapes: TdxBar
      Caption = #1060#1080#1075#1091#1088#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 929
      FloatTop = 50
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actPushpinAdd
      Category = 0
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        000100000002000000060000000C0000000B0000000600000002000000010000
        0000000000000000000000000000000000000000000000000000000000010000
        0003000000070000000E000000120000000E0000000700000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000040000000EB18575FF3D221BB30000003A00000021000000170000
        0014000000100000000E0000000D0000000E0000001000000014000000170000
        00220000003C574139B5AE8071FF3B2019AC00000031000000170000000C0000
        0006000000030000000200000001000000000000000000000000000000000000
        00010000000500000013B18677FFB99A91FF3E231CBD000000580000003E0000
        002D00000026000000200000001E00000020000000260000002D0000003E0000
        0059594239BEC59E8FFFDCBAAFFFB7988FFF3C211AB500000045000000260000
        00150000000B0000000500000002000000000000000000000000000000000000
        00000000000500000013B28778FFF6EEE9FFBA9C92FF3F241CC1000000680000
        00500000003F0000003700000031000000370000003F00000051000000685942
        3BC2C89F92FFDCBAAFFFB1A993FFF7EEE8FFB8988FFF3D221AB70000004D0000
        002D000000180000000D00000006000000000000000000000000000000000000
        00000000000500000013B48879FFF7EEEAFFF7EFE9FFBB9D93FF40241CC40000
        00730000005E0000004E000000490000004E0000005E000000735A433BC5C7A3
        93FFDCBAB2FF81A483FF247844FFA0DAC5FFF6ECE9FFB99A90FF3D221AB60000
        004B0000002D000000170000000B000000000000000000000000000000000000
        00000000000400000012B58A7AFFF8F0EBFFEDD9C0FFF8EFEBFFBB9D93FF4025
        1DC70000007C0000006900000062000000690000007C5A443DC7C9A496FFE0C1
        B5FF83A98AFF2A8C5BFF267C4BFF52CBA8FFA0DBC6FFF7EEE9FFB99A91FF3D22
        1BB2000000450000002600000011000000010000000000000000000000000000
        00000000000400000011B58B7CFFF7F0EBFFE3C497FFEDDAC1FFF8F0EBFFBC9E
        94FF41251DCA000000850000007C000000855B463DCACAA899FFE0C5B5FF82AE
        8FFF2D9563FF469466FF638B60FF6CD0B0FF51CBA8FFA0DBC6FFF7EEE9FFB99A
        91FF3E231CAC000000380000001B000000020000000100000000000000000000
        00000000000400000010B68D7DFFF8F1ECFFE4C699FFE4C698FFEDDBC2FFF8F0
        ECFFBD9F95FF40271ECD000000965C463ECDCCA99AFFE0C8B9FF86B090FF569A
        6DFF859A6EFF998F5DFFA37840FFB6D4B8FF6CD0B1FF51CBA7FFA1DBC7FFF7EF
        EBFFBA9C92FF3F231CA400000028000000060000000200000000000000000000
        00000000000400000010B88F7FFFF8F1EEFFE5C79AFFE4C69AFFE5C69AFFEEDC
        C4FFF8F0ECFFBE9F95FF623A2EE9CBAA9BFFE2CAB9FFA2B194FF8C9668FFA388
        55FFB78147FFB87E44FFAF7139FFD8CFADFF97D5B9FF57CEACFF52CBA8FFA0DB
        C6FFF8F0EBFFBA9D93FF3F241D9B0000000C0000000300000001000000000000
        0000000000040000000FB89081FFF8F1EFFFE5C99DFFE5C89BFFE5C79BFFE5C7
        9BFFEEDDC5FFF7F1EEFFE9D9D4FFE1CAB8FFB8A88CFFA07B48FFA2713FFFA671
        3DFFAB7339FFAD7034FFA5662CFFD6BB91FFC3D8BEFF62D1B2FF57CEACFF51CB
        A8FFA1DCC6FFF8F0EBFFB38879FF000000110000000400000001000000000000
        0000000000030000000EB99182FFF8F3EFFFEDDAB3FFE9D0A6FFE6C99CFFE6C9
        9CFFE5C99EFFE8E3D2FFF6F0EDFFC8A684FFA37340FF7C5A3CFF2C3B6DFF6F4A
        29FF945E2AFFA3682EFFA36329FFC3A680FFD8D2B5FF9DDAC0FF61D3B4FF57CE
        ACFF51CBA8FFF8F1ECFFB48A7BFF000000130000000500000001000000000000
        0000000000030000000DBB9384FFF9F3F0FFBAE7DBFFE4DFBDFFECD7AFFFE9D1
        A9FFEBD4B0FFE9D3B0FFE8DAC4FFAA7742FF7E5B37FF273F78FF4794D0FF1E2E
        5EFF704A26FF945F2CFF9E6128FFC0A47FFFD3B997FFD5DFCBFF88DDC4FF74DA
        BFFF67D5B7FFF8F2EEFFB68B7CFF000000130000000500000000000000000000
        0000000000030000000CBC9585FFF9F5F1FF79D9C2FFB9ECE6FFE5E8D0FFF0DF
        BFFFECD5B2FFE6D2AFFFD9C9AEFF8D6639FF2F3E6CFF4991CCFF43A3E3FF4188
        C3FF242D53FF7C5025FF955B26FFBDA07DFFC7AC89FFDDCEAFFFC3E1CEFF7FDD
        C4FF79DCC2FFF8F1EFFFB68D7DFF000000120000000500000000000000000000
        0000000000030000000BBD9687FFF9F5F1FF6DD5B7FF87DEC9FFBFEEE9FFEBE7
        CDFFEBDABAFFDBC9A8FFBCB099FF41455EFF4682BEFF4CA8E5FF3F9FE2FF4AA7
        E5FF3974B0FF333247FF805123FFB39978FFC5AB88FFD0B795FFE1D9BFFFB7E2
        CEFF7FDEC6FFF8F2EFFFB78E7FFF000000110000000400000000000000000000
        0000000000030000000BBE9789FFFAF5F3FF6BD4B6FF72D7BBFF96E3D2FFCAEC
        E3FFE6DABEFFC6B69BFF697082FF4073B0FF55AEE7FF43A3E2FF43A2E3FF42A1
        E2FF53ADE6FF30619EFF493E44FFA08B6EFFBFA685FFCEB493FFDFC8A7FFE2DE
        C5FFBFE3D0FFF9F3F0FFB89080FF000000100000000400000000000000000000
        0000000000020000000ABF988AFFFAF6F3FF69D4B5FF6ED6B9FF77D9BEFFAEE6
        DEFFCCCEBCFF908F8AFF335C9CFF63B6E8FF48A6E3FF47A5E4FF46A5E4FF45A4
        E3FF46A4E3FF5DB1E6FF214483FF79716CFFB19B7EFFCAB493FFD7C09FFFE8D4
        B4FFE7DDC2FFF9F3F0FFBA9182FF0000000F0000000400000000000000000000
        00000000000200000008C09A8BFFF9F7F5FFB3E6D6FF6DD5B6FF71D6BAFF8ED3
        C4FFA4B7AFFF37568EFF6CB1DFFF52ADE6FF4CA9E5FF4BA8E5FF4AA8E5FF4AA7
        E5FF49A7E4FF51ABE6FF559BD0FF2E4174FF9F9180FFC2AB8DFFD5BE9FFFE0CA
        ABFFEDDABBFFF9F5F1FFBB9283FF0000000E0000000400000000000000000000
        000000000001000000055F4D4584DDC9C0FFFAF7F5FFB4E5D5FF6CCEB3FF71BF
        AAFF517297FF5F95C7FF61B8EAFF51ADE7FF51ACE7FF4FACE7FF4FACE6FF4EAB
        E6FF4EAAE6FF4CAAE6FF5FB5E9FF3E72ADFF59627BFFB4A795FFCFBB9CFFDECA
        ABFFE9D7B6FFFAF6F2FFBC9485FF0000000E0000000300000000000000000000
        0000000000010000000200000006604E4685DCC9C0FFF6F4F2FFA7D4C7FF539B
        95FF3E69A5FF7EC7EEFF56B1E8FF56B1E8FF55B0E8FF54B0E8FF54AFE7FF53AF
        E7FF53AEE7FF51ADE7FF52ADE6FF6BB8E7FF2C508FFF8F8E92FFC9BDAAFFDCC9
        ABFFE6D4B5FFFAF6F3FFBD9686FF0000000D0000000300000000000000000000
        000000000000000000010000000200000006604E4684D6C3BBFFDCDAD7FF4269
        98FF7EB5DBFF67BBECFF5BB4E9FF5AB4E9FF5AB4E9FF5AB3E9FF59B2E8FF58B2
        E9FF57B1E8FF57B0E8FF56B0E8FF60B5EAFF5F9ECFFF3B4F7DFFBFB7B0FFDBCF
        BEFFE5D4B7FFFAF7F5FFBE9788FF0000000C0000000300000000000000000000
        000000000000000000000000000100000002000000095A49438B9D99A0FF4672
        ACFF90D1F3FF61B9ECFF61B9EBFF60B9EBFF65BAECFF8CD0F2FFA6DDF6FFAADF
        F6FF9AD7F3FF6DBFEDFF5AB4E9FF5AB3E9FF79C6EFFF315C9CFF8D8287FFD8D1
        CEFFE9DECFFFFAF8F5FFBF998AFF0000000B0000000300000000000000000000
        00000000000000000000000000000000000100000006000000193B5278DB82B0
        D6FF7BC7EFFF66BDEDFF66BDEDFF6EC1EDFF7CB9DDFF4A84B8FF3470AAFF4983
        B5FF89BFDFFFAFE1F7FF74C3EEFF5FB8EAFF6EC0EDFF619ACBFF32446CDDC3AF
        A6FFECE8E5FFF9F7F5FFC09A8BFF0000000A0000000300000000000000000000
        00000000000000000000000000000000000100000006000000182D5893EEADDA
        F0FF70C3EFFF6CC1EEFF6BC0EEFF6FB1DAFF2B5C8FE70E1E2F6D0000002C0E1E
        2F6F2B5F92EA8CBFDEFFA3DBF5FF64BBECFF68BDEDFF7FBFE6FF234781E85443
        3D95D8C4BBFFF9F7F6FFC29C8DFF000000090000000200000000000000000000
        00000000000000000000000000000000000000000005010102173665A4FFBDE7
        F9FF73C6F0FF70C5EFFF73C6F0FF4177ADFF0C1A2962000000170000000F0000
        00180E1D2E6A487EB0FFB8E6F8FF68BFEDFF68BEEEFF91D3F3FF2B5495FD0000
        00265D4B4589DEC9C1FFC29D8EFF000000080000000200000000000000000000
        000000000000000000000000000000000000000000040000001034619EF5BCE4
        F6FF82CFF2FF8AD3F4FF9ADBF7FF2E609AFF020507290000000D000000070000
        000E04080D3531659FFFC3EDFBFF80CCF1FF72C5EFFF8FCDEDFF2A528EEF0000
        001D0000000D604E4683DDC6BCFF000000050000000100000000000000000000
        000000000000000000000000000000000000000000020000000A2B5280C9A8CE
        E6FFB9E8F9FFA7E3F9FFA6E2F8FF4172A6FF0B18285B000000100000000B0000
        00120D1B2C644876A9FFB7E8FAFF9CDCF6FF9BDBF6FF85BDE0FF244576CB0000
        0015000000070000000500000004000000020000000100000000000000000000
        00000000000000000000000000000000000000000001000000061C334F7E86AC
        D1FFD9F4FDFFB3E9FAFFB0E8FAFF8ABEDCFF244D82E70D1A2C5F0102031B0D1B
        2D61244D82E88FBCD9FFABE5F9FFA8E2F9FFBAE9F9FF709BC7FF1629447E0000
        000C000000030000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000002030508144170
        A4ECD9EEF7FFCEF3FCFFB9ECFBFFB8ECFBFF8FC1DCFF4976A7FF2B5791FF4977
        A7FF92C2DDFFB5EAFBFFB2E9FAFFB5E9FAFFBEE2F3FF386198E80305081C0000
        0006000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000031628
        3C5C79A3CBFFE6F9FEFFD4F5FDFFC3F1FCFFBFEFFCFFBFEFFCFFBEEFFCFFBDEE
        FCFFBDEEFCFFBCEEFCFFBEEEFCFFD0F4FCFF6A93C1FF101F3158000000080000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00021C344D7278A1CAFFDBEDF6FFE7FAFEFFDAF7FEFFD0F5FDFFC8F3FDFFC8F3
        FDFFCFF4FDFFD9F6FEFFD1E9F4FF7199C4FF1A304B7600000007000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000115273A524273A4E588AED2FFBCD5E8FFD2E6F1FFEFFCFEFFD2E6
        F1FFBBD4E7FF83A9CEFF3D6B9EE3132335540000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000020406091B324966305880B4386897D5427AB4FF3766
        96D52E567EB5192F45650204060B000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actRouteAdd
      Category = 0
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000051392270A272
        44E0513922700000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A27244E00000
        0000A27244E00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000051392270B486
        52FF513922700000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000051392270A27244E051392270000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A27244E000000000B48652FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000051392270A27244E051392270000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        000051392270A27244E0513922700000000000000000000000000000000097A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        0000A27244E000000000B48652FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        000051392270B48652FF51392270000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000097A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000097A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000097A776FF000000000000000000000000000000000000
        00000000000097A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000051392270B48652FF513922700000000000000000000000000000
        00000000000097A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000A27244E000000000B48652FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000051392270A27244E0513922700000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actRectangleAdd
      Category = 0
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F
        4FFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object ActionList1: TActionList
    Left = 660
    Top = 54
    object actPushpinAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1073#1091#1083#1072#1074#1082#1091
      OnExecute = actPushpinAddExecute
    end
    object actPushpinMove: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1073#1091#1083#1072#1074#1082#1091
      OnExecute = actPushpinMoveExecute
    end
    object actPushinMoveSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      OnExecute = actPushinMoveSaveExecute
    end
    object actPushinMoveRollback: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      OnExecute = actPushinMoveRollbackExecute
    end
    object actPushpinDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1073#1091#1083#1072#1074#1082#1091
      OnExecute = actPushpinDeleteExecute
    end
    object actRouteAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      OnExecute = actRouteAddExecute
    end
    object actRouteCreate: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      OnExecute = actRouteCreateExecute
    end
    object actRouteRemoveLastPoint: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1090#1086#1095#1082#1091
      OnExecute = actRouteRemoveLastPointExecute
    end
    object actRouteCreateCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1084#1072#1088#1096#1088#1091#1090#1072
      OnExecute = actRouteCreateCancelExecute
    end
    object actRectangleAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1072#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      OnExecute = actRectangleAddExecute
    end
    object actRectangleCreate: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082
      OnExecute = actRectangleCreateExecute
    end
    object actRectangleCreateCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1077' '#1087#1088#1103#1084#1086#1091#1075#1086#1083#1100#1085#1080#1082#1072
      OnExecute = actRectangleCreateCancelExecute
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 584
    Top = 376
    object N1: TMenuItem
      Action = actPushpinMove
    end
    object N3: TMenuItem
      Action = actPushinMoveSave
    end
    object N4: TMenuItem
      Action = actPushinMoveRollback
    end
    object N2: TMenuItem
      Action = actPushpinDelete
    end
    object N5: TMenuItem
      Action = actRouteCreate
    end
    object N6: TMenuItem
      Action = actRouteRemoveLastPoint
    end
    object N7: TMenuItem
      Action = actRouteCreateCancel
    end
    object N8: TMenuItem
      Action = actRectangleCreate
    end
    object N9: TMenuItem
      Action = actRectangleCreateCancel
    end
  end
end
