_Weierstrass_elliptic_function_P.png.]] ABEL ELLIPTIC FUNCTIONS are holomorphic functions of one complex variable and with two periods. They were first established by Niels Henrik Abel and are a generalization of trigonometric functions. Since they are based on elliptic integrals, they were the first examples of elliptic functions. Similar functions were shortly thereafter defined by Carl Gustav Jacobi. In spite of the Abel functions having several theoretical advantages, the Jacobi elliptic functions have become the standard. This can have to do with the fact that Abel died only two years after he presented them while Jacobi could continue with his exploration of them throughout his lifetime. Both the elliptic functions of Abel and of Jacobi can be derived from a more general formulation which was later given by Karl Weierstrass based on their double periodicity.


History

The first elliptic functions were found by Carl Friedrich Gauss around 1795 in connection with his calculation of the lemniscate arc length, but first published after his death.[1] These are special cases of the general, elliptic functions which were first investigated by Abel in 1823 when he still was a student.[2] His starting point were the elliptic integrals which had been studied in great detail by Adrien-Marie Legendre. The year after Abel could report that his new functions had two periods.[3] Especially this property made them more interesting than the normal trigonometric functions which have only one period. In particular it meant that they had to be complex functions which at that time were still in their infancy.

In the following years Abel continued to explore these functions. He also tried to generalize them to functions with even more periods, but seemed to be in no hurry to publish his results. But in the beginning of the year 1827 he wrote together his first, long presentation _Recherches sur les fonctions elliptiques_ of his discoveries.[4] At the end of the same year he became aware of Carl Gustav Jacobi and his works on new transformations of elliptic integrals. Abel finishes then a second part of his article on elliptic functions and shows in an appendix how the transformation results of Jacobi would easily follow.[5] When he then sees the next publication by Jacobi where he makes use of elliptic functions to prove his results without referring to Abel, the Norwegian mathematician finds himself to be in a struggle with Jacobi over priority. He finishes several new articles about related issues, now for the first time dating them, but dies less than a year later. In the meantime Jacobi completes his great work _Fundamenta nova theoriae functionum ellipticarum_ on elliptic functions which appears the same year as a book. It ended up defining what would be the standard form of elliptic functions in the years that followed.


Properties

Under his short stay in Copenhagen in 1823 under the influence of Carl Ferdinand Degen Abel started to work on the elliptic integrals which previously had been investigated and classified by Legendre. The integral of the first kind he wrote on the symmetric form

    $u =  \int_0^x \frac{dt}{\sqrt{(1 - c^2 t^2)(1 + e^2 t^2)}}$

where _c_ and _e_  are arbitrary parameters. Initially they will be considered to be real numbers, but can eventually also take complex values.[6] In the special case 1}} and 0}} the integral gives the arc length of a circle, while for e'' {{=}} 1}} it leads to the arc length of the lemniscate. He could thus make contact both with the trigonometric functions (circular functions) and the lemniscatic functions which Gauss had hinted at in his _Disquisitiones Arithmeticae_.

The value _u_ of the integral is a function of the upper limit _x_ of the integral. As long as _x_ < 1/_c_ this value will increase with increasing _x_ and reach a maximum

    ${\omega\over 2} = \int_0^{1/c} \frac{dt}{\sqrt{(1 - c^2 t^2)(1 + e^2 t^2)}}.$

when _x_ = 1/_c_. So far there was nothing new in this what Legendre had not already done. But Abel's stroke of genius was now to consider the _inverse function_ _x_ = _φ_(_u_). This is well-defined in the interval 0 ≤ _u_ ≤ _ω_/2 with 0}}. Since the defining integral is an odd function of the upper limit, this new function _φ_(_u_) will also be odd and thus defined in the whole interval with the special values ±1/_c_.}}

By taking the derivative with respect to _u_ on both sides of the integral, the derivative _φ' _(_u_)}} can be found. It leads to

    $\varphi'(u) = \sqrt{(1 - c^2\varphi^2(u))(1 + e^2\varphi^2(u))}$

which now is an even function _φ' _(−_u_)}} with the values 0 }} and 1.}}

For the two square roots which here appear Abel introduced the new functions

    $f(u) = \sqrt{1 - c^2\varphi^2(u)}, \;\;\; F(u) = \sqrt{1 + e^2\varphi^2(u)}$

which also are even. From above one finds _f_(0) = _F_(0) = 1 together with 0 }} and }}. If one considers _φ_(_u_) to be a generalized sine function, then these two even functions can be seen as generalized cosine functions of which there now are two. In terms of them one then has the derivative on the more compact form _f_(_u_)_F_(_u_).}} Similarly, it then follows that − _c_²_φ_(_u_)_F_(_u_) }} and _e_²_φ_(_u_)_f_(_u_).}}

Addition formulas

Euler and Legendre had shown that the elliptic integrals satisfied different addition theorems. Abel gave a new derivation of this for the particular integral he considered and found

    $\varphi(u_1 + u_2) = {\varphi(u_1)f(u_2)F(u_2) + \varphi(u_2)f(u_1)F(u_1)\over 1 + c^2 e^2 \varphi^2(u_1)\varphi^2(u_2)}$

For the two other elliptic functions he similarly obtained



\begin{align} f(u_1 + u_2) & = {f(u_1)f(u_2) - c^2\varphi(u_1)\varphi(u_2)F(u_1)F(u_2)\over 1 + c^2 e^2 \varphi^2(u_1)\varphi^2(u_2)} \\[5pt] F(u_1 + u_2) & = {F(u_1)F(u_2) + e^2\varphi(u_1)\varphi(u_2)f(u_1)f(u_2)\over 1 + c^2 e^2 \varphi^2(u_1)\varphi^2(u_2)} \end{align}

Making use of these he could now extend the range of the argument over which the functions were defined. For example, setting ±_ω_/2}} in the first formula, it gives

    $\varphi\big(u \pm {\omega\over 2}\big) =  \pm {1\over c}{f(u)\over F(u)}$

and similarly for the two other functions,

    $f\big(u \pm {\omega\over 2}\big) = \mp \sqrt{c^2 + e^2}{\varphi(u)\over F(u)}, \;\;  F\big(u \pm {\omega\over 2}\big) = {\sqrt{c^2 + e^2}\over c} {1\over F(u)}$

With _u_ = _ω_/2 one thus has 0}} so that the functions will be defined in the whole interval . Repeating this extension one step more, one finds −_φ_(_u_)}}. This function is then periodic _φ_(_u_ + 2_ω_) = _φ_(_u_) with period 2_ω_. For the two even functions one similarly obtains −_f_(_u_)}} and _F_(_u_)}}. The function _f_(_u_) thus also has the period 2_ω_, while _F_(_u_) has the shorter period _ω_.

Complex extension

Abel could also extend his new functions into the complex plane. For that purpose he defined the conjugate integral

    $v = \int_0^y \frac{dt}{\sqrt{(1 + c^2 t^2)(1 - e^2 t^2)}}$

where the parameters _c_ are _e_ are exchanged. The upper limit _y_ can again be taken as a function of the integral value _v_. This is a real number and increases steadily from zero to a maximal value

    ${\omega'\over 2} = \int_0^{1/e} \frac{dt}{\sqrt{(1 + c^2 t^2)(1 - e^2 t^2)}}$

for _y_ = 1/_e_. By changing the integration vaiable from _t_ to _it_, Abel found that _φ_(_iv_)}}. This elliptic function could thus be found for purely imaginary values of the argument. In particular one has _i/e_}}. Using the addition theorems one can then calculate the functions for a general complex argument of the form u + iv''}}.

For this complex extension one needs also the values of the two other elliptic functions for imaginary arguments. One finds _f_(±_iω' _/2) = and 0}}. Thus it follows that

    $\varphi\big(u \pm i{\omega'\over 2}\big) = \pm {i\over e}{F(u)\over f(u)}$

and similarly for the two other functions,

    $F\big(u \pm i{\omega'\over 2}\big) =  \pm i\sqrt{c^2 + e^2} {\varphi(u)\over f(u)}, \;\;  f\big(u \pm i{\omega'\over 2}\big) = {\sqrt{c^2 + e^2}\over e} {1\over f(u)}$

Since _f_(±_ω_/2) = 0, it follows that the three elliptic functions diverge at _ω_/2 ± _iω' _/2 and other points related by symmetry. These divergences turn out to be simple poles, but this part of complex analysis was not yet so developed at the time of Abel.[7]

Double periodicity

The above complex extension was defined for imaginary arguments in the interval . But using the addition formulas this can be extended to . Replacing then _u_ with in the same formulas, it follows that −_φ_(_u_)}}. This elliptic function is therefore periodic also in the imaginary direction with period 2_iω_'. In addition, one then also has

    φ(u + ω ± iω′) = φ(u)

so that the function can equivalently be said to have the two complex periods _ω_ ± _i_ _ω' _}}. Since _φ_(0) = 0, the function will also be zero in all points _mω + inω' _}} where _m_ and _n_ are integers. These zeros thus form a regular lattice in the complex plane as the poles also will.

For the two other functions Abel found _f_(_u_)}} and −_F_(_u_)}}. The function _f_(_u_) thus has the period _iω' _ in the imaginary direction while it is 2_iω' _ for _F_(_u_). Their zeros and poles will again form a regular lattice reflecting their double periodicity. After Gauss had died it was discovered that he had discovered a corresponding double periodicity in his lemniscate elliptic function.[8]

Jacobi elliptic functions

From the defining integrals one sees that Abel's elliptic functions can be expressed by the Jacobi elliptic functions for imaginary values _k_ = _ie_/_c_ of the modulus. The precise relation between these functions can be found by a change of the integration variable and is

    $\varphi(u;c,e) = {1\over c} \operatorname{sn}(cu,ie/c)$

For the two secondary functions this results in

    f(u; c, e) = cn (cu, ie/c),  F(u; c, e) = dn (cu, ie/c)

After Abel died in 1829 Jacobi continued his investigations of the elliptic functions. With time they became numerically tabulated and ended up being the standard elliptic functions.[9] Using these for imaginary values of the modulus, one can therefore also calculate the corresponding Abel elliptic functions.


References


Literature

-   Niels Henrik Abel, _Recherhes sur le fonctions elliptiques_, first and second part in Sophus Lie and Ludwig Sylow (eds.) _Collected Works_, Oslo (1881).
-   Christian Houzel, _The Work of Niels Henrik Abel_, in O.A. Laudal and R. Piene, _The Legacy of Niels Henrik Abel – The Abel Bicentennial, Oslo 2002_, Springer Verlag, Berlin (2004). .

Category:Elliptic functions

[1] J. Stillwell, _Mathematics and Its History_, Springer, New York (2010). .

[2] A. Stubhaug, _Niels Henrik Abel and his Times_, Springer-Verlag, Berlin (2000). .

[3] O. Ore, _Niels Henrik Abel – Mathematician Extraordinary_, AMS Chelsea Publishing, Providence, RI (2008). .

[4] N.H. Abel, _Recherches sur les fonctions elliptiques_, Journal für die reine und angewandte Mathematik, 2, 101–181 (1827).

[5] N.H. Abel, _Recherches sur les fonctions elliptiques_, Journal für die reine und angewandte Mathematik, 3, 160–190 (1828).

[6] J. Gray, _The Real and the Complex: A History of Analysis in the 19th Century_, Springer, Heidelberg (2015). .

[7]

[8]

[9] M. Abramowitz and I.A. Stegun, _Handbook of Mathematical Functions_, Dover Publications, New York (1983). .