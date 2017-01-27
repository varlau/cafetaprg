object FrmMenuGene: TFrmMenuGene
  Left = 224
  Top = 208
  Width = 928
  Height = 480
  Caption = 'FrmMenuGene'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PnlHaut: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 233
    Align = alTop
    TabOrder = 0
    object PnlPaiement: TPanel
      Left = 536
      Top = 1
      Width = 375
      Height = 231
      Align = alRight
      Alignment = taLeftJustify
      TabOrder = 0
      object PnlTotal: TPanel
        Left = 1
        Top = 1
        Width = 373
        Height = 56
        Align = alTop
        BorderWidth = 2
        BorderStyle = bsSingle
        TabOrder = 0
        object Label1: TLabel
          Left = 170
          Top = 3
          Width = 196
          Height = 46
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Color = clBackground
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -43
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 167
          Height = 46
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
      object BtnTicket: TBitBtn
        Left = 8
        Top = 64
        Width = 129
        Height = 49
        Caption = 'Tickets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BtnCarte: TBitBtn
        Left = 144
        Top = 64
        Width = 225
        Height = 49
        Caption = 'Carte orange'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object BtnEspece: TBitBtn
        Left = 8
        Top = 120
        Width = 177
        Height = 49
        Caption = 'Esp'#232'ces'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object BtnCheque: TBitBtn
        Left = 192
        Top = 120
        Width = 177
        Height = 49
        Caption = 'Ch'#232'ques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object BtnVteAdh: TBitBtn
        Left = 8
        Top = 176
        Width = 177
        Height = 49
        Caption = 'Vente Adh.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object BitBtn1: TBitBtn
        Left = 192
        Top = 176
        Width = 177
        Height = 49
        Caption = 'Vente Ext.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object DBGridVentes: TDBGrid
      Left = 1
      Top = 1
      Width = 367
      Height = 231
      Align = alClient
      DataSource = DsVente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'D'#233'signation'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -21
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Prix'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -21
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 368
      Top = 1
      Width = 168
      Height = 231
      Align = alRight
      TabOrder = 2
      object BtnAnnuler: TButton
        Left = 8
        Top = 8
        Width = 153
        Height = 41
        Caption = 'Annuler '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 7
        Top = 56
        Width = 153
        Height = 41
        Caption = 'Annuler tout'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button2: TButton
        Left = 7
        Top = 104
        Width = 153
        Height = 41
        Caption = 'Tarif complet'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 233
    Width = 912
    Height = 169
    Align = alClient
    TabOrder = 1
    object SGArticles: TStringGrid
      Left = 385
      Top = 1
      Width = 526
      Height = 167
      Align = alClient
      DefaultColWidth = 200
      DefaultRowHeight = 52
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [goDrawFocusSelected]
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnSelectCell = SGArticlesSelectCell
    end
    object LBFamille: TListBox
      Left = 1
      Top = 1
      Width = 384
      Height = 167
      Align = alLeft
      ExtendedSelect = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 39
      ParentFont = False
      TabOrder = 1
      OnClick = LBFamilleClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 402
    Width = 912
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Panels = <
      item
        Text = 'Journ'#233'e du '
        Width = 100
      end
      item
        Width = 50
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 48
    object MnuFichier: TMenuItem
      Caption = '&Fichier'
      object MnuQuitter: TMenuItem
        Caption = '&Quitter'
      end
    end
    object MnuTables: TMenuItem
      Caption = '&Tables'
      object MnuFamilles: TMenuItem
        Caption = 'Familles'
      end
      object MnuArticles: TMenuItem
        Caption = 'Articles'
      end
    end
    object MnuAide: TMenuItem
      Caption = 'Aide'
      object MnuAPropos: TMenuItem
        Caption = '&A propos'
      end
    end
  end
  object DsVente: TDataSource
    Left = 280
    Top = 32
  end
  object IBDataSet1: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    Left = 320
    Top = 88
  end
end
