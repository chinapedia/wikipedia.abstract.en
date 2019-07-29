In physics and thermodynamics, an EQUATION OF STATE is a thermodynamic equation relating state variables which describe the state of matter under a given set of physical conditions, such as pressure, volume, temperature (PVT), or internal energy.[1] Equations of state are useful in describing the properties of fluids, mixtures of fluids, solids, and the interior of stars.


Overview

At present, there is no single equation of state that accurately predicts the properties of all substances under all conditions. An example of an equation of state correlates densities of gases and liquids to temperatures and pressures, known as the ideal gas law, which is roughly accurate for weakly polar gases at low pressures and moderate temperatures. This equation becomes increasingly inaccurate at higher pressures and lower temperatures, and fails to predict condensation from a gas to a liquid.

Another common use is in modeling the interior of stars, including neutron stars, dense matter (quark–gluon plasmas) and radiation fields. A related concept is the perfect fluid equation of state used in cosmology.

Equations of state can also describe solids, including the transition of solids from one crystalline state to another.

In a practical context, equations of state are instrumental for PVT calculations in process engineering problems, such as petroleum gas/liquid equilibrium calculations. A successful PVT model based on a fitted equation of state can be helpful to determine the state of the flow regime, the parameters for handling the reservoir fluids, and pipe sizing.

Measurements of equation-of-state parameters, especially at high pressures, can be made using lasers.[2][3][4]


Historical

Boyle's law (1662)

Boyle's Law was perhaps the first expression of an equation of state. In 1662, the Irish physicist and chemist Robert Boyle performed a series of experiments employing a J-shaped glass tube, which was sealed on one end. Mercury was added to the tube, trapping a fixed quantity of air in the short, sealed end of the tube. Then the volume of gas was measured as additional mercury was added to the tube. The pressure of the gas could be determined by the difference between the mercury level in the short end of the tube and that in the long, open end. Through these experiments, Boyle noted that the gas volume varied inversely with the pressure. In mathematical form, this can be stated as:

_p__V_ = _c__o__n__s__t__a__n__t_. ​

The above relationship has also been attributed to Edme Mariotte and is sometimes referred to as Mariotte's law. However, Mariotte's work was not published until 1676.

Charles's law or Law of Charles and Gay-Lussac (1787)

In 1787 the French physicist Jacques Charles found that oxygen, nitrogen, hydrogen, carbon dioxide, and air expand to roughly the same extent over the same 80-kelvin interval. Later, in 1802, Joseph Louis Gay-Lussac published results of similar experiments, indicating a linear relationship between volume and temperature:

$$\frac{V_1}{T_1} = \frac{V_2}{T_2}.$$

Dalton's law of partial pressures (1801)

Dalton's Law of partial pressure states that the pressure of a mixture of gases is equal to the sum of the pressures of all of the constituent gases alone.

Mathematically, this can be represented for _n_ species as:

$$p_\text{total} = p_1+p_2+\cdots+p_n = p_\text{total} = \sum_{i=1}^n p_i.$$

The ideal gas law (1834)

In 1834, Émile Clapeyron combined Boyle's Law and Charles' law into the first statement of the _ideal gas law_. Initially, the law was formulated as _pV_(m)_ = _R_(_T_(C)_ + 267) (with temperature expressed in degrees Celsius), where _R_ is the gas constant. However, later work revealed that the number should actually be closer to 273.2, and then the Celsius scale was defined with 0°C = 273.15K, giving:

_p__V__(_m_) = _R_(_T__(_C_)+273.15 ^(∘)C).

Van der Waals equation of state (1873)

In 1873, J. D. van der Waals introduced the first equation of state derived by the assumption of a finite volume occupied by the constituent molecules.[5] His new formula revolutionized the study of equations of state, and was most famously continued via the Redlich–Kwong equation of state and the Soave modification of Redlich-Kwong.


General form of an equation of state

For a given amount of substance contained in a system, the temperature, volume, and pressure are not independent quantities; they are connected by a relationship of the general form

_f_(_p_, _V_, _T_) = 0

An equation used to model this relationship is called an equation of state. In the following sections major equations of state are described, and the variables used here are defined as follows. Any consistent set of units may be used, although SI units are preferred. Absolute temperature refers to use of the Kelvin (K) or Rankine (°R) temperature scales, with zero being absolute zero.

 _p_
, pressure (absolute)

 _V_
, volume

 _n_
, number of moles of a substance

 _V__(_m_)
, $\frac{V}{n}$, MOLAR VOLUME, the volume of 1 mole of gas or liquid

 _T_
, absolute temperature

 _R_
, ideal gas constant ≈ 8.3144621J/mol·K

 _p__(_c_)
, pressure at the critical point

 _V__(_c_)
, molar volume at the critical point

 _T__(_c_)
, absolute temperature at the critical point


Classical ideal gas law

The classical ideal gas law may be written

_p__V_ = _n__R__T_.

In the form shown above, the equation of state is thus

_f_(_p_, _V_, _T_) = _p__V_ − _n__R__T_ = 0
.

If the calorically perfect gas approximation is used, then the ideal gas law may also be expressed as follows

_p_ = _ρ_(_γ_ − 1)_e_

where ρ is the density, γ = C_(p)/C_(v) is the adiabatic index (ratio of specific heats), e = C_(v)T is the internal energy per unit mass (the "specific internal energy"), C_(v) is the specific heat at constant volume, and C_(p) is the specific heat at constant pressure.


Cubic equations of state

Cubic equations of state are called such because they can be rewritten as a cubic function of V_(m).

Van der Waals equation of state

The Van der Waals equation of state may be written:

$$\left(p + \frac{a}{V_m^2}\right)\left(V_m - b\right) = RT$$

where V_(m) is molar volume. The substance-specific constants a and b can be calculated from the critical properties p_(c), T_(c) and V_(c) (noting that V_(c) is the molar volume at the critical point) as:

_a_ = 3_p__(_c_) _V__(_c_)²

$$b = \frac{V_c}{3}.$$

Also written as

$$a = \frac{27(R\,T_c)^2}{64p_c}$$

$$b = \frac{R\,T_c}{8p_c}.$$

Proposed in 1873, the van der Waals equation of state was one of the first to perform markedly better than the ideal gas law. In this landmark equation a is called the attraction parameter and b the repulsion parameter or the effective molecular volume. While the equation is definitely superior to the ideal gas law and does predict the formation of a liquid phase, the agreement with experimental data is limited for conditions where the liquid forms. While the van der Waals equation is commonly referenced in text-books and papers for historical reasons, it is now obsolete. Other modern equations of only slightly greater complexity are much more accurate.

The van der Waals equation may be considered as the ideal gas law, "improved" due to two independent reasons:

1.  Molecules are thought as particles with volume, not material points. Thus V_(m) cannot be too little, less than some constant. So we get (V_(m) − b) instead of V_(m).
2.  While ideal gas molecules do not interact, we consider molecules attracting others within a distance of several molecules' radii. It makes no effect inside the material, but surface molecules are attracted into the material from the surface. We see this as diminishing of pressure on the outer shell (which is used in the ideal gas law), so we write (p+ something) instead of p. To evaluate this ‘something’, let's examine an additional force acting on an element of gas surface. While the force acting on each surface molecule is ~ρ, the force acting on the whole element is ~ρ²~$\frac{1}{V_m^2}$.

With the reduced state variables, i.e. V_(r)=V_(m)/V_(c), P_(r)=P/P_(c) and T_(r)=T/T_(c), the reduced form of the Van der Waals equation can be formulated:

$$\left(P_r + \frac{3}{V_r^2}\right)\left(3V_r - 1\right) = 8T_r$$

The benefit of this form is that for given T_(r) and P_(r), the reduced volume of the liquid and gas can be calculated directly using Cardano's method for the reduced cubic form:

$$V_r^3 - \left(\frac{1}{3} + \frac{8T_r}{3P_r}\right)V_r^2 + \frac{3V_r}{P_r} - \frac{1}{P_r} = 0$$

For P_(r)<1 and T_(r)<1, the system is in a state of vapor–liquid equilibrium. The reduced cubic equation of state yields in that case 3 solutions. The largest and the lowest solution are the gas and liquid reduced volume.

Redlich-Kwong equation of state

$$\begin{align}
  p &= \frac{R\,T}{V_m - b} - \frac{a}{\sqrt{T}\,V_m\left(V_m + b\right)} \\[3pt]
  a &\approx 0.42748\frac{R^2\,T_c^\frac{5}{2}}{p_c} \\[3pt]
  b &\approx 0.08664\frac{R\,T_c}{p_c}
\end{align}$$

Introduced in 1949, the Redlich-Kwong equation of state was a considerable improvement over other equations of the time. It is still of interest primarily due to its relatively simple form. While superior to the van der Waals equation of state, it performs poorly with respect to the liquid phase and thus cannot be used for accurately calculating vapor–liquid equilibria. However, it can be used in conjunction with separate liquid-phase correlations for this purpose.

The Redlich-Kwong equation is adequate for calculation of gas phase properties when the ratio of the pressure to the critical pressure (reduced pressure) is less than about one-half of the ratio of the temperature to the critical temperature (reduced temperature):

$$\frac{p}{p_c} < \frac{T}{2T_c}.$$

Soave modification of Redlich-Kwong

$$p = \frac{R\,T}{V_m-b} - \frac{a\,\alpha}{V_m\left(V_m+b\right)}$$

$$a = \frac{0.42747\,R^2\,T_c^2}{P_c}$$

$$b = \frac{0.08664\,R\,T_c}{P_c}$$

_α_ = (1+(0.48508+1.55171 _ω_−0.15613 _ω_²)(1−_T__(_r_)^( 0.5)))²

$$T_r = \frac{T}{T_c}$$

Where ω is the acentric factor for the species.

This formulation for α is due to Graboski and Daubert. The original formulation from Soave is:

_α_ = (1+(0.480+1.574 _ω_−0.176 _ω_²)(1−_T__(_r_)^( 0.5)))²

for hydrogen:

_α_ = 1.202exp (−0.30288 _T__(_r_)).

We can also write it in the polynomial form, with:

$$A = \frac{a\,\alpha\,P}{R^2\,T^2}$$

$$B = \frac{b\,P}{R\,T}$$
then we have:

0 = _Z_³ − _Z_² + _Z_(_A_−_B_−_B_²) − _A__B_ 
where R is the universal gas constant and Z=PV/(RT) is the compressibility factor.

In 1972 G. Soave[6] replaced the 1/ term of the Redlich-Kwong equation with a function α(T,ω) involving the temperature and the acentric factor (the resulting equation is also known as the Soave-Redlich-Kwong equation of state; SRK EOS). The α function was devised to fit the vapor pressure data of hydrocarbons and the equation does fairly well for these materials.

Note especially that this replacement changes the definition of _a_ slightly, as the T_(c) is now to the second power.

Volume translation of Peneloux et al. (1982)

The SRK EOS may be written as

$$p = \frac{R\,T}{V_{m,\text{SRK}} - b} - \frac{a}{V_{m,\text{SRK}} \left(V_{m,\text{SRK}} + b\right)}$$

where

$$\begin{align}
    a &= a_c\, \alpha \\
  a_c &\approx 0.42747\frac{R^2\,T_c^2}{P_c} \\
    b &\approx 0.08664\frac{R\,T_c}{P_c}
\end{align}$$

where α and other parts of the SRK EOS is defined in the SRK EOS section.

A downside of the SRK EOS, and other cubic EOS, is that the liquid molar volume is significantly less accurate than the gas molar volume. Peneloux et alios (1982)[7] proposed a simple correction for this by introducing a volume translation

_V__(_m_, SRK) = _V__(_m_) + _c_

where c is an additional fluid component parameter that translates the molar volume slightly. On the liquid branch of the EOS, a small change in molar volume corresponds to a large change in pressure. On the gas branch of the EOS, a small change in molar volume corresponds to a much smaller change in pressure than for the liquid branch. Thus, the perturbation of the molar gas volume is small. Unfortunately, there are two versions that occur in science and industry.

In the first version only V_(m, SRK) is translated,[8] [9] and the EOS becomes

$$p = \frac{R\,T}{V_m + c - b} - \frac{a}{\left(V_m + c\right) \left(V_m + c + b\right)}$$

In the second version both V_(m, SRK) and b_(SRK) are translated, or the translation of V_(m, SRK) is followed by a renaming of the composite parameter .[10] This gives

$$\begin{align}
  b_\text{SRK} &= b + c \quad \text{or} \quad b - c \curvearrowright b \\
             p &= \frac{R\,T}{V_m - b} - \frac{a}{\left(V_m + c\right) \left(V_m + 2c + b\right)}
\end{align}$$

The c-parameter of a fluid mixture is calculated by

$$c = \sum_{i=1}^n z_i c_i$$

The c-parameter of the individual fluid components in a petroleum gas and oil can be estimated by the correlation

$$c_i \approx 0.40768\ \frac{RT_{ci}}{P_{ci}} \left(0.29441 - Z_{\text{RA},i}\right)$$

where the Rackett compressibility factor Z_(RA, i) can be estimated by

_Z__(RA, _i_) ≈ 0.29056 − 0.08775 _ω__(_i_)

A nice feature with the volume translation method of Peneloux et al. (1982) is that it does not affect the vapor-liquid equilibrium calculations.[11] This method of volume translation can also be applied to other cubic EOSs if the c-parameter correlation is adjusted to match the selected EOS.

Peng–Robinson equation of state

$$\begin{align}
       p &= \frac{R\,T}{V_m - b} - \frac{a\,\alpha}{V_m^2 + 2bV_m - b^2} \\[3pt]
       a &\approx 0.45724 \frac{R^2\,T_c^2}{p_c} \\[3pt]
       b &\approx 0.07780 \frac{R\,T_c}{p_c} \\[3pt]
  \alpha &= \left(1 + \kappa \left(1 - T_r^\frac{1}{2}\right)\right)^2 \\[3pt]
  \kappa &\approx 0.37464 + 1.54226\,\omega - 0.26992\,\omega^2 \\[3pt]
     T_r &= \frac{T}{T_c}
\end{align}$$

In polynomial form:

$$A = \frac{\alpha a p}{R^2\,T^2}$$

$$B = \frac{bp}{RT}$$

_Z_³ − (1 − _B_)_Z_² + (_A_−2_B_−3_B_²)_Z_ − (_A__B_−_B_²−_B_³) = 0

where ω is the acentric factor of the species, R is the universal gas constant and Z = PV/nRT is compressibility factor.

The Peng–Robinson equation of state (PR EOS) was developed in 1976 at The University of Alberta by Ding-Yu Peng and Donald Robinson in order to satisfy the following goals:[12]

1.  The parameters should be expressible in terms of the critical properties and the acentric factor.
2.  The model should provide reasonable accuracy near the critical point, particularly for calculations of the compressibility factor and liquid density.
3.  The mixing rules should not employ more than a single binary interaction parameter, which should be independent of temperature, pressure, and composition.
4.  The equation should be applicable to all calculations of all fluid properties in natural gas processes.

For the most part the Peng–Robinson equation exhibits performance similar to the Soave equation, although it is generally superior in predicting the liquid densities of many materials, especially nonpolar ones.[13] The departure functions of the Peng–Robinson equation are given on a separate article.

The analytic values of its characteristic constants are:

    $Z_c = \frac{1}{32} \left( 11 - 2\sqrt{7} \sinh(\frac{1}{3} \operatorname{asinh}(\frac{13}{7 \sqrt{7}})) \right) \approx 0.307401$
    $b' = \frac{b}{V_{m,c}} = \frac{1}{3} \left( \sqrt{8} \sinh(\frac{1}{3} \operatorname{asinh}(\sqrt{8}) ) - 1 \right) \approx 0.253077 \approx \frac{0.07780}{Z_c}$
    $\frac{P_c V_{m,c}^2}{a\,b'} = \frac{3}{8} \left( 1 + \cosh(\frac{1}{3} \operatorname{acosh}(3) ) \right) \approx 0.816619 \approx \frac{Z_c^2}{0.45724 \, b'}$

Peng–Robinson-Stryjek-Vera equations of state

PRSV1

A modification to the attraction term in the Peng–Robinson equation of state published by Stryjek and Vera in 1986 (PRSV) significantly improved the model's accuracy by introducing an adjustable pure component parameter and by modifying the polynomial fit of the acentric factor.[14]

The modification is:

$$\begin{align}
    \kappa &= \kappa_0 + \kappa_1 \left(1 + T_r^\frac{1}{2}\right) \left(0.7 - T_r\right) \\
  \kappa_0 &= 0.378893+1.4897153\,\omega - 0.17131848\,\omega^2 + 0.0196554\,\omega^3
\end{align}$$

where  κ₁ is an adjustable pure component parameter. Stryjek and Vera published pure component parameters for many compounds of industrial interest in their original journal article. At reduced temperatures above 0.7, they recommend to set  κ₁ = 0 and simply use κ = κ₀. For alcohols and water the value of  κ₁ may be used up to the critical temperature and set to zero at higher temperatures.[15]

PRSV2

A subsequent modification published in 1986 (PRSV2) further improved the model's accuracy by introducing two additional pure component parameters to the previous attraction term modification.[16]

The modification is:

$$\begin{align}
    \kappa &= \kappa_0 + \left[\kappa_1 + \kappa_2\left(\kappa_3 - T_r\right)\left(1 - T_r^\frac{1}{2}\right)\right]\left(1 + T_r^\frac{1}{2}\right) \left(0.7 - T_r\right) \\
  \kappa_0 &= 0.378893 + 1.4897153\,\omega - 0.17131848\,\omega^2 + 0.0196554\,\omega^3
\end{align}$$

where  κ₁,  κ₂, and  κ₃ are adjustable pure component parameters.

PRSV2 is particularly advantageous for VLE calculations. While PRSV1 does offer an advantage over the Peng–Robinson model for describing thermodynamic behavior, it is still not accurate enough, in general, for phase equilibrium calculations.[17] The highly non-linear behavior of phase-equilibrium calculation methods tends to amplify what would otherwise be acceptably small errors. It is therefore recommended that PRSV2 be used for equilibrium calculations when applying these models to a design. However, once the equilibrium state has been determined, the phase specific thermodynamic values at equilibrium may be determined by one of several simpler models with a reasonable degree of accuracy.[18]

One thing to note is that in the PRSV equation, the parameter fit is done in a particular temperature range which is usually below the critical temperature. Above the critical temperature, the PRSV alpha function tends to diverge and become arbitrarily large instead of tending towards 0. Because of this, alternate equations for alpha should be employed above the critical point. This is especially important for systems containing hydrogen which is often found at temperatures far above its critical point. Several alternate formulations have been proposed. Some well known ones are by Twu et all or by Mathias and Copeman.

PENG,-ROBINSON-BABALOLA EQUATION OF STATE:  (PRB)

Babalola [ ] modified the Peng–Robinson Equation of state as:

$P =\left ( \frac{RT}{v-b} \right ) -\left [ \frac{(a_1P+a_2)\alpha}{v(v-b)+b(v-b)} \right ]$

The attractive force parameter ‘a’, which was considered to be a constant with respect to pressure in Peng–Robinson EOS as well as in other EOS was modified by Babalola. The modification, in which parameter ‘a’ was treated as a variable with respect to pressure for multi component multi-phase high density reservoir systems was to improve accuracy in the prediction of properties of complex reservoir fluids for PVT modeling. The variation was represented with a linear equation:

a = a₁P + a₂

where a₁ and a₂ represent the slope and the intercept respectively of the straight line obtained when values of parameter ‘a’ are plotted against pressure.

This modification increases the accuracy of Peng–Robinson equation of state for heavier fluids particularly at pressure ranges (>30MPa) and eliminates the need for tuning the equation of state before use thereby minimizing the cost of using the EOS in the oil industry.

Elliott, Suresh, Donohue equation of state

The Elliott, Suresh, and Donohue (ESD) equation of state was proposed in 1990.[19] The equation seeks to correct a shortcoming in the Peng–Robinson EOS in that there was an inaccuracy in the van der Waals repulsive term. The EOS accounts for the effect of the shape of a non-polar molecule and can be extended to polymers with the addition of an extra term (not shown). The EOS itself was developed through modeling computer simulations and should capture the essential physics of the size, shape, and hydrogen bonding.

$$\frac{p V_m}{RT}=Z=1 + Z^{\rm{rep}} + Z^{\rm{att}}$$

where:

$$Z^{\rm{rep}} = \frac{4 c \eta}{1-1.9 \eta}$$

$$Z^{\rm{att}} = -\frac{z_m q \eta Y}{1+ k_1 \eta Y}$$

and

_c_
is a "shape factor", with c = 1 for spherical molecules

    For non-spherical molecules, the following relation is suggested:

_c_ = 1 + 3.535_ω_ + 0.533_ω_²
where ω is the acentric factor

    The reduced number density η is defined as $\eta=\frac{v^* n}{V}$

where

_v_^(*)
is the characteristic size parameter

_n_
is the number of molecules

_V_
is the volume of the container The characteristic size parameter is related to the shape parameter c through

$$v^*=\frac{kT_c}{P_c}\Phi$$
where

$$\Phi=\frac{0.0312+0.087(c-1)+0.008(c-1)^2}{1.000+2.455(c-1)+0.732(c-1)^2}$$
and k is Boltzmann's constant.

Noting the relationships between Boltzmann's constant and the Universal gas constant, and observing that the number of molecules can be expressed in terms of Avogadro's number and the molar mass, the reduced number density η can be expressed in terms of the molar volume as

$$\eta=\frac{R T_c}{P_c}\Phi\frac{1}{V_m}.$$

The shape parameter q appearing in the Attraction term and the term Y are given by

_q_ = 1 + _k_₃(_c_ − 1)
(and is hence also equal to 1 for spherical molecules).

$$Y=\exp\left(\frac{\epsilon}{kT}\right) - k_2$$

where ϵ is the depth of the square-well potential and is given by

$$\frac{\epsilon}{k} =\frac{1.000+0.945(c-1)+0.134(c-1)^2}{1.023+2.225(c-1)+0.478(c-1)^2}$$

_z__(_m_)
, k₁, k₂ and k₃ are constants in the equation of state:

_z__(_m_) = 9.49
for spherical molecules (c=1)

_k_₁ = 1.7745
for spherical molecules (c=1)

_k_₂ = 1.0617
for spherical molecules (c=1)

_k_₃ = 1.90476.

The model can be extended to associating components and mixtures of nonassociating components. Details are in the paper by J.R. Elliott, Jr. _et al._ (1990).[20]

Cubic-Plus-Association

The Cubic-Plus-Association (CPA) equation of state combines the Soave-Redlich-Kwong equation with an association term from Wertheim theory.[21] The development of the equation began in 1995 as a research project that was funded by Shell, and in 1996 an article was published which presented the CPA equation of state.[22][23]


Non-cubic equations of state

Dieterici equation of state

    $p(V - b) = RTe^{-\frac{a}{RTV}}$

where _a_ is associated with the interaction between molecules and _b_ takes into account the finite size of the molecules, similar to the Van der Waals equation.

The reduced coordinates are:

    $T_c = \frac{a}{4Rb},\ p_c = \frac{a}{4b^2 e^2},\ V_c = 2b.$


Virial equations of state

Virial equation of state

$$\frac{pV_m}{RT} = A + \frac{B}{V_m} + \frac{C}{V_m^2} + \frac{D}{V_m^3} + \dots$$

Although usually not the most convenient equation of state, the virial equation is important because it can be derived directly from statistical mechanics. This equation is also called the Kamerlingh Onnes equation. If appropriate assumptions are made about the mathematical form of intermolecular forces, theoretical expressions can be developed for each of the coefficients. _A_ is the first virial coefficient, which has a constant value of 1 and makes the statement that when volume is large, all fluids behave like ideal gases. The second virial coefficient _B_ corresponds to interactions between pairs of molecules, _C_ to triplets, and so on. Accuracy can be increased indefinitely by considering higher order terms. The coefficients _B_, _C_, _D_, etc. are functions of temperature only.

One of the most accurate equations of state is that from Benedict-Webb-Rubin-Starling[24] shown next. It was very close to a virial equation of state. If the exponential term in it is expanded to two Taylor terms, a virial equation can be derived:

$$p=\rho RT + \left(B_0 RT-A_0 - \frac{C_0}{T^2} + \frac{D_0}{T^3} - \frac{E_0}{T^4}\right) \rho^2 + \left(bRT-a-\frac{d}{T} + \frac{c}{T^2}\right) \rho^3 + \alpha\left(a+\frac{d}{T}\right) \rho^6$$

Note that in this virial equation, the fourth and fifth virial terms are zero. The second virial coefficient is monotonically decreasing as temperature is lowered. The third virial coefficient is monotonically increasing as temperature is lowered.

The BWR equation of state

$$p = \rho RT +
      \left(B_0 RT - A_0 - \frac{C_0}{T^2} + \frac{D_0}{T^3} - \frac{E_0}{T^4}\right) \rho^2 +
      \left(bRT - a - \frac{d}{T}\right) \rho^3 +
      \alpha\left(a + \frac{d}{T}\right) \rho^6 +
      \frac{c\rho^3}{T^2}\left(1 + \gamma\rho^2\right)\exp\left(-\gamma\rho^2\right)$$

where

    _p_ is pressure
    _ρ_ is molar density

Values of the various parameters for 15 substances can be found in


SAFT equations of state

Statistical associating fluid theory (SAFT) equations of state use statistical mechanical methods (in particular perturbation theory) to describe the interactions between molecules in a system.[25] The idea of a SAFT equation of state was first proposed by Chapman et al. in 1989,[26] but since then many different SAFT equations of state have been proposed.[27] Often SAFT equations represent molecules as collections of spherical particles that interact with one another.[28] One popular SAFT equation represents molecules as chains composed of spherical segments (PC-SAFT).[29] In general, SAFT equations give more accurate results than traditional cubic equations of state, especially for systems containing liquids or solids.[30][31]


Multiparameter equations of state

Helmholtz Function form

Multiparameter equations of state (MEOS) can be used to represent pure fluids with high accuracy, in both the liquid and gaseous states. MEOS's represent the Helmholtz function of the fluid as the sum of ideal gas and residual terms. Both terms are explicit in reduced temperature and reduced density - thus:

    \frac{a(T, \rho)}{RT} =

 \frac{a^o(T, \rho) + a^r(T, \rho)}{RT} =
 \alpha^o(\tau, \delta) + \alpha^r(\tau, \delta)

where:

    $\tau = \frac{T_r}{T}, \delta = \frac{\rho}{\rho_r}$

The reduced density and temperature are typically, though not always, the critical values for the pure fluid.

Other thermodynamic functions can be derived from the MEOS by using appropriate derivatives of the Helmholtz function; hence, because integration of the MEOS is not required, there are few restrictions as to the functional form of the ideal or residual terms. Typical MEOS use upwards of 50 fluid specific parameters, but are able to represent the fluid's properties with high accuracy. MEOS are available currently for about 50 of the most common industrial fluids including refrigerants. Mixture models also exist.


Other equations of state of interest

Stiffened equation of state

When considering water under very high pressures, in situations such as underwater nuclear explosions, sonic shock lithotripsy, and sonoluminescence, the stiffened equation of state is often used:

_p_ = _ρ_(_γ_ − 1)_e_ − _γ__p_⁰ 

where e is the internal energy per unit mass, γ is an empirically determined constant typically taken to be about 6.1, and p⁰ is another constant, representing the molecular attraction between water molecules. The magnitude of the correction is about 2 gigapascals (20,000 atmospheres).

The equation is stated in this form because the speed of sound in water is given by c² = γ(p+p⁰)/ρ.

Thus water behaves as though it is an ideal gas that is _already_ under about 20,000 atmospheres (2 GPa) pressure, and explains why water is commonly assumed to be incompressible: when the external pressure changes from 1 atmosphere to 2 atmospheres (100 kPa to 200 kPa), the water behaves as an ideal gas would when changing from 20,001 to 20,002 atmospheres (2000.1 MPa to 2000.2 MPa).

This equation mispredicts the specific heat capacity of water but few simple alternatives are available for severely nonisentropic processes such as strong shocks.

Ultrarelativistic equation of state

An ultrarelativistic fluid has equation of state

_p_ = _ρ__(_m_)_c__(_s_)²

where p is the pressure, ρ_(m) is the mass density, and c_(s) is the speed of sound.

Ideal Bose equation of state

The equation of state for an ideal Bose gas is

$$pV_m =
  RT~\frac{\text{Li}_{\alpha+1}(z)}{\zeta(\alpha)}
  \left(\frac{T}{T_c}\right)^\alpha$$

where α is an exponent specific to the system (e.g. in the absence of a potential field, α = 3/2), _z_ is exp(_μ_/_kT_) where _μ_ is the chemical potential, Li is the polylogarithm, ζ is the Riemann zeta function, and _T__(_c_) is the critical temperature at which a Bose–Einstein condensate begins to form.

Jones–Wilkins–Lee equation of state for explosives (JWL equation)

The EQUATION OF STATE FROM JONES–WILKINS–LEE is used to describe the detonation products of explosives.

$$p = A \left( 1 - \frac{\omega}{R_1 V} \right) \exp(-R_1 V) + B \left( 1 - \frac{\omega}{R_2 V} \right) \exp\left(-R_2 V\right) + \frac{\omega e_0}{V}$$

The ratio V = ρ_(e)/ρ is defined by using ρ_(e) = density of the explosive (solid part) and ρ = density of the detonation products. The parameters A, B, R₁, R₂ and ω are given by several references.[32] In addition, the initial density (solid part) ρ₀, speed of detonation V_(D), Chapman–Jouguet pressure P_(CJ) and the chemical energy of the explosive e₀ are given in such references. These parameters are obtained by fitting the JWL-EOS to experimental results. Typical parameters for some explosives are listed in the table below.

  Material        ρ₀  (g/cm³)   v_(D)  (m/s)   p_(CJ)  (GPa)   A  (GPa)   B  (GPa)   R₁     R₂     ω      e₀  (GPa)
  --------------- ------------- -------------- --------------- ---------- ---------- ------ ------ ------ -----------
  TNT             1.630         6930           21.0            373.8      3.747      4.15   0.90   0.35   6.00
  Composition B   1.717         7980           29.5            524.2      7.678      4.20   1.10   0.35   8.50
  PBX 9501[33]    1.844                        36.3            852.4      18.02      4.55   1.3    0.38   10.2


Equations of state for solids and liquids

Common abbreviations: $\eta = \left(\frac{V}{V_0}\right)^\frac{1}{3}~,~~ K_0^\prime = \frac{dK_0}{dp}$

-   Tait equation for water and other liquids. Several equations are referred to as the TAIT EQUATION.
-   Murnaghan equation of state

$$p(V) = \frac{K_0}{K_0'} \left[\eta^{-3K_0'} - 1\right]$$

-   Birch–Murnaghan equation of state

$$p(V) = \frac{3K_0}{2}
         \left(\frac{1 - \eta^2}{\eta^7}\right)
         \left\{1 + \frac{3}{4}\left(K_0' - 4\right)
         \left(\frac{1 - \eta^2}{\eta^2}\right)\right\}$$

-   STACEY-BRENNAN-IRVINE EQUATION OF STATE[34] (falsely often refer to Rose-Vinet equation of state)

$$p(V) = 3K_0\left(\frac{1 - \eta}{\eta^2}\right)\exp\left[\frac{3}{2}\left(K_0' - 1\right)(1 - \eta)\right]$$

-   MODIFIED RYDBERG EQUATION OF STATE[35][36][37] (more reasonable form for strong compression)

$$p(V) = 3K_0\left(\frac{1 - \eta}{\eta^5}\right)\exp\left[\frac{3}{2}\left(K_0' - 3\right)(1 - \eta)\right]$$

-   ADAPTED POLYNOMIAL EQUATION OF STATE[38] (second order form = AP2, adapted for extreme compression)

$$p(V) = 3K_0\left(\frac{1 - \eta}{\eta^5}\right)\exp\left[c_0(1 - \eta)\right]\left\{1 + c_2\eta(1 - \eta)\right\}$$

    with


  c_0 = -\ln\left(\frac{3K_0}{p_\text{FG0}}\right)~,~~p_\text{FG0}
      = a_0\left(\frac{Z}{V_0}\right)^\frac{5}{3} ~,~~ c_2
      = \frac{3}{2}\left(K_0' - 3\right) - c_0

    where a₀ = 0.02337 GPa.nm⁵. The total number of electrons Z in the initial volume V₀ determines the Fermi gas pressure p_(FG0), which provides for the correct behavior at extreme compression. So far there are no known "simple" solids that require higher order terms.

-   ADAPTED POLYNOMIAL EQUATION OF STATE[39] (third order form = AP3)

$$p(V) = 3K_0\left(\frac{1 - \eta}{\eta^5}\right)\exp\left[c_0(1 - \eta)\right]\left\{1 + c_2\eta(1 - \eta) + c_3\eta(1 - \eta)^2\right\}$$

-   Johnson–Holmquist equation of state

$$p(V) = \begin{cases}
            k_1~\xi + k_2~\xi^2 + k_3~\xi^3 + \Delta p & \qquad \text{Compression} \\
            k_1~\xi  & \qquad \text{Tension}
          \end{cases}
   ~;~~ \xi := \cfrac{V_0}{V}-1$$

-   Mie–Gruneisen equation of state (for a more detailed discussion see ref.[40])

$$p(V) - p_0 = \frac{\Gamma}{V}\left(e - e_0\right)$$

-   Anton-Schmidt equation of state

$$p(V) = - \beta \left(\frac{V}{V_0}\right)^n \ln\left(\frac{V}{V_0}\right)$$

    where β = K₀ is the bulk modulus at equilibrium volume V₀ and $n = -\frac{K'_0}{2}$ typically about −2 is often related to the Grüneisen parameter by $n = -\frac{1}{6} - \gamma_G$


See also

-   Gas laws
-   Departure function
-   Table of thermodynamic equations
-   Real gas
-   Cluster Expansion


References


External link

-   Elliot & Lira, (1999). _Introductory Chemical Engineering Thermodynamics_, Prentice Hall.

Category:Concepts in physics Category:Engineering thermodynamics Category:Mechanical engineering Category:Fluid mechanics Equations_of_state Category:Thermodynamic models

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

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]