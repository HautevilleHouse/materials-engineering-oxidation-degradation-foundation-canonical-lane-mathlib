import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure PhaseDiagramOxidationPackage where
  temperatureRange : ℝ × ℝ
  oxygenPartialPressure : ℝ
  stableOxidePhase : Prop
  phaseBoundaryAdmissible : Prop
  parabolicRateConstant : ℝ

structure PhaseDiagramOxidationEvidence (P : PhaseDiagramOxidationPackage) where
  temperatureRangeClosed : P.temperatureRange.1 < P.temperatureRange.2
  oxygenPartialPressureClosed : P.oxygenPartialPressure > 0
  stableOxidePhaseClosed : P.stableOxidePhase
  phaseBoundaryAdmissibleClosed : P.phaseBoundaryAdmissible
  parabolicRateConstantClosed : P.parabolicRateConstant > 0

def PhaseDiagramOxidationClosed (P : PhaseDiagramOxidationPackage) : Prop :=
  P.temperatureRange.1 < P.temperatureRange.2 ∧ P.oxygenPartialPressure > 0 ∧ P.stableOxidePhase ∧ P.phaseBoundaryAdmissible ∧ P.parabolicRateConstant > 0

theorem phase_diagram_oxidation_closed_from_evidence (P : PhaseDiagramOxidationPackage) (E : PhaseDiagramOxidationEvidence P) :
    PhaseDiagramOxidationClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.oxygenPartialPressureClosed (And.intro E.stableOxidePhaseClosed (And.intro E.phaseBoundaryAdmissibleClosed E.parabolicRateConstantClosed)))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse