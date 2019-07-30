MULTISCALE GREEN'S FUNCTION (MSGF) is a generalized and extended version of the classical Green's function (GF) technique[1] for solving mathematical equations. The main application of the MSGF technique is in modeling of nanomaterials.[2] These materials are very small – of the size of few nanometers. Mathematical modeling of nanomaterials requires special techniques and is now recognized to be an independent branch of science.[3] A mathematical model is needed to calculate the displacements of atoms in a crystal in response to an applied static or time dependent force in order to study the mechanical and physical properties of nanomaterials. One specific requirement of a model for nanomaterials is that the model needs to be multiscale and provide seamless linking of different length scales.[4]

Green's function (GF) was originally formulated by the British mathematical physicist George Green in the year 1828 as a general technique for solution of operator equations.[5] It has been extensively used in mathematical Physics over the last almost two hundred years and applied to a variety of fields.[6][7] Reviews of some applications of GFs such as for many body theory and Laplace equation are available in the Wikipedia. The GF based techniques are used for modeling of various physical processes in materials such as phonons,[8] Electronic band structure[9] and elastostatics.[10]


Application of the MSGF method for modeling nanomaterials

The MSGF method is a relatively new GF technique for mathematical modeling of nanomaterials. Mathematical models are used for calculating the response of materials to an applied force in order to simulate their mechanical properties. The MSGF technique links different length scales in modeling of nanomaterials.[11][12] Nanomaterials are of atomistic dimensions and need to be modeled at the length scales of nanometers. For example, a silicon nanowire, whose width is about five nanometers, contains just 10 – 12 atoms across its width. Another example is graphene[13] and many new two-dimensional (2D) solids.[14] These new materials are ultimate in thinness because they are just one or two atoms thick. Multiscale modeling is needed for such materials because their properties are determined by the discreteness of their atomistic arrangements as well as their overall dimensions.[15][16]

The MSGF method is multiscale in the sense that it links the response of materials to an applied force at atomistic scales to their response at the macroscopic scales. The response of materials at the macroscopic scales is calculated by using the continuum model of solids. In the continuum model, the discrete atomistic structure of solids is averaged out into a continuum. Properties of nanomaterials are sensitive to their atomistic structure as well as their overall dimensions. They are also sensitive to the macroscopic structure of the host material in which they are embedded. The MSGF method is used to model such composite systems.

The MSGF method is also used for analyzing behavior of crystals containing lattice defects such as vacancies, interstitials, or foreign atoms. Study of these lattice defects is of interest as they play a role in materials technology.[17][18] Presence of a defect in a lattice displaces the host atoms from their original position or the lattice gets distorted. This is shown in Fig 1 for a 1D lattice as an example. Atomistic scale modeling is needed to calculate this distortion near the defect,[19][20] whereas the continuum model is used to calculate the distortion far away from the defect. The MSGF links these two scales seamlessly. Fig1_linear_lattice.jpg


MSGF for nanomaterials

The MSGF model of nanomaterials accounts for multiparticles as well as multiscales in materials.[21] It is an extension of the lattice statics Green’s function (LSGF) method that was originally formulated at the Atomic Energy Research Establishment Harwell in U.K. in 1973.[22][23] It is also referred to as Tewary method in the literature[24][25] The LSGF method complements molecular dynamics [26] (MD) method for modeling multiparticle systems. The LSGF method is based upon the use of the Born von Karman (BvK) model[27][28] and can be applied to different lattice structures and defects.[29][30][31] The MSGF method is an extended version of the LSGF method and has been applied to many nanomaterials and 2D materials[32]

At the atomistic scales, a crystal or a crystalline solid is represented by a collection of interacting atoms located at discrete sites on a geometric lattice.[33] A perfect crystal consists of a regular and periodic geometric lattice. The perfect lattice has translation symmetry, which means that all the unit cells are identical. In a perfect periodic lattice, which is assumed to be infinite, all atoms are identical. At equilibrium each atom is assumed to be located at its lattice site. The force at any atom due to other atoms just cancels out so the net force at each atom is zero. These conditions break down in a distorted lattice in which atoms get displaced from their positions of equilibrium.[34] The lattice distortion may be caused by an externally applied force. The lattice can also be distorted by introducing a defect in the lattice or displacing an atom that disturbs the equilibrium configuration and induces a force on the lattice sites. This is shown in Fig. 1. The objective of the mathematical model is to calculate the resulting values of the atomic displacements.

The GF in the MSGF method is calculated by minimizing the total energy of the lattice.[35] The potential energy of the lattice in the form of an infinite Taylor series in atomic displacements in the harmonic approximation as follows

    $W = -\sum_{L,a} f_a(L)u_a(L) + \frac 1 2 \sum_{L,a} \sum_{L',b} K_{ab}(L,L') u_a(L) u_b(L') \qquad\qquad (1)$

where _L_ and _L_′ label the atoms, _a_ and _b_ denote the Cartesian coordinates, _u_ denotes the atomic displacement, and −_f_ and _K_ are the first and second coefficients in the Taylor series. They are defined by[36]

    $f_a(L) = -\frac{\partial W}{\partial u_a(L)},\qquad\qquad(2)$

and

    $K_{ab}(L,L')= \frac{\partial^2 W}{\partial u_a(L)\,\partial u_b(L')}, \qquad\qquad(3)$

where the derivatives are evaluated at zero displacements. The negative sign is introduced in the definition of _f_ for convenience. Thus _f_(_L_) is a 3D vector that denotes the force at the atom L. Its three Cartesian components are denoted by f_(a)(L) where _a_ = _x_, _y_, or _z_. Similarly K(L,L’) is a 3x3 matrix, which is called the force- constant matrix between the atoms at L and L’. Its 9 elements are denoted by _K__(_ab_)(_L_,_L_′) for _a_, _b_ = _x_, _y_, or _z_.

At equilibrium, the energy W is minimum.[37] Accordingly, the first derivative of W with respect to each U must be zero. This gives the following relation from Eq. (1)

    ∑_(L′, b)K_(ab)(L, L′)u_(b)(L′) = f_(a)(L).    (4)

It can be shown by direct substitution that the solution of Eq. (4) can be written as

    u_(a)(L) = ∑_(L′, b)G_(ab)(L, L′)f_(b)(L′)    (5)

where G is defined by the following inversion relation

    ∑_(L″, b″)K_(ab″)(L, L″)G_(b″b)(L″, L′) = δ(a, b)δ(L, L′).    (6)

In Eq. (6), _δ_(_m_,_n_) is the discrete delta function of two discrete variable m and _n_. Similar to the case of Dirac delta function for continuous variables, it is defined to be 1 if _m_ = _n_ and 0 otherwise.[38]

Equations (4)–(6) can be written in the matrix notation as follows:



\begin{align} K u & = f & & (7) \\ u & = G f & & (8) \\ \text{and } G & = K^{-1} & & (9) \end{align}

The matrices _K_ and _G_ in the above equations are 3_N_ × 3_N_ square matrices and _u_ and _f_ are 3_N_-dimensional column vectors, where N is the total number of atoms in the lattice. The matrix _G_ is the multiparticle GF and is referred to as the lattice statics Green’s function (LSGF),.[39] If _G_ is known, the atomic displacements for all atoms can be calculated by using Eq. (8).

One of the main objectives of modeling is the calculation of the atomistic displacements U caused by an applied force F. [40] The displacements, in principle, are given by Eq. (8). However, it involves inversion of the matrix K which is 3N x 3N. For any calculation of practical interest N ~ 10,000 but preferably a million for more realistic simulations. Inversion of such a large matrix is computationally extensive and special techniques are needed for the calculation of u’s. For regular periodic lattices, LSGF is one such technique. It consists of calculating G in terms of its Fourier transform, and is similar to the calculation of the phonon GF.[41]

The LSGF method has now been generalized to include the multiscale effects in the MSGF method.[42] The MSGF method is capable of linking length scales seamlessly. This property has been used in developing a hybrid MSGF method that combines the GF and the MD methods and has been used for simulating less symmetric nanoinclusions such as quantum dots in semiconductors.[43]

For a perfect lattice without defects, the MSGF links directly the atomistic scales in LSGF to the macroscopic scales through the continuum model. A perfect lattice has full translation symmetry so all the atoms are equivalent. In this case any atom can be chosen as the origin and G(L,L') can be expressed by a single index (L'-L)[44] defined as

    G(L, L′) = G(0, L − L′) = G(L′ − L)    (10)

The asymptotic limit of _G_(_L_), that satisfies Eq. (10), for large values of _R_(_L_) is given by[45]

    lim_(R(L) → ∞)[G(0, L)] → G_(c)(x) + O(1/x⁴)    (11)

where _x_ = _R_(_L_) is the position vector of the atom _L_, and _G__(_c_)(_x_) is the continuum Green's function (CGF), which is defined in terms of the elastic constants and used in modeling of conventional bulk materials at macroscales.[46][47] In Eq. (11), O(1/_x_^(_n_)) is the standard mathematical notation for a term of order 1/_x_^(_n_) and higher. The magnitude of _G__(_c_)(_x_) is O(1/_x_²).[48] The LSGF _G_(0,_L_) in this equation reduces smoothly and automatically to the CGF for large enough _x_ as terms O(1/_x_⁴) become gradually small and negligible. This ensures the seamless linkage of the atomistic length scale to the macroscopic continuum scale.[49]

Equations (8) and (9) along with the limiting relation given by Eq. (11), form the basic equations for the MSGF.[50] Equation (9) gives the LSGF, which is valid at the atomistic scales and Eq. (11) relates it to the CGF, which is valid at the macro continuum scales. This equation also shows that the LSGF reduces seamlessly to the CGF.


MSGF method for calculating the effect of defects and discontinuities in nanomaterials

If a lattice contains defects, its translation symmetry is broken. Consequently, it is not possible to express _G_ in terms of a single distance variable _R_(_L_). Hence Eq. (10) is not valid anymore and the correspondence between the LSGF and the CGF, needed for their seamless linking breaks down.[51] In such cases the MSGF links the lattice and the continuum scales by using the following procedure:[52]

If P denotes the change in the matrix K, caused by the defect(s), the force constant matrix K* for the defective lattice is written as

    K^(*) = K − p    (12)

As in the case for the perfect lattice in Eq. (9), the corresponding defect GF is defined as the inverse of the full _K*_ matrix. Use of Eq. (12), then leads to the following Dyson’s equation for the defect LSGF:[53]

    G^(*) = G + GpG^(*)    (13)

The MSGF method consists of solving Eq. (13) for _G*_ by using the matrix partitioning technique or double Fourier transform.[54]

Once _G*_ is known, the displacement vector is given by the following GF equation similar to Eq. (8):

U= G* F (14)

Equation (14) gives the desired solution, that is, the atomic displacements or the lattice distortion caused by the force F. However, it does not show the linkage of the lattice and the continuum multiple scales, because Eqs. (10) and (11) are not valid for the defect LSGF G*. The linkage between the lattice and the continuum model in case of lattice with defects is achieved by using an exact transformation described below.[55]

Using Eq.(13), Eq. (14) can be written in the following exactly equivalent form:

U = GF + G P G* F . (15)

Use of Eq. (14) again on the right hand side of Eq. (15) gives,

U = G F* (16)

where

F* = F + P U. (17)

Note that Eq. (17) defines an effective force F* such that Eqs. (14) and (16) are exactly equivalent.

Equation (16) expresses the atomic displacements U in terms of G, the perfect LSGF even for lattices with defects. The effect of the defects is included exactly in F*. The LSGF G is independent of F or F* and reduces to the CGF asymptotically and smoothly as given in Eq. (11). The effective force F* can be determined in a separate calculation by using an independent method if needed, and the lattice statics or the continuum model can be used for G. This is the basis of a hybrid model that combines MSGF and MD for simulating a germanium quantum dot in a silicon lattice.[56]

Equation (16) is the master equation of the MSGF method.[57][58] It is truly multiscale. All the discrete atomistic contributions are included in F*. The Green's function G can be calculated independently, which can be fully atomistic for nanomaterials or partly or fully continuum for macroscales to account for surfaces and interfaces in material systems as needed [59]


References

Category:Generalized functions

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

[41]

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