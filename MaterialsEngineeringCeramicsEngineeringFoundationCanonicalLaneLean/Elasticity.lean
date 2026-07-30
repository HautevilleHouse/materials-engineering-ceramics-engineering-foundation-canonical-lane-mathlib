import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  elasticConstantsDefined : Prop
  hookesLawApplied : Prop
  displacementFieldComputed : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticConstantsDefinedClosed : E.elasticConstantsDefined
  hookesLawAppliedClosed : E.hookesLawApplied
  displacementFieldComputedClosed : E.displacementFieldComputed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.elasticConstantsDefined ∧
  E.hookesLawApplied ∧ E.displacementFieldComputed

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.elasticConstantsDefinedClosed
      (And.intro Ev.hookesLawAppliedClosed Ev.displacementFieldComputedClosed))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
