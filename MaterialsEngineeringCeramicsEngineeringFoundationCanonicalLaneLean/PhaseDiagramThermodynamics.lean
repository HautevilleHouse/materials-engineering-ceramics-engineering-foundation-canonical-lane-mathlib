import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure PhaseDiagramSystem where
  components : Type u
  phases : Type v
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Type w
  gibbsFreeEnergyMinimization : Prop
  temperatureRangeTerm : temperatureRange
  pressureRangeTerm : pressureRange
  gibbsFreeEnergyMinimizationTerm : gibbsFreeEnergyMinimization

structure PhaseDiagramEvidence (P : PhaseDiagramSystem) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization

def PhaseDiagramClosed (P : PhaseDiagramSystem) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.gibbsFreeEnergyMinimization

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramSystem)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.pressureRangeClosed E.gibbsFreeEnergyMinimizationClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse