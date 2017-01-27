object DmCafetAprg: TDmCafetAprg
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 591
  Top = 292
  Height = 302
  Width = 420
  object IBDatabase: TIBDatabase
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 32
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase
    AutoStopAction = saNone
    Left = 104
    Top = 16
  end
  object QryTravail: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 168
    Top = 16
  end
end
