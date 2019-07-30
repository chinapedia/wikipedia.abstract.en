The HAWKINS–SIMON CONDITION refers to a result in mathematical economics, attributed to David Hawkins and Herbert A. Simon,[1] that guarantees the existence of a non-negative output vector that solves the equilibrium relation in the input–output model where demand equals supply. More precisely, it states a condition for [I − A] under which the input–output system

[I − A] ⋅ X = D
has a solution X̂ ≥ 0 for any D ≥ 0. Here I is the identity matrix and A is called the _input–output matrix_ or _Leontief matrix_ after Wassily Leontief, who empirically estimated it in the 1940s.[2] Together, they describe a system in which

$$\sum_{j=1}^{n} a_{ij} x_{j} + d_{i} = x_{i} \quad i = 1, 2, \ldots, n$$
where a_(ij) is the amount of the _i_th good used to produce one unit of the _j_th good, x_(j) is the amount of the _j_th good produced, and d_(i) is the amount of final demand for good _i_. Rearranged and written in vector notation, this gives the first equation.

Define [I − A] = B, where B = [b_(ij)] is an n × n matrix with b_(ij) ≤ 0, i ≠ j [3]. Then the HAWKINS–SIMON THEOREM states that the following two conditions are equivalent

    (i) There exists an X ≥ 0 such that B ⋅ X > 0.
    (ii) All the successive leading principal minors of B are positive, that is
    $$b_{11} > 0, \begin{vmatrix} b_{11} & b_{12} \\ b_{21} & b_{22} \end{vmatrix} > 0, \ldots, \begin{vmatrix} b_{11} & b_{12} & \dots & b_{1n} \\ b_{21} & b_{22} & \dots & b_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ b_{n1} & b_{n2} & \dots & b_{nn} \end{vmatrix} > 0$$

For a proof, see Morishima (1964),[4] Nikaido (1968),[5] or Murata (1977).[6] Condition (ii) is known as HAWKINS–SIMON CONDITION. This theorem was independently discovered by David Kotelyanskiĭ,[7] as it is referred to by Felix Gantmacher as KOTELYANSKIĬ LEMMA.[8]


See also

-   Diagonally dominant matrix
-   Perron–Frobenius theorem


References


Further reading

-   -

Category:Theorems in linear algebra

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]