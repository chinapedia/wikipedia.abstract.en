In mathematics, a CONTRACTION MAPPING, or CONTRACTION or CONTRACTOR, on a metric space _(M,d)_ is a function _f_ from _M_ to itself, with the property that there is some nonnegative real number 0 ≤ k < 1 such that for all _x_ and _y_ in _M_,

_d_(_f_(_x_), _f_(_y_)) ≤ _k_ _d_(_x_, _y_).
The smallest such value of _k_ is called the LIPSCHITZ CONSTANT of _f_. Contractive maps are sometimes called LIPSCHITZIAN MAPS. If the above condition is instead satisfied for _k_ ≤ 1, then the mapping is said to be a non-expansive map.

More generally, the idea of a contractive mapping can be defined for maps between metric spaces. Thus, if (_M_,_d_) and (_N_,_d_') are two metric spaces, then f : M → N is a contractive mapping if there is a constant k < 1 such that

_d_′(_f_(_x_), _f_(_y_)) ≤ _k_ _d_(_x_, _y_)
for all _x_ and _y_ in _M_.

Every contraction mapping is Lipschitz continuous and hence uniformly continuous (for a Lipschitz continuous function, the constant _k_ is no longer necessarily less than 1).

A contraction mapping has at most one fixed point. Moreover, the Banach fixed-point theorem states that every contraction mapping on a nonempty complete metric space has a unique fixed point, and that for any _x_ in _M_ the iterated function sequence _x_, _f_ (_x_), _f_ (_f_ (_x_)), _f_ (_f_ (_f_ (_x_))), ... converges to the fixed point. This concept is very useful for iterated function systems where contraction mappings are often used. Banach's fixed-point theorem is also applied in proving the existence of solutions of ordinary differential equations, and is used in one proof of the inverse function theorem.[1]

Contraction mapping plays an important role in dynamic programming problems.[2][3]


Firmly non-expansive mapping

A non-expansive mapping with k = 1 can be strengthened to a FIRMLY NON-EXPANSIVE MAPPING in a Hilbert space ℋ if the following holds for all _x_ and _y_ in ℋ:

∥_f_(_x_) − _f_(_y_)∥²≤ ⟨_x_ − _y_, _f_(_x_) − _f_(_y_)⟩.
where

_d_(_x_, _y_) = ∥_x_ − _y_∥
.

This is a special case of α averaged nonexpansive operators with α = 1/2.[4] A firmly non-expansive mapping is always non-expansive, via the Cauchy–Schwarz inequality.

The class of firmly non-expansive maps is closed under convex combinations, but not compositions.[5] This class includes proximal mappings of proper, convex, lower-semicontinuous functions, hence it also includes orthogonal projections onto nonempty closed convex sets. The class of firmly nonexpansive operators is equal to the set of resolvents of maximally monotone operators[6]. Surprisingly, while iterating non-expansive maps has no guarantee to find a fixed point (e.g. multiplication by -1), firm non-expansiveness is sufficient to guarantee global convergence to a fixed point, provided a fixed point exists. More precisely, if Fixf := {x ∈ ℋ | f(x) = x} ≠ ⌀, then for any initial point x₀ ∈ ℋ, iterating

(∀n ∈ ℕ) x_(n + 1) = f(x_(n))

yields convergence to a fixed point x_(n) → z ∈ Fixf. This convergence might be weak in an infinite-dimensional setting.[7]


Subcontraction map

A SUBCONTRACTION MAP or SUBCONTRACTOR is a map _f_ on a metric space (_M_,_d_) such that

_d_(_f_(_x_), _f_(_y_)) ≤ _d_(_x_, _y_) ;

_d_(_f_(_f_(_x_)), _f_(_x_)) < _d_(_f_(_x_), _x_) unless _x_ = _f_(_x_) .

If the image of a subcontractor _f_ is compact, then _f_ has a fixed point.[8]


Locally convex spaces

In a locally convex space (_E,P_) with topology given by a set _P_ of seminorms, one can define for any _p_ ∈ _P_ a _p_-contraction as a map _f_ such that there is some _k_(p)_ < 1 such that _p_(_f_(_x_) - _f_(_y_)) ≤ _k_(p) p_(_x - y_). If _f_ is a _p_-contraction for all _p_ ∈ _P_ and (_E,P_) is sequentially complete, then _f_ has a fixed point, given as limit of any sequence _x_(n+1) = f_(_x_(n)_), and if (_E,P_) is Hausdorff, then the fixed point is unique.[9]


See also

-   Short map
-   Contraction (operator theory)
-   Transformation


References


Further reading

-   provides an undergraduate level introduction.

-   -   -

Category:Metric geometry Category:Fixed points (mathematics)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]