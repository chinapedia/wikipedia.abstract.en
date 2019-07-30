In analytic geometry, an ASYMPTOTE () of a curve is a line such that the distance between the curve and the line approaches zero as one or both of the _x_ or _y_ coordinates tends to infinity. Some sources include the requirement that the curve may not cross the line infinitely often, but this is unusual for modern authors.[1] In projective geometry and related contexts, an asymptote of a curve is a line which is tangent to the curve at a point at infinity.[2][3]

The word asymptote is derived from the Greek ἀσύμπτωτος (_asumptōtos_) which means "not falling together", from ἀ priv. + σύν "together" + πτωτ-ός "fallen".[4] The term was introduced by Apollonius of Perga in his work on conic sections, but in contrast to its modern meaning, he used it to mean any line that does not intersect the given curve.[5]

There are three kinds of asymptotes: _horizontal_, _vertical_ and _oblique_ asymptotes. For curves given by the graph of a function , horizontal asymptotes are horizontal lines that the graph of the function approaches as _x_ tends to Vertical asymptotes are vertical lines near which the function grows without bound. An oblique asymptote has a slope that is non-zero but finite, such that the graph of the function approaches it as _x_ tends to

More generally, one curve is a _curvilinear asymptote_ of another (as opposed to a _linear asymptote_) if the distance between the two curves tends to zero as they tend to infinity, although the term _asymptote_ by itself is usually reserved for linear asymptotes.

Asymptotes convey information about the behavior of curves _in the large_, and determining the asymptotes of a function is an important step in sketching its graph.[6] The study of asymptotes of functions, construed in a broad sense, forms a part of the subject of asymptotic analysis.


Introduction

. The _x_ and _y_-axes are the asymptotes.]] The idea that a curve may come arbitrarily close to a line without actually becoming the same may seem to counter everyday experience. The representations of a line and a curve as marks on a piece of paper or as pixels on a computer screen have a positive width. So if they were to be extended far enough they would seem to merge, at least as far as the eye could discern. But these are physical representations of the corresponding mathematical entities; the line and the curve are idealized concepts whose width is 0 (see Line). Therefore, the understanding of the idea of an asymptote requires an effort of reason rather than experience.

Consider the graph of the function $f(x) = \frac{1}{x}$ shown to the right. The coordinates of the points on the curve are of the form $\left(x, \frac{1}{x}\right)$ where x is a number other than 0. For example, the graph contains the points (1, 1), (2, 0.5), (5, 0.2), (10, 0.1), … As the values of x become larger and larger, say 100, 1,000, 10,000 …, putting them far to the right of the illustration, the corresponding values of y, .01, .001, .0001, …, become infinitesimal relative to the scale shown. But no matter how large x becomes, its reciprocal $\frac{1}{x}$ is never 0, so the curve never actually touches the _x_-axis. Similarly, as the values of x become smaller and smaller, say .01, .001, .0001, …, making them infinitesimal relative to the scale shown, the corresponding values of y, 100, 1,000, 10,000 …, become larger and larger. So the curve extends farther and farther upward as it comes closer and closer to the _y_-axis. Thus, both the _x_ and _y_-axes are asymptotes of the curve. These ideas are part of the basis of concept of a limit in mathematics, and this connection is explained more fully below.[7]


Asymptotes of functions

The asymptotes most commonly encountered in the study of calculus are of curves of the form . These can be computed using limits and classified into _horizontal_, _vertical_ and _oblique_ asymptotes depending on their orientation. Horizontal asymptotes are horizontal lines that the graph of the function approaches as _x_ tends to +∞ or −∞. As the name indicates they are parallel to the _x_-axis. Vertical asymptotes are vertical lines (perpendicular to the _x_-axis) near which the function grows without bound. Oblique asymptotes are diagonal lines such that the difference between the curve and the line approaches 0 as _x_ tends to +∞ or −∞.

Vertical asymptotes

The line _x_ = _a_ is a _vertical asymptote_ of the graph of the function if at least one of the following statements is true:

1.  lim_(x → a^(−))f(x) =  ± ∞,
2.  lim_(x → a⁺)f(x) =  ± ∞,

where lim_(x → a^(−)) is the limit as _x_ approaches the value _a_ from the left (from lesser values), and lim_(x → a⁺) is the limit as _x_ approaches _a_ from the right.

For example, if ƒ(_x_) = _x_/(_x_–1), the numerator approaches 1 and the denominator approaches 0 as _x_ approaches 1. So

$$\lim_{x\to 1^{+}}\frac{x}{x-1}=+\infty$$

$$\lim_{x\to 1^{-}}\frac{x}{x-1}=-\infty$$
and the curve has a vertical asymptote _x_=1.

The function _ƒ_(_x_) may or may not be defined at _a_, and its precise value at the point _x_ = _a_ does not affect the asymptote. For example, for the function

$$f(x) = \begin{cases} \frac{1}{x} & \text{if } x > 0, \\ 5 & \text{if  } x \le 0. \end{cases}$$

has a limit of +∞ as , _ƒ_(_x_) has the vertical asymptote , even though _ƒ_(0) = 5. The graph of this function does intersect the vertical asymptote once, at (0,5). It is impossible for the graph of a function to intersect a vertical asymptote (or a vertical line in general) in more than one point. Moreover, if a function is continuous at each point where it is defined, it is impossible that its graph does intersect any vertical asymptote.

A common example of a vertical asymptote is the case of a rational function at a point x such that the denominator is zero and the numerator is non-zero.

If a function has a vertical asymptote, then it isn't necessarily true that the derivative of the function has a vertical asymptote at the same place. An example is

$$f(x) =  \tfrac 1x + \sin(\tfrac 1x)\quad$$
at  x = 0.

This function has a vertical asymptote at x = 0, because

$$\lim_{x\to0^+} f(x) = \lim_{x\to0^+}\left(\tfrac 1x + \sin\left(\tfrac 1x\right)\right) = +\infty,$$

and

$$\lim_{x\to0^-} f(x) = \lim_{x\to0^-}\left(\tfrac 1x + \sin\left(\tfrac 1x\right)\right) = -\infty$$
.

The derivative of f is the function

$$f'(x)=\frac{-(\cos(\tfrac 1x) + 1)}{x^2}$$
.

For the sequence of points

$$x_n=\frac{(-1)^n}{(2n+1)\pi},\quad$$
for  n = 0, 1, 2, …

that approaches x = 0 both from the left and from the right, the values f′(x_(n)) are constantly 0. Therefore, both one-sided limits of f′ at 0 can be neither  + ∞ nor  − ∞. Hence f′(x) doesn't have a vertical asymptote at x = 0.

Horizontal asymptotes

_Horizontal asymptotes_ are horizontal lines that the graph of the function approaches as . The horizontal line _y_ = _c_ is a horizontal asymptote of the function _y_ = _ƒ_(_x_) if

lim_(_x_ →  − ∞)_f_(_x_) = _c_
or lim_(x →  + ∞)f(x) = c. In the first case, _ƒ_(_x_) has _y_ = _c_ as asymptote when _x_ tends to −∞, and in the second _ƒ_(_x_) has _y_ = _c_ as an asymptote as _x_ tends to +∞

For example, the arctangent function satisfies

$$\lim_{x\rightarrow -\infty}\arctan(x)=-\frac{\pi}{2}$$
and $\lim_{x\rightarrow+\infty}\arctan(x)=\frac{\pi}{2}.$

So the line is a horizontal asymptote for the arctangent when _x_ tends to −∞, and is a horizontal asymptote for the arctangent when _x_ tends to +∞.

Functions may lack horizontal asymptotes on either or both sides, or may have one horizontal asymptote that is the same in both directions. For example, the function has a horizontal asymptote at _y_ = 0 when _x_ tends both to −∞ and +∞ because, respectively,

$$\lim_{x\to -\infty}\frac{1}{x^2+1}=\lim_{x\to +\infty}\frac{1}{x^2+1}=0.$$

Oblique asymptotes

When a linear asymptote is not parallel to the _x_- or _y_-axis, it is called an _oblique asymptote_ or _slant asymptote_. A function _f_(_x_) is asymptotic to the straight line (_m_ ≠ 0) if

lim_(_x_ →  + ∞)[_f_(_x_)−(_m__x_+_n_)] = 0  or lim_(_x_ →  − ∞)[_f_(_x_)−(_m__x_+_n_)] = 0.

In the first case the line is an oblique asymptote of _ƒ_(_x_) when _x_ tends to +∞, and in the second case the line is an oblique asymptote of _ƒ(x)_ when _x_ tends to −∞.

An example is ƒ(_x_) = _x_ + 1/_x_, which has the oblique asymptote _y_ = _x_ (that is _m_ = 1, _n_ = 0) as seen in the limits

lim_(_x_ →  ± ∞)[_f_(_x_)−_x_]

$$=\lim_{x\to\pm\infty}\left[\left(x+\frac{1}{x}\right)-x\right]$$

$$=\lim_{x\to\pm\infty}\frac{1}{x}=0.$$


Elementary methods for identifying asymptotes

The asymptotes of many elementary functions can be found without the explicit use of limits (although the derivations of such methods typically use limits).

General computation of oblique asymptotes for functions

The oblique asymptote, for the function _f_(_x_), will be given by the equation _y_=_mx_+_n_. The value for _m_ is computed first and is given by

$$m\stackrel{\text{def}}{=}\lim_{x\rightarrow a}f(x)/x$$

where _a_ is either  − ∞ or  + ∞ depending on the case being studied. It is good practice to treat the two cases separately. If this limit doesn't exist then there is no oblique asymptote in that direction.

Having _m_ then the value for _n_ can be computed by

$$n\stackrel{\text{def}}{=}\lim_{x\rightarrow a}(f(x)-mx)$$

where _a_ should be the same value used before. If this limit fails to exist then there is no oblique asymptote in that direction, even should the limit defining _m_ exist. Otherwise is the oblique asymptote of _ƒ_(_x_) as _x_ tends to _a_.

For example, the function has

$$m=\lim_{x\rightarrow+\infty}f(x)/x=\lim_{x\rightarrow+\infty}\frac{2x^2+3x+1}{x^2}=2$$
and then

$$n=\lim_{x\rightarrow+\infty}(f(x)-mx)=\lim_{x\rightarrow+\infty}\left(\frac{2x^2+3x+1}{x}-2x\right)=3$$

so that is the asymptote of _ƒ_(_x_) when _x_ tends to +∞.

The function has

$$m=\lim_{x\rightarrow+\infty}f(x)/x=\lim_{x\rightarrow+\infty}\frac{\ln x}{x}=0$$
and then

_n_ = lim_(_x_ →  + ∞)(_f_(_x_) − _m__x_) = lim_(_x_ →  + ∞)ln _x_
, which does not exist.

So does not have an asymptote when _x_ tends to +∞.

Asymptotes for rational functions

A rational function has at most one horizontal asymptote or oblique (slant) asymptote, and possibly many vertical asymptotes.

The degree of the numerator and degree of the denominator determine whether or not there are any horizontal or oblique asymptotes. The cases are tabulated below, where deg(numerator) is the degree of the numerator, and deg(denominator) is the degree of the denominator.

  deg(numerator)−deg(denominator)   Asymptotes in general                                                              Example                                       Asymptote for example
  --------------------------------- ---------------------------------------------------------------------------------- --------------------------------------------- ---------------------------------------------------------
  < 0                               y = 0                                                                              $f(x)=\frac{1}{x^2+1}$                        y = 0
  = 0                               _y_ = the ratio of leading coefficients                                            $f(x)=\frac{2x^2+7}{3x^2+x+12}$               $y=\frac{2}{3}$
  = 1                               _y_ = the quotient of the Euclidean division of the numerator by the denominator   $f(x)=\frac{2x^2+3x+5}{x}=2x+3+\frac{5}{x}$   y = 2x + 3
  > 1                               none                                                                               $f(x)=\frac{2x^4}{3x^2+1}$                    no linear asymptote, but a curvilinear asymptote exists

  : The cases of horizontal and oblique asymptotes for rational functions

The vertical asymptotes occur only when the denominator is zero (If both the numerator and denominator are zero, the multiplicities of the zero are compared). For example, the following function has vertical asymptotes at _x_ = 0, and _x_ = 1, but not at _x_ = 2.

$$f(x)=\frac{x^2-5x+6}{x^3-3x^2+2x}=\frac{(x-2)(x-3)}{x(x-1)(x-2)}$$

Oblique asymptotes of rational functions

When the numerator of a rational function has degree exactly one greater than the denominator, the function has an oblique (slant) asymptote. The asymptote is the polynomial term after dividing the numerator and denominator. This phenomenon occurs because when dividing the fraction, there will be a linear term, and a remainder. For example, consider the function

$$f(x)=\frac{x^2+x+1}{x+1}=x+\frac{1}{x+1}$$
shown to the right. As the value of _x_ increases, _f_ approaches the asymptote _y_ = _x_. This is because the other term, 1/(_x_+1), approaches 0.

If the degree of the numerator is more than 1 larger than the degree of the denominator, and the denominator does not divide the numerator, there will be a nonzero remainder that goes to zero as _x_ increases, but the quotient will not be linear, and the function does not have an oblique asymptote.

Transformations of known functions

If a known function has an asymptote (such as _y_=0 for _f_(x)=_e_^(_x_)), then the translations of it also have an asymptote.

-   If _x_=_a_ is a vertical asymptote of _f_(_x_), then _x_=_a_+_h_ is a vertical asymptote of _f_(_x_-_h_)
-   If _y_=_c_ is a horizontal asymptote of _f_(_x_), then _y_=_c_+_k_ is a horizontal asymptote of _f_(_x_)+_k_

If a known function has an asymptote, then the scaling of the function also have an asymptote.

-   If _y_=_ax_+_b_ is an asymptote of _f_(_x_), then _y_=_cax_+_cb_ is an asymptote of _cf_(_x_)

For example, _f_(_x_)=_e_^(_x_-1)+2 has horizontal asymptote _y_=0+2=2, and no vertical or oblique asymptotes.


General definition

Let be a parametric plane curve, in coordinates _A_(_t_) = (_x_(_t_),_y_(_t_)). Suppose that the curve tends to infinity, that is:

lim_(_t_ → _b_)(_x_²(_t_) + _y_²(_t_)) = ∞.
A line ℓ is an asymptote of _A_ if the distance from the point _A_(_t_) to ℓ tends to zero as _t_ → _b_.[8] From the definition, only open curves that have some infinite branch can have an asymptote. No closed curve can have an asymptote.

For example, the upper right branch of the curve _y_ = 1/_x_ can be defined parametrically as _x_ = _t_, _y_ = 1/_t_ (where _t_ > 0). First, _x_ → ∞ as _t_ → ∞ and the distance from the curve to the _x_-axis is 1/_t_ which approaches 0 as _t_ → ∞. Therefore, the _x_-axis is an asymptote of the curve. Also, _y_ → ∞ as _t_ → 0 from the right, and the distance between the curve and the _y_-axis is _t_ which approaches 0 as _t_ → 0. So the _y_-axis is also an asymptote. A similar argument shows that the lower left branch of the curve also has the same two lines as asymptotes.

Although the definition here uses a parameterization of the curve, the notion of asymptote does not depend on the parameterization. In fact, if the equation of the line is ax + by + c = 0 then the distance from the point _A_(_t_) = (_x_(_t_),_y_(_t_)) to the line is given by

$$\frac{|ax(t)+by(t)+c|}{\sqrt{a^2+b^2}}$$
if γ(_t_) is a change of parameterization then the distance becomes

$$\frac{|ax(\gamma(t))+by(\gamma(t))+c|}{\sqrt{a^2+b^2}}$$
which tends to zero simultaneously as the previous expression.

An important case is when the curve is the graph of a real function (a function of one real variable and returning real values). The graph of the function _y_ = _ƒ_(_x_) is the set of points of the plane with coordinates (_x_,_ƒ_(_x_)). For this, a parameterization is

_t_ ↦ (_t_, _f_(_t_)).
This parameterization is to be considered over the open intervals (_a_,_b_), where _a_ can be −∞ and _b_ can be +∞.

An asymptote can be either vertical or non-vertical (oblique or horizontal). In the first case its equation is _x_ = _c_, for some real number _c_. The non-vertical case has equation , where _m_ and n are real numbers. All three types of asymptotes can be present at the same time in specific examples. Unlike asymptotes for curves that are graphs of functions, a general curve may have more than two non-vertical asymptotes, and may cross its vertical asymptotes more than once.


Curvilinear asymptotes

Let be a parametric plane curve, in coordinates _A_(_t_) = (_x_(_t_),_y_(_t_)), and _B_ be another (unparameterized) curve. Suppose, as before, that the curve _A_ tends to infinity. The curve _B_ is a curvilinear asymptote of _A_ if the shortest distance from the point _A_(_t_) to a point on _B_ tends to zero as _t_ → _b_. Sometimes _B_ is simply referred to as an asymptote of _A_, when there is no risk of confusion with linear asymptotes.[9]

For example, the function

$$y = \frac{x^3+2x^2+3x+4}{x}$$
has a curvilinear asymptote , which is known as a _parabolic asymptote_ because it is a parabola rather than a straight line.[10]


Asymptotes and curve sketching

Asymptotes are used in procedures of curve sketching. An asymptote serves as a guide line to show the behavior of the curve towards infinity.[11] In order to get better approximations of the curve, curvilinear asymptotes have also been used [12] although the term asymptotic curve seems to be preferred.[13]


Algebraic curves

, the folium of Descartes (solid) with a single real asymptote (dashed).]] The asymptotes of an algebraic curve in the affine plane are the lines that are tangent to the projectivized curve through a point at infinity.[14] For example, one may identify the asymptotes to the unit hyperbola in this manner. Asymptotes are often considered only for real curves,[15] although they also make sense when defined in this way for curves over an arbitrary field.[16]

A plane curve of degree _n_ intersects its asymptote at most at _n_−2 other points, by Bézout's theorem, as the intersection at infinity is of multiplicity at least two. For a conic, there are a pair of lines that do not intersect the conic at any complex point: these are the two asymptotes of the conic.

A plane algebraic curve is defined by an equation of the form _P_(_x_,_y_) = 0 where _P_ is a polynomial of degree _n_

_P_(_x_, _y_) = _P__(_n_)(_x_, _y_) + _P__(_n_ − 1)(_x_, _y_) + ⋯ + _P_₁(_x_, _y_) + _P_₀
where _P__(_k_) is homogeneous of degree _k_. Vanishing of the linear factors of the highest degree term _P__(_n_) defines the asymptotes of the curve: setting , if , then the line

_Q_′_(_x_)(_b_, _a_)_x_ + _Q_′_(_y_)(_b_, _a_)_y_ + _P__(_n_ − 1)(_b_, _a_) = 0
is an asymptote if Q′_(x)(b, a) and Q′_(y)(b, a) are not both zero. If Q′_(x)(b, a) = Q′_(y)(b, a) = 0 and P_(n − 1)(b, a) ≠ 0, there is no asymptote, but the curve has a branch that looks like a branch of parabola. Such a branch is called a , even when it does not have any parabola that is a curvilinear asymptote. If Q′_(x)(b, a) = Q′_(y)(b, a) = P_(n − 1)(b, a) = 0, the curve has a singular point at infinity which may have several asymptotes or parabolic branches.

Over the complex numbers, _P__(_n_) splits into linear factors, each of which defines an asymptote (or several for multiple factors). 0ver the reals, _P__(_n_) splits in factors that are linear or quadratic factors. Only the linear factors correspond to infinite (real) branches of the curve, but if a linear factor has multiplicity greater than one, the curve may have several asymptotes or parabolic branches. It may also occur that such a multiple linear factor corresponds to two complex conjugate branches, and does not corresponds to any infinite branch of the real curve. For example, the curve has no real points outside the square |x| ≤ 1, |y| ≤ 1, but its highest order term gives the linear factor _x_ with multiplicity 4, leading to the unique asymptote _x_=0.


Asymptotic cone

The hyperbola

$$\frac{x^2}{a^2}-\frac{y^2}{b^2}= 1$$
has the two asymptotes

$$y=\pm\frac{b}{a}x.$$
The equation for the union of these two lines is

$$\frac{x^2}{a^2}-\frac{y^2}{b^2}=0.$$
Similarly, the hyperboloid

$$\frac{x^2}{a^2}-\frac{y^2}{b^2}-\frac{z^2}{c^2}=1$$
is said to have the ASYMPTOTIC CONE[17][18]

$$\frac{x^2}{a^2}-\frac{y^2}{b^2}-\frac{z^2}{c^2}=0.$$

The distance between the hyperboloid and cone approaches 0 as the distance from the origin approaches infinity.

More generally, consider a surface that has an implicit equation P_(d)(x, y, z) + P_(d − 2)(x, y, z) + ⋯P₀ = 0, where the P_(i) are homogeneous polynomials of degree i and P_(d − 1) = 0. Then the equation P_(d)(x, y, z) = 0 defines a cone which is centered at the origin. It is called an ASYMPTOTIC CONE, because the distance to the cone of a point of the surface tends to zero when the point on the surface tends to infinity.


See also

-   Big O notation


References

General references

-

Specific references


External links

-   -   Hyperboloid and Asymptotic Cone, string surface model, 1872 from the Science Museum

Category:Mathematical analysis Category:Analytic geometry

[1] "Asymptotes" by Louis A. Talman

[2]

[3]

[4] _Oxford English Dictionary_, second edition, 1989.

[5] D.E. Smith, _History of Mathematics, vol 2_ Dover (1958) p. 318

[6] , §4.18.

[7] Reference for section: "Asymptote" _The Penny Cyclopædia_ vol. 2, The Society for the Diffusion of Useful Knowledge (1841) Charles Knight and Co., London p. 541

[8] , §8.

[9] , p. 89ff.

[10] William Nicholson, _The British enciclopaedia, or dictionary of arts and sciences; comprising an accurate and popular view of the present improved state of human knowledge_, Vol. 5, 1809

[11] Frost, P. _An elementary treatise on curve tracing_ (1918) online

[12] Fowler, R. H. _The elementary differential geometry of plane curves_ Cambridge, University Press, 1920, pp 89ff.(online at archive.org)

[13] Frost, P. _An elementary treatise on curve tracing_, 1918, page 5

[14] C.G. Gibson (1998) _Elementary Geometry of Algebraic Curves_, § 12.6 Asymptotes, Cambridge University Press ,

[15] , pp. 40–44.

[16] , p. 121.

[17] L.P. Siceloff, G. Wentworth, D.E. Smith _Analytic geometry_ (1922) p. 271

[18] P. Frost _Solid geometry_ (1875) This has a more general treatment of asymptotic surfaces.