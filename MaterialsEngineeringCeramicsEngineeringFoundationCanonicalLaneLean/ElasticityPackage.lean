import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure ElasticityPackage where
  elasticConstants : Type u
  stressStrainRelation : Type v
  youngsModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsClosed : E.elasticConstants
  stressStrainRelationClosed : E.stressStrainRelation
  youngsModulusClosed : E.youngsModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstants ∧ E.stressStrainRelation ∧
  E.youngsModulus ∧ E.poissonRatio ∧
  E.shearModulus ∧ E.bulkModulus

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsClosed
    (And.intro Ev.stressStrainRelationClosed
      (And.intro Ev.youngsModulusClosed
        (And.intro Ev.poissonRatioClosed
          (And.intro Ev.shearModulusClosed Ev.bulkModulusClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse