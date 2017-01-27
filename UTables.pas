unit UTables;

interface

uses
  Math;

type

  TFamille = class
  private
    FFamille_Id: integer;
    FLibelle: string;
  public
    constructor Create(pFamilleId: integer; pLibelle: string);
    property Famille_Id: integer read FFamille_Id write FFamille_Id;
    property Libelle: string read FLibelle write FLibelle;
  end;

  TArticle = class
  private
    FArticle_Id: Integer;
    FLibelle: string;
    FFamille_Id: Integer;
    FPrix_Adh: Extended;
    FPrix_NAdh: Extended;
  public
    constructor Create(pArticleId, pFamilleId: integer; pLibelle: string; pPrixAdh, pPrixNAdh: Extended);
    property Article_Id: integer read FArticle_Id write FArticle_Id;
    property Famille_Id: integer read FFamille_Id write FFamille_Id;
    property Libelle: string read FLibelle write FLibelle;
    property Prix_Adh: Extended read FPrix_Adh write FPrix_Adh;
    property Prix_NAdh: Extended read FPrix_NAdh write FPrix_NAdh;
  end;

implementation

{ TFamille }

constructor TFamille.Create(pFamilleId: integer; pLibelle: string);
begin
  FFamille_Id := pFamilleId;
  FLibelle := pLibelle;
end;

{ TArticle }

constructor TArticle.Create(pArticleId, pFamilleId: integer;
  pLibelle: string; pPrixAdh, pPrixNAdh: Extended);
begin
  FArticle_Id := pArticleId;
  FLibelle := pLibelle;
  FFamille_Id := pFamilleId;
  FPrix_Adh := pPrixAdh;
  FPrix_NAdh := pPrixNAdh;
end;

end.
