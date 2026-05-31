/-
  SIDE-simplicity · Codimension.lean
  ==================================

  The Section II transversality / codimension-margin engine of the
  Simplicity keystone (SIMPLICITY_OF_RIEMANN_ZEROS_v1_0).

  Section I.2 (perpendicular crossing) and Section III (trace-formula
  closing logic) are already proved in the deposited SIDE-kernel
  (PerpendicularCrossing.lean). This kernel carries the Section II
  dimensional / logical skeleton only. It does NOT claim the analytic
  Thom transversality theorem (Thom 1956, delegated), nor the
  real-analytic non-degeneracy of the five contributions (manuscript).

  Source: SIMPLICITY_OF_RIEMANN_ZEROS_v1_0, Section II.2 to II.4.
-/

import Mathlib

namespace SIDESimplicity

/-! ## Transversality count (Section II.2)

The condition xi'(rho) = 0 places the parameter curve Phi : R -> C^5
on the hyperplane {z1 + ... + z5 = 0}. Phi(R) is a real-dimension-1
curve; the hyperplane is real-codimension 2 in C^5. A dimension-1
curve has negative expected intersection dimension against a
codimension->=2 obstruction, so the generic intersection is empty. -/

theorem transversal_generic_empty (curveDim obstrCodim : ℤ)
    (hcurve : curveDim = 1) (hcodim : 2 ≤ obstrCodim) :
    curveDim - obstrCodim < 0 := by omega

/-! ## Five independent sources and the margin (Section II.4)

xi' receives contributions from five independent mechanism-class
sources; the curve dimension is 1. The codimension is 5, not 1 —
a wide margin. The argument tolerates loss of independence among
sources to correlation; it fails only if the effective count drops
to the curve dimension. -/

def numSources : ℤ := 5
def curveDim : ℤ := 1

theorem codim_exceeds_curve : curveDim < numSources := by
  unfold curveDim numSources; omega

theorem codim_margin (lost : ℤ) (h0 : 0 ≤ lost) (h3 : lost ≤ 3) :
    curveDim < numSources - lost := by
  unfold curveDim numSources; omega

/-- The edge is real, not assumed away: at the threshold (effective
    count equal to the curve dimension) the margin closes. -/
theorem margin_fails_at_threshold : ¬ (curveDim < curveDim) := by
  unfold curveDim; omega

/-! ## The parameter-free promotion premise (Section II.3)

xi is fully determined by its specification n^2 -> theta -> xi; there
are no free parameters to tune Phi(R) onto the hyperplane. This is
the premise that promotes "generically empty" to "actually empty" —
the Independence step. The promotion implication itself is the
manuscript's content; the kernel records the load-bearing premise. -/

def freeParameters : ℕ := 0

theorem no_tuning : freeParameters = 0 := rfl

end SIDESimplicity