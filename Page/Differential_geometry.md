Hyperbolic_triangle.svg), as well as two diverging ultraparallel lines.]]

DIFFERENTIAL GEOMETRY is a mathematical discipline that uses the techniques of differential calculus, integral calculus, linear algebra and multilinear algebra to study problems in geometry. The theory of plane and space curves and surfaces in the three-dimensional Euclidean space formed the basis for development of differential geometry during the 18th century and the 19th century.

Since the late 19th century, differential geometry has grown into a field concerned more generally with the geometric structures on differentiable manifolds. Differential geometry is closely related to differential topology and the geometric aspects of the theory of differential equations. The differential geometry of surfaces captures many of the key ideas and techniques endemic to this field.


History of development

Differential geometry arose and developed as a result of and in connection to the mathematical analysis of curves and surfaces.[1] Mathematical analysis of curves and surfaces had been developed to answer some of the nagging and unanswered questions that appeared in calculus, like the reasons for relationships between complex shapes and curves, series and analytic functions. These unanswered questions indicated greater, hidden relationships.

The general idea of natural equations for obtaining curves from local curvature appears to have been first considered by Leonhard Euler in 1736, and many examples with fairly simple behavior were studied in the 1800s.[2]

When curves, surfaces enclosed by curves, and points on curves were found to be quantitatively, and generally, related by mathematical forms, the formal study of the nature of curves and surfaces became a field of study in its own right, with Monge's paper in 1795, and especially, with Gauss's publication of his article, titled 'Disquisitiones Generales Circa Superficies Curvas', in _Commentationes Societatis Regiae Scientiarum Gottingesis Recentiores_ in 1827.'Disquisitiones Generales Circa Superficies Curvas' (literal translation from Latin: General Investigations of Curved Surfaces), _Commentationes Societatis Regiae Scientiarum Gottingesis Recentiores_ (literally, Recent Perspectives, Gottingen's Royal Society of Science). Volume VI, pp. 99–146. A translation of the work, by A.M.Hiltebeitel and J.C.Morehead, titled, "General Investigations of Curved Surfaces" was published 1965 by Raven Press, New York. A digitised version of the same is available at http://quod.lib.umich.edu/u/umhistmath/abr1255.0001.001 for free download, for non-commercial, personal use. In case of further information, the library could be contacted.

Also, the Wikipedia article on Gauss's works in the year 1827 at could be looked at.

Initially applied to the Euclidean space, further explorations led to non-Euclidean space, and metric and topological spaces.


Branches

Riemannian geometry

Riemannian geometry studies Riemannian manifolds, smooth manifolds with a _Riemannian metric_. This is a concept of distance expressed by means of a smooth positive definite symmetric bilinear form defined on the tangent space at each point. Riemannian geometry generalizes Euclidean geometry to spaces that are not necessarily flat, although they still resemble the Euclidean space at each point infinitesimally, i.e. in the first order of approximation. Various concepts based on length, such as the arc length of curves, area of plane regions, and volume of solids all possess natural analogues in Riemannian geometry. The notion of a directional derivative of a function from multivariable calculus is extended in Riemannian geometry to the notion of a covariant derivative of a tensor. Many concepts and techniques of analysis and differential equations have been generalized to the setting of Riemannian manifolds.

A distance-preserving diffeomorphism between Riemannian manifolds is called an isometry. This notion can also be defined _locally_, i.e. for small neighborhoods of points. Any two regular curves are locally isometric. However, the Theorema Egregium of Carl Friedrich Gauss showed that for surfaces, the existence of a local isometry imposes strong compatibility conditions on their metrics: the Gaussian curvatures at the corresponding points must be the same. In higher dimensions, the Riemann curvature tensor is an important pointwise invariant associated with a Riemannian manifold that measures how close it is to being flat. An important class of Riemannian manifolds is the Riemannian symmetric spaces, whose curvature is not necessarily constant. These are the closest analogues to the "ordinary" plane and space considered in Euclidean and non-Euclidean geometry.

Pseudo-Riemannian geometry

Pseudo-Riemannian geometry generalizes Riemannian geometry to the case in which the metric tensor need not be positive-definite. A special case of this is a Lorentzian manifold, which is the mathematical basis of Einstein's general relativity theory of gravity.

Finsler geometry

Finsler geometry has _Finsler manifolds_ as the main object of study. This is a differential manifold with a _Finsler metric_, that is, a Banach norm defined on each tangent space. Riemannian manifolds are special cases of the more general Finsler manifolds. A Finsler structure on a manifold is a function such that:

1.  for all in ,

2.  is infinitely differentiable in ,

3.  The vertical Hessian of is positive definite.

Symplectic geometry

Symplectic geometry is the study of symplectic manifolds. An ALMOST SYMPLECTIC MANIFOLD is a differentiable manifold equipped with a smoothly varying non-degenerate skew-symmetric bilinear form on each tangent space, i.e., a nondegenerate 2-form _ω_, called the _symplectic form_. A symplectic manifold is an almost symplectic manifold for which the symplectic form _ω_ is closed: .

A diffeomorphism between two symplectic manifolds which preserves the symplectic form is called a symplectomorphism. Non-degenerate skew-symmetric bilinear forms can only exist on even-dimensional vector spaces, so symplectic manifolds necessarily have even dimension. In dimension 2, a symplectic manifold is just a surface endowed with an area form and a symplectomorphism is an area-preserving diffeomorphism. The phase space of a mechanical system is a symplectic manifold and they made an implicit appearance already in the work of Joseph Louis Lagrange on analytical mechanics and later in Carl Gustav Jacobi's and William Rowan Hamilton's formulations of classical mechanics.

By contrast with Riemannian geometry, where the curvature provides a local invariant of Riemannian manifolds, Darboux's theorem states that all symplectic manifolds are locally isomorphic. The only invariants of a symplectic manifold are global in nature and topological aspects play a prominent role in symplectic geometry. The first result in symplectic topology is probably the Poincaré–Birkhoff theorem, conjectured by Henri Poincaré and then proved by G.D. Birkhoff in 1912. It claims that if an area preserving map of an annulus twists each boundary component in opposite directions, then the map has at least two fixed points.[3]

Contact geometry

Contact geometry deals with certain manifolds of odd dimension. It is close to symplectic geometry and like the latter, it originated in questions of classical mechanics. A _contact structure_ on a -dimensional manifold _M_ is given by a smooth hyperplane field _H_ in the tangent bundle that is as far as possible from being associated with the level sets of a differentiable function on _M_ (the technical term is "completely nonintegrable tangent hyperplane distribution"). Near each point _p_, a hyperplane distribution is determined by a nowhere vanishing 1-form α, which is unique up to multiplication by a nowhere vanishing function:

    H_(p) = ker α_(p) ⊂ T_(p)M.

A local 1-form on _M_ is a _contact form_ if the restriction of its exterior derivative to _H_ is a non-degenerate two-form and thus induces a symplectic structure on _H__(_p_) at each point. If the distribution _H_ can be defined by a global one-form α then this form is contact if and only if the top-dimensional form

    α ∧ (dα)^(n)

is a volume form on _M_, i.e. does not vanish anywhere. A contact analogue of the Darboux theorem holds: all contact structures on an odd-dimensional manifold are locally isomorphic and can be brought to a certain local normal form by a suitable choice of the coordinate system.

Complex and Kähler geometry

_Complex differential geometry_ is the study of complex manifolds. An almost complex manifold is a _real_ manifold M, endowed with a tensor of type (1, 1), i.e. a vector bundle endomorphism (called an _almost complex structure_)

_J_ : _T__M_ → _T__M_
, such that J² =  − 1. 

It follows from this definition that an almost complex manifold is even-dimensional.

An almost complex manifold is called _complex_ if N_(J) = 0, where N_(J) is a tensor of type (2, 1) related to J, called the Nijenhuis tensor (or sometimes the _torsion_). An almost complex manifold is complex if and only if it admits a holomorphic coordinate atlas. An _almost Hermitian structure_ is given by an almost complex structure _J_, along with a Riemannian metric _g_, satisfying the compatibility condition

_g_(_J__X_, _J__Y_) = _g_(_X_, _Y_) 
.

An almost Hermitian structure defines naturally a differential two-form

_ω__(_J_, _g_)(_X_, _Y_) := _g_(_J__X_, _Y_) 
.

The following two conditions are equivalent:

1.  N_(J) = 0 and dω = 0 
2.  ∇J = 0 

where ∇ is the Levi-Civita connection of g. In this case, (J, g) is called a _Kähler structure_, and a _Kähler manifold_ is a manifold endowed with a Kähler structure. In particular, a Kähler manifold is both a complex and a symplectic manifold. A large class of Kähler manifolds (the class of Hodge manifolds) is given by all the smooth complex projective varieties.

CR geometry

CR geometry is the study of the intrinsic geometry of boundaries of domains in complex manifolds.

Differential topology

Differential topology is the study of global geometric invariants without a metric or symplectic form.

Differential topology starts from the natural operations such as Lie derivative of natural vector bundles and de Rham differential of forms. Beside Lie algebroids, also Courant algebroids start playing a more important role.

Lie groups

A Lie group is a group in the category of smooth manifolds. Beside the algebraic properties this enjoys also differential geometric properties. The most obvious construction is that of a Lie algebra which is the tangent space at the unit endowed with the Lie bracket between left-invariant vector fields. Beside the structure theory there is also the wide field of representation theory.


Bundles and connections

The apparatus of vector bundles, principal bundles, and connections on bundles plays an extraordinarily important role in modern differential geometry. A smooth manifold always carries a natural vector bundle, the tangent bundle. Loosely speaking, this structure by itself is sufficient only for developing analysis on the manifold, while doing geometry requires, in addition, some way to relate the tangent spaces at different points, i.e. a notion of parallel transport. An important example is provided by affine connections. For a surface in R³, tangent planes at different points can be identified using a natural path-wise parallelism induced by the ambient Euclidean space, which has a well-known standard definition of metric and parallelism. In Riemannian geometry, the Levi-Civita connection serves a similar purpose. (The Levi-Civita connection defines path-wise parallelism in terms of a given arbitrary Riemannian metric on a manifold.) More generally, differential geometers consider spaces with a vector bundle and an arbitrary affine connection which is not defined in terms of a metric. In physics, the manifold may be the space-time continuum and the bundles and connections are related to various physical fields.


Intrinsic versus extrinsic

From the beginning and through the middle of the 18th century, differential geometry was studied from the _extrinsic_ point of view: curves and surfaces were considered as lying in a Euclidean space of higher dimension (for example a surface in an ambient space of three dimensions). The simplest results are those in the differential geometry of curves and differential geometry of surfaces. Starting with the work of Riemann, the _intrinsic_ point of view was developed, in which one cannot speak of moving "outside" the geometric object because it is considered to be given in a free-standing way. The fundamental result here is Gauss's theorema egregium, to the effect that Gaussian curvature is an intrinsic invariant.

The intrinsic point of view is more flexible. For example, it is useful in relativity where space-time cannot naturally be taken as extrinsic (what would be "outside" of it?). However, there is a price to pay in technical complexity: the intrinsic definitions of curvature and connections become much less visually intuitive.

These two points of view can be reconciled, i.e. the extrinsic geometry can be considered as a structure additional to the intrinsic one. (See the Nash embedding theorem.) In the formalism of geometric calculus both extrinsic and intrinsic geometry of a manifold can be characterized by a single bivector-valued one-form called the shape operator.[4]


Applications

Below are some examples of how differential geometry is applied to other fields of science and mathematics.

-   In physics, differential geometry has many applications, including:
    -   Differential geometry is the language in which Einstein's general theory of relativity is expressed. According to the theory, the universe is a smooth manifold equipped with a pseudo-Riemannian metric, which describes the curvature of space-time. Understanding this curvature is essential for the positioning of satellites into orbit around the earth. Differential geometry is also indispensable in the study of gravitational lensing and black holes.
    -   Differential forms are used in the study of electromagnetism.
    -   Differential geometry has applications to both Lagrangian mechanics and Hamiltonian mechanics. Symplectic manifolds in particular can be used to study Hamiltonian systems.
    -   Riemannian geometry and contact geometry have been used to construct the formalism of geometrothermodynamics which has found applications in classical equilibrium thermodynamics.
-   In chemistry and biophysics when modelling cell membrane structure under varying pressure.
-   In economics, differential geometry has applications to the field of econometrics.[5]
-   Geometric modeling (including computer graphics) and computer-aided geometric design draw on ideas from differential geometry.
-   In engineering, differential geometry can be applied to solve problems in digital signal processing.[6]
-   In control theory, differential geometry can be used to analyze nonlinear controllers, particularly geometric control[7]
-   In probability, statistics, and information theory, one can interpret various structures as Riemannian manifolds, which yields the field of information geometry, particularly via the Fisher information metric.
-   In structural geology, differential geometry is used to analyze and describe geologic structures.
-   In computer vision, differential geometry is used to analyze shapes.[8]
-   In image processing, differential geometry is used to process and analyse data on non-flat surfaces.[9]
-   Grigori Perelman's proof of the Poincaré conjecture using the techniques of Ricci flows demonstrated the power of the differential-geometric approach to questions in topology and it highlighted the important role played by its analytic methods.
-   In wireless communications, Grassmannian manifolds are used for beamforming techniques in multiple antenna systems.[10]


See also

-   Abstract differential geometry
-   Affine differential geometry
-   Analysis on fractals
-   Basic introduction to the mathematics of curved spacetime
-   Discrete differential geometry
-   Gauss
-   Glossary of differential geometry and topology
-   Important publications in differential geometry
-   Important publications in differential topology
-   Integral geometry
-   List of differential geometry topics
-   Noncommutative geometry
-   Projective differential geometry
-   Synthetic differential geometry
-   Systolic geometry


References


Further reading

-   -   -   Classical geometric approach to differential geometry without tensor analysis.

-   -   -   -   Good classical geometric approach to differential geometry with tensor machinery.

-   -   -   -


External links

-   -   B. Conrad. Differential Geometry handouts, Stanford University
-   Michael Murray's online differential geometry course, 1996
-   A Modern Course on Curves and Surface, Richard S Palais, 2003
-   Richard Palais's 3DXM Surfaces Gallery
-   Balázs Csikós's Notes on Differential Geometry
-   N. J. Hicks, Notes on Differential Geometry, Van Nostrand.
-   MIT OpenCourseWare: Differential Geometry, Fall 2008

Differential_geometry Category:Geometry processing

[1] http://www.encyclopediaofmath.org/index.php/Differential_geometry be

[2]

[3] The area preserving condition (or the twisting condition) cannot be removed. If one tries to extend such a theorem to higher dimensions, one would probably guess that a volume preserving map of a certain type must have fixed points. This is false in dimensions greater than 3.

[4]  There is also a pdf available of a scientific talk on the subject

[5]

[6]

[7]

[8]

[9]

[10]