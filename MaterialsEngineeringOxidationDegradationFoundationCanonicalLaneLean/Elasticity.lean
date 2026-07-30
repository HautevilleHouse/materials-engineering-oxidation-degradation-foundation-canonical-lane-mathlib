import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure ElasticConstant where
  youngModulus : Nat
  poissonRatio : Nat
  shearModulus : Nat
  bulkModulus : Nat

structure ElasticityPackage where
  constants : ElasticConstant
  linearElasticRange : Prop
  stressStrainLaw : Prop
  anisotropicResponse : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  linearElasticRangeClosed : E.linearElasticRange
  stressStrainLawClosed : E.stressStrainLaw
  anisotropicResponseClosed : E.anisotropicResponse

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticRange ∧ E.stressStrainLaw ∧ E.anisotropicResponse

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E :=
  And.intro Ev.linearElasticRangeClosed (And.intro Ev.stressStrainLawClosed Ev.anisotropicResponseClosed)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse