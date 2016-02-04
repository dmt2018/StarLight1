object DM: TDM
  OldCreateOrder = False
  Height = 240
  Width = 375
  object SelectSession: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'COMP:1521:STARDB'
    LoginPrompt = False
    Left = 80
    Top = 24
  end
  object SelStart: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      
        'SELECT DISTINCT * FROM ADMIN_PROGRAMS_ROLE_GROUPS WHERE ID_ROLE_' +
        'GROUPS IN (SELECT ID_ROLE_GROUPS FROM ADMIN_EMPLOYEES_ROLE_GROUP' +
        'S WHERE ID_EMPLOYEES IN (SELECT ID_CLIENTS FROM CLIENTS WHERE LO' +
        'GIN = :LOGIN AND ACTIVE = :ACTIVE))')
    Left = 160
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOGIN'
      end
      item
        DataType = ftUnknown
        Name = 'ACTIVE'
      end>
  end
  object OraQuery1: TOraQuery
    Session = SelectSession
    Left = 224
    Top = 24
  end
end
