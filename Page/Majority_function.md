In Boolean logic, the MAJORITY FUNCTION (also called the MEDIAN OPERATOR) is a function from _n_ inputs to one output. The value of the operation is false when _n_/2 or more arguments are false, and true otherwise. Alternatively, representing true values as 1 and false values as 0, we may use the formula

$$\operatorname{Majority} \left ( p_1,\dots,p_n \right ) =  \left \lfloor \frac{1}{2} +  \frac{\left(\sum_{i=1}^n  p_i\right) - 1/2}{n} \right \rfloor.$$

The "−1/2" in the formula serves to break ties in favor of zeros when _n_ is even. If the term "−1/2" is omitted, the formula can be used for a function that breaks ties in favor of ones.


Boolean circuits

A _majority gate_ is a logical gate used in circuit complexity and other applications of Boolean circuits. A majority gate returns true if and only if more than 50% of its inputs are true.

For instance, in a full adder, the carry output is found by applying a majority function to the three inputs, although frequently this part of the adder is broken down into several simpler logical gates.

Many systems have triple modular redundancy; they use the majority function for majority logic decoding to implement error correction.

A major result in circuit complexity asserts that the majority function cannot be computed by AC0 circuits of subexponential size.


Monotone formulae for majority

For _n_ = 1 the median operator is just the unary identity operation _x_. For _n_ = 3 the ternary median operator can be expressed using conjunction and disjunction as _xy_ + _yz_ + _zx_. Remarkably this expression denotes the same operation independently of whether the symbol + is interpreted as inclusive or or exclusive or.

For an arbitrary _n_ there exists a monotone formula for majority of size O(_n_^(5.3)).[1] This is proved using probabilistic method. Thus, this formula is non-constructive. However, one can obtain an explicit formula for majority of polynomial size using a sorting network of Ajtai, Komlós, and Szemerédi.

The majority function produces "1" when more than half of the inputs are 1; it produces "0" when more than half the inputs are 0. Most applications deliberately force an odd number of inputs so they don't have to deal with the question of what happens when exactly half the inputs are 0 and exactly half the inputs are 1. The few systems that calculate the majority function on an even number of inputs are often biased towards "0"—they produce "0" when exactly half the inputs are 0 -- for example, a 4-input majority gate has a 0 output only when two or more 0's appear at its inputs.[2] In a few systems, a 4-input majority network randomly chooses "1" or "0" when exactly two 0's appear at its inputs.[3]


Properties

For any _x_, _y_, and _z_, the ternary median operator 〈_x_, _y_, _z_〉 satisfies the following equations.

-   〈_x_, _y_, _y_〉 = _y_
-   〈_x_, _y_, _z_〉 = 〈_z_, _x_, _y_〉
-   〈_x_, _y_, _z_〉 = 〈_x_, _z_, _y_〉
-   〈〈_x_, _w_, _y_〉, _w_, _z_〉 = 〈_x_, _w_, 〈_y_, _w_, _z_〉〉

An abstract system satisfying these as axioms is a median algebra.


Notes


References

-


See also

-   Boolean algebra (structure)
-   Boolean algebras canonically defined
-   Boyer–Moore majority vote algorithm
-   Majority problem (cellular automaton)

Category:Logic gates Category:Circuit complexity Category:Boolean algebra

[1]

[2]

[3]