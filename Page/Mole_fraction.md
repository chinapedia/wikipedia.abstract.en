In chemistry, the MOLE FRACTION or MOLAR FRACTION (_X_(I)_) is defined as the amount of a constituent (expressed in moles), _n_(i)_ divided by the total amount of all constituents in a mixture (also expressed in moles), _n__(tot):[1]

$$x_i = \frac{n_i}{n_\mathrm{tot}}$$

The sum of all the mole fractions is equal to 1:

$$\sum_{i=1}^{N} n_i = n_\mathrm{tot} ; \; \sum_{i=1}^{N} x_i = 1$$

The same concept expressed with a denominator of 100 is the MOLE PERCENT or MOLAR PERCENTAGE or MOLAR PROPORTION (MOL%).

The mole fraction is also called the AMOUNT FRACTION.[2] It is identical to the NUMBER FRACTION, which is defined as the number of molecules of a constituent _N_(i)_ divided by the total number of all molecules _N__(tot). The mole fraction is sometimes denoted by the lowercase Greek letter _χ_ (chi) instead of a Roman _x_.[3][4] For mixtures of gases, IUPAC recommends the letter _y_.[5]

The National Institute of Standards and Technology of the United States prefers the term AMOUNT-OF-SUBSTANCE FRACTION over mole fraction because it does not contain the name of the unit mole.[6]

Whereas mole fraction is a ratio of moles to moles, molar concentration is a quotient of moles to volume.

The mole fraction is one way of expressing the composition of a mixture with a dimensionless quantity; mass fraction (percentage by weight, wt%) and volume fraction (percentage by volume, vol%) are others.


Properties

Mole fraction is used very frequently in the construction of phase diagrams. It has a number of advantages:

-   it is not temperature dependent (such as molar concentration) and does not require knowledge of the densities of the phase(s) involved
-   a mixture of known mole fraction can be prepared by weighing off the appropriate masses of the constituents
-   the measure is _symmetric_: in the mole fractions _x_ = 0.1 and _x_ = 0.9, the roles of 'solvent' and 'solute' are reversed.
-   In a mixture of ideal gases, the mole fraction can be expressed as the ratio of partial pressure to total pressure of the mixture
-   In a ternary mixture one can express mole fractions of a component as functions of other components mole fraction and binary mole ratios:

$x_1 = \frac{1-x_2}{1+\frac{x_3}{x_1}}$

$x_3 = \frac{1-x_2}{1+\frac{x_1}{x_3}}$

Differential quotients can be formed at constant ratios like those above:

$\left(\frac{{\partial x_1}}{{\partial x_2}}\right)_{\frac{x_1}{x_3}} = - \frac{x_1}{1-x_2}$

or

$\left(\frac{{\partial x_3}}{{\partial x_2}}\right)_{\frac{x_1}{x_3}} = - \frac{x_3}{1-x_2}$

Ratios X, Y, Z of mole fractions can be written for ternary and multicomponent systems:

$X = \frac{x_3}{x_1 + x_3}$

$Y = \frac{x_3}{x_2 + x_3}$

$Z = \frac{x_2}{x_1 + x_2}$

These can be used for solving pde like:

$\left(\frac{{\partial \mu_2}}{{\partial n_1}}\right)_{n_2, n_3} = \left(\frac{{\partial \mu_1}}{{\partial n_2}}\right)_{n_1, n_3}$

or

$\left(\frac{{\partial \mu_2}}{{\partial n_1}}\right)_{n_2, n_3, n_4..., n_i} = \left(\frac{{\partial \mu_1}}{{\partial n_2}}\right)_{n_1, n_3, n_4..., n_i}$

This equality can be rearranged to have differential quotient of mole amounts or fractions on one side.

$\left(\frac{{\partial \mu_2}}{{\partial \mu_1}}\right)_{n_2, n_3} = - \left(\frac{{\partial n_1}}{{\partial n_2}}\right)_{\mu_1, n_3} = - \left(\frac{{\partial x_1}}{{\partial x_2}}\right)_{\mu_1, n_3}$

or

$\left(\frac{{\partial \mu_2}}{{\partial \mu_1}}\right)_{n_2, n_3, n_4, ... n_i} = - \left(\frac{{\partial n_1}}{{\partial n_2}}\right)_{\mu_1, n_2, n_4..., n_i}$

Mole amounts can be eliminated by forming ratios:

$\left(\frac{{\partial n_1}}{{\partial n_2}}\right)_{n_3} = \left(\frac{{\partial \frac{n_1}{n_3}}}{{\partial \frac {n_2}{n_3} }}\right)_ {n_3} = \left(\frac{{\partial \frac{x_1}{x_3}}}{{\partial \frac {x_2}{x_3} }}\right)_ {n_3}$

Thus the ratio of chemical potentials becomes:

$\left(\frac{{\partial \mu_2}}{{\partial \mu_1}}\right)_{\frac {n_2} {n_3}} = - \left(\frac{{\partial \frac{x_1}{x_3}}}{{\partial \frac {x_2}{x_3} }}\right)_ {\mu_1}$

Similarly the ratio for the multicomponents system becomes

$\left(\frac{{\partial \mu_2}}{{\partial \mu_1}}\right)_{\frac {n_2} {n_3}, \frac {n_3} {n_4}, ...\frac {n_{i-1}} {n_i}} = - \left(\frac{{\partial \frac{x_1}{x_3}}}{{\partial \frac {x_2}{x_3} }}\right)_ {\mu_1, \frac {n_3} {n_4}, ...\frac {n_{i-1}} {n_i}}$


Related quantities

Mass fraction

The mass fraction _w_(i)_ can be calculated using the formula

$$w_i = x_i \cdot \frac {M_i}{M}$$
where _M_(i)_ is the molar mass of the component _i_ and _M_ is the average molar mass of the mixture.

Replacing the expression of the molar mass:

$$w_i = x_i \cdot \frac {M_i}{\sum_i x_i M_i}$$

Molar mixing ratio

The mixing of two pure components can be expressed introducing the amount or molar mixing ratio of them $r_n = \frac{n_2}{n_1}$. Then the mole fractions of the components will be:

$$x_1 = \frac{1}{1+ r_n}$$

$$x_2 = \frac{r_n}{1+ r_n}$$

The amount ratio equals the ratio of mole fractions of components:

$$\frac{n_2}{n_1} = \frac{x_2}{x_1}$$

due to division of both numerator and denominator by the sum of molar amounts of components. This property has consequences for representations of phase diagrams using, for instance, ternary plots.

Mixing binary mixtures with a common component to form ternary mixtures

Mixing binary mixtures with a common component gives a ternary mixture with certain mixing ratios between the three components. These mixing ratios from the ternary and the corresponding mole fractions of the ternary mixture x₁₍₁₂₃₎, x₂₍₁₂₃₎, x₃₍₁₂₃₎ can be expressed as a function of several mixing ratios involved, the mixing ratios between the components of the binary mixtures and the mixing ratio of the binary mixtures to form the ternary one.

$$x_{1(123)} = \frac{n_{(12)} x_{1(12)} + n_{13} x_{1(13)}}{n_{(12)} + n_{(13)}}$$

Mole percentage

Multiplying mole fraction by 100 gives the mole percentage, also referred as amount/amount percent (abbreviated as n/n%).

Mass concentration

The conversion to and from mass concentration _ρ_(i)_ is given by:

$$x_i = \frac{\rho_i}{\rho} \cdot \frac{M}{M_i}$$
where _M_ is the average molar mass of the mixture.

$$\rho_i = x_i \rho \cdot \frac{M_i}{M}$$

Molar concentration

The conversion to molar concentration _c_(i)_ is given by:

$$c_i = \frac{x_i \cdot \rho}{M} = x_i c$$
or

$$c_i = \frac{x_i \cdot \rho}{\sum_i x_i M_i}$$
where _M_ is the average molar mass of the solution, _c_ is the total molar concentration and _ρ_ is the density of the solution.

Mass and molar mass

The mole fraction can be calculated from the masses _m_(i)_ and molar masses _M_(i)_ of the components:

$$x_i= \frac{\frac{m_i}{M_i}}{\sum_i \frac{m_i}{M_i}}$$


Spatial variation and gradient

In a spatially non-uniform mixture, the mole fraction gradient triggers the phenomenon of diffusion.


References

Category:Chemical properties Category:Dimensionless numbers of chemistry

[1]

[2]

[3]

[4]

[5]

[6]