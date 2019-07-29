In the field of numerical analysis, the CONDITION NUMBER of a function measures how much the output value of the function can change for a small change in the input argument. This is used to measure how sensitive a function is to changes or errors in the input, and how much error in the output results from an error in the input. Very frequently, one is solving the inverse problem – given f(x) = y, one is solving for _x,_ and thus the condition number of the (local) inverse must be used. In linear regression the condition number of the moment matrix can be used as a diagnostic for multicollinearity.[1][2]

The condition number is an application of the derivative, and is formally defined as the value of the asymptotic worst-case relative change in output for a relative change in input. The "function" is the solution of a problem and the "arguments" are the data in the problem. The condition number is frequently applied to questions in linear algebra, in which case the derivative is straightforward but the error could be in many different directions, and is thus computed from the geometry of the matrix. More generally, condition numbers can be defined for non-linear functions in several variables.

A problem with a low condition number is said to be WELL-CONDITIONED, while a problem with a high condition number is said to be ILL-CONDITIONED. The condition number is a property of the problem. Paired with the problem are any number of algorithms that can be used to solve the problem, that is, to calculate the solution. Some algorithms have a property called BACKWARD STABILITY. In general, a backward stable algorithm can be expected to accurately solve well-conditioned problems. Numerical analysis textbooks give formulas for the condition numbers of problems and identify known backward stable algorithms.

As a rule of thumb, if the condition number κ(A) = 10^(k), then you may lose up to k digits of accuracy on top of what would be lost to the numerical method due to loss of precision from arithmetic methods.[3] However, the condition number does not give the exact value of the maximum inaccuracy that may occur in the algorithm. It generally just bounds it with an estimate (whose computed value depends on the choice of the norm to measure the inaccuracy).


General definition in the context of error analysis

Given a problem _f_ and an algorithm f̃ with an input _x_, the _absolute_ error is ∥f(x)−f̃(x)∥ and the _relative_ error is ∥f(x)−f̃(x)∥/∥f(x)∥.

In this context, the _absolute_ condition number of a problem _f_ is

    $\lim_{\varepsilon \rightarrow 0} \sup_{\|\delta x\| \leq \varepsilon} \frac{\|\delta f\|}{\|\delta x\|}$

and the _relative_ condition number is

    $\lim_{\varepsilon \rightarrow 0} \sup_{\|\delta x \| \leq \varepsilon} \frac{\|\delta f(x)\| / \|f(x)\|}{\|\delta x\| / \|x\|}$


Matrices

For example, the condition number associated with the linear equation _Ax_ = _b_ gives a bound on how inaccurate the solution _x_ will be after approximation. Note that this is before the effects of round-off error are taken into account; conditioning is a property of the matrix, not the algorithm or floating point accuracy of the computer used to solve the corresponding system. In particular, one should think of the condition number as being (very roughly) the rate at which the solution, _x_, will change with respect to a change in _b_. Thus, if the condition number is large, even a small error in _b_ may cause a large error in _x_. On the other hand, if the condition number is small then the error in _x_ will not be much bigger than the error in _b_.

The condition number is defined more precisely to be the maximum ratio of the relative error in _x_ to the relative error in _b_.

Let _e_ be the error in _b_. Assuming that _A_ is a nonsingular matrix, the error in the solution _A_^(−1)_b_ is _A_^(−1)_e_. The ratio of the relative error in the solution to the relative error in _b_ is

    $\frac{\frac{ \left\| A^{-1} e \right\| } {\left\| A^{-1} b \right\|} }{\frac{\| e \|}{\| b\|}}$

This is easily transformed to

    $\frac{\left\| A^{-1} e \right\|}{\| e \|} \frac{\| b \|}{\left\| A^{-1} b \right\|}.$

The maximum value (for nonzero _b_ and _e_) is then seen to be the product of the two operator norms as follows:

$$\begin{align}
  \max_{e,b \neq 0} \left\{ \frac{\left\| A^{-1}e \right\|}{\| e \|} \frac{\| b \|}{\left\| A^{-1}b \right\|} \right\}
    &= \max_{e \neq 0} \left\{\frac{\left\| A^{-1}e\right\| }{\| e\|} \right\} \, \max_{b \neq 0} \left\{ \frac {\| b \|}{\left\| A^{-1}b \right\|} \right\} \\
    &= \max_{e \neq 0} \left\{\frac{\left\| A^{-1}e\right\|}{\| e \|}\right\} \, \max_{x \neq 0} \left \{\frac {\| Ax \| }{\| x \|} \right\} \\
    &= \left\| A^{-1} \right \| \, \|A\|
\end{align}$$

The same definition is used for any consistent norm, i.e. one that satisfies

    κ(A) = ∥A^( − 1)∥ ∥A∥ ≥ ∥A^( − 1)A∥ = 1.

When the condition number is exactly one (which can only happen if _A_ is a scalar multiple of a linear isometry), then a solution algorithm can find (in principle, meaning if the algorithm introduces no errors of its own) an approximation of the solution whose precision is no worse than that of the data.

However, it does not mean that the algorithm will converge rapidly to this solution, just that it won't diverge arbitrarily because of inaccuracy on the source data (backward error), provided that the forward error introduced by the algorithm does not diverge as well because of accumulating intermediate rounding errors.

The condition number may also be infinite, but this implies that the problem is ill-posed (does not possess a unique, well-defined solution for each choice of data; that is, the matrix is not invertible), and no algorithm can be expected to reliably find a solution.

The definition of the condition number depends on the choice of norm, as can be illustrated by two examples.

If ∥ ⋅ ∥ is the norm defined in the square-summable sequence space ℓ² (which matches the usual distance in a standard Euclidean space and is usually noted as ∥ ⋅ ∥₂), then

    $\kappa(A) = \frac{\sigma_{\max}(A)}{\sigma_{\min}(A)},$

where σ_(max)(A) and σ_(min)(A) are maximal and minimal singular values of A respectively. Hence

-   If A is normal then

$$\kappa(A) = \frac{\left|\lambda_{\max}(A)\right|}{\left|\lambda_{\min}(A)\right|} ,$$

    where λ_(max)(A) and λ_(min)(A) are maximal and minimal (by moduli) eigenvalues of A respectively.

-   If A is unitary then κ(A) = 1.

The condition number with respect to _L_² arises so often in numerical linear algebra that it is given a name, the CONDITION NUMBER OF A MATRIX.

If ∥ ⋅ ∥ is the norm defined in the sequence space ℓ^(∞) of all bounded sequences (which matches the maximum of distances measured on projections into the base subspaces and is usually denoted by ∥ ⋅ ∥_(∞)), and A is lower triangular non-singular (i.e., ∀i, a_(ii) ≠ 0) then

    $\kappa(A) \geq \frac{\max_i(|a_{ii}|)}{\min_i(|a_{ii}|)} .$

The condition number computed with this norm is generally larger than the condition number computed with square-summable sequences, but it can be evaluated more easily (and this is often the only practicably computable condition number, when the problem to solve involves a _non-linear algebra_, for example when approximating irrational and transcendental functions or numbers with numerical methods).

If the condition number is not too much larger than one, the matrix is well conditioned which means its inverse can be computed with good accuracy. If the condition number is very large, then the matrix is said to be ill-conditioned. Practically, such a matrix is almost singular, and the computation of its inverse, or solution of a linear system of equations is prone to large numerical errors. A matrix that is not invertible has condition number equal to infinity.


Nonlinear

Condition numbers can also be defined for nonlinear functions, and can be computed using calculus. The condition number varies with the point; in some cases one can use the maximum (or supremum) condition number over the domain of the function or domain of the question as an overall condition number, while in other cases the condition number at a particular point is of more interest.

One variable

The condition number of a differentiable function _f_ in one variable as a function is |xf′/f|. Evaluated at a point _x_ this is:

$$\left|\frac{xf'(x)}{f(x)}\right|$$

Most elegantly, this can be understood as (the absolute value of) the ratio of the logarithmic derivative of _f,_ which is (log f)′ = f′/f and the logarithmic derivative of _x,_ which is (log x)′ = x′/x = 1/x, yielding a ratio of xf′/f. This is because the logarithmic derivative is the infinitesimal rate of relative change in a function: it is the derivative f′ scaled by the value of _f._ Note that if a function has a zero at a point, its condition number at the point is infinite, as infinitesimal changes in the input can change the output from zero to positive or negative, yielding a ratio with zero in the denominator, hence infinite relative change.

More directly, given a small change Δx in _x,_ the relative change in _x_ is [(x + Δx) − x]/x = (Δx)/x, while the relative change in f(x) is [f(x + Δx) − f(x)]/f(x). Taking the ratio yields:

$$\frac{[f(x + \Delta x) - f(x)]/f(x)}{(\Delta x)/x}= \frac{x}{f(x)}\frac{f(x + \Delta x) - f(x)}{(x + \Delta x) - x}.$$

The last term is the difference quotient (the slope of the secant line), and taking the limit yields the derivative.

Condition numbers of common elementary functions are particularly important in computing significant figures, and can be computed immediately from the derivative; see significance arithmetic of transcendental functions. A few important ones are given below:

Several variables

Condition numbers can be defined for any function _f_ mapping its data from some domain (e.g. an _m_-tuple of real numbers _x_) into some codomain [e.g. an _n_-tuple of real numbers _f_(_x_)], where both the domain and codomain are Banach spaces. They express how sensitive that function is to small changes (or small errors) in its arguments. This is crucial in assessing the sensitivity and potential accuracy difficulties of numerous computational problems, for example polynomial root finding or computing eigenvalues.

The condition number of _f_ at a point _x_ (specifically, its RELATIVE CONDITION NUMBER[4]) is then defined to be the maximum ratio of the fractional change in _f_(_x_) to any fractional change in _x_, in the limit where the change δ_x_ in _x_ becomes infinitesimally small:[5]

$$\lim_{\varepsilon \to 0^+ } \sup_{ \| \delta x \| \leq \varepsilon} \left[  \left. \frac{ \left\| f(x + \delta x) - f(x)\right\| }{\| f(x) \|} \right/ \frac{ \| \delta x \| }{ \| x \| } \right],$$

where ∥ ⋅ ∥ is a norm on the domain/codomain of _f_(_x_).

If _f_ is differentiable, this is equivalent to:[6]

    $\frac{\| J (x)\|}{ \| f(x) \| / \| x \|},$

where denotes the Jacobian matrix of partial derivatives of _f_ at _x_ and ∥J(x)∥ is the induced norm on the matrix.


See also

-   Numerical methods for linear least squares
-   Ill-posed problem
-   Singular value


References


External links

-   Condition Number of a Matrix at _Holistic Numerical Methods Institute_
-   -   MATLAB library function to determine condition number
-   Condition number – Encyclopedia of Mathematics

Category:Numerical analysis Category:Matrices

[1]

[2]

[3]

[4]

[5]

[6]