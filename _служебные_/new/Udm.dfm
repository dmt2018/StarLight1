object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 172
  Width = 371
  object OraSession: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'ROZNICA:1521:orcl'
    LoginPrompt = False
    AfterConnect = OraSessionAfterConnect
    HomeName = 'OraClient11g_home1'
    Left = 40
    Top = 40
  end
  object cdsOffices: TOraQuery
    SQL.Strings = (
      'SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME')
    Left = 104
    Top = 32
  end
  object cdsDeps: TOraQuery
    SQL.Strings = (
      'begin admins.get_deps_on_user(:login_, :cursor_); end;')
    Left = 176
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'login_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'cursor_'
        Value = 'Object'
      end>
  end
  object cdsSQL: TOraQuery
    Left = 256
    Top = 32
  end
  object cxImglst: TcxImageList
    Tag = 20
    Height = 20
    Left = 192
    Top = 112
    Bitmap = {
      494C010106000800100010001400FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002800000001002000000000000028
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
      00000000000000000000000000000000000000000000000000006C3127C3BE59
      37EBBE5937EBBE5937EBBE5937EBBE5937EBBE5937EBBE5937EBBE5937EBBE59
      37EBBE5937EB6C3127C300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020040E16840FFE168
      40FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE168
      40FFE16840FFE16840FF00020040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000180F0060180F006000000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FF00000000BF663FFDE16840FFE16840FFE16840FFE16840FFBF663FFD0000
      0000E16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E16840FFE16840FF00000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FF3211
      008500000000200F0060E16840FFE16840FFE16840FFE16840FF200F00600000
      000032110085E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E16840FFE16840FF00000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FF0000
      00000000000000000000180F0060E16840FFE16840FF180F0060000000000000
      000000000000E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000201001A0201001A00000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FF200F
      0060000000000000000000000000BF663FFDBF663FFD00000000000000000000
      0000200F0060E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFBF66
      3FFD000000000000000000000000000000000000000000000000000000000000
      0000BF663FFDE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E16840FFE16840FF00000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FFBF663FFD000000000000000000000000000000000000000000000000BF66
      3FFDE16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B85C00F5E16840FF00000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FFE16840FFBF663FFD00000000000000000000000000000000BF663FFDE168
      40FFE16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000014E16840FF7B3200C5000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FFE16840FF180F006000000000000000000000000000000000180F0060E168
      40FFE16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000893D00D9E16840FFAB4000E30000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FFBF663FFD000000000000000000000000000000000000000000000000BF66
      3FFDE16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E16840FFE16840FF0000
      00000000000000000000000000000000000000000000B55900EFE16840FFBF66
      3FFD000000000000000000000000000000000000000000000000000000000000
      0000BF663FFDE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E16840FF532900A50000000000000000E16840FFE16840FF0000
      00000000000000000000000000000000000000000000B55900EFE16840FF0000
      0000000000000000000000000000BF663FFDBF663FFD00000000000000000000
      000000000000E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000833400D1E16840FFE16840FFE16840FFE16840FFB75B00F30000
      00000000000000000000000000000000000000000000B55900EFE16840FF0000
      00000000000000000000BF663FFDE16840FFE16840FFBF663FFD000000000000
      000000000000E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000040BF663FFDE16840FF5D3400B9000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FF3211
      008500000000180F0060E16840FFE16840FFE16840FFE16840FF180F00600000
      000032110085E16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000120000000000000000000000000000
      00000000000000000000000000000000000000000000B55900EFE16840FFE168
      40FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE168
      40FFE16840FFE16840FFB25900EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020040E16840FFE168
      40FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE16840FFE168
      40FFE16840FFE16840FF00020040000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000001000048E166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFF00000022000000000000
      0006000000000000000000000000000000000000000009040276090402760904
      0276090402760904027600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000280000002400000000000000000000
      0000000000000000000000000000000000000000000000000000BB623DFDE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF0301006000000000010000540000
      0044371B00C100000000000000000000000000000000E1663EFFE1663EFFE166
      3EFFE1663EFFE1663EFF0000000000000000441E00C100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000028613000C1613000C100000020000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000203E1E00C900000000E1663EFFE1663EFFE1663EFF8A3200E50000
      0000000000000000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF0000000000000000E1663EFF0000
      00001B080099B85B3AFB00000000000000000000000000000000000000000000
      000000000000000000000000000000000010572200D100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E0F0078532900A5000000000000000000000000000000004D2600992110
      008300000000000000000000000000000000000000000000000019070095E166
      3EFFE1663EFF1C0D009B000000000000004200000044200F09A1E1663EFFE166
      3EFF000000080000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF00000000311A00B90000001E0000
      0000000000120000001400000000000000000000000000000000000000000000
      0000000000000000000000000000000000100000000000000000000000060000
      000000000000000000000000000000000000000000000000000000000000562A
      00ABA53D00DB0000000000000000000000000000000000000000000000008435
      00D3753400B9000000000000000000000000000000000000000000000000E166
      3EFFE1663EFF0000002000000000000000000000000000000000000000009E4D
      00EF221000A50000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF00000000000000890000001E0000
      0000000000100000001400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E4D00EF0000
      000000000000000000000000000000000000000000000000000000000000A73F
      00DD000000000000000000000000000000000000000000000000000000000000
      0000843500D3000000000000000000000000000000000000000000000000E166
      3EFFE1663EFF0000000800000000000000000000000000000000000000000000
      0038E1663EFF0000000200000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF0000000400000020E1663EFF0000
      00001B080099B85B3AFB00000000000000000000000000000000000000000000
      000000000000000000000000000000000000B85B3AFB00000008AE5400F70000
      0042000000000000000000000000000000000000000000000000522900A30401
      003C000000001001044002000126000000000000000000000006491600910000
      00000100002A593200B10000000000000000000000000000000000000020A651
      00F3000000000000000000000000000000000000000000000000000000000000
      0000A25000F10000001400000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFF0301006400000000010000540000
      0044371B00C10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A4A00ED00000004000000003C1A
      00B9000000000000000000000000000000000000000000000000BB5E00F90000
      000000000000190C0064B55900EF00000000000000007D3100C7583100AF0000
      000000000000BF663FFD00000000000000000000000000000000AA5400F50000
      0020000000000000000000000000000000000000000000000000000000000000
      000000000020A65100F300000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFF00000020000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000572200D100000000E166
      3EFF000000000000000000000000000000000000000000000000613000C10000
      00000000000000000000190F0064B55900EF813300CD583100AF000000000000
      000000000000532E00A500000000000000000000000000000000E1663EFF0100
      004A000000000000000000000000000000000000000000000000000000000000
      000001000048E1663EFF00000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB44F
      00F1BB623DFD9A4A00ED00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1663EFF00000000401C
      00BD190700970000000000000000000000000000000000000000572B00AD0000
      0000000000000000000000000000E16840FFE16840FF00000004000000000000
      0000000000005028009F00000000000000000000000000000000E1663EFF0100
      0042000000000000000000000000000000000000000000000000000000000000
      000001000040E1663EFF00000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE166
      3EFFE1663EFF9A4A00ED00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000211000A3000000300000
      0000AE5400F70000000000000000000000000000000000000000442100870000
      0000000000000000000000000006E16840FFE16840FF00000026000000000000
      0000000000004C26009700000000000000000000000000000000AA5400F52110
      00A3000000000000000000000000000000000000000000000000000000000000
      0000211000A3A65100F300000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE166
      3EFFE1663EFF9A4A00ED00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000002CBB623DFD0000
      0044E1663EFF0000000E00000000000000000000000000000000B85C00F50000
      00000000000000000006E16840FF583100AF2810006CE16840FF020001260000
      000000000000AF5700E90000000000000000000000000000000000000020A250
      00F1000000000000000000000000000000000000000000000000000000000000
      0004A25000F10000001600000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFE166
      3EFFE1663EFF9A4A00ED00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFF0300006400000000000000000000000000000000BA5C00F70000
      0000000000007B3100C5583100AF0000000000000000190F0064B35800ED0000
      000000000000BE5F3EFB0000000000000000000000000000000000000000E166
      3EFF0000002A000000000000000000000000000000000000000000000000E166
      3EFFE1663EFF0000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB85B3AFB000000200000
      0020000000205E1E00C900000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000044E166
      3EFFE1663EFF271500AD00000000000000000000000000000000000000100002
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000100000002800000000000000000000000000000000000000002411
      00A9E1663EFF0A0400810000000000000000000000000000000003010066E166
      3EFFE1663EFF0000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB85B3AFB00000020D962
      3DFDD9623DFD0A03007C00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E166
      3EFF1D0D0899000000000000000000000000000000000000000000000000E168
      40FF010000100000000000000000000000000000000000000000000000000000
      0000E16840FF0000000000000000000000000000000000000000000000000000
      0000241100A9E1663EFF1F0F00A101000040010000400000000013000089E166
      3EFF2A1400B10000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB85B3AFB00000022E166
      3EFF0402006C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000020000000000000000000000000000000000000
      0004AB4000E3000000000000000000000000000000000000000000000000A73F
      00DD000000000000000000000000000000000000000000000000000000000000
      0000000000008A3200E5E1663EFFE1663EFFE1663EFF00000004BA5600F30000
      0020000000000000000000000000000000000000000000000000E1663EFFE166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB85B3AFB00000022BB62
      3DFD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004E1663EFFE1663EFF000000000000000000000000000000000000
      0000210D0960E16840FFB85C00F54C21118747211085B75B00F3E16840FF210E
      0D76000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000220000002200000000000000000000
      0000000000000000000000000000000000000000000000000000AE5400F7E166
      3EFFE1663EFFE1663EFFE1663EFFE1663EFFE1663EFFB2573AF9000000200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1663EFF0804008100000000000000000000000000000000000000000000
      0000000000000000000000030018793600C1793000C100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000120000001200000012000000120000001200000012000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000280000000100010000000000400100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFC00300000000
      FFFF800100000000FE7F800100000000FE7F881100000000FE7F9C3900000000
      FE7F8E7100000000FFFF8FF100000000FE7F87E100000000FE3F83C100000000
      FE3F83C100000000FF1F87E100000000FF9F8FF100000000F99F9E7900000000
      F81F9C3900000000FC3F881100000000FE7F800100000000FFFF800100000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFC02F83FFFFFF
      FE7FC047837FFC3FF21FC0D3FE3FF3CFC207C093FEDFE7E7E3E7C093FFDFEFF7
      E3E3C013FF0FC993CFF3C047FF2FD99BCFF3C03FFFAFDC3BCFF3C003FFA7DE3B
      CFF3C003FF97DC3BCFF3C003FF83D81BCFE3C003FFC3D99BE7E7C003FFC3CFF3
      E3C7C003FFE7E7E7F047C007FFFDE7E7F80FC00FFFF1F00FFE7FC01FFFF3FC3F
      FFFFE03FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
