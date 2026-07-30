import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean

structure OxideLayerGrowthPackage where
  temperature : ℝ
  oxygenPartialPressure : ℝ
  parabolicRateConstant : ℝ
  activationEnergy : ℝ
  scaleFactor : ℝ
  oxideThickness : ℝ → ℝ
  oxideGrowthLaw : Prop
  oxideGrowthLawTerm : oxideGrowthLaw

structure OxideLayerGrowthEvidence (O : OxideLayerGrowthPackage) where
  oxideGrowthLawClosed : O.oxideGrowthLaw

def OxideLayerGrowthClosed (O : OxideLayerGrowthPackage) : Prop :=
  O.oxideGrowthLaw

theorem oxide_layer_growth_closed_from_evidence (O : OxideLayerGrowthPackage)
    (E : OxideLayerGrowthEvidence O) : OxideLayerGrowthClosed O := by
  exact E.oxideGrowthLawClosed

end MaterialsEngineeringOxidationDegradationFoundationCanonicalLaneLean
end HautevilleHouse
