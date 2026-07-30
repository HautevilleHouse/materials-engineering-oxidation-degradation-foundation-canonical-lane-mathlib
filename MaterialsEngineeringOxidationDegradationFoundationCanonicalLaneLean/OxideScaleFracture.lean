import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxideScaleFracturePackage where
  criticalThickness : Prop
  thermalStressModel : Prop
  spallationCriterion : Prop
  crackPropagation : Prop

structure OxideScaleFractureEvidence (F : OxideScaleFracturePackage) where
  criticalThicknessClosed : F.criticalThickness
  thermalStressModelClosed : F.thermalStressModel
  spallationCriterionClosed : F.spallationCriterion
  crackPropagationClosed : F.crackPropagation

def OxideScaleFractureClosed (F : OxideScaleFracturePackage) : Prop :=
  F.criticalThickness ∧ F.thermalStressModel ∧ F.spallationCriterion ∧ F.crackPropagation

theorem oxide_scale_fracture_closed_from_evidence (F : OxideScaleFracturePackage)
    (E : OxideScaleFractureEvidence F) : OxideScaleFractureClosed F := by
  exact And.intro E.criticalThicknessClosed
    (And.intro E.thermalStressModelClosed
      (And.intro E.spallationCriterionClosed E.crackPropagationClosed))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse