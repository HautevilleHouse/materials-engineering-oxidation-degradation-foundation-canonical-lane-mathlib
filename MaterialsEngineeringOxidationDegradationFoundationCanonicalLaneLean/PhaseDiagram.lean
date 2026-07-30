import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure Phase where
  name : String
  temperatureRange : Nat -> Nat -> Prop
  compositionRange : Nat -> Nat -> Prop
  crystalStructure : CrystallographyPackage

structure PhaseDiagram where
  phases : List Phase
  phaseBoundaries : Prop
  equilibriumLines : Prop
  eutecticPoint : Prop

structure PhaseDiagramEvidence (D : PhaseDiagram) where
  phaseBoundariesClosed : D.phaseBoundaries
  equilibriumLinesClosed : D.equilibriumLines
  eutecticPointClosed : D.eutecticPoint

def PhaseDiagramClosed (D : PhaseDiagram) : Prop :=
  D.phaseBoundaries ∧ D.equilibriumLines ∧ D.eutecticPoint

theorem phase_diagram_closed_from_evidence (D : PhaseDiagram) (E : PhaseDiagramEvidence D) : PhaseDiagramClosed D :=
  And.intro E.phaseBoundariesClosed (And.intro E.equilibriumLinesClosed E.eutecticPointClosed)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse