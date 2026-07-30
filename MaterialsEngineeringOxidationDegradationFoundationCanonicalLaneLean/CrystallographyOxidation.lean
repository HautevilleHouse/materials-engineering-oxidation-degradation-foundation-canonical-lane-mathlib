import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure CrystallographyOxidationPackage where
  latticeParameter : ℝ
  grainBoundaryDiffusivity : ℝ
  oxideScaleStructure : Prop
  diffusionPathAdmissible : Prop

structure CrystallographyOxidationEvidence (C : CrystallographyOxidationPackage) where
  latticeParameterClosed : C.latticeParameter > 0
  grainBoundaryDiffusivityClosed : C.grainBoundaryDiffusivity > 0
  oxideScaleStructureClosed : C.oxideScaleStructure
  diffusionPathAdmissibleClosed : C.diffusionPathAdmissible

def CrystallographyOxidationClosed (C : CrystallographyOxidationPackage) : Prop :=
  C.latticeParameter > 0 ∧ C.grainBoundaryDiffusivity > 0 ∧ C.oxideScaleStructure ∧ C.diffusionPathAdmissible

theorem crystallography_oxidation_closed_from_evidence (C : CrystallographyOxidationPackage) (E : CrystallographyOxidationEvidence C) :
    CrystallographyOxidationClosed C := by
  exact And.intro E.latticeParameterClosed (And.intro E.grainBoundaryDiffusivityClosed (And.intro E.oxideScaleStructureClosed E.diffusionPathAdmissibleClosed))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse