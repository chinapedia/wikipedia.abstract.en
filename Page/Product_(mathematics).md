In mathematics, a PRODUCT is the result of multiplying, or an expression that identifies factors to be multiplied. Thus, for instance, 6 is the product of 2 and 3 (the result of multiplication), and x ⋅ (2 + x) is the product of x and (2 + x) (indicating that the two factors should be multiplied together).

The order in which real or complex numbers are multiplied has no bearing on the product; this is known as the commutative law of multiplication. When matrices or members of various other associative algebras are multiplied, the product usually depends on the order of the factors. Matrix multiplication, for example, and multiplication in other algebras is in general non-commutative.

There are many different kinds of products in mathematics: besides being able to multiply just numbers, polynomials or matrices, one can also define products on many different algebraic structures. An overview of these different kinds of products is given here.


Product of two numbers

Product of two natural numbers

Three_by_Four.svg

Placing several stones into a rectangular pattern with r rows and s columns gives

$$r \cdot s = \sum_{i=1}^s r = \underbrace{ r+r+\cdots+r }_{s\text{ times}}= \sum_{j=1}^r s = \underbrace{ s+s+\cdots+s }_{r\text{ times}}$$

stones. Another approach to multiplication that applies also to real numbers is continuously stretching the number line from , so that the is stretched to the one factor, and looking up the product, where the other factor is stretched to.

Product of two integers

Integers allow positive and negative numbers. Their product is determined by the product of their positive amounts, combined with the sign derived from the following rule, which is a necessary consequence of demanding distributivity of the multiplication over addition, but is _no additional rule_.

$$\begin{array}{|c|c  c|}\hline
\cdot & - & + \\ \hline
  -   & + & - \\
  +   & - & + \\ \hline
\end{array}$$

In words, we have:

-   Minus times Minus gives Plus
-   Minus times Plus gives Minus
-   Plus times Minus gives Minus
-   Plus times Plus gives Plus

Product of two fractions

Two fractions can be multiplied by multiplying their numerators and denominators:

$$\frac{z}{n} \cdot \frac{z'}{n'} = \frac{z\cdot z'}{n\cdot n'}$$

Product of two real numbers

For a rigorous definition of the product of two real numbers see Construction of the real numbers.

Product of two complex numbers

Two complex numbers can be multiplied by the distributive law and the fact that i² =  − 1, as follows:

$$\begin{align}
(a + b\, i)\cdot (c+d\, i)
 & = a\cdot c + a \cdot d\, i + b\cdot c \, i + b\cdot d \cdot  i^2\\
 & = (a \cdot c - b\cdot d) + (a\cdot d + b\cdot c) \, i
 \end{align}$$

Geometric meaning of complex multiplication

Komplexe_zahlenebene.svg Complex numbers can be written in polar coordinates:

_a_ + _b_ _i_ = _r_ ⋅ (cos (_φ_) + _i_sin (_φ_)) = _r_ ⋅ _e_^(_i__φ_)
Furthermore,

_c_ + _d_ _i_ = _s_ ⋅ (cos (_ψ_) + _i_sin (_ψ_)) = _s_ ⋅ _e_^(_i__ψ_),
from which one obtains

(_a_ ⋅ _c_ − _b_ ⋅ _d_) + (_a_ ⋅ _d_ + _b_ ⋅ _c_)_i_ = _r_ ⋅ _s_ ⋅ _e_^(_i_(_φ_ + _ψ_)).

The geometric meaning is that the magnitudes are multiplied and the arguments are added.

Product of two quaternions

The product of two quaternions can be found in the article on quaternions. However, in this case, a ⋅ b and b ⋅ a are in general different.


Product of sequences

The product operator for the product of a sequence is denoted by the capital Greek letter pi ∏ (in analogy to the use of the capital Sigma ∑ as summation symbol). The product of a sequence consisting of only one number is just that number itself. The product of no factors at all is known as the empty product, and is equal to 1.


Commutative rings

Commutative rings have a product operation.

Residue classes of integers

Residue classes in the rings $\Z/N\Z$ can be added:

$$(a+N\Z) + (b+N\Z) = a+b + N\Z$$

and multiplied:

$$(a+N\Z) \cdot (b+N\Z) = a\cdot b + N\Z$$

Convolution

Convolucion_Funcion_Pi.gif

Two functions from the reals to itself can be multiplied in another way, called the convolution.

If

$$\int\limits_{-\infty}^\infty |f(t)|\,\mathrm{d}t<\infty\qquad\mbox{and}\qquad
       \int\limits_{-\infty}^\infty |g(t)|\,\mathrm{d}t < \infty,$$

then the integral

$$(f*g) (t) \;:= \int\limits_{-\infty}^\infty f(\tau)\cdot g(t-\tau)\,\mathrm{d}\tau$$

is well defined and is called the convolution.

Under the Fourier transform, convolution becomes point-wise function multiplication.

Polynomial rings

The product of two polynomials is given by the following:

$$\left(\sum_{i=0}^n a_i X^i\right) \cdot \left(\sum_{j=0}^m b_j X^j\right) = \sum_{k=0}^{n+m} c_k X^k$$

with

_c__(_k_) = ∑_(_i_ + _j_ = _k_)_a__(_i_) ⋅ _b__(_j_)


Products in linear algebra

There are many different kinds of products in linear algebra; some of these have confusingly similar names (outer product, exterior product) but have very different meanings. Others have very different names (outer product, tensor product, Kronecker product) but convey essentially the same idea. A brief overview of these is given here.

Scalar multiplication

By the very definition of a vector space, one can form the product of any scalar with any vector, giving a map $\R \times V \rightarrow V$.

Scalar product

A scalar product is a bi-linear map:

$$\cdot : V \times V \rightarrow \R$$

with the following conditions, that v ⋅ v > 0 for all $0 \not= v \in V$.

From the scalar product, one can define a norm by letting $\|v\| := \sqrt{v\cdot v}$.

The scalar product also allows one to define an angle between two vectors:

$$\cos \angle (v,w) = \frac{v\cdot w}{\|v\| \cdot \|w\|}$$

In n-dimensional Euclidean space, the standard scalar product (called the dot product) is given by:

$$\left(\sum_{i=1}^n \alpha_i e_i \right) \cdot \left(\sum_{i=1}^n \beta_i e_i \right) = \sum_{i=1}^n \alpha_i\,\beta_i$$

Cross product in 3-dimensional space

The cross product of two vectors in 3-dimensions is a vector perpendicular to the two factors, with length equal to the area of the parallelogram spanned by the two factors.

The cross product can also be expressed as the formal determinant:

$$\mathbf{u\times v}=\begin{vmatrix}
\mathbf{i}&\mathbf{j}&\mathbf{k}\\
u_1&u_2&u_3\\
v_1&v_2&v_3\\
\end{vmatrix}$$

Composition of linear mappings

A linear mapping can be defined as a function _f_ between two vector spaces _V_ and _W_ with underlying field F, satisfying[1]

_f_(_t_₁_x_₁ + _t_₂_x_₂) = _t_₁_f_(_x_₁) + _t_₂_f_(_x_₂), ∀_x_₁, _x_₂ ∈ _V_, ∀_t_₁, _t_₂ ∈ 𝔽.
If one only considers finite dimensional vector spaces, then

_f_(V) = _f_(_v__(_i_)B_(V)^(_i_)) = _v__(_i_)_f_(B_(V)^(_i_)) = _f_^(_i_)_(_j_)_v__(_i_)B_(W)^(_j_),
in which B_(V) andB_(W) denote the bases of _V_ and _W_, and _v_(i)_ denotes the component of V on B_(V)^(_i_), and Einstein summation convention is applied.

Now we consider the composition of two linear mappings between finite dimensional vector spaces. Let the linear mapping _f_ map _V_ to _W_, and let the linear mapping _g_ map _W_ to _U_. Then one can get

_g_ ∘ _f_(V) = _g_(_f_^(_i_)_(_j_)_v__(_i_)B_(W)^(_j_)) = _g_^(_j_)_(_k_)_f_^(_i_)_(_j_)_v__(_i_)B_(U)^(_k_).
Or in matrix form:

_g_ ∘ _f_(V) = GFV,
in which the _i_-row, _j_-column element of F, denoted by _F_(ij)_, is _f^(j)_(i)_, and _G_(ij)=g^(j)_(i)_.

The composition of more than two linear mappings can be similarly represented by a chain of matrix multiplication.

Product of two matrices

Given two matrices

$$A = (a_{i,j})_{i=1\ldots s;j=1\ldots r} \in \R^{s\times r}$$
and $B = (b_{j,k})_{j=1\ldots r;k=1\ldots t}\in \R^{r\times t}$

their product is given by

$$B \cdot A = \left( \sum_{j=1}^r a_{i,j} \cdot b_{j,k} \right)_{i=1\ldots s;k=1\ldots t} \;\in\R^{s\times t}$$

Composition of linear functions as matrix product

There is a relationship between the composition of linear functions and the product of two matrices. To see this, let r = dim(U), s = dim(V) and t = dim(W) be the (finite) dimensions of vector spaces U, V and W. Let 𝒰 = {u₁, …u_(r)} be a basis of U, 𝒱 = {v₁, …v_(s)} be a basis of V and 𝒲 = {w₁, …w_(t)} be a basis of W. In terms of this basis, let $A = M^{\mathcal U}_{\mathcal V}(f) \in\R^{s\times r}$ be the matrix representing f : U → V and $B = M^{\mathcal V}_{\mathcal W}(g) \in\R^{r\times t}$ be the matrix representing g : V → W. Then

$$B\cdot A =  M^{\mathcal U}_{\mathcal W} (g\circ f) \in\R^{s\times t}$$

is the matrix representing g ∘ f : U → W.

In other words: the matrix product is the description in coordinates of the composition of linear functions.

Tensor product of vector spaces

Given two finite dimensional vector spaces _V_ and _W_, the tensor product of them can be defined as a (2,0)-tensor satisfying:

_V_ ⊗ _W_(_v_, _m_) = _V_(_v_)_W_(_w_), ∀_v_ ∈ _V_^(*), ∀_w_ ∈ _W_^(*),
where _V^(*)_ and _W^(*)_ denote the dual spaces of _V_ and _W_.[2]

For infinite-dimensional vector spaces, one also has the:

-   Tensor product of Hilbert spaces
-   Topological tensor product.

The tensor product, outer product and Kronecker product all convey the same general idea. The differences between these are that the Kronecker product is just a tensor product of matrices, with respect to a previously-fixed basis, whereas the tensor product is usually given in its intrinsic definition. The outer product is simply the Kronecker product, limited to vectors (instead of matrices).

The class of all objects with a tensor product

In general, whenever one has two mathematical objects that can be combined in a way that behaves like a linear algebra tensor product, then this can be most generally understood as the internal product of a monoidal category. That is, the monoidal category captures precisely the meaning of a tensor product; it captures exactly the notion of why it is that tensor products behave the way they do. More precisely, a monoidal category is the class of all things (of a given type) that have a tensor product.

Other products in linear algebra

Other kinds of products in linear algebra include:

-   Hadamard product
-   Kronecker product
-   The product of tensors:
    -   Wedge product or exterior product
    -   Interior product
    -   Outer product
    -   Tensor product


Cartesian product

In set theory, a Cartesian product is a mathematical operation which returns a set (or PRODUCT SET) from multiple sets. That is, for sets _A_ and _B_, the Cartesian product is the set of all ordered pairs where and .[3]

The class of all things (of a given type) that have Cartesian products is called a Cartesian category. Many of these are Cartesian closed categories. Sets are an example of such objects.


Empty product

The empty product on numbers and most algebraic structures has the value of 1 (the identity element of multiplication) just like the empty sum has the value of 0 (the identity element of addition). However, the concept of the empty product is more general, and requires special treatment in logic, set theory, computer programming and category theory.


Products over other algebraic structures

Products over other kinds of algebraic structures include:

-   the Cartesian product of sets
-   the direct product of groups, and also the semidirect product, knit product and wreath product
-   the free product of groups
-   the product of rings
-   the product of ideals
-   the product of topological spaces
-   the Wick product of random variables
-   the cap, cup, Massey and slant product in algebraic topology
-   the smash product and wedge sum (sometimes called the wedge product) in homotopy

A few of the above products are examples of the general notion of an internal product in a monoidal category; the rest are describable by the general notion of a product in category theory.


Products in category theory

All of the previous examples are special cases or examples of the general notion of a product. For the general treatment of the concept of a product, see product (category theory), which describes how to combine two objects of some kind to create an object, possibly of a different kind. But also, in category theory, one has:

-   the fiber product or pullback,
-   the product category, a category that is the product of categories.
-   the ultraproduct, in model theory.
-   the internal product of a monoidal category, which captures the essence of a tensor product.


Other products

-   A function's product integral (as a continuous equivalent to the product of a sequence or as the multiplicative version of the (normal/standard/additive) integral. The product integral is also known as "continuous product" or "multiplical".
-   Complex multiplication, a theory of elliptic curves.


See also

-   Deligne tensor product of abelian categories
-   Iterated binary operation
-   Multiplicative calculus


Notes


References


External links

-   Product on Wolfram Mathworld
-

Category:Multiplication

[1]

[2]

[3]