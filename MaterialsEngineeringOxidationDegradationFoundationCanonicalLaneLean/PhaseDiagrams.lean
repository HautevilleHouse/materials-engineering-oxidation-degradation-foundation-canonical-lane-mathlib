import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  temperaturePhaseBoundaries : Prop
  compositionPhaseBoundaries : Prop
  phaseIdentification : Prop

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperaturePhaseBoundaries ∧ P.compositionPhaseBoundaries ∧ P.phaseIdentification

theorem phase_diagram_closed (P : PhaseDiagramPackage) (h1 : P.temperaturePhaseBoundaries) (h2 : P.compositionPhaseBoundaries) (h3 : P.phaseIdentification) : PhaseDiagramClosed P := by
  exact And.intro h1 (And.intro h2 h3)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse