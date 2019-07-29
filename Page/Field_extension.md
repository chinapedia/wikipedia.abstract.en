In mathematics, and, particularly, in algebra, a FIELD EXTENSION is a pair of fields E ⊆ F, such that the operations of _E_ are those of _F_ restricted to _E_. In this case, _F_ is an EXTENSION FIELD of _E_ and _E_ is a SUBFIELD of _F_.[1][2][3] For example, under the usual notions of addition and multiplication, the complex numbers are an extension field of the real numbers; the real numbers are a subfield of the complex numbers.

Field extensions are fundamental in algebraic number theory, and in the study of polynomial roots through Galois theory, and are widely used in algebraic geometry.


Subfield

A SUBFIELD of a field _L_ is a subset _K_ of _L_ that is a field with respect to the field operations inherited from _L_. Equivalently, a subfield is a subset that contains 1, and is closed under the operations of addition, subtraction, multiplication, and taking the inverse of a nonzero element of _L_.

As , the latter definition implies _K_ and _L_ have the same zero element.

For example, the field of rational numbers is a subfield of the real numbers, which is itself a subfield of the complex numbers. More generally, the field of rational numbers is (or is isomorphic to) a subfield of any field of characteristic 0.

The characteristic of a subfield is the same as the characteristic of the larger field.


Extension field

If _K_ is a subfield of _L_, then _L_ is an EXTENSION FIELD or simply EXTENSION of _K_, and this pair of fields is a FIELD EXTENSION. Such a field extension is denoted _L_ / _K_ (read as "_L_ over _K_").

If _L_ is an extension of _F_ which is in turn an extension of _K_, then _F_ is said to be an INTERMEDIATE FIELD (or INTERMEDIATE EXTENSION or SUBEXTENSION) of _L_ / _K_.

Given a field extension , the larger field _L_ is a _K_-vector space. The dimension of this vector space is called the DEGREE of the extension and is denoted by [_L_ : _K_].

The degree of an extension is 1 if and only if the two fields are equal. In this case, the extension is a TRIVIAL EXTENSION. Extensions of degree 2 and 3 are called QUADRATIC EXTENSIONS and CUBIC EXTENSIONS, respectively. A FINITE EXTENSION is an extension that has a finite degree. The degree of a finite extension is denoted

Given two extensions and , the extension is finite if and only if both and are finite. In this case, one has

[_M_ : _K_] = [_M_ : _L_] ⋅ [_L_ : _K_].

Given a field extension _L_ / _K_ and a subset _S_ of _L_, there is a smallest subfield of _L_ that contains _K_ and _S_. It is the intersection of all subfields of _L_ that contain K and S, and is denoted by _K_(_S_). One says that _K_(_S_) is the field _generated_ by _S_ over _K_, and that _S_ is a generating set of _K_(_S_) over _K_. When S = {x₁, …, x_(n)} is finite, one writes K(x₁, …, x_(n)) instead of K({x₁, …, x_(n)}), and one says that _K_(_S_) is finitely generated over _K_. If _S_ consists of a single element _s_, the extension is called a simple extension[4][5] and _s_ is called a primitive element of the extension.[6]

An extension field of the form is often said to result from the __ of _S_ to _K_.[7][8]

In characteristic 0, every finite extension is a simple extension. This is the primitive element theorem, which does not hold true for fields of non-zero characteristic.

If a simple extension is not finite, the field _K_(_s_) is isomorphic to the field of rational fractions in _s_ over _K_.


Caveats

The notation _L_ / _K_ is purely formal and does not imply the formation of a quotient ring or quotient group or any other kind of division. Instead the slash expresses the word "over". In some literature the notation _L_:_K_ is used.

It is often desirable to talk about field extensions in situations where the small field is not actually contained in the larger one, but is naturally embedded. For this purpose, one abstractly defines a field extension as an injective ring homomorphism between two fields. _Every_ non-zero ring homomorphism between fields is injective because fields do not possess nontrivial proper ideals, so field extensions are precisely the morphisms in the category of fields.

Henceforth, we will suppress the injective homomorphism and assume that we are dealing with actual subfields.


Examples

The field of complex numbers $\C$ is an extension field of the field of real numbers $\R,$ and $\R$ in turn is an extension field of the field of rational numbers $\Q.$ Clearly then, $\C/\Q$ is also a field extension. We have $[\C:\R] =2$ because {1, i} is a basis, so the extension $\C/\R$ is finite. This is a simple extension because $\C =
 \R(i).$ $[\R:\Q] =\mathfrak c$ (the cardinality of the continuum), so this extension is infinite.

The field

$$\Q(\sqrt{2}) = \left. \left \{ a + b\sqrt{2} \right | a,b \in \Q \right \},$$

is an extension field of $\Q,$ also clearly a simple extension. The degree is 2 because $\{1, \sqrt{2}\}$ can serve as a basis.

The field

$$\begin{align}
\Q(\sqrt{2}, \sqrt{3}) &= \Q (\sqrt{2}) (\sqrt{3}) \\
&= \left. \left\{ a+b\sqrt{3} \right | a,b \in \Q(\sqrt{2}) \right\} \\
&= \left. \left\{ a + b \sqrt{2} + c\sqrt{3} + d\sqrt{6} \right | a,b,c, d \in \Q \right\},
\end{align}$$

is an extension field of both $\Q(\sqrt{2})$ and $\Q,$ of degree 2 and 4 respectively. It is also a simple extension, as one can show that

$$\begin{align}
\Q(\sqrt{2}, \sqrt{3}) &= \Q (\sqrt{2} + \sqrt{3}) \\
&= \left. \left \{ a + b (\sqrt{2} + \sqrt{3}) + c (\sqrt{2} + \sqrt{3})^2 + d(\sqrt{2} + \sqrt{3})^3 \right | a,b,c, d \in \Q\right\}.
\end{align}$$

Finite extensions of $\Q$ are also called algebraic number fields and are important in number theory. Another extension field of the rationals, which is also important in number theory, although not a finite extension, is the field of p-adic numbers $\Q_p$ for a prime number _p_.

It is common to construct an extension field of a given field _K_ as a quotient ring of the polynomial ring _K_[_X_] in order to "create" a root for a given polynomial _f_(_X_). Suppose for instance that _K_ does not contain any element _x_ with _x_² = −1. Then the polynomial X² + 1 is irreducible in _K_[_X_], consequently the ideal generated by this polynomial is maximal, and L = K[X]/(X² + 1) is an extension field of _K_ which _does_ contain an element whose square is −1 (namely the residue class of _X_).

By iterating the above construction, one can construct a splitting field of any polynomial from _K_[_X_]. This is an extension field _L_ of _K_ in which the given polynomial splits into a product of linear factors.

If _p_ is any prime number and _n_ is a positive integer, we have a finite field GF(_p^(n)_) with _p^(n)_ elements; this is an extension field of the finite field $\operatorname{GF}(p) = \Z/p\Z$ with _p_ elements.

Given a field _K_, we can consider the field _K_(_X_) of all rational functions in the variable _X_ with coefficients in _K_; the elements of _K_(_X_) are fractions of two polynomials over _K_, and indeed _K_(_X_) is the field of fractions of the polynomial ring _K_[_X_]. This field of rational functions is an extension field of _K_. This extension is infinite.

Given a Riemann surface _M_, the set of all meromorphic functions defined on _M_ is a field, denoted by $\C(M).$ It is a transcendental extension field of $\C$ if we identify every complex number with the corresponding constant function defined on _M_. More generally, given an algebraic variety _V_ over some field _K_, then the function field of _V_, consisting of the rational functions defined on _V_ and denoted by _K_(_V_), is an extension field of _K_.


Algebraic extension

An element _x_ of a field extension is algebraic over _K_ if it is a root of a nonzero polynomial with coefficients in _K_. For example, $\sqrt 2$ is algebraic over the rational numbers, because it is a root of x² − 2. If an element _x_ of _L_ is algebraic over _K_, the monic polynomial of lowest degree that has _x_ as a root is called the minimal polynomial of _x_. This minimal polynomial is irreducible over _K_.

An element _s_ of _L_ is algebraic over _K_ if and only if the simple extension is a finite extension. In this case the degree of the extension equals the degree of the minimal polynomial, and a basis of the _K_-vector space _K_(_s_) consists of 1, s, s², …, s^(d − 1), where _d_ is the degree of the minimal polynomial.

The set of the elements of _L_ that are algebraic over _K_ form a subextension, which is called the algebraic closure of _K_ in _L_. This results from the preceding characterization: if _s_ and _t_ are algebraic, the extensions and are finite. Thus is also finite, as well as the sub extensions , and (if . It follows that , _st_ and 1/_s_ are all algebraic.

An _algebraic extension_ is an extension such that every element of _L_ is algebraic over _K_. Equivalently, an algebraic extension is an extension that is generated by algebraic elements. For example, $\Q(\sqrt 2, \sqrt 3)$ is an algebraic extension of $\Q$, because $\sqrt 2$ and $\sqrt 3$ are algebraic over $\Q.$

A simple extension is algebraic if and only if it is finite. This implies that an extension is algebraic if and only if it is the union of its finite subextensions, and that every finite extension is algebraic.

Every field _K_ has an algebraic closure, which is up to an isomorphism the largest extension field of _K_ which is algebraic over _K_, and also the smallest extension field such that every polynomial with coefficients in _K_ has a root in it. For example, $\C$ is an algebraic closure of $\R,$ but not an algebraic closure of $\Q,$ as it is not algebraic over $\Q$ (for example is not algebraic over $\Q$).


Transcendental extension

Given a field extension , a subset _S_ of _L_ is called algebraically independent over _K_ if no non-trivial polynomial relation with coefficients in _K_ exists among the elements of _S_. The largest cardinality of an algebraically independent set is called the transcendence degree of _L_/_K_. It is always possible to find a set _S_, algebraically independent over _K_, such that _L_/_K_(_S_) is algebraic. Such a set _S_ is called a transcendence basis of _L_/_K_. All transcendence bases have the same cardinality, equal to the transcendence degree of the extension. An extension _L_/_K_ is said to be if and only if there exists a transcendence basis _S_ of _L_/_K_ such that _L_ = _K_(_S_). Such an extension has the property that all elements of _L_ except those of _K_ are transcendental over _K_, but, however, there are extensions with this property which are not purely transcendental—a class of such extensions take the form _L_/_K_ where both _L_ and _K_ are algebraically closed. In addition, if _L_/_K_ is purely transcendental and _S_ is a transcendence basis of the extension, it doesn't necessarily follow that _L_ = _K_(_S_). For example, consider the extension $\Q(x, \sqrt{x})/\Q,$ where _x_ is transcendental over $\Q.$ The set {x} is algebraically independent since _x_ is transcendental. Obviously, the extension $\Q(x, \sqrt{x})/\Q(x)$ is algebraic, hence {x} is a transcendence basis. It doesn't generate the whole extension because there is no polynomial expression in x for $\sqrt{x}$. But it is easy to see that $\{\sqrt{x}\}$ is a transcendence basis that generates $\Q(x, \sqrt{x}),$ so this extension is indeed purely transcendental.)


Normal, separable and Galois extensions

An algebraic extension _L_/_K_ is called normal if every irreducible polynomial in _K_[_X_] that has a root in _L_ completely factors into linear factors over _L_. Every algebraic extension _F_/_K_ admits a normal closure _L_, which is an extension field of _F_ such that _L_/_K_ is normal and which is minimal with this property.

An algebraic extension _L_/_K_ is called separable if the minimal polynomial of every element of _L_ over _K_ is separable, i.e., has no repeated roots in an algebraic closure over _K_. A Galois extension is a field extension that is both normal and separable.

A consequence of the primitive element theorem states that every finite separable extension has a primitive element (i.e. is simple).

Given any field extension _L_/_K_, we can consider its AUTOMORPHISM GROUP Aut(_L_/_K_), consisting of all field automorphisms _α_: _L_ → _L_ with _α_(_x_) = _x_ for all _x_ in _K_. When the extension is Galois this automorphism group is called the Galois group of the extension. Extensions whose Galois group is abelian are called abelian extensions.

For a given field extension _L_/_K_, one is often interested in the intermediate fields _F_ (subfields of _L_ that contain _K_). The significance of Galois extensions and Galois groups is that they allow a complete description of the intermediate fields: there is a bijection between the intermediate fields and the subgroups of the Galois group, described by the fundamental theorem of Galois theory.


Generalizations

Field extensions can be generalized to ring extensions which consist of a ring and one of its subrings. A closer non-commutative analog are central simple algebras (CSAs) – ring extensions over a field, which are simple algebra (no non-trivial 2-sided ideals, just as for a field) and where the center of the ring is exactly the field. For example, the only finite field extension of the real numbers is the complex numbers, while the quaternions are a central simple algebra over the reals, and all CSAs over the reals are Brauer equivalent to the reals or the quaternions. CSAs can be further generalized to Azumaya algebras, where the base field is replaced by a commutative local ring.


Extension of scalars

Given a field extension, one can "extend scalars" on associated algebraic objects. For example, given a real vector space, one can produce a complex vector space via complexification. In addition to vector spaces, one can perform extension of scalars for associative algebras defined over the field, such as polynomials or group algebras and the associated group representations. Extension of scalars of polynomials is often used implicitly, by just considering the coefficients as being elements of a larger field, but may also be considered more formally. Extension of scalars has numerous applications, as discussed in extension of scalars: applications.


See also

-   Field theory
-   Glossary of field theory
-   Tower of fields
-   Primary extension
-   Regular extension


Notes


References

-   -   -   -


External links

-

Field_extensions

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]