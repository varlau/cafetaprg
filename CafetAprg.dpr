program CafetAprg;

uses
  Forms,
  MenuGene in 'MenuGene.pas' {FrmMenuGene},
  UdmCafetAprg in 'UdmCafetAprg.pas' {DmCafetAprg: TDataModule},
  UTables in 'UTables.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDmCafetAprg, DmCafetAprg);
  Application.CreateForm(TFrmMenuGene, FrmMenuGene);
  Application.Run;
end.
