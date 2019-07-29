Togliatti_surface.png is an algebraic surface of degree five. The picture represents a portion of its real locus.]]

ALGEBRAIC GEOMETRY is a branch of mathematics, classically studying zeros of multivariate polynomials. Modern algebraic geometry is based on the use of abstract algebraic techniques, mainly from commutative algebra, for solving geometrical problems about these sets of zeros.

The fundamental objects of study in algebraic geometry are algebraic varieties, which are geometric manifestations of solutions of systems of polynomial equations. Examples of the most studied classes of algebraic varieties are: plane algebraic curves, which include lines, circles, parabolas, ellipses, hyperbolas, cubic curves like elliptic curves, and quartic curves like lemniscates and Cassini ovals. A point of the plane belongs to an algebraic curve if its coordinates satisfy a given polynomial equation. Basic questions involve the study of the points of special interest like the singular points, the inflection points and the points at infinity. More advanced questions involve the topology of the curve and relations between the curves given by different equations.

Algebraic geometry occupies a central place in modern mathematics and has multiple conceptual connections with such diverse fields as complex analysis, topology and number theory. Initially a study of systems of polynomial equations in several variables, the subject of algebraic geometry starts where equation solving leaves off, and it becomes even more important to understand the intrinsic properties of the totality of solutions of a system of equations, than to find a specific solution; this leads into some of the deepest areas in all of mathematics, both conceptually and in terms of technique.

In the 20th century, algebraic geometry split into several subareas.

-   The mainstream of algebraic geometry is devoted to the study of the complex points of the algebraic varieties and more generally to the points with coordinates in an algebraically closed field.
-   Real algebraic geometry is the study of the real points of an algebraic variety.
-   Diophantine geometry and, more generally, arithmetic geometry is the study of the points of an algebraic variety with coordinates in fields that are not algebraically closed and occur in algebraic number theory, such as the field of rational numbers, number fields, finite fields, function fields, and _p_-adic fields.
-   A large part of singularity theory is devoted to the singularities of algebraic varieties.
-   Computational algebraic geometry is an area that has emerged at the intersection of algebraic geometry and computer algebra, with the rise of computers. It consists mainly of algorithm design and software development for the study of properties of explicitly given algebraic varieties.

Much of the development of the mainstream of algebraic geometry in the 20th century occurred within an abstract algebraic framework, with increasing emphasis being placed on "intrinsic" properties of algebraic varieties not dependent on any particular way of embedding the variety in an ambient coordinate space; this parallels developments in topology, differential and complex geometry. One key achievement of this abstract algebraic geometry is Grothendieck's scheme theory which allows one to use sheaf theory to study algebraic varieties in a way which is very similar to its use in the study of differential and analytic manifolds. This is obtained by extending the notion of point: In classical algebraic geometry, a point of an affine variety may be identified, through Hilbert's Nullstellensatz, with a maximal ideal of the coordinate ring, while the points of the corresponding affine scheme are all prime ideals of this ring. This means that a point of such a scheme may be either a usual point or a subvariety. This approach also enables a unification of the language and the tools of classical algebraic geometry, mainly concerned with complex points, and of algebraic number theory. Wiles' proof of the longstanding conjecture called Fermat's last theorem is an example of the power of this approach.


Basic notions

Zeros of simultaneous polynomials

Slanted_circle.png In classical algebraic geometry, the main objects of interest are the vanishing sets of collections of polynomials, meaning the set of all points that simultaneously satisfy one or more polynomial equations. For instance, the two-dimensional sphere of radius 1 in three-dimensional Euclidean space R³ could be defined as the set of all points (_x_,_y_,_z_) with

_x_² + _y_² + _z_² − 1 = 0. 

A "slanted" circle in R³ can be defined as the set of all points (_x_,_y_,_z_) which satisfy the two polynomial equations

_x_² + _y_² + _z_² − 1 = 0, 

_x_ + _y_ + _z_ = 0. 

Affine varieties

First we start with a field _k_. In classical algebraic geometry, this field was always the complex numbers C, but many of the same results are true if we assume only that _k_ is algebraically closed. We consider the affine space of dimension _n_ over _k_, denoted A^(n)(_k_) (or more simply A^(_n_), when _k_ is clear from the context). When one fixes a coordinate system, one may identify A^(n)(_k_) with _k_^(_n_). The purpose of not working with _k_^(_n_) is to emphasize that one "forgets" the vector space structure that _k_^(n) carries.

A function _f_ : A^(_n_) → A¹ is said to be _polynomial_ (or _regular_) if it can be written as a polynomial, that is, if there is a polynomial _p_ in _k_[_x_₁,...,_x__(_n_)] such that _f_(_M_) = _p_(_t_₁,...,_t__(_n_)) for every point _M_ with coordinates (_t_₁,...,_t__(_n_)) in A^(_n_). The property of a function to be polynomial (or regular) does not depend on the choice of a coordinate system in A^(_n_).

When a coordinate system is chosen, the regular functions on the affine _n_-space may be identified with the ring of polynomial functions in _n_ variables over _k_. Therefore, the set of the regular functions on A^(_n_) is a ring, which is denoted _k_[A^(_n_)].

We say that a polynomial _vanishes_ at a point if evaluating it at that point gives zero. Let _S_ be a set of polynomials in _k_[A^(n)]. The _vanishing set of S_ (or _vanishing locus_ or _zero set_) is the set _V_(_S_) of all points in A^(_n_) where every polynomial in _S_ vanishes. Symbolically,

_V_(_S_) = {(_t_₁, …, _t__(_n_)) ∣ _p_(_t_₁, …, _t__(_n_)) = 0 for all _p_ ∈ _S_}. 

A subset of A^(_n_) which is _V_(_S_), for some _S_, is called an _algebraic set_. The _V_ stands for _variety_ (a specific type of algebraic set to be defined below).

Given a subset _U_ of A^(_n_), can one recover the set of polynomials which generate it? If _U_ is _any_ subset of A^(_n_), define _I_(_U_) to be the set of all polynomials whose vanishing set contains _U_. The _I_ stands for ideal: if two polynomials _f_ and _g_ both vanish on _U_, then _f_+_g_ vanishes on _U_, and if _h_ is any polynomial, then _hf_ vanishes on _U_, so _I_(_U_) is always an ideal of the polynomial ring _k_[A^(_n_)].

Two natural questions to ask are:

-   Given a subset _U_ of A^(_n_), when is _U_ = _V_(_I_(_U_))?
-   Given a set _S_ of polynomials, when is _S_ = _I_(_V_(_S_))?

The answer to the first question is provided by introducing the Zariski topology, a topology on A^(_n_) whose closed sets are the algebraic sets, and which directly reflects the algebraic structure of _k_[A^(_n_)]. Then _U_ = _V_(_I_(_U_)) if and only if _U_ is an algebraic set or equivalently a Zariski-closed set. The answer to the second question is given by Hilbert's Nullstellensatz. In one of its forms, it says that _I_(_V_(_S_)) is the radical of the ideal generated by _S_. In more abstract language, there is a Galois connection, giving rise to two closure operators; they can be identified, and naturally play a basic role in the theory; the example is elaborated at Galois connection.

For various reasons we may not always want to work with the entire ideal corresponding to an algebraic set _U_. Hilbert's basis theorem implies that ideals in _k_[A^(_n_)] are always finitely generated.

An algebraic set is called _irreducible_ if it cannot be written as the union of two smaller algebraic sets. Any algebraic set is a finite union of irreducible algebraic sets and this decomposition is unique. Thus its elements are called the _irreducible components_ of the algebraic set. An irreducible algebraic set is also called a _variety_. It turns out that an algebraic set is a variety if and only if it may be defined as the vanishing set of a prime ideal of the polynomial ring.

Some authors do not make a clear distinction between algebraic sets and varieties and use _irreducible variety_ to make the distinction when needed.

Regular functions

Just as continuous functions are the natural maps on topological spaces and smooth functions are the natural maps on differentiable manifolds, there is a natural class of functions on an algebraic set, called _regular functions_ or _polynomial functions_. A regular function on an algebraic set _V_ contained in A^(_n_) is the restriction to _V_ of a regular function on A^(_n_). For an algebraic set defined on the field of the complex numbers, the regular functions are smooth and even analytic.

It may seem unnaturally restrictive to require that a regular function always extend to the ambient space, but it is very similar to the situation in a normal topological space, where the Tietze extension theorem guarantees that a continuous function on a closed subset always extends to the ambient topological space.

Just as with the regular functions on affine space, the regular functions on _V_ form a ring, which we denote by _k_[_V_]. This ring is called the _coordinate ring of V_.

Since regular functions on V come from regular functions on A^(_n_), there is a relationship between the coordinate rings. Specifically, if a regular function on _V_ is the restriction of two functions _f_ and _g_ in _k_[A^(_n_)], then _f_ − _g_ is a polynomial function which is null on _V_ and thus belongs to _I_(_V_). Thus _k_[_V_] may be identified with _k_[A^(_n_)]/_I_(_V_).

Morphism of affine varieties

Using regular functions from an affine variety to A¹, we can define regular maps from one affine variety to another. First we will define a regular map from a variety into affine space: Let _V_ be a variety contained in A^(_n_). Choose _m_ regular functions on _V_, and call them _f_₁, ..., _f__(_m_). We define a _regular map_ _f_ from _V_ to A^(_m_) by letting . In other words, each _f__(_i_) determines one coordinate of the range of _f_.

If _V_′ is a variety contained in A^(_m_), we say that _f_ is a _regular map_ from _V_ to _V_′ if the range of _f_ is contained in _V_′.

The definition of the regular maps apply also to algebraic sets. The regular maps are also called _morphisms_, as they make the collection of all affine algebraic sets into a category, where the objects are the affine algebraic sets and the morphisms are the regular maps. The affine varieties is a subcategory of the category of the algebraic sets.

Given a regular map _g_ from _V_ to _V_′ and a regular function _f_ of _k_[_V_′], then . The map is a ring homomorphism from _k_[_V_′] to _k_[_V_]. Conversely, every ring homomorphism from _k_[_V_′] to _k_[_V_] defines a regular map from _V_ to _V_′. This defines an equivalence of categories between the category of algebraic sets and the opposite category of the finitely generated reduced _k_-algebras. This equivalence is one of the starting points of scheme theory.

Rational function and birational equivalence

In contrast to the preceding sections, this section concerns only varieties and not algebraic sets. On the other hand, the definitions extend naturally to projective varieties (next section), as an affine variety and its projective completion have the same field of functions.

If _V_ is an affine variety, its coordinate ring is an integral domain and has thus a field of fractions which is denoted _k_(_V_) and called the _field of the rational functions_ on _V_ or, shortly, the _function field_ of _V_. Its elements are the restrictions to _V_ of the rational functions over the affine space containing _V_. The domain of a rational function _f_ is not _V_ but the complement of the subvariety (a hypersurface) where the denominator of _f_ vanishes.

As with regular maps, one may define a _rational map_ from a variety _V_ to a variety _V_'. As with the regular maps, the rational maps from _V_ to _V_' may be identified to the field homomorphisms from _k_(_V_') to _k_(_V_).

Two affine varieties are _birationally equivalent_ if there are two rational functions between them which are inverse one to the other in the regions where both are defined. Equivalently, they are birationally equivalent if their function fields are isomorphic.

An affine variety is a _rational variety_ if it is birationally equivalent to an affine space. This means that the variety admits a rational parameterization. For example, the circle of equation x² + y² − 1 = 0 is a rational curve, as it has the parameterization

$$x=\frac{2\,t}{1+t^2}$$

$$y=\frac{1-t^2}{1+t^2}\,,$$
which may also be viewed as a rational map from the line to the circle.

The problem of resolution of singularities is to know if every algebraic variety is birationally equivalent to a variety whose projective completion is nonsingular (see also smooth completion). It was solved in the affirmative in characteristic 0 by Heisuke Hironaka in 1964 and is yet unsolved in finite characteristic.

Projective variety

Parabola_&_cubic_curve_in_projective_space.png Just as the formulas for the roots of second, third, and fourth degree polynomials suggest extending real numbers to the more algebraically complete setting of the complex numbers, many properties of algebraic varieties suggest extending affine space to a more geometrically complete projective space. Whereas the complex numbers are obtained by adding the number _i_, a root of the polynomial , projective space is obtained by adding in appropriate points "at infinity", points where parallel lines may meet.

To see how this might come about, consider the variety . If we draw it, we get a parabola. As _x_ goes to positive infinity, the slope of the line from the origin to the point (_x_, _x_²) also goes to positive infinity. As _x_ goes to negative infinity, the slope of the same line goes to negative infinity.

Compare this to the variety _V_(_y_ − _x_³). This is a cubic curve. As _x_ goes to positive infinity, the slope of the line from the origin to the point (_x_, _x_³) goes to positive infinity just as before. But unlike before, as _x_ goes to negative infinity, the slope of the same line goes to positive infinity as well; the exact opposite of the parabola. So the behavior "at infinity" of _V_(_y_ − _x_³) is different from the behavior "at infinity" of _V_(_y_ − _x_²).

The consideration of the _projective completion_ of the two curves, which is their prolongation "at infinity" in the projective plane, allows us to quantify this difference: the point at infinity of the parabola is a regular point, whose tangent is the line at infinity, while the point at infinity of the cubic curve is a cusp. Also, both curves are rational, as they are parameterized by _x_, and the Riemann-Roch theorem implies that the cubic curve must have a singularity, which must be at infinity, as all its points in the affine space are regular.

Thus many of the properties of algebraic varieties, including birational equivalence and all the topological properties, depend on the behavior "at infinity" and so it is natural to study the varieties in projective space. Furthermore, the introduction of projective techniques made many theorems in algebraic geometry simpler and sharper: For example, Bézout's theorem on the number of intersection points between two varieties can be stated in its sharpest form only in projective space. For these reasons, projective space plays a fundamental role in algebraic geometry.

Nowadays, the _projective space_ P^(_n_) of dimension _n_ is usually defined as the set of the lines passing through a point, considered as the origin, in the affine space of dimension , or equivalently to the set of the vector lines in a vector space of dimension . When a coordinate system has been chosen in the space of dimension , all the points of a line have the same set of coordinates, up to the multiplication by an element of _k_. This defines the homogeneous coordinates of a point of P^(_n_) as a sequence of elements of the base field _k_, defined up to the multiplication by a nonzero element of _k_ (the same for the whole sequence).

A polynomial in variables vanishes at all points of a line passing through the origin if and only if it is homogeneous. In this case, one says that the polynomial _vanishes_ at the corresponding point of P^(_n_). This allows us to define a _projective algebraic set_ in P^(_n_) as the set , where a finite set of homogeneous polynomials vanishes. Like for affine algebraic sets, there is a bijection between the projective algebraic sets and the reduced homogeneous ideals which define them. The _projective varieties_ are the projective algebraic sets whose defining ideal is prime. In other words, a projective variety is a projective algebraic set, whose homogeneous coordinate ring is an integral domain, the _projective coordinates ring_ being defined as the quotient of the graded ring or the polynomials in variables by the homogeneous (reduced) ideal defining the variety. Every projective algebraic set may be uniquely decomposed into a finite union of projective varieties.

The only regular functions which may be defined properly on a projective variety are the constant functions. Thus this notion is not used in projective situations. On the other hand, the _field of the rational functions_ or ''function field '' is a useful notion, which, similarly to the affine case, is defined as the set of the quotients of two homogeneous elements of the same degree in the homogeneous coordinate ring.


Real algebraic geometry

Real algebraic geometry is the study of the real points of algebraic varieties.

The fact that the field of the real numbers is an ordered field cannot be ignored in such a study. For example, the curve of equation x² + y² − a = 0 is a circle if a > 0, but does not have any real point if a < 0. It follows that real algebraic geometry is not only the study of the real algebraic varieties, but has been generalized to the study of the _semi-algebraic sets_, which are the solutions of systems of polynomial equations and polynomial inequalities. For example, a branch of the hyperbola of equation xy − 1 = 0 is not an algebraic variety, but is a semi-algebraic set defined by xy − 1 = 0 and x > 0 or by xy − 1 = 0 and x + y > 0.

One of the challenging problems of real algebraic geometry is the unsolved Hilbert's sixteenth problem: Decide which respective positions are possible for the ovals of a nonsingular plane curve of degree 8.


Computational algebraic geometry

One may date the origin of computational algebraic geometry to meeting EUROSAM'79 (International Symposium on Symbolic and Algebraic Manipulation) held at Marseille, France in June 1979. At this meeting,

-   Dennis S. Arnon showed that George E. Collins's Cylindrical algebraic decomposition (CAD) allows the computation of the topology of semi-algebraic sets,
-   Bruno Buchberger presented the Gröbner bases and his algorithm to compute them,
-   Daniel Lazard presented a new algorithm for solving systems of homogeneous polynomial equations with a computational complexity which is essentially polynomial in the expected number of solutions and thus simply exponential in the number of the unknowns. This algorithm is strongly related with Macaulay's multivariate resultant.

Since then, most results in this area are related to one or several of these items either by using or improving one of these algorithms, or by finding algorithms whose complexity is simply exponential in the number of the variables.

A body of mathematical theory complementary to symbolic methods called numerical algebraic geometry has been developed over the last several decades. The main computational method is homotopy continuation. This supports, for example, a model of floating point computation for solving problems of algebraic geometry.

Gröbner basis

A Gröbner basis is a system of generators of a polynomial ideal whose computation allows the deduction of many properties of the affine algebraic variety defined by the ideal.

Given an ideal _I_ defining an algebraic set _V_:

-   _V_ is empty (over an algebraically closed extension of the basis field), if and only if the Gröbner basis for any monomial ordering is reduced to {1}.
-   By means of the Hilbert series one may compute the dimension and the degree of _V_ from any Gröbner basis of _I_ for a monomial ordering refining the total degree.
-   If the dimension of _V_ is 0, one may compute the points (finite in number) of _V_ from any Gröbner basis of _I_ (see Systems of polynomial equations).
-   A Gröbner basis computation allows one to remove from _V_ all irreducible components which are contained in a given hypersurface.
-   A Gröbner basis computation allows one to compute the Zariski closure of the image of _V_ by the projection on the _k_ first coordinates, and the subset of the image where the projection is not proper.
-   More generally Gröbner basis computations allow one to compute the Zariski closure of the image and the critical points of a rational function of _V_ into another affine variety.

Gröbner basis computations do not allow one to compute directly the primary decomposition of _I_ nor the prime ideals defining the irreducible components of _V_, but most algorithms for this involve Gröbner basis computation. The algorithms which are not based on Gröbner bases use regular chains but may need Gröbner bases in some exceptional situations.

Gröbner bases are deemed to be difficult to compute. In fact they may contain, in the worst case, polynomials whose degree is doubly exponential in the number of variables and a number of polynomials which is also doubly exponential. However, this is only a worst case complexity, and the complexity bound of Lazard's algorithm of 1979 may frequently apply. Faugère F5 algorithm realizes this complexity, as it may be viewed as an improvement of Lazard's 1979 algorithm. It follows that the best implementations allow one to compute almost routinely with algebraic sets of degree more than 100. This means that, presently, the difficulty of computing a Gröbner basis is strongly related to the intrinsic difficulty of the problem.

Cylindrical algebraic decomposition (CAD)

CAD is an algorithm which was introduced in 1973 by G. Collins to implement with an acceptable complexity the Tarski–Seidenberg theorem on quantifier elimination over the real numbers.

This theorem concerns the formulas of the first-order logic whose atomic formulas are polynomial equalities or inequalities between polynomials with real coefficients. These formulas are thus the formulas which may be constructed from the atomic formulas by the logical operators _and_ (∧), _or_ (∨), _not_ (¬), _for all_ (∀) and _exists_ (∃). Tarski's theorem asserts that, from such a formula, one may compute an equivalent formula without quantifier (∀, ∃).

The complexity of CAD is doubly exponential in the number of variables. This means that CAD allows, in theory, to solve every problem of real algebraic geometry which may be expressed by such a formula, that is almost every problem concerning explicitly given varieties and semi-algebraic sets.

While Gröbner basis computation has doubly exponential complexity only in rare cases, CAD has almost always this high complexity. This implies that, unless if most polynomials appearing in the input are linear, it may not solve problems with more than four variables.

Since 1973, most of the research on this subject is devoted either to improve CAD or to find alternative algorithms in special cases of general interest.

As an example of the state of art, there are efficient algorithms to find at least a point in every connected component of a semi-algebraic set, and thus to test if a semi-algebraic set is empty. On the other hand, CAD is yet, in practice, the best algorithm to count the number of connected components.

Asymptotic complexity vs. practical efficiency

The basic general algorithms of computational geometry have a double exponential worst case complexity. More precisely, if _d_ is the maximal degree of the input polynomials and _n_ the number of variables, their complexity is at most d^(2^(cn)) for some constant _c_, and, for some inputs, the complexity is at least d^(2^(c′n)) for another constant _c_′.

During the last 20 years of 20th century, various algorithms have been introduced to solve specific subproblems with a better complexity. Most of these algorithms have a complexity d^(O(n²)).

Among these algorithms which solve a sub problem of the problems solved by Gröbner bases, one may cite _testing if an affine variety is empty_ and _solving nonhomogeneous polynomial systems which have a finite number of solutions._ Such algorithms are rarely implemented because, on most entries Faugère's F4 and F5 algorithms have a better practical efficiency and probably a similar or better complexity (_probably_ because the evaluation of the complexity of Gröbner basis algorithms on a particular class of entries is a difficult task which has been done only in a few special cases).

The main algorithms of real algebraic geometry which solve a problem solved by CAD are related to the topology of semi-algebraic sets. One may cite _counting the number of connected components_, _testing if two points are in the same components_ or _computing a Whitney stratification of a real algebraic set_. They have a complexity of d^(O(n²)), but the constant involved by _O_ notation is so high that using them to solve any nontrivial problem effectively solved by CAD, is impossible even if one could use all the existing computing power in the world. Therefore, these algorithms have never been implemented and this is an active research area to search for algorithms with have together a good asymptotic complexity and a good practical efficiency.


Abstract modern viewpoint

The modern approaches to algebraic geometry redefine and effectively extend the range of basic objects in various levels of generality to schemes, formal schemes, ind-schemes, algebraic spaces, algebraic stacks and so on. The need for this arises already from the useful ideas within theory of varieties, e.g. the formal functions of Zariski can be accommodated by introducing nilpotent elements in structure rings; considering spaces of loops and arcs, constructing quotients by group actions and developing formal grounds for natural intersection theory and deformation theory lead to some of the further extensions.

Most remarkably, in late 1950s, algebraic varieties were subsumed into Alexander Grothendieck's concept of a scheme. Their local objects are affine schemes or prime spectra which are locally ringed spaces which form a category which is antiequivalent to the category of commutative unital rings, extending the duality between the category of affine algebraic varieties over a field _k_, and the category of finitely generated reduced _k_-algebras. The gluing is along Zariski topology; one can glue within the category of locally ringed spaces, but also, using the Yoneda embedding, within the more abstract category of presheaves of sets over the category of affine schemes. The Zariski topology in the set theoretic sense is then replaced by a Grothendieck topology. Grothendieck introduced Grothendieck topologies having in mind more exotic but geometrically finer and more sensitive examples than the crude Zariski topology, namely the étale topology, and the two flat Grothendieck topologies: fppf and fpqc; nowadays some other examples became prominent including Nisnevich topology. Sheaves can be furthermore generalized to stacks in the sense of Grothendieck, usually with some additional representability conditions leading to Artin stacks and, even finer, Deligne-Mumford stacks, both often called algebraic stacks.

Sometimes other algebraic sites replace the category of affine schemes. For example, Nikolai Durov has introduced commutative algebraic monads as a generalization of local objects in a generalized algebraic geometry. Versions of a tropical geometry, of an absolute geometry over a field of one element and an algebraic analogue of Arakelov's geometry were realized in this setup.

Another formal generalization is possible to universal algebraic geometry in which every variety of algebras has its own algebraic geometry. The term _variety of algebras_ should not be confused with _algebraic variety_.

The language of schemes, stacks and generalizations has proved to be a valuable way of dealing with geometric concepts and became cornerstones of modern algebraic geometry.

Algebraic stacks can be further generalized and for many practical questions like deformation theory and intersection theory, this is often the most natural approach. One can extend the Grothendieck site of affine schemes to a higher categorical site of derived affine schemes, by replacing the commutative rings with an infinity category of differential graded commutative algebras, or of simplicial commutative rings or a similar category with an appropriate variant of a Grothendieck topology. One can also replace presheaves of sets by presheaves of simplicial sets (or of infinity groupoids). Then, in presence of an appropriate homotopic machinery one can develop a notion of derived stack as such a presheaf on the infinity category of derived affine schemes, which is satisfying certain infinite categorical version of a sheaf axiom (and to be algebraic, inductively a sequence of representability conditions). Quillen model categories, Segal categories and quasicategories are some of the most often used tools to formalize this yielding the _derived algebraic geometry_, introduced by the school of Carlos Simpson, including Andre Hirschowitz, Bertrand Toën, Gabrielle Vezzosi, Michel Vaquié and others; and developed further by Jacob Lurie, Bertrand Toën, and Gabrielle Vezzosi. Another (noncommutative) version of derived algebraic geometry, using A-infinity categories has been developed from early 1990s by Maxim Kontsevich and followers.


History

Before the 16th century

Some of the roots of algebraic geometry date back to the work of the Hellenistic Greeks from the 5th century BC. The Delian problem, for instance, was to construct a length _x_ so that the cube of side _x_ contained the same volume as the rectangular box _a_²_b_ for given sides _a_ and _b_. Menaechmus (circa 350 BC) considered the problem geometrically by intersecting the pair of plane conics _ay_ = _x_² and _xy_ = _ab_.[1] The later work, in the 3rd century BC, of Archimedes and Apollonius studied more systematically problems on conic sections,[2] and also involved the use of coordinates.[3] The Arab mathematicians were able to solve by purely algebraic means certain cubic equations, and then to interpret the results geometrically. This was done, for instance, by Ibn al-Haytham in the 10th century AD.[4] Subsequently, Persian mathematician Omar Khayyám (born 1048 A.D.) discovered a method for solving cubic equations by intersecting a parabola with a circle[5] and seems to have been the first to conceive a general theory of cubic equations.[6] A few years after Omar Khayyám, Sharaf al-Din al-Tusi's _Treatise on equations_ has been described as "inaugurating the beginning of algebraic geometry".[7]

Renaissance

Such techniques of applying geometrical constructions to algebraic problems were also adopted by a number of Renaissance mathematicians such as Gerolamo Cardano and Niccolò Fontana "Tartaglia" on their studies of the cubic equation. The geometrical approach to construction problems, rather than the algebraic one, was favored by most 16th and 17th century mathematicians, notably Blaise Pascal who argued against the use of algebraic and analytical methods in geometry.[8] The French mathematicians Franciscus Vieta and later René Descartes and Pierre de Fermat revolutionized the conventional way of thinking about construction problems through the introduction of coordinate geometry. They were interested primarily in the properties of _algebraic curves_, such as those defined by Diophantine equations (in the case of Fermat), and the algebraic reformulation of the classical Greek works on conics and cubics (in the case of Descartes).

During the same period, Blaise Pascal and Gérard Desargues approached geometry from a different perspective, developing the synthetic notions of projective geometry. Pascal and Desargues also studied curves, but from the purely geometrical point of view: the analog of the Greek _ruler and compass construction_. Ultimately, the analytic geometry of Descartes and Fermat won out, for it supplied the 18th century mathematicians with concrete quantitative tools needed to study physical problems using the new calculus of Newton and Leibniz. However, by the end of the 18th century, most of the algebraic character of coordinate geometry was subsumed by the _calculus of infinitesimals_ of Lagrange and Euler.

19th and early 20th century

It took the simultaneous 19th century developments of non-Euclidean geometry and Abelian integrals in order to bring the old algebraic ideas back into the geometrical fold. The first of these new developments was seized up by Edmond Laguerre and Arthur Cayley, who attempted to ascertain the generalized metric properties of projective space. Cayley introduced the idea of _homogeneous polynomial forms_, and more specifically quadratic forms, on projective space. Subsequently, Felix Klein studied projective geometry (along with other types of geometry) from the viewpoint that the geometry on a space is encoded in a certain class of transformations on the space. By the end of the 19th century, projective geometers were studying more general kinds of transformations on figures in projective space. Rather than the projective linear transformations which were normally regarded as giving the fundamental Kleinian geometry on projective space, they concerned themselves also with the higher degree birational transformations. This weaker notion of congruence would later lead members of the 20th century Italian school of algebraic geometry to classify algebraic surfaces up to birational isomorphism.

The second early 19th century development, that of Abelian integrals, would lead Bernhard Riemann to the development of Riemann surfaces.

In the same period began the algebraization of the algebraic geometry through commutative algebra. The prominent results in this direction are Hilbert's basis theorem and Hilbert's Nullstellensatz, which are the basis of the connexion between algebraic geometry and commutative algebra, and Macaulay's multivariate resultant, which is the basis of elimination theory. Probably because of the size of the computation which is implied by multivariate resultants, elimination theory was forgotten during the middle of the 20th century until it was renewed by singularity theory and computational algebraic geometry.[9]

20th century

B. L. van der Waerden, Oscar Zariski and André Weil developed a foundation for algebraic geometry based on contemporary commutative algebra, including valuation theory and the theory of ideals. One of the goals was to give a rigorous framework for proving the results of Italian school of algebraic geometry. In particular, this school used systematically the notion of generic point without any precise definition, which was first given by these authors during the 1930s.

In the 1950s and 1960s, Jean-Pierre Serre and Alexander Grothendieck recast the foundations making use of sheaf theory. Later, from about 1960, and largely led by Grothendieck, the idea of schemes was worked out, in conjunction with a very refined apparatus of homological techniques. After a decade of rapid development the field stabilized in the 1970s, and new applications were made, both to number theory and to more classical geometric questions on algebraic varieties, singularities, moduli, and formal moduli.

An important class of varieties, not easily understood directly from their defining equations, are the abelian varieties, which are the projective varieties whose points form an abelian group. The prototypical examples are the elliptic curves, which have a rich theory. They were instrumental in the proof of Fermat's last theorem and are also used in elliptic-curve cryptography.

In parallel with the abstract trend of the algebraic geometry, which is concerned with general statements about varieties, methods for effective computation with concretely-given varieties have also been developed, which lead to the new area of computational algebraic geometry. One of the founding methods of this area is the theory of Gröbner bases, introduced by Bruno Buchberger in 1965. Another founding method, more specially devoted to real algebraic geometry, is the cylindrical algebraic decomposition, introduced by George E. Collins in 1973.

See also: derived algebraic geometry.


Analytic geometry

An ANALYTIC VARIETY is defined locally as the set of common solutions of several equations involving analytic functions. It is analogous to the included concept of real or complex algebraic variety. Any complex manifold is an analytic variety. Since analytic varieties may have singular points, not all analytic varieties are manifolds.

Modern analytic geometry is essentially equivalent to real and complex algebraic geometry, as has been shown by Jean-Pierre Serre in his paper _GAGA_, the name of which is French for _Algebraic geometry and analytic geometry_. Nevertheless, the two fields remain distinct, as the methods of proof are quite different and algebraic geometry includes also geometry in finite characteristic.


Applications

Algebraic geometry now finds applications in statistics,[10] control theory,[11][12] robotics,[13] error-correcting codes,[14] phylogenetics[15] and geometric modelling.[16] There are also connections to string theory,[17] game theory,[18] graph matchings,[19] solitons[20] and integer programming.[21]


See also

-   Algebraic statistics
-   Differential geometry
-   Geometric algebra
-   Glossary of classical algebraic geometry
-   Intersection theory
-   Important publications in algebraic geometry
-   List of algebraic surfaces
-   Noncommutative algebraic geometry
-   Diffiety theory
-   Differential algebraic geometry
-   Real algebraic geometry


Notes


Further reading

Some classic textbooks that predate schemes:

-   -   -   -

Modern textbooks that do not use the language of schemes:

-   -   -   -   -   -

Textbooks in computational algebraic geometry

-   -   -   -   -   -   -

Textbooks and references for schemes:

-   -   -   -   -   -


External links

-   _Foundations of Algebraic Geometry_ by Ravi Vakil, 764 pp.
-   _Algebraic geometry_ entry on PlanetMath
-   English translation of the van der Waerden textbook
-   -   The Stacks Project, an open source textbook and reference work on algebraic stacks and algebraic geometry

Algebraic_geometry Category:Fields of mathematics

[1]

[2] Kline, M. (1972) _Mathematical Thought from Ancient to Modern Times_ (Volume 1). Oxford University Press. pp. 108, 90.

[3]

[4] Kline, M. (1972) _Mathematical Thought from Ancient to Modern Times_ (Volume 1). Oxford University Press. p. 193.

[5] Kline, M. (1972) _Mathematical Thought from Ancient to Modern Times_ (Volume 1). Oxford University Press. pp. 193–195.

[6] St Andrews "Khayyam himself seems to have been the first to conceive a general theory of cubic equations."

[7] Rashed (1994, pp.102-3)

[8] Kline, M. (1972) _Mathematical Thought from Ancient to Modern Times_ (Volume 1). Oxford University Press. p. 279.

[9] A witness of this oblivion is the fact that Van der Waerden removed the chapter on elimination theory from the third edition (and all the subsequent ones) of his treatise _Moderne algebra_ (in German).

[10]

[11]

[12] Allen Tannenbaum (1982), Invariance and Systems Theory: Algebraic and Geometric Aspects, Lecture Notes in Mathematics, volume 845, Springer-Verlag,

[13]

[14]

[15] Barry Arthur Cipra (2007), Algebraic Geometers See Ideal Approach to Biology , SIAM News, Volume 40, Number 6

[16]

[17]

[18]

[19]

[20]

[21]