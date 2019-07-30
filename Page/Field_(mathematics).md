Field § Mathematics}}

heptagon cannot be constructed using only a straightedge and compass construction; this can be proven using the field of constructible numbers.]] In mathematics, a FIELD is a set on which addition, subtraction, multiplication, and division are defined, and behave as the corresponding operations on rational and real numbers do. A field is thus a fundamental algebraic structure, which is widely used in algebra, number theory and many other areas of mathematics.

The best known fields are the field of rational numbers, the field of real numbers and the field of complex numbers. Many other fields, such as fields of rational functions, algebraic function fields, algebraic number fields, and _p_-adic fields are commonly used and studied in mathematics, particularly in number theory and algebraic geometry. Most cryptographic protocols rely on finite fields, i.e., fields with finitely many elements.

The relation of two fields is expressed by the notion of a field extension. Galois theory, initiated by Évariste Galois in the 1830s, is devoted to understanding the symmetries of field extensions. Among other results, this theory shows that angle trisection and squaring the circle cannot be done with a compass and straightedge. Moreover, it shows that quintic equations are algebraically unsolvable.

Fields serve as foundational notions in several mathematical domains. This includes different branches of analysis, which are based on fields with additional structure. Basic theorems in analysis hinge on the structural properties of the field of real numbers. Most importantly for algebraic purposes, any field may be used as the scalars for a vector space, which is the standard general context for linear algebra. Number fields, the siblings of the field of rational numbers, are studied in depth in number theory. Function fields can help describe properties of geometric objects.


Definition

Informally, a field is a set, along with two operations defined on that set: an addition operation written as , and a multiplication operation written as , both of which behave similarly as they behave for rational numbers and real numbers, including the existence of an additive inverse for all elements , and of a multiplicative inverse for every nonzero element . This allows one to also consider the so-called _inverse_ operations of subtraction, , and division, , by defining:

    ,

    .

Classic definition

Formally, a field is a set together with two operations on called _addition_ and _multiplication_.[1] An operation on is a function – in other words, a mapping that associates an element of to every pair of its elements. The result of the addition of and is called the sum of and , and is denoted . Similarly, the result of the multiplication of and is called the product of and , and is denoted or . These operations are required to satisfy the following properties, referred to as _field axioms_. In these axioms, , , and are arbitrary elements of the field .

-   Associativity of addition and multiplication: , and .
-   Commutativity of addition and multiplication: , and .
-   Additive and multiplicative identity: there exist two different elements and in such that and .
-   Additive inverses: for every in , there exists an element in , denoted , called the _additive inverse_ of _a_, such that .
-   Multiplicative inverses: for every in , there exists an element in , denoted by or , called the _multiplicative inverse_ of _a_, such that .
-   Distributivity of multiplication over addition: .

This may be summarized by saying: a field has two operations, called addition and multiplication; it is an abelian group under addition with 0 as the additive identity; the nonzero elements are an abelian group under multiplication with 1 as the multiplicative identity; and multiplication distributes over addition.

Alternative definition

Fields can also be defined in different, but equivalent ways. One can alternatively define a field by four binary operations (add, subtract, multiply, divide) and their required properties. Division by zero is, by definition, excluded.[2] In order to avoid existential quantifiers, fields can be defined by two binary operations (addition and multiplication), two unary operations (yielding the additive and multiplicative inverses respectively), and two nullary operations (the constants and ). These operations are then subject to the conditions above. Avoiding existential quantifiers is important in constructive mathematics and computing.[3] One may equivalently define a field by the same two binary operations, one unary operation (the multiplicative inverse), and two constants and , since and .[4]


Examples

Rational numbers

Rational numbers have been widely used a long time before the elaboration of the concept of field. They are numbers that can be written as fractions , where and are integers, and . The additive inverse of such a fraction is , and the multiplicative inverse (provided that ) is , which can be seen as follows:

    $\frac b a \cdot \frac a b  = \frac{ba}{ab} = 1.$

The abstractly required field axioms reduce to standard properties of rational numbers. For example, the law of distributivity can be proven as follows:[5]

$$\begin{align}
& \frac a b \cdot \left(\frac c d + \frac e f \right) \\[6pt]
= {} & \frac a b  \cdot \left(\frac c d  \cdot \frac f f + \frac e f \cdot \frac d d \right) \\[6pt]
= {} & \frac{a}{b} \cdot \left(\frac{cf}{df} + \frac{ed}{fd}\right) = \frac{a}{b} \cdot \frac{cf + ed}{df} \\[6pt]
= {} & \frac{a(cf + ed)}{bdf} = \frac{acf}{bdf} +  \frac{aed}{bdf} = \frac{ac}{bd} +  \frac{ae}{bf} \\[6pt]
= {} & \frac a b \cdot \frac c d + \frac a b \cdot \frac e f.
\end{align}$$

Real and complex numbers

The real numbers , with the usual operations of addition and multiplication, also form a field. The complex numbers consist of expressions

    with real,

where is the imaginary unit, i.e., a (non-real) number satisfying . Addition and multiplication of real numbers are defined in such a way that expressions of this type satisfy all field axioms and thus hold for . For example, the distributive law enforces



It is immediate that this is again an expression of the above type, and so the complex numbers form a field. Complex numbers can be geometrically represented as points in the plane, with Cartesian coordinates given by the real numbers of their describing expression, or as the arrows from the origin to these points, specified by their length and an angle enclosed with some distinct direction. Addition then corresponds to combining the arrows to the intuitive parallelogram (adding the Cartesian coordinates), and the multiplication is –less intuitively– combining rotating and scaling of the arrows (adding the angles and multiplying the lengths). The fields of real and complex numbers are used throughout mathematics, physics, engineering, statistics, and many other scientific disciplines.

Constructible numbers

asserts that . Choosing allows construction of the square root of a given constructible number .]]

In antiquity, several geometric problems concerned the (in)feasibility of constructing certain numbers with compass and straightedge. For example, it was unknown to the Greeks that it is in general impossible to trisect a given angle in this way. These problems can be settled using the field of constructible numbers.[6] Real constructible numbers are, by definition, lengths of line segments that can be constructed from the points 0 and 1 in finitely many steps using only compass and straightedge. These numbers, endowed with the field operations of real numbers, restricted to the constructible numbers, form a field, which properly includes the field of rational numbers. The illustration shows the construction of square roots of constructible numbers, not necessarily contained within . Using the labeling in the illustration, construct the segments , , and a semicircle over (center at the midpoint ), which intersects the perpendicular line through _B_ in a point , at a distance of exactly $h=\sqrt p$ from when has length one.

Not all real numbers are constructible. It can be shown that $\sqrt[3] 2$ is not a constructible number, which implies that it is impossible to construct with compass and straightedge the length of the side of a cube with volume 2, another problem posed by the ancient Greeks.

A field with four elements

+-------------------+-------------------+
| Addition          | Multiplication    |
+===================+===================+
| +---+--+--+--+--+ | +---+--+--+--+--+ |
| | + |  |  |  |  | | | · |  |  |  |  | |
| +===+==+==+==+==+ | +===+==+==+==+==+ |
| |   |  |  |  |  | | |   |  |  |  |  | |
| +---+--+--+--+--+ | +---+--+--+--+--+ |
| |   |  |  |  |  | | |   |  |  |  |  | |
| +---+--+--+--+--+ | +---+--+--+--+--+ |
| |   |  |  |  |  | | |   |  |  |  |  | |
| +---+--+--+--+--+ | +---+--+--+--+--+ |
| |   |  |  |  |  | | |   |  |  |  |  | |
| +---+--+--+--+--+ | +---+--+--+--+--+ |
+-------------------+-------------------+

In addition to familiar number systems such as the rationals, there are other, less immediate examples of fields. The following example is a field consisting of four elements called , , , and . The notation is chosen such that plays the role of the additive identity element (denoted 0 in the axioms above), and I is the multiplicative identity (denoted 1 in the axioms above). The field axioms can be verified by using some more field theory, or by direct computation. For example,

    , which equals , as required by the distributivity.

This field is called a finite field with four elements, and is denoted or .[7] The subset consisting of and (highlighted in red in the tables at the right) is also a field, known as the _binary field_ or . In the context of computer science and Boolean algebra, and are often denoted respectively by _false_ and _true_, the addition is then denoted XOR (exclusive or), and the multiplication is denoted AND. In other words, the structure of the binary field is the basic structure that allows computing with bits.


Elementary notions

In this section, denotes an arbitrary field and and are arbitrary elements of .

Consequences of the definition

One has and .[8] In particular, one may deduce the additive inverse of every element as soon as one knows .

If then or must be 0. Indeed, if _a_ ≠ 0, then . This means that every field is an integral domain.

The additive and the multiplicative group of a field

The axioms of a field imply that it is an abelian group under addition. This group is called the additive group of the field, and is sometimes denoted by when denoting it simply as could be confusing.

Similarly, the _nonzero_ elements of form an abelian group under multiplication, called the multiplicative group, and denoted by or just } or .

A field may thus be defined as set equipped with two operations denoted as an addition and a multiplication such that is an abelian group under addition, } is an abelian group under multiplication (where 0 is the identity element of the addition), and multiplication is distributive over addition.[9] Some elementary statements about fields can therefore be obtained by applying general facts of groups. For example, the additive and multiplicative inverses and are uniquely determined by .

The requirement follows, because 1 is the identity element of a group that does not contain 0.[10] Thus, the trivial ring, consisting of a single element, is not a field.

Every finite subgroup of the multiplicative group of a field is cyclic (see ).

Characteristic

In addition to the multiplication of two elements of _F_, it is possible to define the product of an arbitrary element of by a positive integer to be the -fold sum

    (which is an element of .)

If there is no positive integer such that

    ,

then is said to have characteristic 0.[11] For example, the field of rational rumbers has characteristic 0 since no positive integer is zero. Otherwise, if there _is_ a positive integer satisfying this equation, the smallest such positive integer can be shown to be a prime number. It is usually denoted by and the field is said to have characteristic then. For example, the field has characteristic 2 since (in the notation of the above addition table) .

If has characteristic , then for all in . This implies that

    ,

since all other binomial coefficients appearing in the binomial formula are divisible by . Here, ( factors) is the -th power, i.e., the -fold product of the element . Therefore, the Frobenius map



is compatible with the addition in (and also with the multiplication), and is therefore a field homomorphism.[12] The existence of this homomorphism makes fields in characteristic quite different from fields of characteristic 0.

Subfields and prime fields

A _subfield_ of a field is a subset of that is a field with respect to the field operations of . Equivalently is a subset of that contains , and is closed under addition, multiplication, additive inverse and multiplicative inverse of a nonzero element. This means that , that for all both and are in , and that for all in , both and are in .

Field homomorphisms are maps between two fields such that , , and , where and are arbitrary elements of . All field homomorphisms are injective.[13] If is also surjective, it is called an isomorphism (or the fields and are called isomorphic).

A field is called a prime field if it has no proper (i.e., strictly smaller) subfields. Any field contains a prime field. If the characteristic of is (a prime number), the prime field is isomorphic to the finite field introduced below. Otherwise the prime field is isomorphic to .[14]


Finite fields

_Finite fields_ (also called _Galois fields_) are fields with finitely many elements, whose number is also referred to as the order of the field. The above introductory example is a field with four elements. Its subfield is the smallest field, because by definition a field has at least two distinct elements 1 ≠ 0.

The simplest finite fields, with prime order, are most directly accessible using modular arithmetic. For a fixed positive integer , arithmetic "modulo " means to work with the numbers



The addition and multiplication on this set are done by performing the operation in question in the set of integers, dividing by and taking the remainder as result. This construction yields a field precisely if is a prime number. For example, taking the prime results in the above-mentioned field . For and more generally, for any composite number (i.e., any number which can be expressed as a product of two strictly smaller natural numbers), is not a field: the product of two non-zero elements is zero since in , which, as was explained above, prevents from being a field. The field with elements ( being prime) constructed in this way is usually denoted by .

Every finite field has elements, where is prime and . This statement holds since may be viewed as a vector space over its prime field. The dimension of this vector space is necessarily finite, say , which implies the asserted statement.[15]

A field with elements can be constructed as the splitting field of the polynomial

    .

Such a splitting field is an extension of in which the polynomial has zeros. This means has as many zeros as possible since the degree of is . For , it can be checked case by case using the above multiplication table that all four elements of satisfy the equation , so they are zeros of . By contrast, in , has only two zeros (namely 0 and 1), so does not split into linear factors in this smaller field. Elaborating further on basic field-theoretic notions, it can be shown that two finite fields with the same order are isomorphic.[16] It is thus customary to speak of _the_ finite field with elements, denoted by or .


History

Historically, three algebraic disciplines led to the concept of a field: the question of solving polynomial equations, algebraic number theory, and algebraic geometry.[17] A first step towards the notion of a field was made in 1770 by Joseph-Louis Lagrange, who observed that permuting the zeros of a cubic polynomial in the expression



(with being a third root of unity) only yields two values. This way, Lagrange conceptually explained the classical solution method of Scipione del Ferro and François Viète, which proceeds by reducing a cubic equation for an unknown to an quadratic equation for .[18] Together with a similar observation for equations of degree 4, Lagrange thus linked what eventually became the concept of fields and the concept of groups.[19] Vandermonde, also in 1770, and to a fuller extent, Carl Friedrich Gauss, in his _Disquisitiones Arithmeticae_ (1801), studied the equation



for a prime and, again using modern language, the resulting cyclic Galois group. Gauss deduced that a regular {{math can be constructed if . Building on Lagrange's work, Paolo Ruffini claimed (1799) that quintic equations (polynomial equations of degree 5) cannot be solved algebraically, however his arguments were flawed. These gaps were filled by Niels Henrik Abel in 1824.[20] Évariste Galois, in 1832, devised necessary and sufficient criteria for a polynomial equation to be algebraically solvable, thus establishing in effect what is known as Galois theory today. Both Abel and Galois worked with what is today called an algebraic number field, but conceived neither an explicit notion of a field, nor of a group.

In 1871 Richard Dedekind introduced, for a set of real or complex numbers that is closed under the four arithmetic operations, the German word _Körper_, which means "body" or "corpus" (to suggest an organically closed entity). The English term "field" was introduced by .[21]

In 1881 Leopold Kronecker defined what he called a _domain of rationality_, which is a field of rational fractions in modern terms. Kronecker's notion did not cover the field of all algebraic numbers (which is a field in Dedekind's sense), but on the other hand was more abstract than Dedekind's in that it made no specific assumption on the nature of the elements of a field. Kronecker interpreted a field such as abstractly as the rational function field . Prior to this, examples of transcendental numbers were known since Joseph Liouville's work in 1844, until Charles Hermite (1873) and Ferdinand von Lindemann (1882) proved the transcendence of and , respectively.[22]

The first clear definition of an abstract field is due to .[23] In particular, Heinrich Martin Weber's notion included the field F_(_p_). Giuseppe Veronese (1891) studied the field of formal power series, which led to introduce the field of _p_-adic numbers. synthesized the knowledge of abstract field theory accumulated so far. He axiomatically studied the properties of fields and defined many important field-theoretic concepts. The majority of the theorems mentioned in the sections Galois theory, Constructing fields and Elementary notions can be found in Steinitz's work. linked the notion of orderings in a field, and thus the area of analysis, to purely algebraic properties.[24] Emil Artin redeveloped Galois theory from 1928 through 1942, eliminating the dependency on the primitive element theorem.


Constructing fields

Constructing fields from rings

A commutative ring is a set, equipped with an addition and multiplication operation, satisfying all the axioms of a field, except for the existence of multiplicative inverses .[25] For example, the integers form a commutative ring, but not a field: the reciprocal of an integer is not itself an integer, unless .

In the hierarchy of algebraic structures fields can be characterized as the commutative rings in which every nonzero element is a unit (which means every element is invertible). Similarly, fields are the commutative rings with precisely two distinct ideals, and . Fields are also precisely the commutative rings in which is the only prime ideal.

Given a commutative ring , there are two ways to construct a field related to , i.e., two ways of modifying such that all nonzero elements become invertible: forming the field of fractions, and forming residue fields. The field of fractions of is , the rationals, while the residue fields of are the finite fields .

Field of fractions

Given an integral domain , its field of fractions is built with the fractions of two elements of exactly as Q is constructed from the integers. More precisely, the elements of are the fractions where and are in , and . Two fractions and are equal if and only if . The operation on the fractions work exactly as for rational numbers. For example,

$$\frac{a}{b}+\frac{c}{d} = \frac{ad+bc}{bd}.$$
It is straightforward to show that, if the ring is an integral domain, the set of the fractions form a field.[26]

The field of the rational fractions over a field (or an integral domain) is the field of fractions of the polynomial ring . The field of Laurent series

$$\sum_{i=k}^\infty a_i x^i \ (k \in \Z, a_i \in F)$$
over a field is the field of fractions of the ring of formal power series (in which ). Since any Laurent series is a fraction of a power series divided by a power of (as opposed to an arbitrary power series), the representation of fractions is less important in this situation, though.

Residue fields

In addition to the field of fractions, which embeds injectively into a field, a field can be obtained from a commutative ring by means of a surjective map onto a field . Any field obtained in this way is a quotient , where is a maximal ideal of . If has only one maximal ideal , this field is called the residue field of .[27]

The ideal generated by a single polynomial in the polynomial ring (over a field _E_) is maximal if and only if is irreducible in , i.e., if cannot be expressed as the product of two polynomials in of smaller degree. This yields a field



This field contains an element (namely the residue class of ) which satisfies the equation

    .

For example, is obtained from by adjoining the imaginary unit symbol i, which satisfies , where . Moreover, is irreducible over , which implies that the map that sends a polynomial to yields an isomorphism

$$\mathbf R[X]/\left(X^2 + 1\right) \ \stackrel \cong \longrightarrow \ \mathbf C.$$

Constructing fields within a bigger field

Fields can be constructed inside a given bigger container field. Suppose given a field , and a field containing as a subfield. For any element of , there is a smallest subfield of containing and , called the subfield of _F_ generated by and denoted .[28] The passage from to is referred to by _adjoining an element_ to _E_. More generally, for a subset , there is a minimal subfield of containing and , denoted by .

The compositum of two subfields and of some field is the smallest subfield of containing both and The compositum can be used to construct the biggest subfield of satisfying a certain property, for example the biggest subfield of , which is, in the language introduced below, algebraic over .[29]

Field extensions

The notion of a subfield can also be regarded from the opposite point of view, by referring to being a _field extension_ (or just extension) of , denoted by

    ,

and read " over ".

A basic datum of a field extension is its degree , i.e., the dimension of as an -vector space. It satisfies the formula[30]

    .

Extensions whose degree is finite are referred to as finite extensions. The extensions and are of degree 2, whereas is an infinite extension.

Algebraic extensions

A pivotal notion in the study of field extensions are algebraic elements. An element is _algebraic_ over if it is a root of a polynomial with coefficients in , that is, if it satisfies a polynomial equation

    ,

with in , and . For example, the imaginary unit in is algebraic over , and even over , since it satisfies the equation

    .

A field extension in which every element of is algebraic over is called an algebraic extension. Any finite extension is necessarily algebraic, as can be deduced from the above multiplicativity formula.[31]

The subfield generated by an element , as above, is an algebraic extension of if and only if is an algebraic element. That is to say, if is algebraic, all other elements of are necessarily algebraic as well. Moreover, the degree of the extension , i.e., the dimension of as an -vector space, equals the minimal degree such that there is a polynomial equation involving , as above. If this degree is , then the elements of have the form

$$\sum_{k=0}^{n-1} a_k x^k, \ \ a_k \in E.$$

For example, the field of Gaussian rationals is the subfield of consisting of all numbers of the form where both and are rational numbers: summands of the form (and similarly for higher exponents) don't have to be considered here, since can be simplified to .

Transcendence bases

The above-mentioned field of rational fractions , where is an indeterminate, is not an algebraic extension of since there is no polynomial equation with coefficients in whose zero is . Elements, such as , which are not algebraic are called transcendental. Informally speaking, the indeterminate and its powers do not interact with elements of . A similar construction can be carried out with a set of indeterminates, instead of just one.

Once again, the field extension discussed above is a key example: if is not algebraic (i.e., is not a root of a polynomial with coefficients in ), then is isomorphic to . This isomorphism is obtained by substituting to in rational fractions.

A subset of a field is a transcendence basis if it is algebraically independent (don't satisfy any polynomial relations) over and if is an algebraic extension of . Any field extension has a transcendence basis.[32] Thus, field extensions can be split into ones of the form (purely transcendental extensions) and algebraic extensions.

Closure operations

A field is algebraically closed if it does not have any strictly bigger algebraic extensions or, equivalently, if any polynomial equation

    , with coefficients ,

has a solution .[33] By the fundamental theorem of algebra, is algebraically closed, i.e., _any_ polynomial equation with complex coefficients has a complex solution. The rational and the real numbers are _not_ algebraically closed since the equation



does not have any rational or real solution. A field containing is called an _algebraic closure_ of if it is algebraic over (roughly speaking, not too big compared to ) and is algebraically closed (big enough to contain solutions of all polynomial equations).

By the above, is an algebraic closure of . The situation that the algebraic closure is a finite extension of the field is quite special: by the Artin-Schreier theorem, the degree of this extension is necessarily 2, and is elementarily equivalent to . Such fields are also known as real closed fields.

Any field has an algebraic closure, which is moreover unique up to (non-unique) isomorphism. It is commonly referred to as _the_ algebraic closure and denoted . For example, the algebraic closure of is called the field of algebraic numbers. The field is usually rather implicit since its construction requires the ultrafilter lemma, a set-theoretic axiom that is weaker than the axiom of choice.[34] In this regard, the algebraic closure of , is exceptionally simple. It is the union of the finite fields containing (the ones of order ). For any algebraically closed field of characteristic 0, the algebraic closure of the field of Laurent series is the field of Puiseux series, obtained by adjoining roots of .[35]


Fields with additional structure

Since fields are ubiquitous in mathematics and beyond, several refinements of the concept have been adapted to the needs of particular mathematical areas.

Ordered fields

A field _F_ is called an _ordered field_ if any two elements can be compared, so that and whenever and . For example, the reals form an ordered field, with the usual ordering ≥. The Artin-Schreier theorem states that a field can be ordered if and only if it is a formally real field, which means that any quadratic equation

_x_₁² + _x_₂² + … + _x__(_n_)² = 0
only has the solution .[36] The set of all possible orders on a fixed field _F_ is isomorphic to the set of ring homomorphisms from the Witt ring W(_F_) of quadratic forms over _F_, to Z.[37]

An Archimedean field is an ordered field such that for each element there exists a finite expression



whose value is greater than that element, that is, there are no infinite elements. Equivalently, the field contains no infinitesimals (elements smaller than all rational numbers); or, yet equivalent, the field is isomorphic to a subfield of .

An ordered field is Dedekind-complete if all upper bounds, lower bounds (see Dedekind cut) and limits, which should exist, do exist. More formally, each bounded subset of is required to have a least upper bound. Any complete field is necessarily Archimedean,[38] since in any non-Archimedean field there is neither a greatest infinitesimal nor a least positive rational, whence the sequence , every element of which is greater than every infinitesimal, has no limit.

Since every proper subfield of the reals also contains such gaps, is the unique complete ordered field, up to isomorphism.[39] Several foundational results in calculus follow directly from this characterization of the reals.

The hyperreals form an ordered field that is not Archimedean. It is an extension of the reals obtained by including infinite and infinitesimal numbers. These are larger, respectively smaller than any real number. The hyperreals form the foundational basis of non-standard analysis.

Topological fields

Another refinement of the notion of a field is a topological field, in which the set _F_ is a topological space, such that all operations of the field (addition, multiplication, the maps and ) are continuous maps with respect to the topology of the space.[40] The topology of all the fields discussed below is induced from a metric, i.e., a function



that measures a _distance_ between any two elements of .

The completion of is another field in which, informally speaking, the "gaps" in the original field are filled, if there are any. For example, any irrational number , such as , is a "gap" in the rationals in the sense that it is a real number that can be approximated arbitrarily closely by rational numbers , in the sense that distance of and given by the absolute value is as small as desired. The following table lists some examples of this construction. The fourth column shows an example of a zero sequence, i.e., a sequence whose limit (for ) is zero.

+--------------+-----------------------------------------------------------+------------+---------------+
| Field        | Metric                                                    | Completion | zero sequence |
+==============+===========================================================+============+===============+
|              | (usual absolute value)                                    | R          |               |
+--------------+-----------------------------------------------------------+------------+---------------+
|              | obtained using the _p_-adic valuation, for a prime number | {{math     |               |
+--------------+-----------------------------------------------------------+------------+---------------+
| ( any field) | obtained using the -adic valuation                        |            |               |
+--------------+-----------------------------------------------------------+------------+---------------+

The field is used in number theory and {{math. The algebraic closure carries a unique norm extending the one on , but is not complete. The completion of this algebraic closure, however, is algebraically closed. Because of its rough analogy to the complex numbers, it is called the field of complex p-adic numbers and is denoted by .[41]

Local fields

The following topological fields are called _local fields_:[42][43]

-   finite extensions of (local fields of characteristic zero)
-   finite extensions of , the field of Laurent series over (local fields of characteristic ).

These two types of local fields share some fundamental similarities. In this relation, the elements and (referred to as uniformizer) correspond to each other. The first manifestation of this is at an elementary level: the elements of both fields can be expressed as power series in the uniformizer, with coefficients in . (However, since the addition in is done using carrying, which is not the case in , these fields are not isomorphic.) The following facts show that this superficial similarity goes much deeper:

-   Any first order statement that is true for almost all is also true for almost all . An application of this is the Ax-Kochen theorem describing zeros of homogeneous polynomials in .
-   Tamely ramified extensions of both fields are in bijection to one another.
-   Adjoining arbitrary -power roots of (in ), respectively of (in ), yields (infinite) extensions of these fields known as perfectoid fields. Strikingly, the Galois groups of these two fields are isomorphic, which is the first glimpse of a remarkable parallel between these two fields:[44]

Gal (Q_(_p_)(_p_^(1/_p_^(∞)))) ≅ Gal (F_(_p_)((_t_))(_t_^(1/_p_^(∞)))).

Differential fields

Differential fields are fields equipped with a derivation, i.e., allow to take derivatives of elements in the field.[45] For example, the field R(_X_), together with the standard derivative of polynomials forms a differential field. These fields are central to differential Galois theory, a variant of Galois theory dealing with linear differential equations.


Galois theory

Galois theory studies algebraic extensions of a field by studying the symmetry in the arithmetic operations of addition and multiplication. An important notion in this area are finite Galois extensions , which are, by definition, those that are separable and normal. The primitive element theorem shows that finite separable extensions are necessarily simple, i.e., of the form

    ,

where is an irreducible polynomial (as above).[46] For such an extension, being normal and separable means that all zeros of are contained in and that has only simple zeros. The latter condition is always satisfied if has characteristic 0.

For a finite Galois extension, the Galois group is the group of field automorphisms of that are trivial on (i.e., the bijections that preserve addition and multiplication and that send elements of to themselves). The importance of this group stems from the fundamental theorem of Galois theory, which constructs an explicit one-to-one correspondence between the set of subgroups of and the set of intermediate extensions of the extension .[47] By means of this correspondence, group-theoretic properties translate into facts about fields. For example, if the Galois group of a Galois extension as above is not solvable (cannot be built from abelian groups), then the zeros of _cannot_ be expressed in terms of addition, multiplication, and radicals, i.e., expressions involving $\sqrt[n]{\ }$. For example, the symmetric groups is not solvable for . Consequently, as can be shown, the zeros of the following polynomials are not expressible by sums, products, and radicals. For the latter polynomial, this fact is known as the Abel–Ruffini theorem:

    (and ),[48]

    (where is regarded as a polynomial in , for some indeterminates , is any field, and ).

The tensor product of fields is not usually a field. For example, a finite extension of degree is a Galois extension if and only if there is an isomorphism of -algebras

    .

This fact is the beginning of Grothendieck's Galois theory, a far-reaching extension of Galois theory applicable to algebro-geometric objects.[49]


Invariants of fields

Basic invariants of a field include the characteristic and the transcendence degree of over its prime field. The latter is defined as the maximal number of elements in that are algebraically independent over the prime field. Two algebraically closed fields and are isomorphic precisely if these two data agree.[50] This implies that any two uncountable algebraically closed fields of the same cardinality and the same characteristic are isomorphic. For example, and are isomorphic (but _not_ isomorphic as topological fields).

Model theory of fields

In model theory, a branch of mathematical logic, two fields and are called elementarily equivalent if every mathematical statement that is true for is also true for and conversely. The mathematical statements in question are required to be first-order sentences (involving 0, 1, the addition and multiplication). A typical example is

    = "for any , any polynomial of degree in has a zero in " (which amounts to saying that is algebraically closed).

The Lefschetz principle states that is elementarily equivalent to any algebraically closed field of characteristic zero. Moreover, any fixed statement holds in if and only if it holds in any algebraically closed field of sufficiently high characteristic.[51]

If is an ultrafilter on a set , and is a field for every in , the ultraproduct of the with respect to is a field.[52] It is denoted by

    ,

since it behaves in several ways as a limit of the fields : Łoś's theorem states that any first order statement that holds for all but finitely many , also holds for the ultraproduct. Applied to the above sentence , this shows that there is an isomorphism[53]

$$\operatorname{ulim}_{p \to \infty} \overline \mathbf F_p \cong \mathbf C.$$
The Ax–Kochen theorem mentioned above also follows from this and an isomorphism of the ultraproducts (in both cases over all primes )

    .

In addition, model theory also studies the logical properties of various other types of fields, such as real closed fields or exponential fields (which are equipped with an exponential function ).[54]

The absolute Galois group

For fields that are not algebraically closed (or not separably closed), the absolute Galois group is fundamentally important: extending the case of finite Galois extensions outlined above, this group governs _all_ finite separable extensions of . By elementary means, the group can be shown to be the Prüfer group, the profinite completion of . This statement subsumes the fact that the only algebraic extensions of are the fields for , and that the Galois groups of these finite extensions are given by

    .

A description in terms of generators and relations is also known for the Galois groups of -adic number fields (finite extensions of ).[55]

Representations of Galois groups and of related groups such as the Weil group are fundamental in many branches of arithmetic, such as the Langlands program. The cohomological study of such representations is done using Galois cohomology.[56] For example, the Brauer group, which is classically defined as the group of central simple {{math, can be reinterpreted as a Galois cohomology group, namely

    .

K-theory

Milnor K-theory is defined as

_K__(_n_)^(_M_)(_F_) = _F_^(×) ⊗ ⋯ ⊗ _F_^(×)/⟨_x_ ⊗ (1 − _x_) ∣ _x_ ∈ _F_ ∖ {0, 1}⟩.
The norm residue isomorphism theorem, proved around 2000 by Vladimir Voevodsky, relates this to Galois cohomology by means of an isomorphism

_K__(_n_)^(_M_)(_F_)/_p_ = _H_^(_n_)(_F_, _μ__(_l_)^( ⊗ _n_)).
Algebraic K-theory is related to the group of invertible matrices with coefficients the given field. For example, the process of taking the determinant of an invertible matrix leads to an isomorphism K₁(_F_) = _F_^(×). Matsumoto's theorem shows that K₂(_F_) agrees with K₂^(M)(_F_). In higher degrees, K-theory diverges from Milnor K-theory and remains hard to compute in general.


Applications

Linear algebra and commutative algebra

express the relation of different coordinate systems, i.e., bases of . They are used in computer graphics.]] If , then the equation



has a unique solution in , namely . This observation, which is an immediate consequence of the definition of a field, is the essential ingredient used to show that any vector space has a basis.[57] Roughly speaking, this allows choosing a coordinate system in any vector space, which is of central importance in linear algebra both from a theoretical point of view, and also for practical applications.

Modules (the analogue of vector spaces) over most rings, including the ring of integers, have a more complicated structure. A particular situation arises when a ring is a vector space over a field in its own right. Such rings are called {{math and are studied in depth in the area of commutative algebra. For example, Noether normalization asserts that any [[finitely_generated_algebra|finitely generated

-   -   -   -   -   -

eo:Kampo (algebro)

Field_theory Category:Algebraic structures Category:Abstract algebra

[1]

[2] .

[3] . See also Heyting field.

[4] The a priori twofold use of the symbol "−" for denoting one part of a constant and for the additive inverses is justified by this latter condition.

[5]

[6]

[7]

[8]

[9] Equivalently, a field is an algebraic structure of type , such that is not defined, and are abelian groups, and · is distributive over +.

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

[21] _Earliest Known Uses of Some of the Words of Mathematics (F)_

[22]

[23] . See also .

[24]

[25]

[26]

[27]

[28]

[29] Further examples include the maximal unramified extension or the maximal abelian extension within .

[30]

[31]

[32]

[33]

[34] . Mathoverflow post

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43] Some authors also consider the fields and to be local fields. On the other hand, these two fields, also called Archimedean local fields, share little similarity with the local fields considered here, to a point that calls them "completely anomalous".

[44]

[45]

[46]

[47]

[48]

[49] . See also Étale fundamental group.

[50]

[51]

[52]

[53] Both and are algebraically closed by Łoś's theorem. For the same reason, they both have characteristic zero. Finally, they are both uncountable, so that they are isomorphic.

[54]

[55]

[56]

[57]