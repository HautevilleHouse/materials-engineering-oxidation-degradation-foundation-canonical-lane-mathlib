import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure FractureOxidationPackage where
  fractureToughness : ℝ
  crackLength : ℝ
  stressIntensityFactor : ℝ
  oxidationAcceleratedCracking : Prop
  subcriticalCrackGrowth : Prop

structure FractureOxidationEvidence (F : FractureOxidationPackage) where
  fractureToughnessClosed : F.fractureToughness > 0
  crackLengthClosed : F.crackLength ≥ 0
  stressIntensityFactorClosed : F.stressIntensityFactor > 0
  oxidationAcceleratedCrackingClosed : F.oxidationAcceleratedCracking
  subcriticalCrackGrowthClosed : F.subcriticalCrackGrowth

def FractureOxidationClosed (F : FractureOxidationPackage) : Prop :=
  F.fractureToughness > 0 ∧ F.crackLength ≥ 0 ∧ F.stressIntensityFactor > 0 ∧ F.oxidationAcceleratedCracking ∧ F.subcriticalCrackGrowth

theorem fracture_oxidation_closed_from_evidence (F : FractureOxidationPackage) (E : FractureOxidationEvidence F) :
    FractureOxidationClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.crackLengthClosed (And.intro E.stressIntensityFactorClosed (And.intro E.oxidationAcceleratedCrackingClosed E.subcriticalCrackGrowthClosed)))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse