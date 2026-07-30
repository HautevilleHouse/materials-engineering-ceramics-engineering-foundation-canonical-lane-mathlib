import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLatticeClassified : Prop
  reciprocalSpaceDefined : Prop
  diffractionPatternComputed : Prop
  symmetryGroupIdentified : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  reciprocalSpaceDefinedClosed : C.reciprocalSpaceDefined
  diffractionPatternComputedClosed : C.diffractionPatternComputed
  symmetryGroupIdentifiedClosed : C.symmetryGroupIdentified

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.reciprocalSpaceDefined ∧
  C.diffractionPatternComputed ∧ C.symmetryGroupIdentified

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.reciprocalSpaceDefinedClosed
      (And.intro E.diffractionPatternComputedClosed E.symmetryGroupIdentifiedClosed))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
