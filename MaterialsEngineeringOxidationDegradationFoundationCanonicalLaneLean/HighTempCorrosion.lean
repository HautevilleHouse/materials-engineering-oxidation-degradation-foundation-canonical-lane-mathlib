import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure HighTempCorrosionPackage where
  sulfidationAttack : Prop
  carburization : Prop
  environmentalInteraction : Prop
  lifePredictionModel : Prop

structure HighTempCorrosionEvidence (H : HighTempCorrosionPackage) where
  sulfidationAttackClosed : H.sulfidationAttack
  carburizationClosed : H.carburization
  environmentalInteractionClosed : H.environmentalInteraction
  lifePredictionModelClosed : H.lifePredictionModel

def HighTempCorrosionClosed (H : HighTempCorrosionPackage) : Prop :=
  H.sulfidationAttack ∧ H.carburization ∧ H.environmentalInteraction ∧ H.lifePredictionModel

theorem high_temp_corrosion_closed_from_evidence (H : HighTempCorrosionPackage)
    (E : HighTempCorrosionEvidence H) : HighTempCorrosionClosed H := by
  exact And.intro E.sulfidationAttackClosed
    (And.intro E.carburizationClosed
      (And.intro E.environmentalInteractionClosed E.lifePredictionModelClosed))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse