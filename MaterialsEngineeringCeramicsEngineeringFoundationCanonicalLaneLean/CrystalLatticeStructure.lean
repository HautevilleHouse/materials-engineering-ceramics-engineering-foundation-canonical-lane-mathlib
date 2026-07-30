import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CrystalLatticeSystem where
  bravaisLatticeType : Type u
  latticeParameters : Type v
  unitCellVolume : Prop
  symmetryGroup : Type w
  primitiveCell : Prop
  conventionalCell : Prop
  unitCellVolumeTerm : unitCellVolume
  primitiveCellTerm : primitiveCell
  conventionalCellTerm : conventionalCell

structure CrystalLatticeEvidence (L : CrystalLatticeSystem) where
  unitCellVolumeClosed : L.unitCellVolume
  primitiveCellClosed : L.primitiveCell
  conventionalCellClosed : L.conventionalCell

def CrystalLatticeClosed (L : CrystalLatticeSystem) : Prop :=
  L.unitCellVolume ∧ L.primitiveCell ∧ L.conventionalCell

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticeSystem)
    (E : CrystalLatticeEvidence L) : CrystalLatticeClosed L := by
  exact And.intro E.unitCellVolumeClosed (And.intro E.primitiveCellClosed E.conventionalCellClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse