# SIDE-simplicity

Lean 4 kernel — the §II transversality / codimension-margin engine of zero simplicity.

J. York Seale — https://orcid.org/0009-0008-7993-0310

## What it proves

Representative kernel for the Simplicity cluster (keystone: SIMPLICITY_OF_RIEMANN_ZEROS_v1_0). It carries the part of that keystone NOT already in the deposited SIDE-kernel. Section I.2 (perpendicular crossing) and Section III (trace-formula closing logic) are already proved in SIDE-kernel (PerpendicularCrossing.lean: perpendicular_gradients, multiplicity_from_identity, simplicity_from_trace_structure). This kernel formalizes the Section II dimensional / logical skeleton:

- `transversal_generic_empty` — a dimension-1 parameter curve against a codimension >= 2 obstruction has negative expected intersection dimension (the Phi : R -> C^5 vs hyperplane count).
- `codim_exceeds_curve` / `codim_margin` — five independent mechanism-class sources vs curve dimension 1; the argument tolerates loss of independence to correlation, failing only at the threshold.
- `margin_fails_at_threshold` — the edge is real, not assumed away.
- `no_tuning` — the parameter-free premise (xi determined by n^2 -> theta -> xi; nothing to tune) that promotes generic emptiness to actual.

## What it does NOT claim

It does not claim the analytic Thom transversality theorem (Thom 1956 — delegated to the manuscript), nor the real-analytic non-degeneracy of the five contributions (manuscript), nor does it re-prove the deposited Section I.2 / Section III content. It verifies the dimensional bookkeeping the keystone's Section II argument rests on. The transversality content was probed in SIDE-kernel legacy/ (TransversalProbe, WeilThomProbe) but never promoted; this is its first production formalization.

## Federation context

Simplicity-cluster representative kernel. Independent federated kernel: own toolchain pin, own Mathlib pin, own deposit. Mathlib-pinned v4.29.1 (federation cache).

## Build

lake exe cache get
lake build
lake env lean AxiomCheck.lean

Toolchain leanprover/lean4:v4.29.1; Mathlib pinned v4.29.1.

## License

MIT.

## AI disclosure

*Computational workflow assisted by various LLM instances. Mathematical content, proof strategies, and editorial decisions are the author's.*