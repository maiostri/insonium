object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 150
  Width = 215
  object adoConn: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=inson' +
      'ium'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 80
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 152
    Top = 32
  end
end
