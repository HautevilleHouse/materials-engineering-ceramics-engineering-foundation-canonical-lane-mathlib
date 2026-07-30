import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  componentTypes : List String
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  invariantReactions : Prop
  solidSolutionModel : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentTypesClosed : P.componentTypes.length ≥ 1
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  invariantReactionsClosed : P.invariantReactions
  solidSolutionModelClosed : P.solidSolutionModel

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.componentTypes.length ≥ 1 ∧ P.temperatureRange ∧ P.pressureRange ∧
  P.phaseBoundaries ∧ P.invariantReactions ∧ P.solidSolutionModel

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.componentTypesClosed
    (And.intro E.temperatureRangeClosed
      (And.intro E.pressureRangeClosed
        (And.intro E.phaseBoundariesClosed
          (And.intro E.invariantReactionsClosed E.solidSolutionModelClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse