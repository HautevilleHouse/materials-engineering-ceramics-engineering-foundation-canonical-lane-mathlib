import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CeramicProcessingPackage where
  powderSynthesis : Type u
  shapingMethod : Type v
  sinteringCycle : Type w
  densificationMechanism : Prop
  grainGrowthControl : Prop
  microstructureEvolution : Prop

structure CeramicProcessingEvidence (C : CeramicProcessingPackage) where
  powderSynthesisClosed : C.powderSynthesis
  shapingMethodClosed : C.shapingMethod
  sinteringCycleClosed : C.sinteringCycle
  densificationMechanismClosed : C.densificationMechanism
  grainGrowthControlClosed : C.grainGrowthControl
  microstructureEvolutionClosed : C.microstructureEvolution

def CeramicProcessingClosed (C : CeramicProcessingPackage) : Prop :=
  C.powderSynthesis ∧ C.shapingMethod ∧ C.sinteringCycle ∧
  C.densificationMechanism ∧ C.grainGrowthControl ∧ C.microstructureEvolution

theorem ceramic_processing_closed_from_evidence (C : CeramicProcessingPackage)
    (E : CeramicProcessingEvidence C) : CeramicProcessingClosed C := by
  exact And.intro E.powderSynthesisClosed
    (And.intro E.shapingMethodClosed
      (And.intro E.sinteringCycleClosed
        (And.intro E.densificationMechanismClosed
          (And.intro E.grainGrowthControlClosed E.microstructureEvolutionClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse