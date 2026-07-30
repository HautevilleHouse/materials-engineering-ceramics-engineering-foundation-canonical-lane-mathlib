import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure PhaseDiagram where
  components : List String
  phases : List String
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  equilibriumConditions : Prop
  phaseBoundariesClosed : phaseBoundaries
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  equilibriumConditionsClosed : equilibriumConditions

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  phaseBoundariesClosed : P.phaseBoundariesClosed
  gibbsFreeEnergyClosed : P.gibbsFreeEnergyClosed
  equilibriumConditionsClosed : P.equilibriumConditionsClosed

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.equilibriumConditions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed E.equilibriumConditionsClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse