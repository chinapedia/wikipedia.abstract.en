In engineering and science, DIMENSIONAL ANALYSIS is the analysis of the relationships between different physical quantities by identifying their base quantities (such as length, mass, time, and electric charge) and units of measure (such as miles vs. kilometers, or pounds vs. kilograms) and tracking these dimensions as calculations or comparisons are performed. The conversion of units from one dimensional unit to another is often somewhat complex. Dimensional analysis, or more specifically the FACTOR-LABEL METHOD, also known as the UNIT-FACTOR METHOD, is a widely used technique for such conversions using the rules of algebra.[1][2][3]

The concept of PHYSICAL DIMENSION was introduced by Joseph Fourier in 1822.[4] Physical quantities that are of the same kind (also called _commensurable_) (e.g., length or time or mass) have the same dimension and can be directly compared to other physical quantities of the same kind (i.e., length or time or mass, resp.), even if they are originally expressed in differing units of measure (such as yards and meters). If physical quantities have different dimensions (such as length vs. mass), they cannot be expressed in terms of similar units and cannot be compared in quantity (also called _incommensurable_). For example, asking whether a kilogram is larger than an hour is meaningless.

Any physically meaningful equation (and any inequality) will have the same dimensions on its left and right sides, a property known as _dimensional homogeneity_. Checking for dimensional homogeneity is a common application of dimensional analysis, serving as a plausibility check on derived equations and computations. It also serves as a guide and constraint in deriving equations that may describe a physical system in the absence of a more rigorous derivation.


Concrete numbers and base units

Many parameters and measurements in the physical sciences and engineering are expressed as a concrete number – a numerical quantity and a corresponding dimensional unit. Often a quantity is expressed in terms of several other quantities; for example, speed is a combination of length and time, e.g. 60 miles per hour or 1.4 kilometers per second. Compound relations with "per" are expressed with division, e.g. 60 mi/1 h. Other relations can involve multiplication (often shown with a centered dot or juxtaposition), powers (like m² for square meters), or combinations thereof.

A set of base units for a system of measurement is a conventionally chosen set of units, none of which can be expressed as a combination of the others, and in terms of which all the remaining units of the system can be expressed.[5] For example, units for length and time are normally chosen as base units. Units for volume, however, can be factored into the base units of length (m³), thus they are considered derived or compound units.

Sometimes the names of units obscure the fact that they are derived units. For example, a newton (N) is a unit of force, which will have units of mass (kg) times acceleration (m⋅s^(−2)). The newton is defined as .

Percentages and derivatives

Percentages are dimensionless quantities, since they are ratios of two quantities with the same dimensions. In other words, the % sign can be read as "hundredths", since .

Taking a derivative with respect to a quantity adds the dimension of the variable one is differentiating with respect to, in the denominator. Thus:

-   position (_x_) has the dimension L (length);
-   derivative of position with respect to time (_dx_/_dt_, velocity) has dimension LT^(−1) – length from position, time due to the derivative;
-   the second derivative (_d_²_x_/_dt_² = _d_(_dx_/_dt_) / _dt_, acceleration) has dimension LT^(−2).

In economics, one distinguishes between stocks and flows: a stock has units of "units" (say, widgets or dollars), while a flow is a derivative of a stock, and has units of "units/time" (say, dollars/year).

In some contexts, dimensional quantities are expressed as dimensionless quantities or percentages by omitting some dimensions. For example, debt-to-GDP ratios are generally expressed as percentages: total debt outstanding (dimension of currency) divided by annual GDP (dimension of currency) – but one may argue that in comparing a stock to a flow, annual GDP should have dimensions of currency/time (dollars/year, for instance), and thus Debt-to-GDP should have units of years, which indicates that Debt-to-GDP is the number of years needed for a constant GDP to pay the debt, if all GDP is spent on the debt and the debt is otherwise unchanged.


Conversion factor

In dimensional analysis, a ratio which converts one unit of measure into another without changing the quantity is called a conversion factor. For example, kPa and bar are both units of pressure, and . The rules of algebra allow both sides of an equation to be divided by the same expression, so this is equivalent to . Since any quantity can be multiplied by 1 without changing it, the expression "" can be used to convert from bars to kPa by multiplying it with the quantity to be converted, including units. For example, because , and bar/bar cancels out, so .


Dimensional homogeneity

The most basic rule of dimensional analysis is that of dimensional homogeneity.[6]



        1. '''Only commensurable quantities (physical quantities having the same dimension) may be _compared,_ _equated,_ _added,_ or _subtracted._ '''

However, the dimensions form an abelian group under multiplication, so:



        2. ONE MAY TAKE _RATIOS_ OF _INCOMMENSURABLE_ QUANTITIES (QUANTITIES WITH DIFFERENT DIMENSIONS), AND _MULTIPLY_ OR _DIVIDE_ THEM.

For example, it makes no sense to ask whether 1 hour is more, the same, or less than 1 kilometer, as these have different dimensions, nor to add 1 hour to 1 kilometer. However, it makes perfect sense to ask whether 1 mile is more, the same, or less than 1 kilometer being the same dimension of physical quantity even though the units are different. On the other hand, if an object travels 100 km in 2 hours, one may divide these and conclude that the object's average speed was 50 km/h.

The rule implies that in a physically meaningful _expression_ only quantities of the same dimension can be added, subtracted, or compared. For example, if _m__(man), _m__(rat) and _L__(man) denote, respectively, the mass of some man, the mass of a rat and the length of that man, the dimensionally homogeneous expression is meaningful, but the heterogeneous expression is meaningless. However, _m__(man)/_L_²_(man) is fine. Thus, dimensional analysis may be used as a sanity check of physical equations: the two sides of any equation must be commensurable or have the same dimensions.

This has the implication that most mathematical functions, particularly the transcendental functions must have a dimensionless quantity, a pure number, as the argument and must return a dimensionless number as a result. This is clear because many transcendental functions can be expressed as an infinite power series with dimensionless coefficients.

    $f(x) = \sum_{n=0}^\infty a_n x^n = a_0 + a_1 x + a_2 x^2 + a_3 x^3 + \cdots$

All powers of _x_ must have the same dimension for the terms to be commensurable. But if _x_ is not dimensionless, then the different powers of _x_ will have different, incommensurable dimensions. However, power functions including root functions may have a dimensional argument and will return a result having dimension that is the same power applied to the argument dimension. This is because power functions and root functions are, loosely, just an expression of multiplication of quantities.

Even when two physical quantities have identical dimensions, it may nevertheless be meaningless to compare or add them. For example, although torque and energy share the dimension , they are fundamentally different physical quantities.

To compare, add, or subtract quantities with the same dimensions but expressed in different units, the standard procedure is first to convert them all to the same units. For example, to compare 32 metres with 35 yards, use 1 yard = 0.9144 m to convert 35 yards to 32.004 m.

A related principle is that any physical law that accurately describes the real world must be independent of the units used to measure the physical variables.[7] For example, Newton's laws of motion must hold true whether distance is measured in miles or kilometers. This principle gives rise to the form that conversion factors must take between units that measure the same dimension: multiplication by a simple constant. It also ensures equivalence; for example, if two buildings are the same height in feet, then they must be the same height in meters.


The factor-label method for converting units

The factor-label method is the sequential application of conversion factors expressed as fractions and arranged so that any dimensional unit appearing in both the numerator and denominator of any of the fractions can be cancelled out until only the desired set of dimensional units is obtained. For example, 10 miles per hour can be converted to meters per second by using a sequence of conversion factors as shown below:

    $\frac{10\ \cancel{\text{mile}}}{1\ \cancel{\text{hour}}} \times \frac{1609.344\text{ meter}}{1\ \cancel{\text{mile}}} \times \frac{1\ \cancel{\text{hour}}}{3600\text{ second}} = 4.4704\ \frac{\text{meter}}{\text{second}}.$

Each conversion factor is chosen based on the relationship between one of the original units and one of the desired units (or some intermediary unit), before being re-arranged to create a factor that cancels out the original unit. For example, as "mile" is the numerator in the original fraction and 1 mile = 1609.344 meter, "mile" will need to be the denominator in the conversion factor. Dividing both sides of the equation by 1 mile yields $\frac{1\ \text{mile}}{1\ \text{mile}} = \frac{1609.344\ \text{meter}}{1\ \text{mile}}$, which when simplified results in the dimensionless $1 = \frac{1609.344\ \text{meter}}{1\ \text{mile}}$. Multiplying any quantity (physical quantity or not) by the dimensionless 1 does not change that quantity. Once this and the conversion factor for seconds per hour have been multiplied by the original fraction to cancel out the units _mile_ and _hour_, 10 miles per hour converts to 4.4704 meters per second.

As a more complex example, the concentration of nitrogen oxides (i.e., $\color{Blue}\ce{NO}_x$) in the flue gas from an industrial furnace can be converted to a mass flow rate expressed in grams per hour (i.e., g/h) of $\ce{NO}_x$ by using the following information as shown below:

NO_(x) concentration := 10 parts per million by volume = 10 ppmv = 10 volumes/10⁶ volumes
NO_(x) molar mass := 46 kg/kmol = 46 g/mol
Flow rate of flue gas := 20 cubic meters per minute = 20 m³/min
    The flue gas exits the furnace at 0 °C temperature and 101.325 kPa absolute pressure.
    The molar volume of a gas at 0 °C temperature and 101.325 kPa is 22.414 m³/kmol.



\frac{1000\ \ce{g\ NO}_x}{1 \cancel{\ce{kg\ NO}_x}} \times \frac{46\ \cancel{\ce{kg\ NO}_x}}{1\ \cancel{\ce{kmol\ NO}_x}} \times \frac{1\ \cancel{\ce{kmol\ NO}_x}}{22.414\ \cancel{\ce{m}^3\ \ce{NO}_x}} \times \frac{10\ \cancel{\ce{m}^3\ \ce{NO}_x}}{10^6\ \cancel{\ce{m}^3\ \ce{gas}}} \times \frac{20\ \cancel{\ce{m}^3\ \ce{gas}}}{1\ \cancel{\ce{minute}}} \times \frac{60\ \cancel{\ce{minute}}}{1\ \ce{hour}} = 24.63\ \frac{\ce{g\ NO}_x}{\ce{hour}}

After canceling out any dimensional units that appear both in the numerators and denominators of the fractions in the above equation, the NO_(x) concentration of 10 ppm_(v) converts to mass flow rate of 24.63 grams per hour.

Checking equations that involve dimensions

The factor-label method can also be used on any mathematical equation to check whether or not the dimensional units on the left hand side of the equation are the same as the dimensional units on the right hand side of the equation. Having the same units on both sides of an equation does not ensure that the equation is correct, but having different units on the two sides (when expressed in terms of base units) of an equation implies that the equation is wrong.

For example, check the Universal Gas Law equation of , when:

-   the pressure _P_ is in pascals (Pa)
-   the volume _V_ is in cubic meters (m³)
-   the amount of substance _n_ is in moles (mol)
-   the universal gas law constant _R_ is 8.3145 Pa⋅m³/(mol⋅K)
-   the temperature _T_ is in kelvins (K)

    \ce{Pa.m^3} = \frac{\cancel{\ce{mol}}}{1} \times

\frac{\ce{Pa.m^3}}{\cancel{\ce{mol}}\ \cancel{\ce{K}}} \times \frac{\cancel{\ce{K}}}{1}

As can be seen, when the dimensional units appearing in the numerator and denominator of the equation's right hand side are cancelled out, both sides of the equation have the same dimensional units. Dimensional analysis can be used as a tool to construct equations that relate non-associated physico-chemical properties. The equations may reveal hitherto unknown or overlooked properties of matter, in the form of left-over dimensions — dimensional adjusters — that can then be assigned physical significance. It is important to point out that such ‘mathematical manipulation’ is neither without prior precedent, nor without considerable scientific significance, indeed, the Planck’s constant; a fundamental constant of the universe, was ‘discovered’ as a purely mathematical abstraction or representation that built on the Rayleigh-Jeans Equation for preventing the ultraviolet catastrophe. It was assigned and ascended to its quantum physical significance either in tandem or post mathematical dimensional adjustment – not earlier.

Limitations

The factor-label method can convert only unit quantities for which the units are in a linear relationship intersecting at 0. Most units fit this paradigm. An example for which it cannot be used is the conversion between degrees Celsius and kelvins (or degrees Fahrenheit). Between degrees Celsius and kelvins, there is a constant difference rather than a constant ratio, while between degrees Celsius and degrees Fahrenheit there is neither a constant difference nor a constant ratio. There is, however, an affine transform (x ↦ ax + b, rather than a linear transform x ↦ ax) between them.

For example, the freezing point of water is 0 °C and 32 °F, and a 5 °C change is the same as a 9 °F change. Thus, to convert from units of Fahrenheit to units of Celsius, one subtracts 32 °F (the offset from the point of reference), divides by 9 °F and multiplies by 5 °C (scales by the ratio of units), and adds 0 °C (the offset from the point of reference). Reversing this yields the formula for obtaining a quantity in units of Celsius from units of Fahrenheit; one could have started with the equivalence between 100 °C and 212 °F, though this would yield the same formula at the end.

Hence, to convert the numerical quantity value of a temperature _T_[F] in degrees Fahrenheit to a numerical quantity value _T_[C] in degrees Celsius, this formula may be used:

    _T_[C] = (_T_[F] − 32) × 5/9.

To convert _T_[C] in degrees Celsius to _T_[F] in degrees Fahrenheit, this formula may be used:

    _T_[F] = (_T_[C] × 9/5) + 32.


Applications

Dimensional analysis is most often used in physics and chemistry – and in the mathematics thereof – but finds some applications outside of those fields as well.

Mathematics

A simple application of dimensional analysis to mathematics is in computing the form of the volume of an _n_-ball (the solid ball in _n_ dimensions), or the area of its surface, the _n_-sphere: being an _n_-dimensional figure, the volume scales as x^(n), while the surface area, being (n − 1)-dimensional, scales as x^(n − 1). Thus the volume of the _n_-ball in terms of the radius is C_(n)r^(n), for some constant C_(n). Determining the constant takes more involved mathematics, but the form can be deduced and checked by dimensional analysis alone.

Finance, economics, and accounting

In finance, economics, and accounting, dimensional analysis is most commonly referred to in terms of the distinction between stocks and flows. More generally, dimensional analysis is used in interpreting various financial ratios, economics ratios, and accounting ratios.

-   For example, the P/E ratio has dimensions of time (units of years), and can be interpreted as "years of earnings to earn the price paid".
-   In economics, debt-to-GDP ratio also has units of years (debt has units of currency, GDP has units of currency/year).
-   More surprisingly, bond duration also has units of years, which can be shown by dimensional analysis, but takes some financial intuition to understand.
-   Velocity of money has units of 1/years (GDP/money supply has units of currency/year over currency): how often a unit of currency circulates per year.
-   Interest rates are often expressed as a percentage, but more properly percent per annum, which has dimensions of 1/years.

Fluid mechanics

In fluid mechanics, dimensional analysis is performed in order to obtain dimensionless Pi terms or groups. According to the principles of dimensional analysis, any prototype can be described by a series of these terms or groups that describe the behaviour of the system. Using suitable Pi terms or groups, it is possible to develop a similar set of Pi terms for a model that has the same dimensional relationships.[8] In other words, Pi terms provide a shortcut to developing a model representing a certain prototype. Common dimensionless groups in fluid mechanics include:

-   Reynolds number (Re), generally important in all types of fluid problems:

        $\mathrm{Re} = \frac{\rho\,Vd}{\mu}$.

-   Froude number (Fr), modeling flow with a free surface:

        $\mathrm{Fr} = \frac{V}{\sqrt{g\,L}}.$

-   Euler number (Eu), used in problems in which pressure is of interest:

        $\mathrm{Eu} = \frac{\Delta p}{\rho V^2}.$

-   Mach number (M), important high speed flows where the velocity approaches or exceeds the local speed of sound:

        $\mathrm{M} = \frac{V}{c},$ where: is the local speed of sound.


History

The origins of dimensional analysis have been disputed by historians.[9][10] The 19th-century French mathematician Joseph Fourier is generally credited with having made important contributions[11] based on the idea that physical laws like [[Newton's_second_law|{\text{time}} = \frac{\mathsf{L}}{\mathsf{T}} = \mathsf{LT}^{-1} and the dimension of the physical quantity force _F_ is

$$\text{dim}~F = \text{mass} \times \text{acceleration} = \text{mass} \times \frac{\text{length}}{\text{time}^2} = \frac{\mathsf{ML}}{\mathsf{T}^2} = \mathsf{MLT}^{-2}$$

The unit chosen to express a physical quantity and its dimension are related, but not identical concepts. The units of a physical quantity are defined by convention and related to some standard; e.g., length may have units of metres, feet, inches, miles or micrometres; but any length always has a dimension of L, no matter what units of length are chosen to express it. Two different units of the same physical quantity have conversion factors that relate them. For example, 1 in = 2.54 cm; in this case (2.54 cm/in) is the conversion factor, which is itself dimensionless. Therefore, multiplying by that conversion factor does not change the dimensions of a physical quantity.

There are also physicists that have cast doubt on the very existence of incompatible fundamental dimensions of physical quantity,[12] although this does not invalidate the usefulness of dimensional analysis.

Mathematical properties

The dimensions that can be formed from a given collection of basic physical dimensions, such as M, L, and T, form an abelian group: The identity is written as 1; , and the inverse to L is 1/L or L^(−1). L raised to any rational power _p_ is a member of the group, having an inverse of L^(−_p_) or 1/L^(p). The operation of the group is multiplication, having the usual rules for handling exponents ().

This group can be described as a vector space over the rational numbers, with for example dimensional symbol M^(_i_)L^(_j_)T^(_k_) corresponding to the vector . When physical measured quantities (be they like-dimensioned or unlike-dimensioned) are multiplied or divided by one other, their dimensional units are likewise multiplied or divided; this corresponds to addition or subtraction in the vector space. When measurable quantities are raised to a rational power, the same is done to the dimensional symbols attached to those quantities; this corresponds to scalar multiplication in the vector space.

A basis for such a vector space of dimensional symbols is called a set of base quantities, and all other vectors are called derived units. As in any vector space, one may choose different bases, which yields different systems of units (e.g., choosing whether the unit for charge is derived from the unit for current, or vice versa).

The group identity 1, the dimension of dimensionless quantities, corresponds to the origin in this vector space.

The set of units of the physical quantities involved in a problem correspond to a set of vectors (or a matrix). The nullity describes some number (e.g., _m_) of ways in which these vectors can be combined to produce a zero vector. These correspond to producing (from the measurements) a number of dimensionless quantities, {π₁, ..., π_(_m_)}. (In fact these ways completely span the null subspace of another different space, of powers of the measurements.) Every possible way of multiplying (and exponentiating) together the measured quantities to produce something with the same units as some derived quantity _X_ can be expressed in the general form

$$X = \prod_{i=1}^m (\pi_i)^{k_i}\,.$$

Consequently, every possible commensurate equation for the physics of the system can be rewritten in the form

_f_(_π_₁, _π_₂, ..., _π__(_m_)) = 0 .

Knowing this restriction can be a powerful tool for obtaining new insight into the system.

Mechanics

The dimension of physical quantities of interest in mechanics can be expressed in terms of base dimensions M, L, and T – these form a 3-dimensional vector space. This is not the only valid choice of base dimensions, but it is the one most commonly used. For example, one might choose force, length and mass as the base dimensions (as some have done), with associated dimensions F, L, M; this corresponds to a different basis, and one may convert between these representations by a change of basis. The choice of the base set of dimensions is thus a convention, with the benefit of increased utility and familiarity. The choice of base dimensions is not arbitrary, because the dimensions must form a basis: they must span the space, and be linearly independent.

For example, F, L, M form a set of fundamental dimensions because they form a basis that is equivalent to M, L, T: the former can be expressed as [F = ML/T²], L, M, while the latter can be expressed as M, L, [T = (ML/F)^(1/2)].

On the other hand, length, velocity and time do not form a set of as base dimensions, for two reasons:

-   There is no way to obtain mass – or anything derived from it, such as force – without introducing another base dimension (thus, they do not _span the space_).
-   Velocity, being expressible in terms of length and time (V = L/T), is redundant (the set is not _linearly independent_).

Other fields of physics and chemistry

Depending on the field of physics, it may be advantageous to choose one or another extended set of dimensional symbols. In electromagnetism, for example, it may be useful to use dimensions of M, L, T, and Q, where Q represents the dimension of electric charge. In thermodynamics, the base set of dimensions is often extended to include a dimension for temperature, Θ. In chemistry, the amount of substance (the number of molecules divided by the Avogadro constant, ≈ ) is defined as a base dimension, N, as well. In the interaction of relativistic plasma with strong laser pulses, a dimensionless relativistic similarity parameter, connected with the symmetry properties of the collisionless Vlasov equation, is constructed from the plasma-, electron- and critical-densities in addition to the electromagnetic vector potential. The choice of the dimensions or even the number of dimensions to be used in different fields of physics is to some extent arbitrary, but consistency in use and ease of communications are common and necessary features.

Polynomials and transcendental functions

Scalar arguments to transcendental functions such as exponential, trigonometric and logarithmic functions, or to inhomogeneous polynomials, must be dimensionless quantities. (Note: this requirement is somewhat relaxed in Siano's orientational analysis described below, in which the square of certain dimensioned quantities are dimensionless.)

While most mathematical identities about dimensionless numbers translate in a straightforward manner to dimensional quantities, care must be taken with logarithms of ratios: the identity log(a/b) = log a − log b, where the logarithm is taken in any base, holds for dimensionless numbers a and b, but it does _not_ hold if a and b are dimensional, because in this case the left-hand side is well-defined but the right-hand side is not.

Similarly, while one can evaluate monomials (_x_^(_n_)) of dimensional quantities, one cannot evaluate polynomials of mixed degree with dimensionless coefficients on dimensional quantities: for _x_², the expression (3 m)² = 9 m² makes sense (as an area), while for _x_² + _x_, the expression (3 m)² + 3 m = 9 m² + 3 m does not make sense.

However, polynomials of mixed degree can make sense if the coefficients are suitably chosen physical quantities that are not dimensionless. For example,

$$\frac{1}{2} \cdot \left(-32\ \frac{\text{foot}}{\text{second}^2}\right) \cdot t^2 + \left(500\ \frac{\text{foot}}{\text{second}}\right) \cdot t.$$

This is the height to which an object rises in time _t_ if the acceleration of gravity is 32 feet per second per second and the initial upward speed is 500 feet per second. It is not even necessary for _t_ to be in _seconds_. For example, suppose _t_ = 0.01 minutes. Then the first term would be

$$\begin{align}
      &\frac{1}{2} \cdot \left(-32\ \frac{\text{foot}}{\text{second}^2}\right) \cdot (0.01 \text{ minute})^2 \\[10pt]
  ={} &\frac{1}{2} \cdot -32 \cdot \left(0.01^2\right) \left(\frac{\text{minute}}{\text{second}}\right)^2 \cdot \text{foot} \\[10pt]
  ={} &\frac{1}{2} \cdot -32 \cdot \left(0.01^2\right) \cdot 60^2 \cdot \text{foot}.
\end{align}$$

Incorporating units

The value of a dimensional physical quantity _Z_ is written as the product of a unit [_Z_] within the dimension and a dimensionless numerical factor, _n_.[13]

_Z_ = _n_ × [_Z_] = _n_[_Z_]

When like-dimensioned quantities are added or subtracted or compared, it is convenient to express them in consistent units so that the numerical values of these quantities may be directly added or subtracted. But, in concept, there is no problem adding quantities of the same dimension expressed in different units. For example, 1 meter added to 1 foot is a length, but one cannot derive that length by simply adding 1 and 1. A conversion factor, which is a ratio of like-dimensioned quantities and is equal to the dimensionless unity, is needed:

$$1 \ \mbox{ft} = 0.3048 \ \mbox{m} \$$
is identical to $1 = \frac{0.3048 \ \mbox{m}}{1 \ \mbox{ft}}.\$

The factor $0.3048 \ \frac{\mbox{m}}{\mbox{ft}}$ is identical to the dimensionless 1, so multiplying by this conversion factor changes nothing. Then when adding two quantities of like dimension, but expressed in different units, the appropriate conversion factor, which is essentially the dimensionless 1, is used to convert the quantities to identical units so that their numerical values can be added or subtracted.

Only in this manner is it meaningful to speak of adding like-dimensioned quantities of differing units.

Position vs displacement

Some discussions of dimensional analysis implicitly describe all quantities as mathematical vectors. (In mathematics scalars are considered a special case of vectors; vectors can be added to or subtracted from other vectors, and, inter alia, multiplied or divided by scalars. If a vector is used to define a position, this assumes an implicit point of reference: an origin. While this is useful and often perfectly adequate, allowing many important errors to be caught, it can fail to model certain aspects of physics. A more rigorous approach requires distinguishing between position and displacement (or moment in time versus duration, or absolute temperature versus temperature change).

Consider points on a line, each with a position with respect to a given origin, and distances among them. Positions and displacements all have units of length, but their meaning is not interchangeable:

-   adding two displacements should yield a new displacement (walking ten paces then twenty paces gets you thirty paces forward),
-   adding a displacement to a position should yield a new position (walking one block down the street from an intersection gets you to the next intersection),
-   subtracting two positions should yield a displacement,
-   but one may _not_ add two positions.

This illustrates the subtle distinction between _affine_ quantities (ones modeled by an affine space, such as position) and _vector_ quantities (ones modeled by a vector space, such as displacement).

-   Vector quantities may be added to each other, yielding a new vector quantity, and a vector quantity may be added to a suitable affine quantity (a vector space _acts on_ an affine space), yielding a new affine quantity.
-   Affine quantities cannot be added, but may be subtracted, yielding _relative_ quantities which are vectors, and these _relative differences_ may then be added to each other or to an affine quantity.

Properly then, positions have dimension of _affine_ length, while displacements have dimension of _vector_ length. To assign a number to an _affine_ unit, one must not only choose a unit of measurement, but also a point of reference, while to assign a number to a _vector_ unit only requires a unit of measurement.

Thus some physical quantities are better modeled by vectorial quantities while others tend to require affine representation, and the distinction is reflected in their dimensional analysis.

This distinction is particularly important in the case of temperature, for which the numeric value of absolute zero is not the origin 0 in some scales. For absolute zero,

    0 K = −273.15 °C = −459.67 °F = 0 °R,

but for temperature differences,

    1 K = 1 °C ≠ 1 °F = 1 °R.

(Here °R refers to the Rankine scale, not the Réaumur scale). Unit conversion for temperature differences is simply a matter of multiplying by, e.g., 1 °F / 1 K (although the ratio is not a constant value). But because some of these scales have origins that do not correspond to absolute zero, conversion from one temperature scale to another requires accounting for that. As a result, simple dimensional analysis can lead to errors if it is ambiguous whether 1 K means the absolute temperature equal to −272.15 °C, or the temperature difference equal to 1 °C.

Orientation and frame of reference

Similar to the issue of a point of reference is the issue of orientation: a displacement in 2 or 3 dimensions is not just a length, but is a length together with a _direction_. (This issue does not arise in 1 dimension, or rather is equivalent to the distinction between positive and negative.) Thus, to compare or combine two dimensional quantities in a multi-dimensional space, one also needs an orientation: they need to be compared to a frame of reference.

This leads to the extensions discussed below, namely Huntley's directed dimensions and Siano's orientational analysis.


Examples

A simple example: period of a harmonic oscillator

What is the period of oscillation of a mass attached to an ideal linear spring with spring constant suspended in gravity of strength ? That period is the solution for of some dimensionless equation in the variables , , , and . The four quantities have the following dimensions: [T]; [M]; [M/T²]; and [L/T²]. From these we can form only one dimensionless product of powers of our chosen variables, G₁ = T²k/m , and putting G₁ = C for some dimensionless constant gives the dimensionless equation sought. The dimensionless product of powers of variables is sometimes referred to as a dimensionless group of variables; here the term "group" means "collection" rather than mathematical group. They are often called dimensionless numbers as well.

Note that the variable does not occur in the group. It is easy to see that it is impossible to form a dimensionless product of powers that combines with , , and , because is the only quantity that involves the dimension L. This implies that in this problem the is irrelevant. Dimensional analysis can sometimes yield strong statements about the _irrelevance_ of some quantities in a problem, or the need for additional parameters. If we have chosen enough variables to properly describe the problem, then from this argument we can conclude that the period of the mass on the spring is independent of : it is the same on the earth or the moon. The equation demonstrating the existence of a product of powers for our problem can be written in an entirely equivalent way: $T = \kappa \sqrt\tfrac{m}{k}$, for some dimensionless constant κ (equal to $\sqrt{C}$ from the original dimensionless equation).

When faced with a case where dimensional analysis rejects a variable (, here) that one intuitively expects to belong in a physical description of the situation, another possibility is that the rejected variable is in fact relevant, but that some other relevant variable has been omitted, which might combine with the rejected variable to form a dimensionless quantity. That is, however, not the case here.

When dimensional analysis yields only one dimensionless group, as here, there are no unknown functions, and the solution is said to be "complete" – although it still may involve unknown dimensionless constants, such as .

A more complex example: energy of a vibrating wire

Consider the case of a vibrating wire of length _ℓ_ (L) vibrating with an amplitude _A_ (L). The wire has a linear density _ρ_ (M/L) and is under tension _s_ (ML/T²), and we want to know the energy _E_ (ML²/T²) in the wire. Let _π_₁ and _π_₂ be two dimensionless products of powers of the variables chosen, given by

$$\begin{align}
  \pi_1 &= \frac{E}{As} \\
  \pi_2 &= \frac{\ell}{A}.
\end{align}$$

The linear density of the wire is not involved. The two groups found can be combined into an equivalent form as an equation

$$F\left(\frac{E}{As}, \frac{\ell}{A}\right) = 0 ,$$

where _F_ is some unknown function, or, equivalently as

$$E = As f\left(\frac{\ell}{A}\right) ,$$

where _f_ is some other unknown function. Here the unknown function implies that our solution is now incomplete, but dimensional analysis has given us something that may not have been obvious: the energy is proportional to the first power of the tension. Barring further analytical analysis, we might proceed to experiments to discover the form for the unknown function _f_. But our experiments are simpler than in the absence of dimensional analysis. We'd perform none to verify that the energy is proportional to the tension. Or perhaps we might guess that the energy is proportional to _ℓ_, and so infer that . The power of dimensional analysis as an aid to experiment and forming hypotheses becomes evident.

The power of dimensional analysis really becomes apparent when it is applied to situations, unlike those given above, that are more complicated, the set of variables involved are not apparent, and the underlying equations hopelessly complex. Consider, for example, a small pebble sitting on the bed of a river. If the river flows fast enough, it will actually raise the pebble and cause it to flow along with the water. At what critical velocity will this occur? Sorting out the guessed variables is not so easy as before. But dimensional analysis can be a powerful aid in understanding problems like this, and is usually the very first tool to be applied to complex problems where the underlying equations and constraints are poorly understood. In such cases, the answer may depend on a dimensionless number such as the Reynolds number, which may be interpreted by dimensional analysis.

A third example: demand versus capacity for a rotating disc

Consider the case of a thin, solid, parallel-sided rotating disc of axial thickness _t_ (L) and radius _R_ (L). The disc has a density _ρ_ (M/L³), rotates at an angular velocity _ω_ (T^(−1)) and this leads to a stress _S_ (ML^(−1)T^(−2)) in the material. There is a theoretical linear elastic solution, given by Lame, to this problem when the disc is thin relative to its radius, the faces of the disc are free to move axially, and the plane stress constitutive relations can be assumed to be valid. As the disc becomes thicker relative to the radius then the plane stress solution breaks down. If the disc is restrained axially on its free faces then a state of plane strain will occur. However, if this is not the case then the state of stress may only be determined though consideration of three-dimensional elasticity and there is no known theoretical solution for this case. An engineer might, therefore, be interested in establishing a relationship between the five variables. Dimensional analysis for this case leads to the following (5 − 3 = 2) non-dimensional groups:

    demand/capacity = _ρR_²_ω_²/_S_
    thickness/radius or aspect ratio = _t_/_R_

Dimensional_analysis_01.jpg

Through the use of numerical experiments using, for example, the finite element method, the nature of the relationship between the two non-dimensional groups can be obtained as shown in the figure. As this problem only involves two non-dimensional groups, the complete picture is provided in a single plot and this can be used as a design/assessment chart for rotating discs[14]


Extensions

Huntley's extension: directed dimensions

Huntley has pointed out that it is sometimes productive to refine our concept of dimension. Two possible refinements are:

-   The magnitude of the components of a vector are to be considered dimensionally distinct. For example, rather than an undifferentiated length dimension L, we may have L_(x) represent dimension in the x-direction, and so forth. This requirement stems ultimately from the requirement that each component of a physically meaningful equation (scalar, vector, or tensor) must be dimensionally consistent.
-   Mass as a measure of quantity is to be considered dimensionally distinct from mass as a measure of inertia.

As an example of the usefulness of the first refinement, suppose we wish to calculate the distance a cannonball travels when fired with a vertical velocity component V_(y) and a horizontal velocity component V_(x), assuming it is fired on a flat surface. Assuming no use of directed lengths, the quantities of interest are then V_(x), V_(y), both dimensioned as LT^(−1), , the distance travelled, having dimension L, and the downward acceleration of gravity, with dimension LT^(−2).

With these four quantities, we may conclude that the equation for the range may be written:

_R_ ∝ _V__(x)^(_a_) _V__(y)^(_b_) _g_^(_c_). 

Or dimensionally

$$\mathsf{L} = \left(\frac{\mathsf{L}}{\mathsf{T}}\right)^{a+b} \left(\frac{\mathsf{L}}{\mathsf{T}^2}\right)^c\,$$

from which we may deduce that a + b + c = 1 and a + b + 2c = 0, which leaves one exponent undetermined. This is to be expected since we have two fundamental dimensions L and T, and four parameters, with one equation.

If, however, we use directed length dimensions, then V_(x) will be dimensioned as LT^(−1), V_(y) as LT^(−1), as L and as LT^(−2). The dimensional equation becomes:

$$\mathsf{L}_\mathrm{x} =
    \left(\frac{\mathsf{L}_\mathrm{x}}{\mathsf{T}}\right)^a
    \left(\frac{\mathsf{L}_\mathrm{y}}{\mathsf{T}}\right)^b
    \left(\frac{\mathsf{L}_\mathrm{y}}{\mathsf{T}^2}\right)^c$$

and we may solve completely as a = 1, b = 1 and c =  − 1. The increase in deductive power gained by the use of directed length dimensions is apparent.

In a similar manner, it is sometimes found useful (e.g., in fluid mechanics and thermodynamics) to distinguish between mass as a measure of inertia (inertial mass), and mass as a measure of quantity (substantial mass). For example, consider the derivation of Poiseuille's Law. We wish to find the rate of mass flow of a viscous fluid through a circular pipe. Without drawing distinctions between inertial and substantial mass we may choose as the relevant variables

-   ṁ the mass flow rate with dimension MT^(−1)
-   p_(x) the pressure gradient along the pipe with dimension ML^(−2)T^(−2)
-   the density with dimension ML^(−3)

-   the dynamic fluid viscosity with dimension ML^(−1)T^(−1)

-   the radius of the pipe with dimension L

There are three fundamental variables so the above five equations will yield two dimensionless variables which we may take to be π₁ = ṁ/ηr and π₂ = p_(x)ρr⁵/ṁ² and we may express the dimensional equation as

$$C = \pi_1\pi_2^a = \left(\frac{\dot{m}}{\eta r}\right)\left(\frac{p_\mathrm{x}\rho r^5}{\dot{m}^2}\right)^a$$

where and are undetermined constants. If we draw a distinction between inertial mass with dimension M_(i) and substantial mass with dimension M_(s), then mass flow rate and density will use substantial mass as the mass parameter, while the pressure gradient and coefficient of viscosity will use inertial mass. We now have four fundamental parameters, and one dimensionless constant, so that the dimensional equation may be written:

$$C = \frac{p_\mathrm{x}\rho r^4}{\eta \dot{m}}$$

where now only is an undetermined constant (found to be equal to π/8 by methods outside of dimensional analysis). This equation may be solved for the mass flow rate to yield Poiseuille's law.

Huntley's extension has some serious drawbacks:

-   It does not deal well with vector equations involving the _cross product,_
-   nor does it handle well the use of _angles_ as physical variables.

It also is often quite difficult to assign the L, L, L, L, symbols to the physical variables involved in the problem of interest. He invokes a procedure that involves the "symmetry" of the physical problem. This is often very difficult to apply reliably: It is unclear as to what parts of the problem that the notion of "symmetry" is being invoked. Is it the symmetry of the physical body that forces are acting upon, or to the points, lines or areas at which forces are being applied? What if more than one body is involved with different symmetries?

Consider the spherical bubble attached to a cylindrical tube, where one wants the flow rate of air as a function of the pressure difference in the two parts. What are the Huntley extended dimensions of the viscosity of the air contained in the connected parts? What are the extended dimensions of the pressure of the two parts? Are they the same or different? These difficulties are responsible for the limited application of Huntley's addition to real problems.

Siano's extension: orientational analysis

Angles are, by convention, considered to be dimensionless variables. As an example, consider again the projectile problem in which a point mass is launched from the origin _(x,y)=(0,0)_ at a speed _v_ and angle _θ_ above the _x_-axis, with the force of gravity directed along the negative _y_-axis. It is desired to find the range _R_, at which point the mass returns to the _x_-axis. Conventional analysis will yield the dimensionless variable _π=R g/v^2_, but offers no insight into the relationship between _R_ and _θ_

has suggested that the directed dimensions of Huntley be replaced by using _orientational symbols_ to denote vector directions, and an orientationless symbol 1₀. Thus, Huntley's L becomes L 1 with L specifying the dimension of length, and specifying the orientation. Siano further shows that the orientational symbols have an algebra of their own. Along with the requirement that , the following multiplication table for the orientation symbols results:

$$\begin{array}{c|cccc}
                         & \mathbf{1_0}
                                       & \mathbf{1_\text{x}}
                                                    & \mathbf{1_\text{y}}
                                                                 & \mathbf{1_\text{z}} \\
     \hline
     \mathbf{1_0}        &  1_0        & 1_\text{x} & 1_\text{y} & 1_\text{z}          \\
     \mathbf{1_\text{x}} &  1_\text{x} & 1_0        & 1_\text{z} & 1_\text{y}          \\
     \mathbf{1_\text{y}} &  1_\text{y} & 1_\text{z} & 1_0        & 1_\text{x}          \\
     \mathbf{1_\text{z}} &  1_\text{z} & 1_\text{y} & 1_\text{x} & 1_0
\end{array}$$

Note that the orientational symbols form a group (the Klein four-group or "Viergruppe"). In this system, scalars always have the same orientation as the identity element, independent of the "symmetry of the problem". Physical quantities that are vectors have the orientation expected: a force or a velocity in the z-direction has the orientation of . For angles, consider an angle that lies in the z-plane. Form a right triangle in the z-plane with being one of the acute angles. The side of the right triangle adjacent to the angle then has an orientation and the side opposite has an orientation . Then, since we conclude that an angle in the xy-plane must have an orientation , which is not unreasonable. Analogous reasoning forces the conclusion that has orientation while has orientation 1₀. These are different, so one concludes (correctly), for example, that there are no solutions of physical equations that are of the form , where and are real scalars. Note that an expression such as sin (θ + π/2) = cos (θ) is not dimensionally inconsistent since it is a special case of the sum of angles formula and should properly be written:

sin (_a_ 1_(z)+_b_ 1_(z)) = sin (_a_ 1_(z))cos(_b_ 1_(z)) + sin (_b_ 1_(z))cos(_a_ 1_(z)),

which for a = θ and b = π/2 yields sin (θ 1_(z) + [π/2] 1_(z)) = 1_(z)cos (θ 1_(z)). Physical quantities may be expressed as complex numbers (e.g. e^(iθ)) which imply that the complex quantity has an orientation equal to that of the angle it is associated with ( in the above example).

The assignment of orientational symbols to physical quantities and the requirement that physical equations be orientationally homogeneous can actually be used in a way that is similar to dimensional analysis to derive a little more information about acceptable solutions of physical problems. In this approach one sets up the dimensional equation and solves it as far as one can. If the lowest power of a physical variable is fractional, both sides of the solution is raised to a power such that all powers are integral. This puts it into "normal form". The orientational equation is then solved to give a more restrictive condition on the unknown powers of the orientational symbols, arriving at a solution that is more complete than the one that dimensional analysis alone gives. Often the added information is that one of the powers of a certain variable is even or odd.

As an example, for the projectile problem, using orientational symbols, θ, being in the xy-plane will thus have dimension and the range of the projectile will be of the form:

$$R = g^a\,v^b\,\theta^c\text{ which means }\mathsf{L}\,1_\mathrm{x} \sim
\left(\frac{\mathsf{L}\,1_\text{y}}{\mathsf{T}^2}\right)^a \left(\frac{\mathsf{L}}{\mathsf{T}}\right)^b\,1_\mathsf{z}^c.\,$$

Dimensional homogeneity will now correctly yield and , and orientational homogeneity requires that 1_(x)/(1_(y)^(a)1_(z)^(c)) = 1_(z)^(c + 1) = 1. In other words that must be an odd integer. In fact the required function of theta will be which is a series of odd powers of .

It is seen that the Taylor series of and are orientationally homogeneous using the above multiplication table, while expressions like and are not, and are (correctly) deemed unphysical.

In orientational analysis, the unit of angle is considered to be a base unit, rather than dimensionless, which will require more careful specification of the units of physical variables. For example, the question of whether torque and energy have the same units is answered in the negative. Torque will have dimensions _ML²θ/T_ while energy will have units _ML²/T_ where _θ_ is a unit of angular measure (radians, degrees, etc.). Since torque _τ_ is _τ=r x p_ which is proportional to sin(_θ_), it can be seen that the units of the cross product of two physical vectors (i.e. pseudovectors) will be the product of the dimensions of the two physical vectors times an angular unit.


Dimensionless concepts

Constants

The dimensionless constants that arise in the results obtained, such as the C in the Poiseuille's Law problem and the κ in the spring problems discussed above, come from a more detailed analysis of the underlying physics and often arise from integrating some differential equation. Dimensional analysis itself has little to say about these constants, but it is useful to know that they very often have a magnitude of order unity. This observation can allow one to sometimes make "back of the envelope" calculations about the phenomenon of interest, and therefore be able to more efficiently design experiments to measure it, or to judge whether it is important, etc.

Formalisms

Paradoxically, dimensional analysis can be a useful tool even if all the parameters in the underlying theory are dimensionless, e.g., lattice models such as the Ising model can be used to study phase transitions and critical phenomena. Such models can be formulated in a purely dimensionless way. As we approach the critical point closer and closer, the distance over which the variables in the lattice model are correlated (the so-called correlation length, ξ ) becomes larger and larger. Now, the correlation length is the relevant length scale related to critical phenomena, so one can, e.g., surmise on "dimensional grounds" that the non-analytical part of the free energy per lattice site should be  ∼ 1/ξ^(d) where d is the dimension of the lattice.

It has been argued by some physicists, e.g., M. J. Duff,[15][16] that the laws of physics are inherently dimensionless. The fact that we have assigned incompatible dimensions to Length, Time and Mass is, according to this point of view, just a matter of convention, borne out of the fact that before the advent of modern physics, there was no way to relate mass, length, and time to each other. The three independent dimensionful constants: _c_, _ħ_, and _G_, in the fundamental equations of physics must then be seen as mere conversion factors to convert Mass, Time and Length into each other.

Just as in the case of critical properties of lattice models, one can recover the results of dimensional analysis in the appropriate scaling limit; e.g., dimensional analysis in mechanics can be derived by reinserting the constants _ħ_, _c_, and _G_ (but we can now consider them to be dimensionless) and demanding that a nonsingular relation between quantities exists in the limit c → ∞, ℏ → 0 and G → 0. In problems involving a gravitational field the latter limit should be taken such that the field stays finite.


Dimensional equivalences

Following are tables of commonly occurring expressions in physics, related to the dimensions of energy, momentum, and force.[17][18][19]

SI units

+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| Energy, _E_ ML²T^(−2) | Expression                                                              | Nomenclature                                                                                       |
+=======================+=========================================================================+====================================================================================================+
| Mechanical            | Fd                                                                      | _F_ = force, _d_ = distance                                                                        |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| S/t ≡ Pt              | _S_ = action, _t_ = time, _P_ = power                                   |                                                                                                    |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| mv² ≡ pv ≡ p²/m       | _m_ = mass, _v_ = velocity, _p_ = momentum                              |                                                                                                    |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| Iω² ≡ Lω ≡ L²/I       | _L_ = angular momentum, _I_ = moment of inertia, _ω_ = angular velocity |                                                                                                    |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| Thermal               | pV ≡ nRT ≡ k_(B)T ≡ TS                                                  | _p_ = pressure, _T_ = temperature, _S_ = entropy, _k__(B) = boltzmann constant, _R_ = gas constant |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| Waves                 | IAt ≡ SAt                                                               | _I_ = wave intensity, _S_ = Poynting vector                                                        |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| Electromagnetic       | qϕ                                                                      | _q_ = electric charge, _ϕ_ = electric potential (for changes this is voltage)                      |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| εE²V ≡ B²V/μ          | _E_ = electric field, _B_ = magnetic field,                             |                                                                                                    |
|                       | _ε_ = permittivity, _μ_ = permeability,                                 |                                                                                                    |
|                       | _V_ = 3d volume                                                         |                                                                                                    |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+
| pE ≡ mB ≡ IAB         | _p_ = electric dipole moment, _m_ = magnetic moment,                    |                                                                                                    |
|                       | _A_ = area (bounded by a current loop), _I_ = electric current in loop  |                                                                                                    |
+-----------------------+-------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+

  Momentum, _p_ MLT^(−1)   Expression                                                 Nomenclature
  ------------------------ ---------------------------------------------------------- -------------------------------------------------------------------------------------------------
  Mechanical               mv ≡ Ft                                                    _m_ = mass, _v_ = velocity, _F_ = force, _t_ = time
  S/r ≡ L/r                _S_ = action, _L_ = angular momentum, _r_ = displacement
  Thermal                  $m \sqrt{\left\langle v^2 \right\rangle}$                  $\sqrt{\left\langle v^2 \right\rangle}$ = root mean square velocity, _m_ = mass (of a molecule)
  Waves                    ρVv                                                        _ρ_ = density, _V_ = volume, _v_ = phase velocity
  Electromagnetic          qA                                                         _A_ = magnetic vector potential

  Force, _F_ MLT^(−2)   Expression   Nomenclature
  --------------------- ------------ ---------------------------------------------------------------------------
  Mechanical            ma ≡ p/t     _m_ = mass, _a_ = acceleration
  Thermal               TδS/δr       _S_ = entropy, _T_ = temperature, _r_ = displacement (see entropic force)
  Electromagnetic       Eq ≡ Bqv     _E_ = electric field, _B_ = magnetic field, _v_ = velocity, _q_ = charge

Natural units

If , where _c_ is the speed of light and _ħ_ is the reduced Planck constant, and a suitable fixed unit of energy is chosen, then all quantities of length _L_, mass _M_ and time _T_ can be expressed (dimensionally) as a power of energy _E_, because length, mass and time can be expressed using speed _v_, action _S_, and energy _E_:[20]

$$M = \frac{E}{v^2},\quad L = \frac{Sv}{E}, \quad t = \frac{S}{E}$$

though speed and action are dimensionless ( and ) – so the only remaining quantity with dimension is energy. In terms of powers of dimensions:

E^(_n_) = M^(_p_)L^(_q_)T^(_r_) = E^(_p_ − _q_ − _r_)

This is particularly useful in particle physics and high energy physics, in which case the energy unit is the electron volt (eV). Dimensional checks and estimates become very simple in this system.

However, if electric charges and currents are involved, another unit to be fixed is for electric charge, normally the electron charge _e_ though other choices are possible.

  Quantity        _p_, _q_, _r_ powers of energy   _n_ power of energy
  --------------- -------------------------------- ---------------------
  _p_             _q_                              _r_
  Action, _S_     1                                2
  Speed, _v_      0                                1
  Mass, _M_       1                                0
  Length, _L_     0                                1
  Time, _t_       0                                0
  Momentum, _p_   1                                1
  Energy, _E_     1                                2


See also

-   Dimensionless numbers in fluid mechanics
-   Fermi problem – used to teach dimensional analysis
-   Rayleigh's method of dimensional analysis
-   Similitude (model) – an application of dimensional analysis
-   System of measurement
-   Buckingham π theorem

Related areas of math

-   Covariance and contravariance of vectors
-   Exterior algebra
-   Geometric algebra
-   Quantity calculus


Notes


References

-   -   -   -   -   -   -   -   -   As postscript

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   , (5): 147, (6): 101, (7): 129

-   -   -   -   -


External links

-   List of dimensions for variety of physical quantities
-   Unicalc Live web calculator doing units conversion by dimensional analysis
-   A C++ implementation of compile-time dimensional analysis in the Boost open-source libraries
-   Buckingham’s pi-theorem
-   Quantity System calculator for units conversion based on dimensional approach
-   Units, quantities, and fundamental constants project dimensional analysis maps
-   -

Converting units

-   Unicalc Live web calculator doing units conversion by dimensional analysis
-   Math Skills Review
-   U.S. EPA tutorial
-   A Discussion of Units
-   Short Guide to Unit Conversions
-   Canceling Units Lesson
-   Chapter 11: Behavior of Gases _Chemistry: Concepts and Applications_, Denton Independent School District
-   Air Dispersion Modeling Conversions and Formulas
-   www.gnu.org/software/units free program, very practical

* Category:Measurement Category:Conversion of units of measurement Category:Chemical engineering Category:Mechanical engineering Category:Environmental engineering

[1]

[2]

[3]

[4]

[5]

[6] John Cimbala and Yunus Cengel (2006), _Essential of Fluid Mechanics: Fundamentals and Applications_, McGraw-Hill. Chapter 7: "Dimensional Analysis and Modeling", Section 7-2: "Dimensional homogeneity" 1

[7]

[8]

[9]

[10]

[11]

[12]

[13] For a review of the different conventions in use see:

[14]

[15]

[16]

[17]

[18]

[19]

[20]