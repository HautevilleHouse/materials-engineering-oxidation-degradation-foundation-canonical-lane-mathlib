import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxidationProtectionCoatingsPackage where
  coatingAdhesion : Prop
  oxygenPermeability : Prop
  thermalExpansionMatch : Prop
  coatingDegradationRate : Prop

structure OxidationProtectionCoatingsEvidence (C : OxidationProtectionCoatingsPackage) where
  coatingAdhesionClosed : C.coatingAdhesion
  oxygenPermeabilityClosed : C.oxygenPermeability
  thermalExpansionMatchClosed : C.thermalExpansionMatch
  coatingDegradationRateClosed : C.coatingDegradationRate

def OxidationProtectionCoatingsClosed (C : OxidationProtectionCoatingsPackage) : Prop :=
  C.coatingAdhesion ∧ C.oxygenPermeability ∧ C.thermalExpansionMatch ∧ C.coatingDegradationRate

theorem oxidation_protection_coatings_closed_from_evidence (C : OxidationProtectionCoatingsPackage)
    (E : OxidationProtectionCoatingsEvidence C) : OxidationProtectionCoatingsClosed C := by
  exact And.intro E.coatingAdhesionClosed
    (And.intro E.oxygenPermeabilityClosed
      (And.intro E.thermalExpansionMatchClosed E.coatingDegradationRateClosed))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse