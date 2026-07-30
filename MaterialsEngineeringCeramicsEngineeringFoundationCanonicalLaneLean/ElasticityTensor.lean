import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure ElasticityTensor where
  stiffnessMatrix : Type u
  complianceMatrix : Type v
  isotropy : Prop
  symmetry : Prop
  positiveDefiniteness : Prop
  isotropyClosed : isotropy
  symmetryClosed : symmetry
  positiveDefinitenessClosed : positiveDefiniteness

structure ElasticityEvidence (E : ElasticityTensor) where
  isotropyClosed : E.isotropyClosed
  symmetryClosed : E.symmetryClosed
  positiveDefinitenessClosed : E.positiveDefinitenessClosed

def ElasticityClosed (E : ElasticityTensor) : Prop :=
  E.isotropy ∧ E.symmetry ∧ E.positiveDefiniteness

theorem elasticity_closed_from_evidence (E : ElasticityTensor) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.isotropyClosed (And.intro Ev.symmetryClosed Ev.positiveDefinitenessClosed)

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse