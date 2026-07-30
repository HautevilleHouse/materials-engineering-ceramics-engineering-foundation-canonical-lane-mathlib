import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure MechanicalTest where
  hardness : Type u
  toughness : Type v
  compressiveStrength : Prop
  flexuralStrength : Prop
  hardnessClosed : hardness
  toughnessClosed : toughness
  compressiveStrengthClosed : compressiveStrength
  flexuralStrengthClosed : flexuralStrength

structure MechanicalEvidence (M : MechanicalTest) where
  hardnessClosed : M.hardnessClosed
  toughnessClosed : M.toughnessClosed
  compressiveStrengthClosed : M.compressiveStrengthClosed
  flexuralStrengthClosed : M.flexuralStrengthClosed

def MechanicalClosed (M : MechanicalTest) : Prop :=
  M.hardness ∧ M.toughness ∧ M.compressiveStrength ∧ M.flexuralStrength

theorem mechanical_closed_from_evidence (M : MechanicalTest) (E : MechanicalEvidence M) :
    MechanicalClosed M := by
  exact And.intro E.hardnessClosed (And.intro E.toughnessClosed (And.intro E.compressiveStrengthClosed E.flexuralStrengthClosed))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse