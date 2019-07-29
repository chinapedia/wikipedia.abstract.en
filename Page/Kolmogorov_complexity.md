Mandelpart2_red.png fractal. Simply storing the 24-bit color of each pixel in this image would require 1.62 million bytes, but a small computer program can reproduce these 1.62 million bytes using the definition of the Mandelbrot set and the coordinates of the corners of the image. Thus, the Kolmogorov complexity of the raw file encoding this bitmap is much less than 1.62 million bytes in any pragmatic model of computation.]]

In algorithmic information theory (a subfield of computer science and mathematics), the KOLMOGOROV COMPLEXITY of an object, such as a piece of text, is the length of the shortest computer program (in a predetermined programming language) that produces the object as output. It is a measure of the computational resources needed to specify the object, and is also known as ALGORITHMIC COMPLEXITY, SOLOMONOFF-KOLMOGOROV–CHAITIN COMPLEXITY, PROGRAM-SIZE COMPLEXITY, DESCRIPTIVE COMPLEXITY, or ALGORITHMIC ENTROPY. It is named after Andrey Kolmogorov, who first published on the subject in 1963.[1][2]

The notion of Kolmogorov complexity can be used to state and prove impossibility results akin to Cantor's diagonal argument, Gödel's incompleteness theorem, and Turing's halting problem. In particular, for almost all objects, it is not possible to compute even a lower bound for its Kolmogorov complexity (Chaitin 1964), let alone its exact value.


Definition

Consider the following two strings of 32 lowercase letters and digits.

    Example 1: abababababababababababababababab
    Example 2: 4c1j5b2p0cv4w1x8rx2y39umgw5q85s7

The first string has a short English-language description, namely "ab 16 times", which consists of 11 characters. The second one has no obvious simple description (using the same character set) other than writing down the string itself, which has 32 characters.

More formally, the complexity of a string is the length of the shortest possible description of the string in some fixed universal description language (the sensitivity of complexity relative to the choice of description language is discussed below). It can be shown that the Kolmogorov complexity of any string cannot be more than a few bytes larger than the length of the string itself. Strings like the _abab_ example above, whose Kolmogorov complexity is small relative to the string's size, are not considered to be complex.

The Kolmogorov complexity can be defined for any mathematical object, but for simplicity the scope of this article is restricted to strings. We must first specify a description language for strings. Such a description language can be based on any computer programming language, such as Lisp, Pascal, or Java. If P is a program which outputs a string _x_, then P is a description of _x_. The length of the description is just the length of P as a character string, multiplied by the number of bits in a character (e.g. 7 for ASCII).

We could, alternatively, choose an encoding for Turing machines, where an _encoding_ is a function which associates to each Turing Machine M a bitstring <M>. If M is a Turing Machine which, on input _w_, outputs string _x_, then the concatenated string <M> _w_ is a description of _x_. For theoretical analysis, this approach is more suited for constructing detailed formal proofs and is generally preferred in the research literature. In this article, an informal approach is discussed.

Any string _s_ has at least one description. For example, the second string above is output by the program:

 function GenerateExample2String()
    return "4c1j5b2p0cv4w1x8rx2y39umgw5q85s7"

where the first string is output by the (much shorter) pseudo-code:

 function GenerateExample1String()
    return "ab" * 16

If a description _d_(_s_) of a string _s_ is of minimal length (i.e. it uses the fewest bits), it is called a MINIMAL DESCRIPTION of _s_. Thus, the length of _d_(_s_) (i.e. the number of bits in the description) is the KOLMOGOROV COMPLEXITY of _s_, written _K_(_s_). Symbolically,

    _K_(_s_) = |_d_(_s_)|.

The length of the shortest description will depend on the choice of description language; but the effect of changing languages is bounded (a result called the _invariance theorem_).


Invariance theorem

Informal treatment

There are some description languages which are optimal, in the following sense: given any description of an object in a description language, said description may be used in the optimal description language with a constant overhead. The constant depends only on the languages involved, not on the description of the object, nor the object being described.

Here is an example of an optimal description language. A description will have two parts:

-   The first part describes another description language.
-   The second part is a description of the object in that language.

In more technical terms, the first part of a description is a computer program, with the second part being the input to that computer program which produces the object as output.

THE INVARIANCE THEOREM FOLLOWS: Given any description language _L_, the optimal description language is at least as efficient as _L_, with some constant overhead.

PROOF: Any description _D_ in _L_ can be converted into a description in the optimal language by first describing _L_ as a computer program _P_ (part 1), and then using the original description _D_ as input to that program (part 2). The total length of this new description _D′_ is (approximately):

    |_D′_| = |_P_| + |_D_|

The length of _P_ is a constant that doesn't depend on _D_. So, there is at most a constant overhead, regardless of the object described. Therefore, the optimal language is universal up to this additive constant.

A more formal treatment

THEOREM: If _K_₁ and _K_₂ are the complexity functions relative to Turing complete description languages _L_₁ and _L_₂, then there is a constant _c_ – which depends only on the languages _L_₁ and _L_₂ chosen – such that

    ∀_s_. −_c_ ≤ _K_₁(_s_) − _K_₂(_s_) ≤ _c_.

PROOF: By symmetry, it suffices to prove that there is some constant _c_ such that for all strings _s_

    _K_₁(_s_) ≤ _K_₂(_s_) + _c_.

Now, suppose there is a program in the language _L_₁ which acts as an interpreter for _L_₂:

  function InterpretLanguage(string _p_)

where _p_ is a program in _L_₂. The interpreter is characterized by the following property:

    Running InterpretLanguage on input _p_ returns the result of running _p_.

Thus, if P is a program in _L_₂ which is a minimal description of _s_, then InterpretLanguage(P) returns the string _s_. The length of this description of _s_ is the sum of

1.  The length of the program InterpretLanguage, which we can take to be the constant _c_.
2.  The length of P which by definition is _K_₂(_s_).

This proves the desired upper bound.


History and context

Algorithmic information theory is the area of computer science that studies Kolmogorov complexity and other complexity measures on strings (or other data structures).

The concept and theory of Kolmogorov Complexity is based on a crucial theorem first discovered by Ray Solomonoff, who published it in 1960, describing it in "A Preliminary Report on a General Theory of Inductive Inference"[3] as part of his invention of algorithmic probability. He gave a more complete description in his 1964 publications, "A Formal Theory of Inductive Inference," Part 1 and Part 2 in _Information and Control_.[4][5]

Andrey Kolmogorov later independently published this theorem in _Problems Inform. Transmission_[6] in 1965. Gregory Chaitin also presents this theorem in _J. ACM_ – Chaitin's paper was submitted October 1966 and revised in December 1968, and cites both Solomonoff's and Kolmogorov's papers.[7]

The theorem says that, among algorithms that decode strings from their descriptions (codes), there exists an optimal one. This algorithm, for all strings, allows codes as short as allowed by any other algorithm up to an additive constant that depends on the algorithms, but not on the strings themselves. Solomonoff used this algorithm and the code lengths it allows to define a "universal probability" of a string on which inductive inference of the subsequent digits of the string can be based. Kolmogorov used this theorem to define several functions of strings, including complexity, randomness, and information.

When Kolmogorov became aware of Solomonoff's work, he acknowledged Solomonoff's priority.[8] For several years, Solomonoff's work was better known in the Soviet Union than in the Western World. The general consensus in the scientific community, however, was to associate this type of complexity with Kolmogorov, who was concerned with randomness of a sequence, while Algorithmic Probability became associated with Solomonoff, who focused on prediction using his invention of the universal prior probability distribution. The broader area encompassing descriptional complexity and probability is often called Kolmogorov complexity. The computer scientist Ming Li considers this an example of the Matthew effect: "…to everyone who has more will be given…"[9]

There are several other variants of Kolmogorov complexity or algorithmic information. The most widely used one is based on self-delimiting programs, and is mainly due to Leonid Levin (1974).

An axiomatic approach to Kolmogorov complexity based on Blum axioms (Blum 1967) was introduced by Mark Burgin in the paper presented for publication by Andrey Kolmogorov.[10]


Basic results

In the following discussion, let _K_(_s_) be the complexity of the string _s_.

It is not hard to see that the minimal description of a string cannot be too much larger than the string itself — the program GenerateFixedString above that outputs _s_ is a fixed amount larger than _s_.

THEOREM: There is a constant _c_ such that

    ∀_s_. _K_(_s_) ≤ |_s_| + _c_.

Uncomputability of Kolmogorov complexity

THEOREM: There exist strings of arbitrarily large Kolmogorov complexity. Formally: for each _n_ ∈ ℕ, there is a string _s_ with _K_(_s_) ≥ _n_.[11]

PROOF: Otherwise all of the infinitely many possible finite strings could be generated by the finitely many[12] programs with a complexity below _n_ bits.

THEOREM: _K_ is not a computable function. In other words, there is no program which takes a string _s_ as input and produces the integer _K_(_s_) as output.

The following indirect PROOF uses a simple Pascal-like language to denote programs; for sake of proof simplicity assume its description (i.e. an interpreter) to have a length of bits. Assume for contradiction there is a program

  function KolmogorovComplexity(string s)

which takes as input a string _s_ and returns _K_(_s_); for sake of proof simplicity, assume the program's length to be bits. Now, consider the following program of length bits:

  function GenerateComplexString()
     for i = 1 to infinity:
        for each string s of length exactly i
           if KolmogorovComplexity(s) >= 8000000000
              return s

Using KolmogorovComplexity as a subroutine, the program tries every string, starting with the shortest, until it returns a string with Kolmogorov complexity at least bits,[13] i.e. a string that cannot be produced by any program shorter than bits. However, the overall length of the above program that produced _s_ is only bits,[14] which is a contradiction. (If the code of KolmogorovComplexity is shorter, the contradiction remains. If it is longer, the constant used in GenerateComplexString can always be changed appropriately.)[15]

The above proof uses a contradiction similar to that of the Berry paradox: "The smallest positive integer that cannot be defined in fewer than twenty English words". It is also possible to show the non-computability of _K_ by reduction from the non-computability of the halting problem _H_, since _K_ and _H_ are Turing-equivalent.[16]

There is a corollary, humorously called the "full employment theorem" in the programming language community, stating that there is no perfect size-optimizing compiler.

A naive attempt at a program to compute _K_

At first glance it might seem trivial to write a program which can compute _K_(_s_) for any _s_ (thus disproving the above theorem), such as the following:

  function KolmogorovComplexity(string s)
     for i = 1 to infinity:
        for each string p of length exactly i
           if isValidProgram(p) and evaluate(p) == s
              return i

This program iterates through all possible programs (by iterating through all possible strings and only considering those which are valid programs), starting with the shortest. Each program is executed to find the result produced by that program, comparing it to the input _s_. If the result matches the length of the program is returned.

However this will not work because some of the programs _p_ tested will not terminate, e.g. if they contain infinite loops. There is no way to avoid all of these programs by testing them in some way before executing them due to the non-computability of the halting problem.

Chain rule for Kolmogorov complexity

The chain rule[17] for Kolmogorov complexity states that

    _K_(_X_,_Y_) ≤ _K_(_X_) + _K_(_Y_|_X_) + _O_(log(_K_(_X_,_Y_))).

It states that the shortest program that reproduces _X_ and _Y_ is no more than a logarithmic term larger than a program to reproduce _X_ and a program to reproduce _Y_ given _X_. Using this statement, one can define an analogue of mutual information for Kolmogorov complexity.


Compression

It is straightforward to compute upper bounds for _K_(_s_) – simply compress the string _s_ with some method, implement the corresponding decompressor in the chosen language, concatenate the decompressor to the compressed string, and measure the length of the resulting string – concretely, the size of a self-extracting archive in the given language.

A string _s_ is compressible by a number _c_ if it has a description whose length does not exceed |_s_| − _c_ bits. This is equivalent to saying that _K_(_s_) ≤ |_s_| − _c_. Otherwise, _s_ is incompressible by _c_. A string incompressible by 1 is said to be simply _incompressible_ – by the pigeonhole principle, which applies because every compressed string maps to only one uncompressed string, incompressible strings must exist, since there are 2^(_n_) bit strings of length _n_, but only 2^(_n_) − 1 shorter strings, that is, strings of length less than _n_, (i.e. with length 0, 1, …, ''n − 1).[18]

For the same reason, most strings are complex in the sense that they cannot be significantly compressed – their _K_(_s_) is not much smaller than |_s_|, the length of _s_ in bits. To make this precise, fix a value of _n_. There are 2^(_n_) bitstrings of length _n_. The uniform probability distribution on the space of these bitstrings assigns exactly equal weight 2^(−_n_) to each string of length _n_.

THEOREM: With the uniform probability distribution on the space of bitstrings of length _n_, the probability that a string is incompressible by _c_ is at least 1 − 2^(−_c_+1) + 2^(−_n_).

To prove the theorem, note that the number of descriptions of length not exceeding _n_ − _c_ is given by the geometric series:

    1 + 2 + 2² + … + 2^(_n_\ −\ _c_) = 2^(_n_−_c_+1) − 1.

There remain at least

    2^(_n_) − 2^(_n_−_c_+1) + 1

bitstrings of length _n_ that are incompressible by _c_. To determine the probability, divide by 2^(_n_).


Chaitin's incompleteness theorem

Kolmogorov_complexity_and_computable_lower_bounds.gif) enumerates all strings _s_, ordered by length; the vertical axis (linear scale) measures Kolmogorov complexity in bits. Most strings are incompressible, i.e. their Kolmogorov complexity exceeds their length by a constant amount. 17 compressible strings are shown in the picture, appearing as almost vertical slopes. Due to Chaitin's incompleteness theorem (1974), the output of any program computing a lower bound of the Kolmogorov complexity cannot exceed some fixed limit, which is independent of the input string _s_.]] We know that, in the set of all possible strings, most strings are complex in the sense that they cannot be described in any significantly "compressed" way. However, it turns out that the fact that a specific string is complex cannot be formally proven, if the complexity of the string is above a certain threshold. The precise formalization is as follows. First, fix a particular axiomatic system S for the natural numbers. The axiomatic system has to be powerful enough so that, to certain assertions A about complexity of strings, one can associate a formula F_(A) in S. This association must have the following property:

If F_(A) is provable from the axioms of S, then the corresponding assertion A must be true. This "formalization" can be achieved, either by an artificial encoding such as a Gödel numbering, or by a formalization which more clearly respects the intended interpretation of S.

THEOREM: There exists a constant _L_ (which only depends on the particular axiomatic system and the choice of description language) such that there does not exist a string _s_ for which the statement

    _K_(_s_) ≥ _L_ (as formalized in S)

can be proven within the axiomatic system S.

Note that, by the abundance of nearly incompressible strings, the vast majority of those statements must be true.

The proof of this result is modeled on a self-referential construction used in Berry's paradox. The proof is by contradiction. If the theorem were false, then

    ASSUMPTION (X): For any integer _n_ there exists a string _s_ for which there is a proof in S of the formula "_K_(_s_) ≥ _n_" (which we assume can be formalized in S).

We can find an effective enumeration of all the formal proofs in S by some procedure

  function NthProof(int _n_)

which takes as input _n_ and outputs some proof. This function enumerates all proofs. Some of these are proofs for formulas we do not care about here, since every possible proof in the language of S is produced for some _n_. Some of these are complexity formulas of the form _K_(_s_) ≥ _n_ where _s_ and _n_ are constants in the language of S. There is a program

  function NthProofProvesComplexityFormula(int _n_)

which determines whether the _n_th proof actually proves a complexity formula _K_(_s_) ≥ _L_. The strings _s_, and the integer _L_ in turn, are computable by programs:

  function StringNthProof(int _n_)

  function ComplexityLowerBoundNthProof(int _n_)

Consider the following program

  function GenerateProvablyComplexString(int _n_)
     for i = 1 to infinity:
        if  NthProofProvesComplexityFormula(i) and ComplexityLowerBoundNthProof(i) ≥ _n_
           return StringNthProof(_i_)

Given an _n_, this program tries every proof until it finds a string and a proof in the formal system S of the formula _K_(_s_) ≥ _L_ for some _L_ ≥ _n_. The program terminates by our ASSUMPTION (X). Now, this program has a length _U_. There is an integer _n_₀ such that _U_ + log₂(_n_₀) + _C_ < _n_₀, where _C_ is the overhead cost of

   function GenerateProvablyParadoxicalString()
      return GenerateProvablyComplexString(_n_₀)

(note that _n_₀ is hard-coded into the above function, and the summand log₂(_n_₀) already allows for its encoding). The program GenerateProvablyParadoxicalString outputs a string _s_ for which there exists an _L_ such that _K_(_s_) ≥ _L_ can be formally proved in S with _L_ ≥ _n_₀. In particular, _K_(_s_) ≥ _n_₀ is true. However, _s_ is also described by a program of length _U_ + log₂(_n_₀) + _C_, so its complexity is less than _n_₀. This contradiction proves ASSUMPTION (X) cannot hold.

Similar ideas are used to prove the properties of Chaitin's constant.


Minimum message length

The minimum message length principle of statistical and inductive inference and machine learning was developed by C.S. Wallace and D.M. Boulton in 1968. MML is Bayesian (i.e. it incorporates prior beliefs) and information-theoretic. It has the desirable properties of statistical invariance (i.e. the inference transforms with a re-parametrisation, such as from polar coordinates to Cartesian coordinates), statistical consistency (i.e. even for very hard problems, MML will converge to any underlying model) and efficiency (i.e. the MML model will converge to any true underlying model about as quickly as is possible). C.S. Wallace and D.L. Dowe (1999) showed a formal connection between MML and algorithmic information theory (or Kolmogorov complexity).[19]


Kolmogorov randomness

_Kolmogorov randomness_ defines a string (usually of bits) as being random if and only if it is shorter than any computer program that can produce that string. To make this precise, a universal computer (or universal Turing machine) must be specified, so that "program" means a program for this universal machine. A random string in this sense is "incompressible" in that it is impossible to "compress" the string into a program whose length is shorter than the length of the string itself. A counting argument is used to show that, for any universal computer, there is at least one algorithmically random string of each length. Whether any particular string is random, however, depends on the specific universal computer that is chosen.

This definition can be extended to define a notion of randomness for _infinite_ sequences from a finite alphabet. These algorithmically random sequences can be defined in three equivalent ways. One way uses an effective analogue of measure theory; another uses effective martingales. The third way defines an infinite sequence to be random if the prefix-free Kolmogorov complexity of its initial segments grows quickly enough — there must be a constant _c_ such that the complexity of an initial segment of length _n_ is always at least _n_−_c_. This definition, unlike the definition of randomness for a finite string, is not affected by which universal machine is used to define prefix-free Kolmogorov complexity.[20]


Relation to entropy

For dynamical systems, entropy rate and algorithmic complexity of the trajectories are related by a theorem of Brudno, that the equality K(x;T) = h(T) holds for almost all x.[21]

It can be shown[22] that for the output of Markov information sources, Kolmogorov complexity is related to the entropy of the information source. More precisely, the Kolmogorov complexity of the output of a Markov information source, normalized by the length of the output, converges almost surely (as the length of the output goes to infinity) to the entropy of the source.


Conditional versions

The conditional Kolmogorov complexity of two strings K(x|y) is, roughly speaking, defined as the Kolmogorov complexity of _x_ given _y_ as an auxiliary input to the procedure.[23][24]

There is also a length-conditional complexity K(x|L(x)), which is the complexity of _x_ given the length of _x_ as known/input.[25][26]


See also

-   Important publications in algorithmic information theory
-   Berry paradox
-   Code golf
-   Data compression
-   Demoscene, a computer art discipline whose certain branches are centered around the creation of smallest programs that achieve certain effects
-   Grammar induction
-   Inductive inference
-   Kolmogorov structure function
-   Levenshtein distance
-   Solomonoff's theory of inductive inference


Notes


References


Further reading

-   -   -   -   -   -   -


External links

-   The Legacy of Andrei Nikolaevich Kolmogorov
-   Chaitin's online publications
-   Solomonoff's IDSIA page
-   Generalizations of algorithmic information by J. Schmidhuber
-   -   Tromp's lambda calculus computer model offers a concrete definition of K()]

-   Universal AI based on Kolmogorov Complexity by M. Hutter:
-   David Dowe's Minimum Message Length (MML) and Occam's razor pages.
-

* * Category:Computability theory Category:Descriptive complexity Category:Measures of complexity

[1]

[2]

[3]  revision, Nov., 1960.

[4]

[5]

[6]

[7]

[8]

[9]

[10] Burgin, M. (1982), "Generalized Kolmogorov complexity and duality in theory of computations", _Notices of the Russian Academy of Sciences_, v.25, No. 3, pp. 19–23.

[11] However, an _s_ with _K_(_s_) = _n_ need not exist for every _n_. For example, if _n_ is not a multiple of 7 bits, no ASCII program can have a length of exactly _n_ bits.

[12] There are 1 + 2 + 2² + 2³ + ... + 2^(_n_) = 2^(_n_+1) − 1 different program texts of length up to _n_ bits; cf. geometric series. If program lengths are to be multiples of 7 bits, even fewer program texts exist.

[13] By the previous theorem, such a string exists, hence the for loop will eventually terminate.

[14] including the language interpreter and the subroutine code for KolmogorovComplexity

[15] If KolmogorovComplexity has length _n_ bits, the constant _m_ used in GenerateComplexString needs to be adapted to satisfy , which is always possible since _m_ grows faster than log₁₀(_m_).

[16] Stated without proof in: "Course notes for Data Compression - Kolmogorov complexity", 2005, P. B. Miltersen, p.7

[17]

[18] As there are strings of length _L_, the number of strings of lengths is = , which is a finite geometric series with sum =

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]