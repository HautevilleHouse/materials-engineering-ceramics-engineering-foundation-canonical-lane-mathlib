import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure ThermalProperty where
  thermalConductivity : Type u
  thermalExpansion : Type v
  heatCapacity : Prop
  conductivityRelation : Prop
  expansionRelation : Prop
  heatCapacityClosed : heatCapacity
  conductivityRelationClosed : conductivityRelation
  expansionRelationClosed : expansionRelation

structure ThermalEvidence (T : ThermalProperty) where
  heatCapacityClosed : T.heatCapacityClosed
  conductivityRelationClosed : T.conductivityRelationClosed
  expansionRelationClosed : T.expansionRelationClosed

def ThermalClosed (T : ThermalProperty) : Prop :=
  T.heatCapacity ∧ T.conductivityRelation ∧ T.expansionRelation

theorem thermal_closed_from_evidence (T : ThermalProperty) (E : ThermalEvidence T) :
    ThermalClosed T := by
  exact And.intro E.heatCapacityClosed (And.intro E.conductivityRelationClosed E.expansionRelationClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse