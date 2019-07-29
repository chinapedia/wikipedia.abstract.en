The CENTIMETRE–GRAM–SECOND SYSTEM OF UNITS (abbreviated CGS or CGS) is a variant of the metric system based on the centimetre as the unit of length, the gram as the unit of mass, and the second as the unit of time. All CGS mechanical units are unambiguously derived from these three base units, but there are several different ways of extending the CGS system to cover electromagnetism.[1][2][3]

The CGS system has been largely supplanted by the MKS system based on the metre, kilogram, and second, which was in turn extended and replaced by the International System of Units (SI). In many fields of science and engineering, SI is the only system of units in use but there remain certain subfields where CGS is prevalent.

In measurements of purely mechanical systems (involving units of length, mass, force, energy, pressure, and so on), the differences between CGS and SI are straightforward and rather trivial; the unit-conversion factors are all powers of 10 as and . For example, the CGS unit of force is the dyne which is defined as , so the SI unit of force, the newton (), is equal to 100,000 dynes.

On the other hand, in measurements of electromagnetic phenomena (involving units of charge, electric and magnetic fields, voltage, and so on), converting between CGS and SI is more subtle. Formulas for physical laws of electromagnetism (such as Maxwell's equations) need to be adjusted depending on which system of units one uses. This is because there is no one-to-one correspondence between electromagnetic units in SI and those in CGS, as is the case for mechanical units. Furthermore, within CGS, there are several plausible choices of electromagnetic units, leading to different unit "sub-systems", including Gaussian units, "ESU", "EMU", and Lorentz–Heaviside units. Among these choices, Gaussian units are the most common today, and "CGS units" often used specifically refers to CGS-Gaussian units.


History

The CGS system goes back to a proposal in 1832 by the German mathematician Carl Friedrich Gauss to base a system of absolute units on the three fundamental units of length, mass and time.[4] Gauss chose the units of millimetre, milligram and second.[5] In 1873, a committee of the British Association for the Advancement of Science, including British physicists James Clerk Maxwell and William Thomson recommended the general adoption of centimetre, gram and second as fundamental units, and to express all derived electromagnetic units in these fundamental units, using the prefix "C.G.S. unit of ...".[6]

The sizes of many CGS units turned out to be inconvenient for practical purposes. For example, many everyday objects are hundreds or thousands of centimetres long, such as humans, rooms and buildings. Thus the CGS system never gained wide general use outside the field of science. Starting in the 1880s, and more significantly by the mid-20th century, CGS was gradually superseded internationally for scientific purposes by the MKS (metre–kilogram–second) system, which in turn developed into the modern SI standard.

Since the international adoption of the MKS standard in the 1940s and the SI standard in the 1960s, the technical use of CGS units has gradually declined worldwide, in the United States more slowly than elsewhere. CGS units are today no longer accepted by the house styles of most scientific journals, textbook publishers, or standards bodies, although they are commonly used in astronomical journals such as _The Astrophysical Journal_. CGS units are still occasionally encountered in technical literature, especially in the United States in the fields of material science, electrodynamics and astronomy. The continued usage of CGS units is most prevalent in magnetism and related fields because the B and H fields have the same units in free space and there is a lot of potential for confusion when converting published measurements from cgs to MKS.[7]

The units gram and centimetre remain useful _as prefixed units_ within the SI system, especially for instructional physics and chemistry experiments, where they match the small scale of table-top setups. However, where derived units are needed, the SI ones are generally used and taught instead of the CGS ones today. For example, a physics lab course might ask students to record lengths in centimetres, and masses in grams, but force (a derived unit) in newtons, a usage consistent with the SI system.


Definition of CGS units in mechanics

In mechanics, the CGS and SI systems of units are built in an identical way. The two systems differ only in the scale of two out of the three base units (centimetre versus metre and gram versus kilogram, respectively), while the third unit (second as the unit of time) is the same in both systems.

There is a one-to-one correspondence between the base units of mechanics in CGS and SI, and the laws of mechanics are not affected by the choice of units. The definitions of all derived units in terms of the three base units are therefore the same in both systems, and there is an unambiguous one-to-one correspondence of derived units:

$$v = \frac{dx}{dt}$$
  (definition of velocity)

$$F=m\frac{d^2x}{dt^2}$$
  (Newton's second law of motion)

_E_ = ∫_F⃗_ ⋅ _d_ _x⃗_
  (energy defined in terms of work)

$$p = \frac{F}{L^2}$$
  (pressure defined as force per unit area)

$$\eta = \tau/\frac{dv}{dx}$$
  (dynamic viscosity defined as shear stress per unit velocity gradient).

Thus, for example, the CGS unit of pressure, barye, is related to the CGS base units of length, mass, and time in the same way as the SI unit of pressure, pascal, is related to the SI base units of length, mass, and time:

    1 unit of pressure = 1 unit of force/(1 unit of length)² = 1 unit of mass/(1 unit of length⋅(1 unit of time)²)
    1 Ba = 1 g/(cm⋅s²)
    1 Pa = 1 kg/(m⋅s²).

Expressing a CGS derived unit in terms of the SI base units, or vice versa, requires combining the scale factors that relate the two systems:

    1 Ba = 1 g/(cm⋅s²) = 10^(−3) kg/(10^(−2)m⋅s²) = 10^(−1) kg/(m⋅s²) = 10^(−1) Pa.

Definitions and conversion factors of CGS units in mechanics

+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| Quantity            | Quantity symbol | CGS unit name         | Unit       | Unit definition    | Equivalent     |
|                     |                 |                       | symbol     |                    | in SI units    |
+=====================+=================+=======================+============+====================+================+
| length, position    | _L_, _x_        | centimetre            | cm         | 1/100 of metre     | = 10^(−2) m    |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| mass                | _m_             | gram                  | g          | 1/1000 of kilogram | = 10^(−3) kg   |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| time                | _t_             | second                | s          | 1 second           | = 1 s          |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| velocity            | _v_             | centimetre per second | cm/s       | cm/s               | = 10^(−2) m/s  |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| acceleration        | _a_             | gal                   | Gal        | cm/s²              | = 10^(−2) m/s² |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| force               | _F_             | dyne                  | dyn        | g⋅cm/s²            | = 10^(−5) N    |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| energy              | _E_             | erg                   | erg        | g⋅cm²/s²           | = 10^(−7) J    |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| power               | _P_             | erg per second        | erg/s      | g⋅cm²/s³           | = 10^(−7) W    |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| pressure            | _p_             | barye                 | Ba         | g/(cm⋅s²)          | = 10^(−1) Pa   |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| dynamic viscosity   | _μ_             | poise                 | P          | g/(cm⋅s)           | = 10^(−1) Pa⋅s |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| kinematic viscosity | _ν_             | stokes                | St         | cm²/s              | = 10^(−4) m²/s |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+
| wavenumber          | _k_             | kayser (K)            | cm^(−1)[8] | cm^(−1)            | = 100 m^(−1)   |
+---------------------+-----------------+-----------------------+------------+--------------------+----------------+


Derivation of CGS units in electromagnetism

CGS approach to electromagnetic units

The conversion factors relating electromagnetic units in the CGS and SI systems are made more complex by the differences in the formulae expressing physical laws of electromagnetism as assumed by each system of units, specifically in the nature of the constants that appear in these formulae. This illustrates the fundamental difference in the ways the two systems are built:

-   In SI, the unit of electric current, the ampere (A), was historically defined such that the magnetic force exerted by two infinitely long, thin, parallel wires 1 metre apart and carrying a current of 1 ampere is exactly 2×10^(−7) N/m. This definition results in all SI electromagnetic units being consistent (subject to factors of some integer powers of 10) with the EMU CGS system described in further sections. The ampere is a base unit of the SI system, with the same status as the metre, kilogram, and second. Thus the relationship in the definition of the ampere with the metre and newton is disregarded, and the ampere is not treated as dimensionally equivalent to any combination of other base units. As a result, electromagnetic laws in SI require an additional constant of proportionality (see Vacuum permittivity) to relate electromagnetic units to kinematic units. (This constant of proportionality is derivable directly from the above definition of the ampere.) All other electric and magnetic units are derived from these four base units using the most basic common definitions: for example, electric charge _q_ is defined as current _I_ multiplied by time _t_,

_q_ = _I_ ⋅ _t_
,

    therefore the unit of electric charge, the coulomb (C), is defined as 1 C = 1 A⋅s.

-   The CGS system avoids introducing new base quantities and units, and instead _derives_ all electric and magnetic units directly from the centimetre, gram, and second by specifying the form of the expression of physical laws that relate electromagnetic phenomena to mechanics.

Alternate derivations of CGS units in electromagnetism

Electromagnetic relationships to length, time and mass may be derived by several equally appealing methods. Two of them rely on the forces observed on charges. Two fundamental laws relate (seemingly independently of each other) the electric charge or its rate of change (electric current) to a mechanical quantity such as force. They can be written[9] in system-independent form as follows:

-   The first is Coulomb's law, $F = k_{\rm C} \frac{q \cdot q^\prime}{d^2}$, which describes the electrostatic force _F_ between electric charges q and q^(′), separated by distance _d_. Here $k_{\rm C}$ is a constant which depends on how exactly the unit of charge is derived from the base units.
-   The second is Ampère's force law, $\frac{dF}{dL} = 2 k_{\rm A}\frac{I \, I^\prime}{d}$, which describes the magnetic force _F_ per unit length _L_ between currents _I_ and _I′_ flowing in two straight parallel wires of infinite length, separated by a distance _d_ that is much greater than the wire diameters. Since I = q/t  and I^(′) = q^(′)/t, the constant $k_{\rm A}$ also depends on how the unit of charge is derived from the base units.

Maxwell's theory of electromagnetism relates these two laws to each other. It states that the ratio of proportionality constants $k_{\rm C}$ and $k_{\rm A}$ must obey $k_{\rm C} / k_{\rm A} = c^2$, where _c_ is the speed of light in vacuum. Therefore, if one derives the unit of charge from the Coulomb's law by setting $k_{\rm C}=1$ then Ampère's force law will contain a prefactor 2/c². Alternatively, deriving the unit of current, and therefore the unit of charge, from the Ampère's force law by setting $k_{\rm A} = 1$ or $k_{\rm A} = 1/2$, will lead to a constant prefactor in the Coulomb's law.

Indeed, both of these mutually exclusive approaches have been practiced by the users of CGS system, leading to the two independent and mutually exclusive branches of CGS, described in the subsections below. However, the freedom of choice in deriving electromagnetic units from the units of length, mass, and time is not limited to the definition of charge. While the electric field can be related to the work performed by it on a moving electric charge, the magnetic force is always perpendicular to the velocity of the moving charge, and thus the work performed by the magnetic field on any charge is always zero. This leads to a choice between two laws of magnetism, each relating magnetic field to mechanical quantities and electric charge:

-   The first law describes the Lorentz force produced by a magnetic field B on a charge Q moving with velocity V:



        $\mathbf{F} = \alpha_{\rm L} q\;\mathbf{v} \times \mathbf{B}\;.$

-   The second describes the creation of a static magnetic field B by an electric current _I_ of finite length dL at a point displaced by a vector R, known as Biot–Savart law:



        $d\mathbf{B} = \alpha_{\rm B}\frac{I d\mathbf{l} \times \mathbf{\hat r}}{r^2}\;,$ where _r_ and R̂ are the length and the unit vector in the direction of vector R respectively.

These two laws can be used to derive Ampère's force law above, resulting in the relationship: $k_{\rm A} = \alpha_{\rm L} \cdot \alpha_{\rm B}\;$. Therefore, if the unit of charge is based on the Ampère's force law such that $k_{\rm A} = 1$, it is natural to derive the unit of magnetic field by setting $\alpha_{\rm L} = \alpha_{\rm B}=1\;$. However, if it is not the case, a choice has to be made as to which of the two laws above is a more convenient basis for deriving the unit of magnetic field.

Furthermore, if we wish to describe the electric displacement field D and the magnetic field H in a medium other than vacuum, we need to also define the constants ε₀ and μ₀, which are the vacuum permittivity and permeability, respectively. Then we have[10] (generally) D = ϵ₀E + λP and H = B/μ₀ − λ^(′)M, where P and M are polarization density and magnetization vectors. The units of P and M are usually so chosen that the factors λ and λ′ are equal to the "rationalization constants" $4 \pi k_{\rm C} \epsilon_0$ and $4 \pi \alpha_{\rm B} / (\mu_0 \alpha_{\rm L})$, respectively. If the rationalization constants are equal, then $c^2 = 1 / (\epsilon_0 \mu_0 \alpha_{\rm L}^2)$. If they are equal to one, then the system is said to be "rationalized":[11] the laws for systems of spherical geometry contain factors of 4π (for example, point charges), those of cylindrical geometry – factors of 2π (for example, wires), and those of planar geometry contain no factors of π (for example, parallel-plate capacitors). However, the original CGS system used λ = λ′ = 4π, or, equivalently, $k_{\rm C} \epsilon_0 = \alpha_{\rm B} / (\mu_0 \alpha_{\rm L}) = 1$. Therefore, Gaussian, ESU, and EMU subsystems of CGS (described below) are not rationalized.

Various extensions of the CGS system to electromagnetism

The table below shows the values of the above constants used in some common CGS subsystems:

+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+
| system                    | $k_{\rm C}$      | $\alpha_{\rm B}$   | ϵ₀                   | μ₀               | $k_{\rm A}=\frac{k_{\rm C}}{c^2}$ | $\alpha_{\rm L}=\frac{k_{\rm C}}{\alpha_{\rm B}c^2}$ | $\lambda=4\pi k_{\rm C}\epsilon_0$ | $\lambda'=\frac{4\pi\alpha_{\rm B}}{\mu_0\alpha_{\rm L}}$ |
+===========================+==================+====================+======================+==================+===================================+======================================================+====================================+===========================================================+
| Electrostatic[12] CGS     | 1                | _c_^(−2)           | 1                    | _c_^(−2)         | _c_^(−2)                          | 1                                                    | 4π                                 | 4π                                                        |
| (ESU, esu, or stat-)      |                  |                    |                      |                  |                                   |                                                      |                                    |                                                           |
+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+
| Electromagnetic[13] CGS   | _c_²             | 1                  | _c_^(−2)             | 1                | 1                                 | 1                                                    | 4π                                 | 4π                                                        |
| (EMU, emu, or ab-)        |                  |                    |                      |                  |                                   |                                                      |                                    |                                                           |
+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+
| Gaussian[14] CGS          | 1                | _c_^(−1)           | 1                    | 1                | _c_^(−2)                          | _c_^(−1)                                             | 4π                                 | 4π                                                        |
+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+
| Lorentz–Heaviside[15] CGS | $\frac{1}{4\pi}$ | $\frac{1}{4\pi c}$ | 1                    | 1                | $\frac{1}{4\pi c^2}$              | _c_^(−1)                                             | 1                                  | 1                                                         |
+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+
| SI                        | $\frac{c^2}{b}$  | $\frac{1}{b}$      | $\frac{b}{4\pi c^2}$ | $\frac{4\pi}{b}$ | $\frac{1}{b}$                     | 1                                                    | 1                                  | 1                                                         |
+---------------------------+------------------+--------------------+----------------------+------------------+-----------------------------------+------------------------------------------------------+------------------------------------+-----------------------------------------------------------+

The constant _b_ in SI system is a unit-based scaling factor defined as: $b=10^7\,\mathrm{A}^2/\mathrm{N} = 10^7\,\mathrm{m/H}=4\pi/\mu_0=4\pi\epsilon_0 c^2=c^2 / k_{\rm C}\;$.

Also, note the following correspondence of the above constants to those in Jackson[16] and Leung:[17]

$$k_{\rm C}=k_1=k_{\rm E}$$

$$\alpha_{\rm B}=\alpha\cdot k_2=k_{\rm B}$$

$$k_{\rm A}=k_2=k_{\rm E}/c^2$$

$$\alpha_{\rm L}=k_3=k_{\rm F}$$

In system-independent form, Maxwell's equations can be written as:[18][19]

$\begin{array}{ccl}
\vec \nabla \cdot \vec E & = & 4 \pi k_{\rm C} \rho \\
\vec \nabla \cdot \vec B & = & 0 \\
\vec \nabla \times \vec E & = & \displaystyle{- \alpha_{\rm L} \frac{\partial \vec B}{\partial t}} \\
\vec \nabla \times \vec B & = & \displaystyle{4 \pi \alpha_{\rm B} \vec J + \frac{\alpha_{\rm B}}{k_{\rm C}}\frac{\partial \vec E}{\partial t}}
\end{array}$

Note that of all these variants, only in Gaussian and Heaviside–Lorentz systems $\alpha_{\rm L}$ equals c^( − 1) rather than 1. As a result, vectors E⃗ and B⃗ of an electromagnetic wave propagating in vacuum have the same units and are equal in magnitude in these two variants of CGS.

Electrostatic units (ESU)

In one variant of the CGS system, ELECTROSTATIC UNITS (ESU), charge is defined via the force it exerts on other charges, and current is then defined as charge per time. It is done by setting the Coulomb force constant $k_{\rm C} = 1$, so that Coulomb's law does not contain an explicit prefactor.

The ESU unit of charge, FRANKLIN (FR), also known as STATCOULOMB or ESU CHARGE, is therefore defined as follows:[20] Therefore, in ELECTROSTATIC CGS UNITS, a franklin is equal to a centimetre times square root of dyne:

    $\mathrm{1\,Fr = 1\,statcoulomb = 1\,esu\; charge = 1\,cm\sqrt{dyne}=1\,g^{1/2} \cdot cm^{3/2} \cdot s^{-1}}$.

The unit of current is defined as:

    $\mathrm{1\,Fr/s = 1\,statampere = 1\,esu\; current = 1\,(cm/s)\sqrt{dyne}=1\,g^{1/2} \cdot cm^{3/2} \cdot s^{-2}}$.

Dimensionally in the ESU CGS system, charge _q_ is therefore equivalent to m^(1/2)L^(3/2)t^(−1). Hence, neither charge nor current is an independent physical quantity in ESU CGS. This reduction of units is the consequence of the Buckingham π theorem.

ESU notation

All electromagnetic units in ESU CGS system that do not have proper names are denoted by a corresponding SI name with an attached prefix "stat" or with a separate abbreviation "esu".[21]

Electromagnetic units (EMU)

In another variant of the CGS system, ELECTROMAGNETIC UNITS (EMUs), current is defined via the force existing between two thin, parallel, infinitely long wires carrying it, and charge is then defined as current multiplied by time. (This approach was eventually used to define the SI unit of ampere as well). In the EMU CGS subsystem, this is done by setting the Ampere force constant $k_{\rm A} = 1$, so that Ampère's force law simply contains 2 as an explicit prefactor (this prefactor 2 is itself a result of integrating a more general formulation of Ampère's law over the length of the infinite wire).

The EMU unit of current, BIOT (BI), also known as ABAMPERE or EMU CURRENT, is therefore defined as follows:[22] Therefore, in ELECTROMAGNETIC CGS UNITS, a biot is equal to a square root of dyne:

    $\mathrm{1\,Bi = 1\,abampere = 1\,emu\; current= 1\,\sqrt{dyne}=1\,g^{1/2} \cdot cm^{1/2} \cdot s^{-1}}$.

The unit of charge in CGS EMU is:

    $\mathrm{1\,Bi\cdot s = 1\,abcoulomb = 1\,emu\, charge= 1\,s\cdot\sqrt{dyne}=1\,g^{1/2} \cdot cm^{1/2}}$.

Dimensionally in the EMU CGS system, charge _q_ is therefore equivalent to m^(1/2)L^(1/2). Hence, neither charge nor current is an independent physical quantity in EMU CGS.

EMU notation

All electromagnetic units in EMU CGS system that do not have proper names are denoted by a corresponding SI name with an attached prefix "ab" or with a separate abbreviation "emu".[23]

Relations between ESU and EMU units

The ESU and EMU subsystems of CGS are connected by the fundamental relationship $k_{\rm C} / k_{\rm A} = c^2$ (see above), where _c_ = 29,979,245,800 ≈ 3⋅10¹⁰ is the speed of light in vacuum in centimetres per second. Therefore, the ratio of the corresponding "primary" electrical and magnetic units (e.g. current, charge, voltage, etc. – quantities proportional to those that enter directly into Coulomb's law or Ampère's force law) is equal either to _c_^(−1) or _c_:[24]

$$\mathrm{\frac{1\,statcoulomb}{1\,abcoulomb}}=
\mathrm{\frac{1\,statampere}{1\,abampere}}=c^{-1}$$
and

$$\mathrm{\frac{1\,statvolt}{1\,abvolt}}=
\mathrm{\frac{1\,stattesla}{1\,gauss}}=c$$
. Units derived from these may have ratios equal to higher powers of _c_, for example:

$$\mathrm{\frac{1\,statohm}{1\,abohm}}=
\mathrm{\frac{1\,statvolt}{1\,abvolt}}\times\mathrm{\frac{1\,abampere}{1\,statampere}}=c^2$$
.

Practical cgs units

The practical cgs system is a hybrid system that uses the volt and the ampere as the unit of voltage and current respectively. Doing this avoids the inconveniently large and small quantities that arise for electromagnetic units in the esu and emu systems. This system was at one time widely used by electrical engineers because the volt and ampere had been adopted as international standard units by the International Electrical Congress of 1881.[25] As well as the volt and amp, the farad (capacitance), ohm (resistance), coulomb (electric charge), and henry are consequently also used in the practical system and are the same as the SI units. However, intensive properties (that is, anything that is per unit length, area, or volume) will not be the same as SI since the cgs unit of distance is the centimetre. For instance electric field strength is in units of volts per centimetre, magnetic field strength is in oersteds and resistivity is in ohm-cm.[26]

Some physicists and electrical engineers in North America still use these hybrid units.[27]

Other variants

There were at various points in time about half a dozen systems of electromagnetic units in use, most based on the CGS system.[28] These also include the Gaussian units and the Heaviside–Lorentz units.


Electromagnetic units in various CGS systems

  Quantity                       Symbol      SI unit   ESU unit                      EMU unit              Gaussian unit
  ------------------------------ ----------- --------- ----------------------------- --------------------- -----------------------------
  electric charge                _q_         1 C       ↔ (10^(−1) _c_) statC         ↔ (10^(−1)) abC       ↔ (10^(−1) _c_) Fr
  electric flux                  _Φ__(E)     1 V⋅m     ↔ (4π×10^(−1) _c_) statC      ↔ (10^(−1)) abC       ↔ (4π×10^(−1) _c_) Fr
  electric current               _I_         1 A       ↔ (10^(−1) _c_) statA         ↔ (10^(−1)) abA       ↔ (10^(−1) _c_) Fr⋅s^(−1)
  electric potential / voltage   _φ_ / _V_   1 V       ↔ (10⁸ _c_^(−1)) statV        ↔ (10⁸) abV           ↔ (10⁸ _c_^(−1)) statV
  electric field                 E           1 V/m     ↔ (10⁶ _c_^(−1)) statV/cm     ↔ (10⁶) abV/cm        ↔ (10⁶ _c_^(−1)) statV/cm
  electric displacement field    D           1 C/m²    ↔ (10^(−5) _c_) statC/cm²     ↔ (10^(−5)) abC/cm²   ↔ (10^(−5) _c_) Fr/cm²
  electric dipole moment         P           1 C⋅m     ↔ (10 _c_) statC⋅cm           ↔ (10) abC⋅cm         ↔ (10¹⁹ _c_) D
  magnetic dipole moment         Μ           1 A⋅m²    ↔ (10³ _c_) statA⋅cm²         ↔ (10³) abA⋅cm²       ↔ (10³) erg/G
  magnetic B field               B           1 T       ↔ (10⁴ _c_^(−1)) statT        ↔ (10⁴) G             ↔ (10⁴) G
  magnetic H field               H           1 A/m     ↔ (4π×10^(−3) _c_) statA/cm   ↔ (4π×10^(−3)) Oe     ↔ (4π×10^(−3)) Oe
  magnetic flux                  _Φ__(m)     1 Wb      ↔ (10⁸ _c_^(−1)) statWb       ↔ (10⁸) Mx            ↔ (10⁸) Mx
  resistance                     _R_         1 Ω       ↔ (10⁹ _c_^(−2)) s/cm         ↔ (10⁹) abΩ           ↔ (10⁹ _c_^(−2)) s/cm
  resistivity                    _ρ_         1 Ω⋅m     ↔ (10¹¹ _c_^(−2)) s           ↔ (10¹¹) abΩ⋅cm       ↔ (10¹¹ _c_^(−2)) s
  capacitance                    _C_         1 F       ↔ (10^(−9) _c_²) cm           ↔ (10^(−9)) abF       ↔ (10^(−9) _c_²) cm
  inductance                     _L_         1 H       ↔ (10⁹ _c_^(−2)) cm^(−1)⋅s²   ↔ (10⁹) abH           ↔ (10⁹ _c_^(−2)) cm^(−1)⋅s²

  : Conversion of SI units in electromagnetism to ESU, EMU, and Gaussian subsystems of CGS[29]
  _c_ = 29,979,245,800

In this table, _c_ = 29,979,245,800 is the numeric value of the speed of light in vacuum when expressed in units of centimetres per second. The symbol "↔" is used instead of "=" as a reminder that the SI and CGS units are _corresponding_ but not _equal_ because they have incompatible dimensions. For example, according to the next-to-last row of the table, if a capacitor has a capacitance of 1 F in SI, then it has a capacitance of (10^(−9) _c_²) cm in ESU; _but_ it is usually incorrect to replace "1 F" with "(10^(−9) _c_²) cm" within an equation or formula. (This warning is a special aspect of electromagnetism units in CGS. By contrast, for example, it is _always_ correct to replace "1 m" with "100 cm" within an equation or formula.)

One can think of the SI value of the Coulomb constant _k__(C) as:

$$k_{\rm C}=\frac{1}{4\pi\epsilon_0}=\frac{\mu_0 (c/100)^2}{4\pi}=10^{-7}{\rm N}/{\rm A}^2\cdot 10^{-4}\cdot c^2 = 10^{-11}{\rm N}\cdot c^2/{\rm A}^2 .$$
This explains why SI to ESU conversions involving factors of _c_² lead to significant simplifications of the ESU units, such as 1 statF = 1 cm and 1 statΩ = 1 s/cm: this is the consequence of the fact that in ESU system _k__(C) = 1. For example, a centimetre of capacitance is the capacitance of a sphere of radius 1 cm in vacuum. The capacitance _C_ between two concentric spheres of radii _R_ and _r_ in ESU CGS system is:

    $\frac{1}{\frac{1}{r}-\frac{1}{R}}$.

By taking the limit as _R_ goes to infinity we see _C_ equals _r_.


Physical constants in CGS units

  Constant                                  Symbol                        Value
  ----------------------------------------- ----------------------------- -----------------------------------------------
  Atomic mass unit                          u                             1.660 538 782 × 10^(−24) g
  Bohr magneton                             _μ__(B)                       9.274 009 15 × 10^(−21) erg/G (EMU, Gaussian)
  2.780 278 00 × 10^(−10) statA⋅cm² (ESU)
  Bohr radius                               _a_₀                          5.291 772 0859 × 10^(−9) cm
  Boltzmann constant                        _k_                           1.380 6504 × 10^(−16) erg/K
  Electron mass                             _m__(e)                       9.109 382 15 × 10^(−28) g
  Elementary charge                         _e_                           4.803 204 27 × 10^(−10) Fr (ESU, Gaussian)
  1.602 176 487 × 10^(−20) abC (EMU)
  Fine-structure constant                   _α_ ≈ 1/137                   7.297 352 570 × 10^(−3)
  Gravitational constant                    _G_                           6.674 28 × 10^(−8) Dyncm²/(g²)
  Planck constant                           _h_                           6.626 068 85 × 10^(−27) erg⋅s
  _ħ_                                       1.054 5716 × 10^(−27) erg⋅s
  Speed of light in vacuum                  _c_                           ≡ 2.997 924 58 × 10¹⁰ cm/s

  : Commonly used physical constants in CGS units[30]


Advantages and disadvantages

While the absence of explicit prefactors in some CGS subsystems simplifies some theoretical calculations, it has the disadvantage that sometimes the units in CGS are hard to define through experiment. Also, lack of unique unit names leads to a great confusion: thus "15 emu" may mean either 15 abvolts, or 15 emu units of electric dipole moment, or 15 emu units of magnetic susceptibility, sometimes (but not always) per gram, or per mole. On the other hand, SI starts with a unit of current, the ampere, that is easier to determine through experiment, but which requires extra multiplicative factors in the electromagnetic equations. With its system of uniquely named units, the SI also removes any confusion in usage: 1.0 ampere is a fixed value of a specified quantity, and so are 1.0 henry, 1.0 ohm, and 1.0 volt.

A key virtue of the Gaussian CGS system is that electric and magnetic fields have the same units, 4_πε_₀ is replaced by 1, and the only dimensional constant appearing in the Maxwell equations is _c_, the speed of light. The Heaviside–Lorentz system has these desirable properties as well (with _ε_₀ equaling 1), but it is a "rationalized" system (as is SI) in which the charges and fields are defined in such a way that there are many fewer factors of 4_π_ appearing in the formulas, and it is in Heaviside–Lorentz units that the Maxwell equations take their simplest form.

In SI, and other rationalized systems (for example, Heaviside–Lorentz), the unit of current was chosen such that electromagnetic equations concerning charged spheres contain 4π, those concerning coils of current and straight wires contain 2π and those dealing with charged surfaces lack π entirely, which was the most convenient choice for applications in electrical engineering. However, modern hand calculators and personal computers have eliminated this "advantage". In some fields where formulas concerning spheres are common (for example, in astrophysics), it has been argued that the nonrationalized CGS system can be somewhat more convenient notationally.

Specialized unit systems are used to simplify formulas even further than _either_ SI _or_ CGS, by eliminating constants through some system of natural units. For example, in particle physics a system is in use where every quantity is expressed by only one unit of energy, the electronvolt, with lengths, times, and so on all converted into electronvolts by inserting factors of speed of light _c_ and the Planck constant _ħ_. This unit system is very convenient for calculations in particle physics, but it would be considered impractical in other contexts.


See also

-   International System of Units
-   International System of Electrical and Magnetic Units
-   List of scientific units named after people
-   Metre–tonne–second system of units
-   United States customary units
-


References and notes


General literature

-   -   -   -

Category:Metrology Category:Systems of units Category:Centimetre–gram–second system of units Category:Metric system

[1]  physics|work=Encyclopedia Britannica|access-date=2018-03-27|language=en}}

[2]

[3]

[4] . English translation.

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

[27] Knoepfel, p. xx

[28]

[29]

[30]