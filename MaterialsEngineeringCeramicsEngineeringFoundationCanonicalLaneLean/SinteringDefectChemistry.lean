import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure SinteringDefectChemistryPackage where
  diffusionMechanismDefined : Prop
  defectEquilibriumModeled : Prop
  grainGrowthKinetics : Prop
  densificationRateComputed : Prop

structure SinteringDefectChemistryEvidence (S : SinteringDefectChemistryPackage) where
  diffusionMechanismDefinedClosed : S.diffusionMechanismDefined
  defectEquilibriumModeledClosed : S.defectEquilibriumModeled
  grainGrowthKineticsClosed : S.grainGrowthKinetics
  densificationRateComputedClosed : S.densificationRateComputed

def SinteringDefectChemistryClosed (S : SinteringDefectChemistryPackage) : Prop :=
  S.diffusionMechanismDefined ∧ S.defectEquilibriumModeled ∧
  S.grainGrowthKinetics ∧ S.densificationRateComputed

theorem sintering_defect_chemistry_closed_from_evidence (S : SinteringDefectChemistryPackage) (E : SinteringDefectChemistryEvidence S) :
    SinteringDefectChemistryClosed S := by
  exact And.intro E.diffusionMechanismDefinedClosed
    (And.intro E.defectEquilibriumModeledClosed
      (And.intro E.grainGrowthKineticsClosed E.densificationRateComputedClosed))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
