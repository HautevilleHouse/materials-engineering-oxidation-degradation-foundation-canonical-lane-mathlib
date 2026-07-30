import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxideSpallationFracturePackage where
  criticalStress : ℝ
  thermalExpansionMismatch : ℝ
  fractureToughness : ℝ
  spallationCriterion : Prop
  crackGrowthLaw : Prop
  spallationCriterionTerm : spallationCriterion
  crackGrowthLawTerm : crackGrowthLaw

structure OxideSpallationFractureEvidence (S : OxideSpallationFracturePackage) where
  spallationCriterionClosed : S.spallationCriterion
  crackGrowthLawClosed : S.crackGrowthLaw

def OxideSpallationFractureClosed (S : OxideSpallationFracturePackage) : Prop :=
  S.spallationCriterion ∧ S.crackGrowthLaw

theorem oxide_spallation_fracture_closed_from_evidence
    (S : OxideSpallationFracturePackage)
    (E : OxideSpallationFractureEvidence S) : OxideSpallationFractureClosed S := by
  exact And.intro E.spallationCriterionClosed E.crackGrowthLawClosed

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse
