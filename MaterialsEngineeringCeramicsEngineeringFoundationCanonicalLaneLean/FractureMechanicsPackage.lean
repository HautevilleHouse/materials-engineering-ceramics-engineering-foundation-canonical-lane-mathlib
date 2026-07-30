import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Prop
  crackGrowthCriterion : Prop
  energyReleaseRate : Prop
  rCurveBehavior : Prop
  fatigueCrackGrowth : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackGrowthCriterionClosed : F.crackGrowthCriterion
  energyReleaseRateClosed : F.energyReleaseRate
  rCurveBehaviorClosed : F.rCurveBehavior
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧
  F.crackGrowthCriterion ∧ F.energyReleaseRate ∧
  F.rCurveBehavior ∧ F.fatigueCrackGrowth

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackGrowthCriterionClosed
        (And.intro E.energyReleaseRateClosed
          (And.intro E.rCurveBehaviorClosed E.fatigueCrackGrowthClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse