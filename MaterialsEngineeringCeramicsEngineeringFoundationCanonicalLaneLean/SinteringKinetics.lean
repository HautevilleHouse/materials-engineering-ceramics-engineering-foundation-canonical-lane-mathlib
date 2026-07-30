import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure SinteringKinetics where
  diffusionCoefficient : Type u
  grainGrowth : Prop
  densification : Prop
  activationEnergy : Prop
  diffusionCoefficientDefined : diffusionCoefficient
  grainGrowthClosed : grainGrowth
  densificationClosed : densification
  activationEnergyClosed : activationEnergy

structure SinteringEvidence (S : SinteringKinetics) where
  diffusionCoefficientDefined : S.diffusionCoefficientDefined
  grainGrowthClosed : S.grainGrowthClosed
  densificationClosed : S.densificationClosed
  activationEnergyClosed : S.activationEnergyClosed

def SinteringClosed (S : SinteringKinetics) : Prop :=
  S.diffusionCoefficient ∧ S.grainGrowth ∧ S.densification ∧ S.activationEnergy

theorem sintering_closed_from_evidence (S : SinteringKinetics) (E : SinteringEvidence S) :
    SinteringClosed S := by
  exact And.intro E.diffusionCoefficientDefined (And.intro E.grainGrowthClosed (And.intro E.densificationClosed E.activationEnergyClosed))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse