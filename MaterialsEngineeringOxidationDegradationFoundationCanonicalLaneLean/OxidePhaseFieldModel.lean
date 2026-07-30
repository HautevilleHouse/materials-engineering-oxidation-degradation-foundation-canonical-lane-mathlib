import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxidePhaseFieldModelPackage where
  orderParameter : ℝ → ℝ → ℝ
  freeEnergyFunctional : ℝ
  mobility : ℝ
  phaseFieldEquation : Prop
  interfacialEnergy : Prop
  phaseFieldEquationTerm : phaseFieldEquation
  interfacialEnergyTerm : interfacialEnergy

structure OxidePhaseFieldModelEvidence (P : OxidePhaseFieldModelPackage) where
  phaseFieldEquationClosed : P.phaseFieldEquation
  interfacialEnergyClosed : P.interfacialEnergy

def OxidePhaseFieldModelClosed (P : OxidePhaseFieldModelPackage) : Prop :=
  P.phaseFieldEquation ∧ P.interfacialEnergy

theorem oxide_phase_field_model_closed_from_evidence
    (P : OxidePhaseFieldModelPackage)
    (E : OxidePhaseFieldModelEvidence P) : OxidePhaseFieldModelClosed P := by
  exact And.intro E.phaseFieldEquationClosed E.interfacialEnergyClosed

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse
