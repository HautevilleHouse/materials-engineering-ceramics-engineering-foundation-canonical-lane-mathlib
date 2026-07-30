import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CrystalLattice where
  unitCell : Type u
  latticeVectors : Type v
  bravaisLattice : Prop
  symmetryGroup : Prop
  latticeVectorsDefined : latticeVectors
  bravaisLatticeClosed : bravaisLattice
  symmetryGroupClosed : symmetryGroup

structure CrystallographyEvidence (C : CrystalLattice) where
  latticeVectorsDefinedClosed : C.latticeVectorsDefined
  bravaisLatticeClosed : C.bravaisLattice
  symmetryGroupClosed : C.symmetryGroup

def CrystallographyClosed (C : CrystalLattice) : Prop :=
  C.latticeVectorsDefined ∧ C.bravaisLattice ∧ C.symmetryGroup

theorem crystallography_closed_from_evidence (C : CrystalLattice) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeVectorsDefinedClosed (And.intro E.bravaisLatticeClosed E.symmetryGroupClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse