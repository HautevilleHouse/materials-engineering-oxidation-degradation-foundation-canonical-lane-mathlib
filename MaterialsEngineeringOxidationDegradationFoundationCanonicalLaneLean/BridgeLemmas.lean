import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OxidationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse