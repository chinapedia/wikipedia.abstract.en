In mathematics, the HAHN–BANACH THEOREM is a central tool in functional analysis. It allows the extension of bounded linear functionals defined on a subspace of some vector space to the whole space, and it also shows that there are "enough" continuous linear functionals defined on every normed vector space to make the study of the dual space "interesting". Another version of the Hahn–Banach theorem is known as the HAHN–BANACH SEPARATION THEOREM or the separating hyperplane theorem, and has numerous uses in convex geometry.

The theorem is named for the mathematicians Hans Hahn and Stefan Banach, who proved it independently in the late 1920s. The special case of the theorem for the space C[a,b] of continuous functions on an interval was proved earlier (in 1912) by Eduard Helly,[1] and a more general extension theorem, the M. Riesz extension theorem, from which the Hahn–Banach theorem can be derived, was proved in 1923 by Marcel Riesz.[2]


Formulation

The most general formulation of the theorem needs some preparation. Given a real vector space , a function is called sublinear if

-   POSITIVE HOMOGENEITY: _γ f_(_x_)}} for all ,
-   SUBADDITIVITY: for all .

Every seminorm on (in particular, every norm on ) is sublinear. Other sublinear functions can be useful as well, especially Minkowski functionals of convex sets.

HAHN–BANACH THEOREM . If is a sublinear function, and is a linear functional on a linear subspace which is dominated by on , i.e.

_φ_(_x_) ≤ _p_(_x_)  ∀_x_ ∈ _U_

then there exists a linear extension of to the whole space , i.e., there exists a linear functional such that

_ψ_(_x_) = _φ_(_x_)  ∀_x_ ∈ _U_,

_ψ_(_x_) ≤ _p_(_x_)  ∀_x_ ∈ _V_.

HAHN–BANACH THEOREM (ALTERNATIVE VERSION). Set R}} or and let be a -vector space with a seminorm . If is a -linear functional on a -linear subspace of which is dominated by on in absolute value,

|_φ_(_x_)| ≤ _p_(_x_)  ∀_x_ ∈ _U_

then there exists a linear extension of to the whole space , i.e., there exists a -linear functional such that

_ψ_(_x_) = _φ_(_x_)  ∀_x_ ∈ _U_,

|_ψ_(_x_)| ≤ _p_(_x_)  ∀_x_ ∈ _V_.

In the complex case of the alternate version, the -linearity assumptions demand, in addition to the assumptions for the real case, that for every vector , we have and i_φ_(_x_)}}.

The extension is in general not uniquely specified by and the proof gives no explicit method as to how to find . The usual proof for the case of an infinite dimensional space uses Zorn's lemma or, equivalently, the axiom of choice. It is now known (see below) that the ultrafilter lemma, which is slightly weaker than the axiom of choice, is actually strong enough.

It is possible to relax slightly the subadditivity condition on , requiring only that (Reed and Simon, 1980):

_p_(_a__x_ + _b__y_) ≤ |_a_| _p_(_x_) + |_b_| _p_(_y_),  _x_, _y_ ∈ _V_, |_a_| + |_b_| ≤ 1.

It is further possible to relax the positive homogeneity and the subadditivity conditions on , requiring only that is convex (Schechter, 1996).

This reveals the intimate connection between the Hahn–Banach theorem and convexity.

The Mizar project has completely formalized and automatically checked the proof of the Hahn–Banach theorem in the HAHNBAN file.[3]


Important consequences

The theorem has several important consequences, some of which are also sometimes called "Hahn–Banach theorem":

-   If is a normed vector space with linear subspace (not necessarily closed) and if is continuous and linear, then there exists an extension of which is also continuous and linear and which has the same norm as (see Banach space for a discussion of the norm of a linear map). In other words, in the category of normed vector spaces, the space is an injective object.
-   If is a normed vector space with linear subspace (not necessarily closed) and if is an element of not in the closure of , then there exists a continuous linear map with 0}} for all in , 1}}, and _ψ_{{!!}} {{=}} dist(_z_, _U_)^(−1)}}.
-   In particular, if is a normed vector space and is an element of , then there exists a continuous linear map such that {{!!}}_z_{{!!}}}} and _ψ_{{!!}} ≤ 1}}. This implies that the natural injection from a normed space into its double dual is isometric.


Hahn–Banach separation theorem

Another version of Hahn–Banach theorem is known as the HAHN–BANACH SEPARATION THEOREM.[4] It has numerous uses in convex geometry,[5] optimization theory, and economics. The separation theorem is derived from the original form of the theorem.

THEOREM. Set R}} or and let be a topological vector space over . If are convex, non-empty disjoint subsets of , then:

-   If is open, then there exists a continuous linear map and such that for all .
-   If is locally convex, is compact, and closed, then there exists a continuous linear map and such that for all .


Geometric Hahn–Banach theorem

One form of Hahn–Banach theorem is known as the GEOMETRIC HAHN–BANACH THEOREM, or MAZUR'S THEOREM.[6]

THEOREM. Let be a convex set having a nonempty interior in a real normed linear vector space . Suppose is a linear variety in containing no interior points of . Then there is a closed hyperplane in containing but containing no interior points of ; i.e., there is an element and a constant such that ⟨v, x^(*)⟩ = c for all and ⟨v, x^(*)⟩ < c for all .

This can be generalized to an arbitrary topological vector space, which need not be locally convex or even Hausdorff, as:[7]

THEOREM. Let be a vector subspace of the topological vector space . Suppose is a non-empty convex open subset of with ∅}}. Then there is a closed hyperplane in containing with ∅}}.


Relation to axiom of choice

As mentioned earlier, the axiom of choice implies the Hahn–Banach theorem. The converse is not true. One way to see that is by noting that the ultrafilter lemma (or equivalently, the Boolean prime ideal theorem), which is strictly weaker than the axiom of choice, can be used to show the Hahn–Banach theorem, although the converse is not the case.

The Hahn–Banach theorem is equivalent to the following:[8]

    (∗): On every Boolean algebra there exists a "probability charge", that is: a nonconstant finitely additive map from into .

(The Boolean prime ideal theorem is easily seen to be equivalent to the statement that there are always probability charges which take only the values 0 and 1.)

In ZF, one can show that the Hahn–Banach theorem is enough to derive the existence of a non-Lebesgue measurable set.[9] Moreover, the Hahn–Banach theorem implies the Banach–Tarski paradox.[10]

For separable Banach spaces, D. K. Brown and S. G. Simpson proved that the Hahn–Banach theorem follows from WKL₀, a weak subsystem of second-order arithmetic that takes a form of Kőnig's lemma restricted to binary trees as an axiom. In fact, they prove that under a weak set of assumptions, the two are equivalent, an example of reverse mathematics.[11][12]


Consequences

Topological vector spaces

If is a topological vector space, not necessarily Hausdorff or locally convex, then there exists a non-zero continuous linear form if and only if contains a nonempty, proper, convex, open set .[13] So if the continuous dual space of , is non-trivial then by considering with the weak topology induced by becomes a locally convex topological vector space with a non-trivial topology that is weaker than original topology on . If in addition, separates points on (which means that for each there is a linear functional in that's non-zero on ) then with this weak topology becomes Hausdorff. This sometimes allows some results from locally convex topological vector spaces to be applied to non-Hausdorff and non-locally convex spaces.

The dual space

We have the following consequence of the Hahn–Banach theorem.

PROPOSITION. Let . Then, if and only if there exists a (complex) measure of bounded variation such that

_F_(_u_) = ∫_(_a_)^(_b_)_u_(_x_)_d__ρ_(_x_),
for all . In addition, _F_{{!}} {{=}} _V_(_ρ_)}}, where denotes the total variation of .


See also

-   Fichera's existence principle
-   M. Riesz extension theorem
-   Separating axis theorem
-   Farkas' lemma


Notes


References

-   -   -   -   Michael Reed and Barry Simon, _Methods of Modern Mathematical Physics, Vol. 1, Functional Analysis,_ Section III.3. Academic Press, San Diego, 1980. .
-   Eric Schechter, _Handbook of Analysis and Its Foundations_, Chapter 12, Academic Press, 1996. .
-   -   Terence Tao, The Hahn–Banach theorem, Menger’s theorem, and Helly’s theorem
-   -   Gerd Wittstock, Ein operatorwertiger Hahn-Banach Satz, J. of Functional Analysis 40 (1981), 127–150
-   Eberhard Zeidler, _Applied Functional Analysis: main principles and their applications_, Springer, 1995.

Category:Theorems in functional analysis

[1]

[2] See M. Riesz extension theorem. According to , the argument was known to Riesz already in 1918.

[3] HAHNBAN file

[4] Gabriel Nagy, Real Analysis lecture notes

[5]

[6]

[7] Treves, p. 184

[8]

[9]

[10]

[11]  Source of citation.

[12] Simpson, Stephen G. (2009), Subsystems of second order arithmetic, Perspectives in Logic (2nd ed.), Cambridge University Press, ,

[13] Schaefer 1999, p. 47