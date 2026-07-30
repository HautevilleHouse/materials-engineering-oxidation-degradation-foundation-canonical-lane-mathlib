import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure DiffusionBarrierPackage where
  oxideLayerGrowth : Prop
  cationDiffusion : Prop
  anionDiffusion : Prop
  vacancyTransport : Prop

structure DiffusionBarrierEvidence (D : DiffusionBarrierPackage) where
  oxideLayerGrowthClosed : D.oxideLayerGrowth
  cationDiffusionClosed : D.cationDiffusion
  anionDiffusionClosed : D.anionDiffusion
  vacancyTransportClosed : D.vacancyTransport

def DiffusionBarrierClosed (D : DiffusionBarrierPackage) : Prop :=
  D.oxideLayerGrowth ∧ D.cationDiffusion ∧ D.anionDiffusion ∧ D.vacancyTransport

theorem diffusion_barrier_closed_from_evidence (D : DiffusionBarrierPackage)
    (E : DiffusionBarrierEvidence D) : DiffusionBarrierClosed D := by
  exact And.intro E.oxideLayerGrowthClosed
    (And.intro E.cationDiffusionClosed
      (And.intro E.anionDiffusionClosed E.vacancyTransportClosed))

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse