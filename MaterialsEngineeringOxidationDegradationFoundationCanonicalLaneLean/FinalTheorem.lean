import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean.BridgeLemmas
import MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

def ConstrainedOxidationDegradationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_oxidation_degradation_endgame (A : AdmissibleClass) :
    ConstrainedOxidationDegradationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse