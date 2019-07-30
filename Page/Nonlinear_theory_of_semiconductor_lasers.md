Laser theory of Fabry-Perot (FP) semiconductor lasers proves to be nonlinear, since the gain,[1][2] the refractive index[3] and the loss coefficient[4] are the functions of energy flux. The nonlinear theory[5] made it possible to explain a number of experiments some of which could not even be explained (for example, natural linewidth), much less modeled, on the basis of other theoretical models; this suggests that the nonlinear theory developed is a new paradigm of the laser theory.


Equations in the gain medium

Maxwell's equations describe the field for passive medium and cannot be used in describing the field in laser and quantum amplifier. Phenomenological equations are derived for electromagnetic field in the gain medium, i.e. Maxwell's equations for the gain medium, and Poynting's theorem for these equations.[6][7][8] Maxwell's equations in the gain medium are used to obtain equations for energy flux, and to describe nonlinear phase effect.[9][10][11]

$(1)\quad rot\vec H =(\sigma-\eta)\vec E+{\partial \vec D \over \partial t},$
we have defined η as a specific gain factor; σ is specific conductivity that describes incoherent losses (for example, on free electrons). Other Maxwell's equations are used unchanged.
$(2)\quad rot\vec E = -{\partial B \over \partial t},  divD = 0, divB = 0,$
(3) D = ϵ′ϵ₀E, B = μ₀μH,
Poynting theorem follows from (1)-(3):
(4) ∫_(V)η|E(ω)|² dv = ∫_(V)σ|E(ω)|² dv + ∮_(S)(Sn)ds,

where S is Poynting vector; V=sz, 0 <z<L, where s is cross section (to axis z) of active laser medium.
Equations for energy flux follow from (4):
$(5)\quad \frac{dI^+}{dz}=(\Gamma g(I^+)-\alpha (I^+))I^+,$
$(6)\quad \frac{-dI^-}{dz}=(\Gamma g(I^-)-\alpha (I^-))I^-,$
where
(7) α(I) = (1 − Γ)α_(out) + Γα_(in) + α_(x) + α_(2p)(I),
where I is the energy flux; s is sectional area of the active zone of the laser; Г is confinement factor; α_(in) is absorption factor in active zone; α_(out) is absorption factor outside active zone; α_(x) is losses due to incoherent scattering α_(2p)(I) is two-photon absorption factor,[12][13] and α_(2p)(I)= β⋅I.


Formulas for the line shape and natural linewidth

Theory of natural linewidth in semiconductor lasers has been developed, it follows that refractive index n in FP lasers[14][15] and effective refractive index n_(ef) in Distributed FeedBack (DFB) lasers[16][17] are the functions of E:
(8) n = n₀ + n₁(ω)E + n₂(ω)E²,
(9) n = n_(ef)⁰ + n_(ef)¹E + n_(ef)²E²,
The formulas for the line shape in FP and in DFB lasers were derived. These formulas for the line shape are similar and have the following form:
(10) L(v) = 2∫₀^(∞)cos (2πvτ)exp(A_(pa)|τ| − Bτ²)dτ,
where $v=\tfrac{\omega - \omega L}{2\pi};\quad \omega L$ is laser generation frequency;

$(11)\quad A_{pa}=\frac{D_0}{P},\quad B=(D_1+D_2P^{(1/2)})^2,$
where D₀,D₁, D₂ have different form for FP and for DFB lasers[18][19] [20] [21] .[22] Let us write the natural linewidth Δν[23][24][25]
$(12)\quad \Delta v=\Delta v^{(c)}T\left (\left (mW\right ) \frac{A_{pa}}{P}+B \right ) F_N\left (\frac{P^{(c)}}{P},k \right ),$
where $T\left (\left (mW\right ) \frac{A_{pa}}{P}+B \right )$ is the bridge function;[26][27][28] Δv^((c)) and P^((c)) are characteristic linewidth and characteristic laser power; k is characteristic parameter of laser nonlinearity; q is non-dimensional inverse power:

(13) F_(N)(q, k) = 1/∫₀^(∞)exp( − xq − x²(k/q^(1/2) − 1)²)dx

The theory of natural linewidth in semiconductor lasers has an independent significance. At the same time, the developed theory is an integral part of the nonlinear theory of lasers, and its concepts and the introduced characteristic parameters are used in all parts of the nonlinear theory.


Gain in a semiconductor laser

Using the density matrix equations with relaxation, the following derivations have been made: Einstein’s spectral coefficient in a semiconductor laser and, accordingly, Einstein’s coefficient;[29][30][31] formula for the saturation effect in a semiconductor laser was derived; it was shown that the saturation effect in a semiconductor laser is small.[32][33] Gain in a semiconductor laser has been derived using the density matrix equations with relaxation.[34][35] It has been found that Fabry-Perot laser gain depends on energy flux, and this determines the ‘basic nonlinear effect’ in a semiconductor laser

(14) g = g(I) = RΔω_(e)/(1 − I(δΔω_(e)/δI)/Δω_(e)),

where
(15) R = (ℏωn_(g)/c)B₂₁(f₂ − f₁)S_(P)(ω).

where B₂₁ is Einstein coefficient for induced transition between the two energy levels when exposed to a narrow-band wave is written in the following form:[36][37]
(16) B₂₁ = (Ĥ₂₁/ℏ)²/(2Γ₀) where Δω_(e) is effective natural linewidth; I is the energy flux; S_(P)(ω) is spectral density of transitions.

Necessary condition for induced radiation of the 1st kind

Necessary conditions for induced radiation of the 1st and 2nd kind have been defined in.[38][39] Necessary conditions for induced radiation are determined by the requirement for the gain to be greater than zero. Necessary condition for induced radiation of the 1st kind formulated by Bernard and Duraffourg[40][41] is that the population of levels located above becomes more than the population of levels located below

(17) f₂(E₂) > f₁(E₁).

Necessary condition for induced radiation of the 2nd kind

The necessary condition of induced radiation of the 2nd kind formulated by Noppe[42][43] is that:

(18) Δω_(e)/(1 − I(δΔω_(e)/δI)/Δω_(e)) > 0.

Versus_energy_flux_I_for_two_sets_of_characteristic_parameters.jpg

The necessary condition of induced radiation of the 2nd kind allows formulating the basic restriction of laser capacity,[44][45] which has been confirmed experimentally:

(19) I < I(M),

where I is energy flux; I(M) is the characteristic parameter of ultimate power. Figure 1 shows the function g(I) for two sets of characteristic parameters.


Simulation of experiments

4.1. Maxwell's equations in the gain medium are used to obtain equations for energy flux.[46][47][48] Nonlinear phase effect has been described and simulated,[49][50] using the nonlinearity of refractive index.[51] (see Fig.3).
4.2. Based on the developed theory, experimental output characteristics have been simulated: natural linewidth (see simulation in,[52][53]) (see Fig.2), experimental watt - ampere characteristics[54][55][56] (see Fig.4) and dependence of experimental output radiation line-length on the current in Fabry-Perot semiconductor injection lasers,[57][58] (see Fig.3), as well as linewidth in DFB lasers (see simulation in,[59][60]). Created theory makes it possible to simulate the majority published experiments on the measurement of the natural linewidth in Fabry-Perot lasers and distributed feedback DFB lasers[61][62][63][64][65][66] with help of two methods (using (13) and (15)). Based on the formula derived for the line shape,[67][68] 12 experiments on measuring the natural linewidth in Fabry-Perot lasers (for example see Fig.2) and 15 experiments in DFB lasers[69][70] have been simulated. Based on the formula derived for the natural linewidth,[71][72][73] 15 experiments on measuring the natural linewidth in Fabry-Perot lasers[74][75] and 15 experiments in DFB lasers[76][77] have been simulated. The derived formula for line shape of radiation (of FP lasers[78][79][80] and DFB lasers[81][82]) is distinguished from Lorentz line formula.
4.3. Based on the developed theory, experimental output characteristics have been simulated: natural linewidth (see simulation in,[83][84]), experimental watt - ampere characteristics[85] (see Fig.4), and dependence of experimental output radiation line-length on the current in Fabry-Perot semiconductor injection lasers[86] (see Fig.3), as well as linewidth in DFB lasers (see simulation in,[87][88]).
4.4. On the basis of the nonlinear theory, recommendations have been made for the development of lasers with smaller natural linewidth and lasers with higher output power.[89][90]

Simulating_experimental_curve_of_the_natural_linewidth_of_Fabry-Perot_semiconductor_lasers.jpg

Wavelength_shift_Δλ_versus_normalized_current.jpg

thumb|center|upright=2.0|Figure 4. Experimental [91] and theoretical [92][93] output power versus current for a powerful laser.


Conclusion

Based on the solution of the density matrix equations, Einstein coefficient for induced transition has been derived; it has been shown that the saturation effect is small for semiconductor lasers.[94][95] The formula of gain depending on the energy flux has been derived; it is the basic nonlinear effect in a laser. It has been stated that the main effect resulting in nonlinearity is the saturation effect.[96][97] For semiconductor lasers, the saturation effect is negligible. We derived the gain g for a Fabry-Perot semiconductor laser based on the density matrix equations and expressions for the natural linewidth.[98][99] Thus, the linewidth theory[100][101][102] is an integral part of the nonlinear theory. The resulting dependence of g on the energy flux has been called the main nonlinear effect in semiconductor lasers;[103][104] derivation of this relation formula is presented in.[105][106] Experimental wavelength shift versus normalized current (J/Jth), and the output power versus current have been simulated for a high-power laser with a quantum well of intrinsic semiconductor. Broadening of the states density due to different effects has been taken into consideration. The nonlinear theory made it possible to explain a number of experiments some of which could not even be explained (for example, natural linewidth), much less modeled, on the basis of other theoretical models; this suggests that the nonlinear theory developed is a new paradigm of the laser theory. Due to the nonlinear theory development, recommendations can be given for creating lasers with smaller natural linewidth, and lasers with higher output power.


References

Category:Semiconductor lasers

[1] Noppe M G On Nonlinear Theory for Semiconductor Lasers. 2016 Laser Phys. 26055004 (doi:10.1088/1054-660X/26/5/055004)

[2]

[3] Partovi and E.M.Garmire, J. Appl.Phys, 69, 6885 (1991).

[4] Said A A et al. Opt. Soc. Am. B 1992 9 405

[5] Noppe M.G. “Fundamentals of nonlinear theory for semiconductor lasers” (Publishing House SB RAS, 2016. Novosibirsk, 2016). (To purchase a monograph, please use the following link: "Fundamentals of nonlinear theory for semiconductor lasers")

[6]

[7]

[8] Noppe M G On nonlinear refraction in semiconductor lasers; simulation of experiment, J. Mod. Opt. 2004 51 153

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17] Noppe M G, The Natural Linewidth of Fabry-Perot Semiconductor Lasers, Laser Phys., 24, 125006 (2014). DOI:10.1088/1054-660X/24/12/125006

[18]

[19]

[20] Noppe M G. On natural linewidth of distributed feedback lasers; simulation of experiments. In Proc. XII Intern. Confer. (APEIE – 2014)- v.1, pp. 456 - 460)

[21] Noppe M G. On formula for natural linewidth in Fabry-Perot lasers; simulation of experiments In Proc. XII Intern. Confer. (APEIE – 2014)- v.1, pp. 472 - 477)

[22] Noppe M G On formula for natural linewidth in distributed feedback lasers; simulation of experiments. In Proc. XII Intern. Confer. (APEIE – 2014)- v.1, pp. 461 -467

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31] Noppe M. G. The Resonance and Nonresonance Coefficients of Stimulated Transitions for a System with Relaxation, Technical Physics Letters 2000, V. 26, 10-11

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41] Andreev, A.Yu., et al. Semiconductors, 2009,43 543-547

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66] Noppe M.G. On the Line Form and Natural Linewidth; Simulation and Interpretation of Experiments. In Proc. XII Intern. Confer. (NUSOD-2012), 123.

[67]

[68]

[69]

[70]

[71]

[72]

[73]

[74]

[75]

[76]

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86] Bernard M.G., Duraffourg G. 1961 Phys. Status Solidi 127 699

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]