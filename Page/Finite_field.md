In mathematics, a FINITE FIELD or GALOIS FIELD (so-named in honor of Évariste Galois) is a field that contains a finite number of elements. As with any field, a finite field is a set on which the operations of multiplication, addition, subtraction and division are defined and satisfy certain basic rules. The most common examples of finite fields are given by the [[integers_mod_n|integers mod for any positive integer . If is a th primitive root of unity in a field , then contains all the roots of unity, which are .

The field contains a th primitive root of unity if and only if is a divisor of ; if is a divisor of , then the number of primitive th roots of unity in is (Euler's totient function). The number of th roots of unity in is .

In a field of characteristic , every th root of unity is also a th root of unity. It follows that primitive th roots of unity never exist in a field of characteristic .

On the other hand, if is coprime to , the roots of the th cyclotomic polynomial are distinct in every field of characteristic , as this polynomial is a divisor of , whose discriminant is nonzero modulo . It follows that the th cyclotomic polynomial factors over into distinct irreducible polynomials that have all the same degree, say , and that is the smallest field of characteristic that contains the th primitive roots of unity.

Example: GF(64)

The field has several interesting properties that smaller fields do not share: it has two subfields such that neither is contained in the other; not all generators (elements with minimal polynomial of degree over ) are primitive elements; and the primitive elements are not all conjugate under the Galois group.

The order of this field being , and the divisors of being , the subfields of are , , , and itself. As and are coprime, the intersection of and in is the prime field .

The union of and has thus elements. The remaining elements of generate in the sense that no other subfield contains any of them. It follows that they are roots of irreducible polynomials of degree over . This implies that, over , there are exactly irreducible monic polynomials of degree . This may be verified by factoring over .

The elements of are primitive th roots of unity for some dividing . As the 3rd and the 7th roots of unity belong to and , respectively, the generators are primitive th roots of unity for some in . Euler's totient function shows that there are primitive th roots of unity, primitive st roots of unity, and primitive rd roots of unity. Summing these numbers, one finds again elements.

By factoring the cyclotomic polynomials over , one finds that:

-   The six primitive th roots of unity are roots of

_X_⁶ + _X_³ + 1,

    and are all conjugate under the action of the Galois group.

-   The twelve primitive st roots of unity are roots of

(_X_⁶ + _X_⁴ + _X_² + _X_ + 1)(_X_⁶ + _X_⁵ + _X_⁴ + _X_² + 1).

    They form two orbits under the action of the Galois group. As the two factors are reciprocal to each other, a root and its (multiplicative) inverse do not belong to the same orbit.

-   The primitive elements of are the roots of

(_X_⁶ + _X_⁴ + _X_³ + _X_ + 1)(_X_⁶ + _X_ + 1)(_X_⁶ + _X_⁵ + 1)(_X_⁶ + _X_⁵ + _X_³ + _X_² + 1)(_X_⁶ + _X_⁵ + _X_² + _X_ + 1)(_X_⁶ + _X_⁵ + _X_⁴ + _X_ + 1),

    They split into 6 orbits of 6 elements under the action of the Galois group.

This shows that the best choice to construct is to define it as . In fact, this generator is a primitive element, and this polynomial is the irreducible polynomial that produces the easiest Euclidean division.


Frobenius automorphism and Galois theory

In this section, is a prime number, and is a power of .

In , the identity implies that the map

_φ_ : _x_ ↦ _x_^(_p_)
is a -linear endomorphism and a field automorphism of , which fixes every element of the subfield . It is called the Frobenius automorphism, after Ferdinand Georg Frobenius.

Denoting by the composition of with itself times, we have

_φ_^(_k_) : _x_ ↦ _x_^(_p_^(_k_)).
It has been shown in the preceding section that is the identity. For , the automorphism is not the identity, as, otherwise, the polynomial

_X_^(_p_^(_k_)) − _X_
would have more than roots.

There are no other -automorphisms of . In other words, has exactly -automorphisms, which are

_I__d_ = _φ_⁰, _φ_, _φ_², …, _φ_^(_n_ − 1).

In terms of Galois theory, this means that is a Galois extension of , which has a cyclic Galois group.

The fact that the Frobenius map is surjective implies that every finite field is perfect.


Polynomial factorization

If is a finite field, a non-constant monic polynomial with coefficients in is irreducible over , if it is not the product of two non-constant monic polynomials, with coefficients in .

As every polynomial ring over a field is a unique factorization domain, every monic polynomial over a finite field may be factored in a unique way (up to the order of the factors) into a product of irreducible monic polynomials.

There are efficient algorithms for testing polynomial irreducibility and factoring polynomials over finite field. They are a key step for factoring polynomials over the integers or the rational numbers. At least for this reason, every computer algebra system has functions for factoring polynomials over finite fields, or, at least, over finite prime fields.

Irreducible polynomials of a given degree

The polynomial

_X_^(_q_) − _X_
factors into linear factors over a field of order . More precisely, this polynomial is the product of all monic polynomials of degree one over a field of order .

This implies that, if then is the product of all monic irreducible polynomials over , whose degree divides . In fact, if is an irreducible factor over of , its degree divides , as its splitting field is contained in . Conversely, if is an irreducible monic polynomial over of degree dividing , it defines a field extension of degree , which is contained in , and all roots of belong to , and are roots of ; thus divides . As does not have any multiple factor, it is thus the product of all the irreducible monic polynomials that divide it.

This property is used to compute the product of the irreducible factors of each degree of polynomials over ; see Distinct degree factorization.

Number of monic irreducible polynomials of a given degree over a finite field

The number of monic irreducible polynomials of degree over is given by[1]

$$N(q,n)=\frac{1}{n}\sum_{d\mid n} \mu(d)q^{n/d},$$
where is the Möbius function. This formula is almost a direct consequence of above property of .

By the above formula, the number of irreducible (not necessarily monic) polynomials of degree over is .

A (slightly simpler) lower bound for is

$$N(q,n)\geq\frac{1}{n} \left(q^n-\sum_{p\mid n, \ p \text{ prime}} q^{n/p}\right).$$

One may easily deduce that, for every and every , there is at least one irreducible polynomial of degree over . This lower bound is sharp for .


Applications

In cryptography, the difficulty of the discrete logarithm problem in finite fields or in elliptic curves is the basis of several widely used protocols, such as the Diffie–Hellman protocol. For example, in 2014 a secure internet connection to Wikipedia involved the elliptic curve Diffie–Hellman protocol (ECDHE) over a large finite field.[2] In coding theory, many codes are constructed as subspaces of vector spaces over finite fields.

Finite fields are widely used in number theory, as many problems over the integers may be solved by reducing them modulo one or several prime numbers. For example, the fastest known algorithms for polynomial factorization and linear algebra over the field of rational numbers proceed by reduction modulo one or several primes, and then reconstruction of the solution by using Chinese remainder theorem, Hensel lifting or the LLL algorithm.

Similarly many theoretical problems in number theory can be solved by considering their reductions modulo some or all prime numbers. See, for example, Hasse principle. Many recent developments of algebraic geometry were motivated by the need to enlarge the power of these modular methods. Wiles' proof of Fermat's Last Theorem is an example of a deep result involving many mathematical tools, including finite fields.


Extensions

Algebraic closure

A finite field is not algebraically closed. To demonstrate this, consider the polynomial

_f_(_T_) = 1 + ∏_(_α_ ∈ F)(_T_ − _α_),
which has no roots in , since for all in .

The direct limit of the system:



with inclusion, is an infinite field. It is the algebraic closure of all the fields in the system, and is denoted by: $\overline{\mathbf{F}_p}$.

The inclusions commute with the Frobenius map, as it is defined the same way on each field (), so the Frobenius map defines an automorphism of $\overline{\mathbf{F}_p}$, which carries all subfields back to themselves. In fact can be recovered as the fixed points of the th iterate of the Frobenius map.

However unlike the case of finite fields, the Frobenius automorphism on $\overline{\mathbf{F}_p}$ has infinite order, and it does not generate the full group of automorphisms of this field. That is, there are automorphisms of $\overline{\mathbf{F}_p}$ which are not a power of the Frobenius map. However, the group generated by the Frobenius map is a dense subgroup of the automorphism group in the Krull topology. Algebraically, this corresponds to the additive group being dense in the profinite integers (direct product of the -adic integers over all primes , with the product topology).

If we actually construct our finite fields in such a fashion that is contained in whenever divides , then this direct limit can be constructed as the union of all these fields. Even if we do not construct our fields this way, we can still speak of the algebraic closure, but some more delicacy is required in its construction.

Wedderburn's little theorem

A division ring is a generalization of field. Division rings are not assumed to be commutative. There are no non-commutative finite division rings: Wedderburn's little theorem states that all finite division rings are commutative, hence finite fields. The result holds even if we relax associativity and consider alternative rings, by the Artin–Zorn theorem.[3]

Relationship to other commutative ring classes

Finite fields appear in the following chain of inclusions:


See also

-   Quasi-finite field
-   Field with one element
-   Finite field arithmetic
-   Finite ring
-   Finite group
-   Elementary abelian group
-   Hamming space


Notes


References

-   W. H. Bussey (1905) "Galois field tables for _p_^(_n_) ≤ 169", Bulletin of the American Mathematical Society 12(1): 22–38,
-   W. H. Bussey (1910) "Tables of Galois fields of order < 1000", _Bulletin of the American Mathematical Society_ 16(4): 188–206,
-   -   -   -   -


External links

-   Finite Fields at Wolfram research.

Finite_fields

[1]

[2] This can be verified by looking at the information on the page provided by the browser.

[3]