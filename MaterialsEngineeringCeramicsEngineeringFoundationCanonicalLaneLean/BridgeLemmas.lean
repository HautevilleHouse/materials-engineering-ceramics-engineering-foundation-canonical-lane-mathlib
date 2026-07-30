import HautevilleHouse.MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CeramicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse
