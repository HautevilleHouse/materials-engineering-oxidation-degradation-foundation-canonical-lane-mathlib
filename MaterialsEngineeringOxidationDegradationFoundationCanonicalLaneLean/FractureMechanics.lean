import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure FractureModes where
  modeI : Prop
  modeII : Prop
  modeIII : Prop

structure FracturePackage where
  fractureModes : FractureModes
  stressIntensityFactor : Nat
  energyReleaseRate : Nat
  crackPropagationCriterion : Prop

structure FractureEvidence (F : FracturePackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor = 0
  energyReleaseRateClosed : F.energyReleaseRate = 0
  crackPropagationCriterionClosed : F.crackPropagationCriterion

def FractureClosed (F : FracturePackage) : Prop :=
  F.stressIntensityFactor = 0 ∧ F.energyReleaseRate = 0 ∧ F.crackPropagationCriterion

theorem fracture_closed_from_evidence (F : FracturePackage) (E : FractureEvidence F) : FractureClosed F :=
  And.intro E.stressIntensityFactorClosed (And.intro E.energyReleaseRateClosed E.crackPropagationCriterionClosed)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse