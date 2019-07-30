The CARRY-LESS PRODUCT of two binary numbers is the result of CARRY-LESS MULTIPLICATION of these numbers. This operation conceptually works like long multiplication except for the fact that the carry is discarded instead of applied to the more significant position. It can be used to model operations over finite fields, in particular multiplication of polynomials from GF(2)[_X_], the polynomial ring over GF(2).


Definition

Given two numbers $\textstyle a=\sum_i a_i2^i$ and $\textstyle b=\sum_i b_i2^i$, with a_(i), b_(i) ∈ {0, 1} denoting the bits of these numbers. Then the carry-less product of these two numbers is defined to be $\textstyle c=\sum_i c_i2^i$, with each bit c_(i) computed as the exclusive or of products of bits from the input numbers as follows:[1]

    $c_i=\bigoplus_{j=0}^i a_jb_{i-j}$


Example

Consider _a_ = 10100010₂ and _b_ = 10010110₂, with all numbers given in binary. Then the carry-less multiplication of these is essentially what one would get from performing a long multiplication but ignoring the carries.

                  1 0 1 0 0 0 1 0 = a
   ---------------|---|-------|--
   1 0 0 1 0 1 1 0|0 0 0 0 0 0 0
       1 0 0 1 0 1 1 0|0 0 0 0 0
               1 0 0 1 0 1 1 0|0
   ------------------------------
   1 0 1 1 0 0 0 1 1 1 0 1 1 0 0
             ^ ^

So the carry-less product of _a_ and _b_ would be _c_ = 101100011101100₂. For every bit set in the number _a_, the number _b_ is shifted to the left as many bits as indicated by the position of the bit in _a_. All these shifted versions are then combined using an exclusive or, instead of the regular addition which would be used for regular long multiplication. This can be seen in the columns indicated by ^, where regular addition would cause a carry to the column to the left, which does not happen here.


Multiplication of polynomials

The carry-less product can also be seen as multiplication of polynomials over the field GF(2). This is because the exclusive or corresponds to the addition in this field.

In the example above, the numbers _a_ and _b_ corresponds to polynomials

    A = ∑_(i)a_(i)X^(i) = X⁷ + X⁵ + X¹  B = ∑_(i)b_(i)X^(i) = X⁷ + X⁴ + X² + X¹

and the product of these is

    C = A ⋅ B = ∑_(i)c_(i)X^(i) = X¹⁴ + X¹² + X¹¹ + X⁷ + X⁶ + X⁵ + X³ + X²

which is what the number _c_ computed above encodes. Notice how (X⁷ ⋅ X¹) + (X¹ ⋅ X⁷) ≡ 0 and (X⁷ ⋅ X²) + (X⁵ ⋅ X⁴) ≡ 0 thanks to the arithmetic in GF(2). This corresponds to the columns marked ^ in the example.


Applications

The elements of GF(2^(_n_)), i.e. a finite field whose order is a power of two, are usually represented as polynomials in GF(2)[_X_]. Multiplication of two such field elements consists of multiplication of the corresponding polynomials, followed by a reduction with respect to some irreducible polynomial which is taken from the construction of the field. If the polynomials are encoded as binary numbers, carry-less multiplication can be used to perform the first step of this computation.

Such fields have applications in cryptography and for some checksum algorithms.


Implementations

Some processors support the CLMUL instruction set and thus provide a hardware instruction to perform this operation.

For other targets it is possible to implement the computation above as a software algorithm, and many cryptography libraries will contain an implementation as part of their finite field arithmetic operations.


Other bases

The definition of a carry-less product as the result of a long multiplication discarding carry would readily apply to bases other than 2. But the result depends on the basis, which is therefore an essential part of the operation. As this operation is typically being used on computers operating in binary, the binary form discussed above is the one employed in practice.

Polynomials over other finite fields of prime order do have applications, but treating the coefficients of such a polynomial as the digits of a single number is rather uncommon, so the multiplication of such polynomials would not be seen as a carry-less multiplication of numbers.


See also

-   CLMUL instruction set
-   Finite field arithmetic
-   Galois/Counter Mode


References

Category:Binary arithmetic Category:Computer arithmetic Category:Binary operations Category:Multiplication

[1]