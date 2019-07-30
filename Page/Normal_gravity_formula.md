NORMAL GRAVITY FORMULAS are mathematical expressions, with which the free-fall acceleration at a point in vicinity to the surface of the earth can be estimated. Along with the mass (known or predicted) of a body, the weight is calculated.


Normal gravity

The acceleration due to gravity depends on the gravity of the mass, which rests inside of the object. The gravity decreases at longer distance between centers of mass. The acceleration due to gravity furthermore is influenced by the rotation of the earth. As centrifugal force increases at longer earth's axis distance, thus centrifugal force is highest at the equator and lowest the poles.

The formulas for calculating the normal gravity is based on the assumption of an imagined rotationally symmetrical ellipsoid model of the earth, the surface of which is identical to an equipotential surface. Consequently this formula depends only on the geographical latitude and the elevation of geographical location.


Somigliana Formula

For the normal gravity γ₀ of the sea level ellipsoid, i.e. elevation  h = 0, this formula by Somigliana (1929) applies (after Carlo Somigliana (1860–1955)[1]):

$$\gamma_0(\varphi) = \frac{a \cdot \gamma_a \cdot \cos^2 \varphi + b \cdot \gamma_b \cdot \sin^2 \varphi}{\sqrt{a^2 \cdot \cos^2 \varphi + b^2 \cdot \sin^2 \varphi}}$$

with

-   γ_(a) = Normal gravity at Equator
-   γ_(b) = Normal gravity at Poles
-   _a_ = semi-major axis (Equator radius)
-   _b_ = semi-minor axis (Pole radius)
-   φ = latitude

Due to numerical issues, the formula is simplified into this:

$$\gamma_0 (\varphi) = \gamma_a \cdot \frac{1+p\cdot \sin^2\varphi}{\sqrt{1 - e^2 \cdot \sin^2 \varphi}}$$

with

-   $p = \frac{b \cdot \gamma_b}{a \cdot \gamma_a} - 1$
-   $e^2 = 1 - \frac{b^2}{a^2}; \quad e$ is the eccentricity

For the Geodetic Reference System 1980 (GRS 80) the parameters are set to these values:

_a_ = 6 378 137 _m_    _b_ = 6 356 752.314 1 _m_

$$\gamma_a = 9{.}780\,326\,771\,5 \, \mathrm{\frac{m}{s^2}} \quad \gamma_b = 9{.}832\,186\,368\,5 \, \mathrm{\frac{m}{s^2}}$$
 ⇒ p = 1.931 851 353 ⋅ 10^( − 3) e² = 6.694 380 022 90 ⋅ 10^( − 3)


Approximation formula from series expansions

The Somigliana formula was approximated through different series expansions, following this scheme:

_γ_₀(_φ_) = _γ__(_a_) ⋅ (1 + _β_ ⋅ sin²_φ_ + _β_₁ ⋅ sin²2_φ_ + …)

International gravity formula 1930

The normal gravity formula by Gino Cassinis was determined in 1930 by International Union of Geodesy and Geophysics as international gravity formula along with Hayford ellipsoid. The parameters are:

$$\gamma_a = 9{.}78049 \frac{\mathrm{m}}{\mathrm{s}^2} \quad \beta = 5{.}2884 \cdot 10^{-3} \quad \beta_1 = -5{.}9 \cdot 10^{-6}$$

In the course of time the values were improved again with newer knowledge and more exact measurement methods.

Harold Jeffreys improved the values in 1948 at:

$$\gamma_a = 9{.}780373 \frac{\mathrm{m}}{\mathrm{s}^2} \quad \beta = 5{.}2891 \cdot 10^{-3} \quad \beta_1 = -5{.}9 \cdot 10^{-6}$$

International gravity formula 1967

The normal gravity formula of Geodetic Reference System 1967 is defined with the values:

$$\gamma_a = 9{.}780318 \frac{\mathrm{m}}{\mathrm{s}^2} \quad \beta = 5{.}3024 \cdot 10^{-3} \quad \beta_1 = -5{.}9 \cdot 10^{-6}$$

International gravity formula 1980

From the parameters of GRS 80 comes the classic series expansion:

$$\gamma_a = 9{.}780327 \frac{\mathrm{m}}{\mathrm{s}^2} \quad \beta = 5{.}3024 \cdot 10^{-3} \quad \beta_1 = -5{.}8 \cdot 10^{-6}$$

The accuracy is about ±10^(−6) m/s².

With GRS 80 the following series expansion is also introduced:

_γ_₀(_φ_) = _γ__(_a_) ⋅ (1 + _c_₁ ⋅ sin²_φ_ + _c_₂ ⋅ sin⁴_φ_ + _c_₃ ⋅ sin⁶_φ_ + _c_₄ ⋅ sin⁸_φ_ + …)

As such the parameters are:

-   _c_₁ = 5.279 0414·10^(−3)
-   _c_₂ = 2.327 18·10^(−5)
-   _c_₃ = 1.262·10^(−7)
-   _c_₄ = 7·10^(−10)

The accuracy is at about ±10^(−9) m/s² exact. When the exactness is not required, the terms at further back can be omitted. But it is recommended to use this finalized formula.


Height dependence

Cassinis determined the height dependence, as:

    $g(\varphi, h) = g_0(\varphi) - \left( 3{.}08 \cdot 10^{-6} \, \frac{1}{\mathrm{s}^2} - 4{.}19 \cdot 10^{-7} \, \frac{\mathrm{cm}^3}{\mathrm{g}\cdot \mathrm{s}^2} \cdot \rho \right) \cdot h$

The average rock density ρ is no longer considered.

Since GRS 1967 the dependence on the ellipsoidal elevation _h_ is:

$$\begin{align}
g(\varphi, h) & = g_0(\varphi) - \left( 1 - 1{.}39 \cdot 10^{-3} \cdot \sin^2(\varphi) \right) \cdot 3{.}0877 \cdot 10^{-6} \, \frac{1}{\mathrm{s}^2} \cdot h + 7{.}2 \cdot 10^{-13} \, \frac{1}{\mathrm{m} \cdot \mathrm{s}^2} \cdot h^2\\
              & = g_0(\varphi) - \left( 3{.}0877 \cdot 10^{-6} - 4{.}3 \cdot 10^{-9} \cdot \sin^2(\varphi) \right) \, \frac{1}{\mathrm{s}^2} \cdot h + 7{.}2 \cdot 10^{-13} \, \frac{1}{\mathrm{m} \cdot \mathrm{s}^2} \cdot h^2
\end{align}$$

Another expression is:

_g_(_φ_, _h_) = _g_₀(_φ_) ⋅ (1 − (_k_₁ − _k_₂ ⋅ sin²_φ_) ⋅ _h_ + _k_₃ ⋅ _h_²)

with the parameters derived from GSR80:

-   k₁ = 2 ⋅ (1 + f + m)/a = 3.157 04 ⋅ 10^( − 7) m^( − 1)
-   k₂ = 4 ⋅ f/a = 2.102 69 ⋅ 10^( − 9) m^( − 1)
-   k₃ = 3/(a²) = 7.374 52 ⋅ 10^( − 14) m^( − 2)

This adjustment is about right for common heights in Aviation; But for heights up to outer space (over ca. 100 kilometers) it is out of range.


WELMEC formula

In all German standards offices the free-fall acceleration _g_ is calculated in respect to the average latitude φ and the average height above sea level _h_ with the WELMEC–Formel:

$$g(\varphi, h) = \left( 1 + 0{.}0053024 \cdot \sin^2(\varphi) - 0{.}0000058 \cdot \sin^2(2 \varphi) \right) \cdot 9{.}780318 \frac{\mathrm{m}}{\mathrm{s}^2} - 0{.}000003085 \, \frac{1}{\mathrm{s}^2} \cdot h$$

The formula is based on the International gravity formula from 1967.

The scale of free-fall acceleration at a certain place must be determined with precision measurement of several mechanical magnitudes. Weighing scales, the mass of which does measurement because of the weight, relies on the free-fall acceleration, thus for use they must be prepared with different constants in different places of use. Through the concept of so-called gravity zones, which are divided with the use of normal gravity, a weighing scale can be calibrated by the manufacturer before use.[2]


Example

_Free-fall acceleration in Schweinfurt:_

_Data:_

-   Latitude: 50° 3′ 24″ = 50.0567°
-   Height above sea level: 229.7 m
-   Density of the rock plates: ca. 2.6 g/cm³
-   Measured free-fall acceleration: g = 9.8100 ± 0.0001 m/s²

_Free-fall acceleration, calculated through normal gravity formulas:_

-   Cassinis: _g_ = 9.81038 m/s²
-   Jeffreys: _g_ = 9.81027 m/s²
-   WELMEC: _g_ = 9.81004 m/s²


Books

-   Wolfgang Torge: _Geodäsie_. 2. Auflage. Walter de Gruyter, Berlin u.a. 2003.
-   Wolfgang Torge: _Geodäsie_. Walter de Gruyter, Berlin u.a. 1975


References


Links

-   _Definition des Geodetic Reference System 1980 (GRS80)_ (pdf, engl.; 70 kB)
-   Gravity Information System der Physikalisch-Technischen Bundesanstalt, engl.
-   Online-Berechnung der Normalschwere mit verschiedenen Normalschwereformeln

Category:Geodesy Category:Geophysics

[1] Biografie Somiglianas (ital.)

[2]  700kB