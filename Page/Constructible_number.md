Square_root_of_2_triangle.svg of a right triangle with legs of length and is therefore a CONSTRUCTIBLE NUMBER]]

In geometry and algebra, a real number is CONSTRUCTIBLE if and only if, given a line segment of unit length, a line segment of length || can be constructed with compass and straightedge in a finite number of steps.[1][2] Not all real numbers are constructible and to describe those that are, algebraic techniques are usually employed. However, in order to employ those techniques, it is useful to first associate points with constructible numbers.

A point in the Euclidean plane is a CONSTRUCTIBLE POINT if it is either endpoint of the given unit segment, or the point of intersection of two lines determined by previously obtained constructible points, or the intersection of such a line and a circle having a previously obtained constructible point as a center passing through another constructible point, or the intersection of two such circles.[3] Now, by introducing cartesian coordinates so that one endpoint of the given unit segment is the origin and the other at , it can be shown that the coordinates of the constructible points are constructible numbers.[4]

In algebraic terms, a number is constructible if and only if it can be obtained using the four basic arithmetic operations and the extraction of square roots, but of no higher-order roots, from constructible numbers, which always include 0 and 1. The set of constructible numbers can be completely characterized in the language of field theory: the constructible numbers form the quadratic closure of the rational numbers: the smallest field extension that is closed under square roots.[5] This has the effect of transforming geometric questions about compass and straightedge constructions into algebra. This transformation leads to the solutions of many famous mathematical problems, which defied centuries of attack.


Geometric definitions

The traditional approach to the subject of constructible numbers has been geometric in nature, but this is not the only approach. However, the geometric approach does provide the motivation for the algebraic definitions and is historically the way the subject developed. In presenting the material in this manner, the basic ideas are introduced synthetically and then coordinates are introduced to transition to an algebraic setting.[6]

Let and be two given distinct points in the Euclidean plane. The set of points that can be constructed with compass and straightedge starting with and will be denoted by and whose elements will be called CONSTRUCTIBLE POINTS. and are, by definition, elements of . To more precisely describe the elements of , we make the following two definitions:[7]

-   a line segment whose endpoints are in is called a CONSTRUCTED SEGMENT, and
-   a circle whose center is in and which passes through a point of (alternatively, whose radius is the distance between some pair of distinct points of ) is called a CONSTRUCTED CIRCLE.

Then, the points of , besides and are:[8]

-   the intersection of two non-parallel constructed segments (extended if necessary),
-   the intersection points of a constructed circle and a constructed segment (extended if necessary), or
-   the intersection points of two distinct constructed circles.

As an example, the midpoint of constructed segment is a constructible point. To see this, note that the constructed circle with center and passing through intersects the constructed circle with center and passing through at the constructible points and . The intersection of constructed segment with constructed segment is the desired constructed midpoint.

A Cartesian coordinate system can be introduced where the point is associated to the origin having coordinates and the point is associated with . The points of may now be used to link the geometry and algebra, namely, we define[9]

-   a CONSTRUCTIBLE NUMBER is a coordinate of a constructible point.

Due to point , 0 and 1 are constructible numbers. Let be a point in , that is, a constructible point. If lies on the -axis, then is a constructed segment and the first coordinate of is, in absolute value, the length of this constructed segment. If does not lie on the -axis then let the foot of the perpendicular from to the -axis be the point . The point is a constructed point, so and are constructed segments. The absolute values of the coordinates of the point are therefore lengths of constructed segments. This process is reversible,[10] so it is possible to use this device to provide an alternate characterization of constructible numbers, namely:[11]

-   0 is a constructible number and any non-zero real number is a constructible number if and only if _r_{{!}}}} is the length of a constructed segment.

If and are the non-zero lengths of constructed segments then elementary compass and straightedge constructions can be used to obtain constructed segments of lengths , (if ), and . The latter two can be done with a construction based on the intercept theorem. A slightly less elementary construction using these tools is based on the geometric mean theorem and will construct a segment of length from a constructed segment of length .[12][13][14][15]

File:Number construction multiplication.svg|a ⋅ b based on the intercept theorem File:Number construction division.svg|$\frac{a}{b}$ based on the intercept theorem File:Square root construction.svg|$\sqrt{a}$ based on the geometric mean theorem


Transformation into algebra

If and are constructible numbers with , then , , , and , for non-negative , are constructible. Thus, the set of constructible real numbers form a field. Furthermore, since 1 is a constructible number, all rational numbers are constructible and is a (proper) subfield of the field of constructible numbers. Also, any constructible number is an algebraic number. More precisely,[16] if is a constructible real number and , then there is a finite sequence of real numbers such that is an extension of of degree 2. In particular, for some integer . Using slightly different terminology,[17] a real number is constructible if and only if it lies in a field at the top of a finite tower of quadratic extensions, starting with the rational field . More precisely, is constructible if and only if there exists a tower of fields

ℚ = _K_₀ ⊆ _K_₁ ⊆ … ⊆ _K__(_n_),

where is in and for all , .

For yet another formulation of this result, this time using the geometric definition of a constructible point,[18] let be a non-empty set of points in and the subfield of generated by all the coordinates of points in . If a point is constructible from the points of , then the degrees and are powers of 2.

Using the natural correspondence between points of and complex numbers (namely, ), some authors prefer to phrase results in the complex setting by defining:[19] a complex number to be constructible if and only if its real and imaginary parts are constructible real numbers. It can then be shown,[20] in a manner analogous to the real case, that a complex number is constructible if and only if it lies in a field at the top of a finite tower of complex quadratic extensions, starting with the field . More precisely, is constructible if and only if there exists a tower of complex fields

ℚ(_i_) = _F_₀ ⊆ _F_₁ ⊆ … ⊆ _F__(_n_),

where is in , and for all , . Consequently, if a complex number is constructible, then is a power of two.

This algebraic characterization of constructible numbers provides an important condition for constructibility: if is constructible, then it is algebraic, and its minimal irreducible polynomial has degree a power of 2, which is equivalent to the statement that the field extension has dimension a power of 2. However, the converse is false – this is not a condition for constructibility as there are non-constructible numbers with .[21]


Trigonometric numbers

Trigonometric numbers are irrational cosines or sines of angles that are rational multiples of . Such a number is constructible if and only if the denominator of the fully reduced multiple is a power of or the product of a power of with the product of one or more distinct Fermat primes. Thus, for example, Is constructible because is the product of two Fermat primes, and .

See here a list of trigonometric numbers expressed in terms of square roots.


Impossible constructions

Academ_existence_of_square_root_of_2.svg

The ancient Greeks thought that certain construction problems they could not solve were simply obstinate, not unsolvable.[22] However, the non-constructibility of certain numbers proves them to be logically impossible to perform. (The problems themselves, however, are solvable, and the Greeks knew how to solve them, _without_ the constraint of working only with straightedge and compass.)

In the following chart, each row represents a specific ancient construction problem. The left column gives the name of the problem. The second column gives an equivalent algebraic formulation of the problem. In other words, the solution to the problem is affirmative if and only if each number in the given set of numbers is constructible. Finally, the last column provides a simple counterexample. In other words, the number in the last column is an element of the set in the same row, but is not constructible.

  Construction problem            Associated set of numbers                                                                   Counterexample
  ------------------------------- ------------------------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------
  Doubling the cube               $\left \{ \sqrt[3]{x} : x \text{ is constructible} \right \}$                               $\sqrt[3]{2}$ is not constructible, because its minimal polynomial has degree 3 over Q [23]
  Trisecting the angle            $\left \{ \cos \left( \frac{\arccos x}{3} \right) : x \text{ is constructible} \right \}$   $\cos \left( \frac{\arccos (1/2)}{3} \right) = \cos 20^o$ is not constructible, because cos 20^(o) has minimal polynomial of degree 3 over Q [24]
  Squaring the circle             $\left \{r \sqrt{\pi} : r \text{ is constructible} \right \}$                               $\sqrt{\pi}$ is not constructible, because it is not algebraic over Q [25]
  Constructing regular polygons   {e^(2πi/n):n∈ℕ,n≥3}                                                                         e^(2πi/7) is not constructible, because 7 is not a Fermat prime, nor is 7 the product of 2^(k) and one or more distinct Fermat primes [26]


History

The birth of the concept of constructible numbers is inextricably linked with the history of the three impossible compass and straightedge constructions: duplicating the cube, trisecting an angle, and squaring the circle. The restriction of using only compass and straightedge in geometric constructions is often credited to Plato due to a passage in Plutarch. According to Plutarch, Plato gave the duplication of the cube (Delian) problem to Eudoxus and Archytas and Menaechmus, who solved the problem using mechanical means, earning a rebuke from Plato for not solving the problem using pure geometry (Plut., _Quaestiones convivales_ VIII.ii, 718ef). However, this attribution is challenged,[27] due, in part, to the existence of another version of the story (attributed to Eratosthenes by Eutocius of Ascalon) that says that all three found solutions but they were too abstract to be of practical value.[28] Since Oenopides (circa 450 BCE) is credited with two ruler and compass constructions, by Proclus– citing Eudemus (circa 370 - 300 BCE)–when other methods were available to him, has led some authors to hypothesize that Oenopides originated the restriction.

The restriction to compass and straightedge is essential in making these constructions impossible. Angle trisection, for instance, can be done in many ways, several known to the ancient Greeks. The Quadratrix of Hippias of Elis, the conics of Menaechmus, or the marked straightedge (neusis) construction of Archimedes have all been used and we can add a more modern approach via paper folding to the list.

Although not one of the classic three construction problems, the problem of constructing regular polygons with straightedge and compass is usually treated alongside them. The Greeks knew how to construct regular -gons with (for any integer ) or the product of any two or three of these numbers, but other regular -gons eluded them. Then, in 1796, an eighteen-year-old student named Carl Friedrich Gauss announced in a newspaper that he had constructed a regular 17-gon with straightedge and compass.[29] Gauss' treatment was algebraic rather than geometric; in fact, he did not actually construct the polygon, but rather showed that the cosine of a central angle was a constructible number. The argument was generalized in his 1801 book _Disquisitiones Arithmeticae_ giving the _sufficient_ condition for the construction of a regular -gon. Gauss claimed, but did not prove, that the condition was also necessary and several authors, notably Felix Klein,[30] attributed this part of the proof to him as well.[31]

In a paper from 1837,[32] Pierre Laurent Wantzel proved algebraically that the problems of

-   doubling the cube, and
-   trisecting the angle

are impossible to solve if one uses only compass and straightedge. In the same paper he also solved the problem of determining which regular polygons are constructible:

-   a regular polygon is constructible if and only if the number of its sides is the product of a power of two and any number of distinct Fermat primes (i.e., the sufficient conditions given by Gauss are also necessary)

An attempted proof of the impossibility of squaring the circle was given by James Gregory in _Vera Circuli et Hyperbolae Quadratura_ (The True Squaring of the Circle and of the Hyperbola) in 1667. Although his proof was faulty, it was the first paper to attempt to solve the problem using algebraic properties of . It was not until 1882 that Ferdinand von Lindemann rigorously proved its impossibility, by extending the work of Charles Hermite and proving that is a transcendental number.

The study of constructible numbers, per se, was initiated by René Descartes in La Géométrie, an appendix to his book _Discourse on the Method_ published in 1637. Descartes associated numbers to geometrical line segments in order to display the power of his philosophical method by solving an ancient straightedge and compass construction problem put forth by Pappus.[33]


See also

-   Computable number
-   Definable real number
-   Compass and straightedge constructions
-   Constructible polygon


Notes


References

-   -   -   -   -   -   -


External links

-   Chris Cooper: _Galois Theory_. Lectures notes, Macquarie University, §6 Ruler and Compass Constructability, pp. 55-63
-   -   Constructible Numbers at Cut-the-knot

Category:Euclidean plane geometry Category:Algebraic numbers

[1]

[2] John A. Beachy, William D. Blair; _Abstract Algebra_; Definition 6.3.1

[3]

[4]

[5]

[6] The other direction is represented in who replaces the word "constructible" with the word "surd" throughout his discussion.

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

[28] .

[29]

[30]

[31]

[32]

[33]