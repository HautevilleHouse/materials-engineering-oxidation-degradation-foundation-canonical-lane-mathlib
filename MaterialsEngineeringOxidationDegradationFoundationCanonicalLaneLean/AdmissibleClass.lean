import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxidationMaterial where
  carrier : Type
  composition : Prop
  temperatureRange : Prop
  oxidationResistance : Prop
  conclusion : oxidationResistance

structure AdmissibleClass where
  object : OxidationMaterial
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse