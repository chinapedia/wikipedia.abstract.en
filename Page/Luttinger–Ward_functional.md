In solid state physics, the LUTTINGER–WARD FUNCTIONAL,[1] proposed by Joaquin Mazdak Luttinger and John Clive Ward in 1960,[2] is a scalar functional of the bare electron-electron interaction and the renormalized many-body Green's function. In terms of Feynman diagrams, the Luttinger–Ward functional is the sum of all closed, bold, two-particle irreducible diagrams, i.e., all diagrams without particles going in or out that do not fall apart if one removes two propagator lines. It is usually written as Φ[G] or Φ[G, U], where G is the Green's function and U is the bare interaction.

The Luttinger–Ward functional has no direct physical meaning, but it is useful in proving conservation laws.

The functional is closely related to the BAYM–KADANOFF FUNCTIONAL constructed independently by Gordon Baym and Leo Kadanoff in 1961.[3] Some authors use the terms interchangeably;[4] if a distinction is made, then the Baym–Kadanoff functional is identical to the two-particle irreducible effective action Γ[G], which differs from the Luttinger–Ward functional by a trivial term.


Construction

Given a system characterized by the action S[c, c̄] in terms of Grassmann fields c_(i), c̄_(i), the partition function can be expressed as the path integral:

    Z[J] = ∫D[c, c̄]exp ​( − S[c, c̄] + ∑_(ij)c̄_(i)J_(ij)c_(j)),

where J is a binary source field. By expansion in the Dyson series, one finds that Z = Z[J = 0] is the sum of all (possibly disconnected), closed Feynman diagrams. Z[J] in turn is the generating functional of the N-particle Green's function:

    G_{i_1j_1\ldots i_Nj_N}

   = - \langle c_{i_1} \bar c_{j_1} \cdots c_{i_N} \bar c_{j_N} \rangle
   = \frac {-1}{Z[0]} \left. \frac {\delta^N Z[J]}
            {\delta J_{j_1i_1}\cdots \delta J_{j_Ni_N} }
     \right|_{J=0}

The linked-cluster theorem asserts that the effective action W = log Z is the sum of all closed, connected, bare diagrams. W[J] = log Z[J] in turn is the generating functional for the _connected_ Green's function. As an example, the two particle connected Green's function reads:

    G^\mathrm{conn}_{ijkl}

   = - \langle c_i \bar c_j c_k \bar c_l \rangle 
         + \langle c_i \bar c_j \rangle \langle c_k \bar c_l \rangle
         - \langle c_i \bar c_l \rangle \langle c_k \bar c_j \rangle
   = -\left. \frac {\delta^2 W[J]} {\delta J_{ji}\delta J_{lk} } \right|_{J=0}

To pass to the two-particle irreducible (2PI) effective action, one performs a Legendre transform of W[J] to a new binary source field. One chooses an, at this point arbitrary, convex G_(ij) as the source and obtains the 2PI functional, also known as Baym–Kadanoff functional:

_Γ_[_G_] = [ − _W_[_J_] − ∑_(_i__j_)_J__(_i__j_)_G__(_i__j_)]_(_J_ = _J_[_G_])
  with   $G_{ij} = -\frac {\delta W[J]}{\delta J_{ij}}$.

Unlike the connected case, one more step is required to obtain a generating functional from the two-particle irreducible effective action Γ because of the presence of a non-interacting part. By subtracting it, one obtains the Luttinger–Ward functional:[5]

_Φ_[_G_] = _Γ_[_G_] − _Γ_₀[_G_] = _Γ_[_G_] − _t__r_log ( − _G_) − _t__r_(_Σ__G_)
,

where Σ is the self-energy. Along the lines of the proof of the linked-cluster theorem, one can show that this is the generating functional for the two-particle irreducible propagators.


Properties

Diagrammatically, the Luttinger–Ward functional is the sum of all closed, bold, two-particle irreducible Feynman diagrams (also known as “skeleton” diagrams):

    File:Diagrammatic expansion of the Luttinger–Ward functional.png

The diagrams are closed as they do not have any external legs, i.e., no particles going in or out of the diagram. They are “bold” because they are formulated in terms of the interacting or bold propagator rather than the non-interacting one. They are two-particle irreducible since they do not become disconnected if we sever up to two fermionic lines.

The Luttinger–Ward functional is related to the grand potential Ω of a system:

    Ω = trlog ( − G) + tr(ΣG) + Φ[G]

Φ is a generating functional for irreducible vertex quantities: the first functional derivative with respect to G gives the self-energy, while the second derivative gives the partially two-particle irreducible four-point vertex:

    $\Sigma_{ij} = \frac {\delta\Phi} {\delta G_{ij}}$;  $\Gamma_{ijkl} = \frac {\delta^2\Phi} {\delta G_{ij}\delta G_{kl}}$

While the Luttinger–Ward functional exists, it can be shown to be not unique for Hubbard-like models.[6] In particular, the irreducible vertex functions show a set of divergencies, which causes the self-energy to bifurcate into a causal and a non-causal (and thus unphysical) solution.[7] However, by restricting the self-energy to causal solutions, one can restore uniqueness of the functional.

Baym and Kadanoff showed that any diagrammatic truncation of the Luttinger–Ward functional fulfills a set of conservation laws.[8] Approximations that are equivalent to such a truncation are therefore called _conserving_ or _Φ-derivable_. Some examples:

-   The (fully self-consistent) GW approximation is equivalent to truncating Φ to so-called ring diagrams: Φ[G] ≈ GUG + GUGGUG + … (A ring diagram consists of polarisation bubbles connected by interaction lines).
-   Dynamical mean field theory is equivalent to taking only purely local diagrams into account: Φ[G_(ij), U_(ijkl)] ≈ Φ[G_(ii), U_(iiii)], where i, j, k, l are lattice site indices.[9]


See also

-   Luttinger's theorem
-   Ward identity


References

[10] [11] [12] [13] [14] [15] [16]

Category:Condensed matter physics Category:Fermions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]