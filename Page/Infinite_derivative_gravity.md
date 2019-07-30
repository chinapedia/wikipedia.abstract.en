INFINITE DERIVATIVE GRAVITY is a theory of gravity which attempts to remove cosmological and black hole singularities by adding extra terms to the Einstein–Hilbert action, which weaken gravity at short distances.


History

In 1987, Krasnikov considered an infinite set of higher derivative terms acting on the curvature terms and showed that by choosing the coefficients wisely, the propagator would be ghost-free and exponentially suppressed in the ultraviolet regime.[1] Tomboulis (1997) later extended this work.[2] By looking at an equivalent scalar-tensor theory, Biswas, Mazumdar and Siegel (2005) looked at bouncing FRW solutions.[3] In 2011, Biswas, Gerwick, Koivisto and Mazumdar demonstrated that the most general infinite derivative action in 4 dimensions, around constant curvature backgrounds, parity invariant and torsion free, can be expressed by:[4]

$$S = \int \mathrm{d}^4x \sqrt{-g} \left(M^2_P R+ R F_1 (\Box) R + R^{\mu\nu} F_2 (\Box) R_{\mu\nu} + C^{\mu\nu\lambda\sigma} F_3 (\Box) C_{\mu\nu\lambda\sigma} \right)$$
where the $F_i (\Box)=\sum^\infty_{n=0} f_{i_n} \Box/M^2$ are functions of the D'Alembert operator □ = g^(μν)∇_(μ)∇_(ν) and a mass scale M, R is the Ricci scalar, R_(μν) is the Ricci tensor and C_(μνλσ) is the Weyl tensor.[5] In order to avoid ghosts, the propagator (which is a combination of the F_(i)(□)s) must be the exponential of an entire function. A lower bound was obtained on the mass scale of IDG using experimental data on the strength of gravity at short distances,[6] as well as by using data on inflation[7] and on the bending of light around the Sun.[8] The GHY boundary terms were found using the ADM 3+1 spacetime decomposition.[9] One can show that the entropy for this theory is finite in various contexts.[10][11]

The effect of IDG on black holes and the propagator was examined by Modesto.[12][13][14] Modesto further looked at the renormalisability of the theory,[15][16] as well as showing that it could generate "super-accelerated" bouncing solutions instead of a big bang singularity.[17] Calcagni and Nardelli investigated the effect of IDG on the diffusion equation.[18] IDG modifies the way gravitational waves are produced and how they propagate through space. The amount of power radiated away through gravitational waves by binary systems is reduced, although this effect is far smaller than the current observational precision.[19]

Avoidance of singularities

This action can produce a bouncing cosmology, by taking a flat FRW metric with a scale factor a(t) = cosh (σt) or a(t) = e^(λt²), thus avoiding the cosmological singularity problem.[20][21][22][23] The propagator around a flat space background was obtained in 2013.[24]

This action avoids a curvature singularity for a small perturbation to a flat background near the origin, while recovering the 1/r fall of the GR potential at large distances. This is done using the linearised equations of motion which is a valid approximation because if the perturbation is small enough and the mass scale M is large enough, then the perturbation will always be small enough that quadratic terms can be neglected.[25] It also avoids the Hawking–Penrose singularity in this context.[26][27]

Stability of black hole singularities

It was shown that in non-local gravity, Schwarzschild singularities are stable to small perturbations.[28] Further stability analysis of black holes was carried out by Myung and Park.[29]


Equations of motion

The equations of motion for this action are[30]



\begin{align} T^{\alpha\beta} = {} & P^{\alpha\beta} \\ = {} & G^{\alpha\beta} + 4 G^{\alpha\beta} F_1(\Box) R + g^{\alpha\beta} R F_1(\Box) R - 4 \left(\nabla^\alpha \nabla^\beta - g^{\alpha\beta} \Box\right) F_1(\Box) R - 2 \Omega^{\alpha\beta}_1 + g^{\alpha\beta} \left(\Omega^\sigma_{1\sigma}\right)\\

&

{} + 4 {R^\beta}_\mu R^{\mu\alpha}

- g^{\alpha\beta} R^{\mu\nu} F_2(\Box) R_{\mu\nu} - 4 \left( F_2(\Box)

R^{\mu(\beta}\right)^{;\alpha)}_{;\mu} \\ & {} +2 \Box \left(F_2(\Box) R^{\alpha\beta} \right)+ 2 g^{\alpha\beta} \left(F_2(\Box) R^{\mu\nu} \right)_{;\mu;\nu} - 2 \Omega^{\alpha\beta}_2 + g^{\alpha\beta} \left( \Omega^\sigma_{2\sigma}

+ \bar{\Omega}_2 \right) - 4 \Delta^{\alpha\beta}_2 \\
& {} -g^{\alpha\beta} C^{\mu\nu\lambda\sigma} F_3(\Box) C_{\mu\nu\lambda\sigma}

+ 4 {C^\alpha}_{\rho\theta\psi} F_3 (\Box)C^{\beta\rho\theta\psi}

- 4 \left[ 2 \nabla_\mu \nabla_\nu + R_{\mu\nu} \right] F_3(\Box)

C^{\beta\mu\nu\alpha} \\ & {} - 2 \Omega^{\alpha\beta}_3 + g^{\alpha\beta} \left(\Omega^\gamma_{3\gamma} + \bar{\Omega}_3 \right) - 8 \Delta^{\alpha\beta}_3 \end{align}

where

$$\begin{align}
 \Omega^{\alpha\beta}_1 &= \sum^\infty_{n=1} f_{1_n} \sum^{n-1}_{m=0}
\nabla^\alpha \Box^m R \nabla^\beta \Box^{n-m-1} R, \quad \bar{\Omega}_1
= \sum^\infty_{n=1} f_{1_n} \sum^{n-1}_{m=0} \Box^m R \Box^{n-m} R, \\
 \Omega^{\alpha\beta}_2 &= \sum^\infty_{n=1} f_{1_n} \sum^{n-1}_{m=0}
\nabla^\alpha \Box^m {R^\mu}_\nu \nabla^\beta \Box^{n-m-1} {R^\nu}_\mu, \quad
\bar{\Omega}_2 = \sum^\infty_{n=1} f_{1_n} \sum^{n-1}_{m=0} \Box^m {R^\mu}_\nu
\Box^{n-m} {R^\nu}_\mu \\
 \Delta^{\alpha\beta}_2 &= \frac{1}{2} \sum^\infty_{n=1} f_{2_n}
\sum^{n-1}_{\ell=0} \nabla_\nu \left[ \Box^l {R^\nu}_\sigma \nabla^{(\alpha}
\Box^{n-\ell-1} R^{\beta)\sigma} - \Box^\ell \nabla^{(\alpha} {R^nu}_\sigma \Box^{n-\ell-1}
R^{\beta)\sigma} \right], \\
 \Omega^{\alpha\beta}_3 &= \sum^\infty_{n=1} f_{3_n} \sum^{n-1}_{\ell=0}
\nabla^\alpha \Box^\ell {C^\mu}_{\nu\lambda\sigma} \nabla^\beta \Box^{n-\ell-1}
{C_\mu}^{\nu\lambda\sigma}, \quad \bar{\Omega}_3 = \sum^\infty_{n=1} f_{3_n}
\sum^{n-1}_{\ell=0} \Box^\ell {C^\mu}_{\nu\lambda\sigma} \Box^{n-\ell} {C_\mu}^{\nu\lambda\sigma},\\
 \Delta^{\alpha\beta}_3 &= \frac{1}{2} \sum^\infty_{n=1} f_{3_n}
\sum^{n-1}_{\ell=0} \nabla_\nu \left[ \Box^\ell {C^{\lambda\nu}}_{\sigma\mu} \Box^{n-\ell-1}
{C_\lambda}^{(\beta|\sigma\mu|;\alpha)} - \Box^\ell \nabla^{(\alpha} C^{\lambda\nu}_{\sigma\mu}
{C_\lambda}^{\beta)\sigma\mu} \right].\end{align}$$


References

Category:Physics Category:General relativity Category:Albert Einstein

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