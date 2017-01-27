unit MenuGene;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB,
  Provider, DBClient, DBLocal, DBLocalI, Contnrs, IBCustomDataSet;

type
  TFrmMenuGene = class(TForm)
    MainMenu1: TMainMenu;
    MnuFichier: TMenuItem;
    MnuTables: TMenuItem;
    MnuAide: TMenuItem;
    MnuAPropos: TMenuItem;
    MnuFamilles: TMenuItem;
    MnuArticles: TMenuItem;
    MnuQuitter: TMenuItem;
    PnlHaut: TPanel;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    SGArticles: TStringGrid;
    PnlPaiement: TPanel;
    PnlTotal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtnTicket: TBitBtn;
    BtnCarte: TBitBtn;
    BtnEspece: TBitBtn;
    BtnCheque: TBitBtn;
    BtnVteAdh: TBitBtn;
    DBGridVentes: TDBGrid;
    Panel2: TPanel;
    BtnAnnuler: TButton;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    DsVente: TDataSource;
    LBFamille: TListBox;
    IBDataSet1: TIBDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure LBFamilleClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SGArticlesSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Déclarations privées }
    FListeArticles: TObjectList;
    procedure ClearFBFamilles;
    procedure ClearSGArticles;
    procedure LoadListeArticles;
    procedure LoadListeFamilles;
    procedure ChargeArticlesFamille(pFamilleId: integer);
  public
    { Déclarations publiques }
  end;

var
  FrmMenuGene: TFrmMenuGene;

implementation

uses
  UdmCafetAprg, IBQuery, UTables;

{$R *.dfm}

procedure TFrmMenuGene.FormCreate(Sender: TObject);
begin
  FListeArticles := TObjectList.Create;
  // Chargement de la liste des familles et alimentation ListBox
  LoadListeFamilles;
  // Constitution de la liste des articles
  LoadListeArticles;
end;

procedure TFrmMenuGene.FormResize(Sender: TObject);
var
  zSize, ii: integer;
begin
  // Redimensionnement du grid de la vente
  zSize := DBGridVentes.Width - DBGridVentes.Columns.Items[1].Width - 2;
  DBGridVentes.Columns.Items[0].Width := zSize;
  // Redimensionnement du panel des produits
  zSize := Trunc((SGArticles.Width - 2) / 5);
  for ii := 0 to 4 do
    SGArticles.ColWidths[ii] := zSize;
end;

procedure TFrmMenuGene.LBFamilleClick(Sender: TObject);
var
  zFamilleId: integer;
begin
  // Identification de la famille
  zFamilleId := TFamille(LBFamille.Items.Objects[LBFamille.ItemIndex]).Famille_Id;
  ChargeArticlesFamille(zFamilleId);
end;

procedure TFrmMenuGene.LoadListeArticles;
var
  zArticle: TArticle;
begin
  FListeArticles.Clear;
  with DmCafetAprg.QryTravail do
  begin
    SQL.Text := 'select * from ARTICLES order by FAMILLE_ID, LIBELLE';
    Open;
    while not Eof do
    begin
      zArticle := TArticle.Create(FieldByName('ARTICLE_ID').AsInteger, FieldByName('FAMILLE_ID').AsInteger,
      FieldByName('LIBELLE').AsString, FieldByName('PRIX_ADH').AsFloat, FieldByName('PRIX_NADH').AsFloat);
      FListeArticles.Add(zArticle);
      Next;
    end;
    Close;
  end;
end;

procedure TFrmMenuGene.ChargeArticlesFamille(pFamilleId: integer);
var
  ii, jj: integer;
  zArticle: TArticle;
begin
  ClearSGArticles;
  jj := 0;
  for ii := 0 to (FListeArticles.Count - 1) do
  begin
    zArticle := TArticle(FListeArticles.Items[ii]);
    if (zArticle.Famille_Id = pFamilleId) then
    begin
      if (jj > 4) then
      begin
        SGArticles.RowCount := SGArticles.RowCount + 1;
        jj := 0;
      end;
      SGArticles.Cells[jj, SGArticles.RowCount -1] := zArticle.Libelle;
      SGArticles.Objects[jj, SGArticles.RowCount -1] := zArticle;
      Inc(jj);
    end;
  end;
end;


procedure TFrmMenuGene.FormDestroy(Sender: TObject);
begin
  FListeArticles.Free;
end;

procedure TFrmMenuGene.LoadListeFamilles;
var
  zFamille: TFamille;
begin
  // Nettoyage
  ClearFBFamilles;
  // Remplissage de la liste des familles
  with DmCafetAprg.QryTravail do
  begin
    SQL.Text := 'select * from FAMILLES order by FAMILLE_ID';
    Open;
    while not Eof do
    begin
      zFamille := TFamille.Create(FieldByName('FAMILLE_ID').AsInteger, FieldByName('LIBELLE').AsString);
      LBFamille.Items.AddObject(FieldByName('LIBELLE').AsString, zFamille);
      Next;
    end;
    Close;
  end;
end;

procedure TFrmMenuGene.ClearFBFamilles;
begin
  while (LBFamille.Items.Count > 0) do
  begin
    TFamille(LBFamille.Items.Objects[0]).Free;
    LBFamille.Items.Delete(0);
  end;
end;

procedure TFrmMenuGene.ClearSGArticles;
var
  ii: integer;
begin
  // Les objets liés sont gérés par FListeArticles
  SGArticles.RowCount := 0;
  for ii := 0 to SGArticles.ColCount -1 do
  begin
    SGArticles.Cells[ii, 0] := '';
    SGArticles.Objects[ii, 0] := nil;
  end;
end;

procedure TFrmMenuGene.SGArticlesSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if Assigned(SGArticles.Objects[ACol, ARow]) then
    ShowMessage(TArticle(SGArticles.Objects[ACol, ARow]).Libelle);
end;

end.
