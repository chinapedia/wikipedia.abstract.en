HADAMARD DERIVATIVE is a concept of directional derivative for maps between Banach spaces. It is particularly suited for applications in stochastic programming and asymptotic statistics.[1]


Definition

A map ϕ: 𝔻 → 𝔼 between Banach spaces 𝔻 and 𝔼 is HADAMARD DIRECTIONALLY DIFFERENTIABLE[2] at θ ∈ 𝔻 in the direction h ∈ 𝔻 if there exists a map ϕ_(θ)′: 𝔻 → 𝔼 such that$\frac{\phi(\theta+t_n h_n)-\phi(\theta)}{t_n} \to \phi_\theta'(h)$ for all sequences h_(n) → h and t_(n) ↓ 0. Note that this definition does not require continuity or linearity of the derivative with respect to the direction h. Although continuity follows automatically from the definition, linearity does not.


Relation to other derivatives

-   If Hadamard directional derivative exists, then Gateaux derivative also exists and the two derivatives coincide[3]
-   Hadamard derivative is readily generalized for maps between Hausdorff topological vector spaces


Applications

A version of functional delta method holds for Hadamard directionally differentiable maps. Namely, let X_(n) be a sequence of random elements in a Banach space 𝔻 (equipped with Borel sigma-field) such that weak convergence τ_(n)(X_(n) − μ) → Z holds for some μ ∈ 𝔻, some sequence of real numbers τ_(n) → ∞ and some random element Z ∈ 𝔻 with values concentrated on a separable subset of 𝔻. Then for a measurable map ϕ : 𝔻 → 𝔼 that is Hadamard directionally differentiable at μ we have τ_(n)(ϕ(X_(n)) − ϕ(μ)) → ϕ_(μ)′(Z) (where the weak convergence is with respect to Borel sigma-field on the Banach space 𝔼).

This result has applications in optimal inference for wide range of econometric models, including models with partial identification and weak instruments.[4]


References

Category:Directional statistics

[1]

[2]

[3]

[4]