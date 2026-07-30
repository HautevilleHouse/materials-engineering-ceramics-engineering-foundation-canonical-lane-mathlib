import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CeramicsAdmittedObject where
  object : AdmissibleClass
  crystalStructureSatisfied : Prop
  phaseEquilibriumSatisfied : Prop
  elasticPropertiesSatisfied : Prop
  fractureToughnessSatisfied : Prop
  processingConditionsSatisfied : Prop
  conclusion : crystalStructureSatisfied ∧ phaseEquilibriumSatisfied ∧ elasticPropertiesSatisfied ∧ fractureToughnessSatisfied ∧ processingConditionsSatisfied

def CeramicsAdmittedClosure (O : CeramicsAdmittedObject) : Prop :=
  O.crystalStructureSatisfied ∧ O.phaseEquilibriumSatisfied ∧ O.elasticPropertiesSatisfied ∧ O.fractureToughnessSatisfied ∧ O.processingConditionsSatisfied

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse