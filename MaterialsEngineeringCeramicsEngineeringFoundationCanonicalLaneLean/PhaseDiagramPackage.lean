import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  temperatureCompositionMap : Type w
  phaseBoundaries : Type x
  invariantPoints : Prop
  solidSolubilityLimits : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsClosed : P.components
  phasesClosed : P.phases
  temperatureCompositionMapClosed : P.temperatureCompositionMap
  phaseBoundariesClosed : P.phaseBoundaries
  invariantPointsClosed : P.invariantPoints
  solidSolubilityLimitsClosed : P.solidSolubilityLimits

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.components ∧ P.phases ∧ P.temperatureCompositionMap ∧
  P.phaseBoundaries ∧ P.invariantPoints ∧ P.solidSolubilityLimits

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.componentsClosed
    (And.intro E.phasesClosed
      (And.intro E.temperatureCompositionMapClosed
        (And.intro E.phaseBoundariesClosed
          (And.intro E.invariantPointsClosed E.solidSolubilityLimitsClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse