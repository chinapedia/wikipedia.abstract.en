The STAR HEIGHT PROBLEM in formal language theory is the question whether all regular languages can be expressed using regular expressions of limited star height, i.e. with a limited nesting depth of Kleene stars. Specifically, is a nesting depth of one always sufficient? If not, is there an algorithm to determine how many are required? The problem was raised by .


Families of regular languages with unbounded star height

The first question was answered in the negative when in 1963, Eggan gave examples of regular languages of star height _n_ for every _n_. Here, the star height _h_(_L_) of a regular language _L_ is defined as the minimum star height among all regular expressions representing _L_. The first few languages found by are described in the following, by means of giving a regular expression for each language:

$$\begin{alignat}{2}
e_1 &= a_1^* \\
e_2 &= \left(a_1^*a_2^*a_3\right)^*\\
e_3 &= \left(\left(a_1^*a_2^*a_3\right)^*\left(a_4^*a_5^*a_6\right)^*a_7\right)^*\\
e_4 &= \left(
\left(\left(a_1^*a_2^*a_3\right)^*\left(a_4^*a_5^*a_6\right)^*a_7\right)^*
\left(\left(a_8^*a_9^*a_{10}\right)^*\left(a_{11}^*a_{12}^*a_{13}\right)^*a_{14}\right)^*
a_{15}\right)^*
\end{alignat}$$

The construction principle for these expressions is that expression e_(n + 1) is obtained by concatenating two copies of e_(n), appropriately renaming the letters of the second copy using fresh alphabet symbols, concatenating the result with another fresh alphabet symbol, and then by surrounding the resulting expression with a Kleene star. The remaining, more difficult part, is to prove that for e_(n) there is no equivalent regular expression of star height less than _n_; a proof is given in .

However, Eggan's examples use a large alphabet, of size 2^(_n_)-1 for the language with star height _n_. He thus asked whether we can also find examples over binary alphabets. This was proved to be true shortly afterwards by . Their examples can be described by an inductively defined family of regular expressions over the binary alphabet {a, b} as follows–cf. :

$$\begin{alignat}{2}
e_1 & = (ab)^* \\
e_2 & = \left(aa(ab)^*bb(ab)^*\right)^* \\
e_3 & = \left(aaaa \left(aa(ab)^*bb(ab)^*\right)^* bbbb \left(aa(ab)^*bb(ab)^*\right)^*\right)^* \\
\, & \cdots \\
e_{n+1} & = (\,\underbrace{a\cdots a}_{2^n}\, \cdot \, e_n\, \cdot\, \underbrace{b\cdots b}_{2^n}\, \cdot\, e_n \,)^*
\end{alignat}$$

Again, a rigorous proof is needed for the fact that e_(n) does not admit an equivalent regular expression of lower star height. Proofs are given by and by .


Computing the star height of regular languages

In contrast, the second question turned out to be much more difficult, and the question became a famous open problem in formal language theory for over two decades . For years, there was only little progress. The pure-group languages were the first interesting family of regular languages for which the star height problem was proved to be decidable . But the general problem remained open for more than 25 years until it was settled by Hashiguchi, who in 1988 published an algorithm to determine the star height of any regular language. The algorithm wasn't at all practical, being of non-elementary complexity. To illustrate the immense resource consumptions of that algorithm, Lombardy and Sakarovitch (2002) give some actual numbers:

\right)^{\left(10^{10^{10}}\right)^{\left(10^{10^{10}}\right)}}.|S. Lombardy and J. Sakarovitch|Star Height of Reversible Languages and Universal Automata|LATIN 2002}}

Notice that alone the number 10^(10¹⁰) has 10 billion zeros when written down in decimal notation, and is already _by far_ larger than the number of atoms in the observable universe.

A much more efficient algorithm than Hashiguchi's procedure was devised by Kirsten in 2005. This algorithm runs, for a given nondeterministic finite automaton as input, within double-exponential space. Yet the resource requirements of this algorithm still greatly exceed the margins of what is considered practically feasible.

This algorithm has been optimized and generalized to trees by Colcombet and Löding in 2008 , as part of the theory of regular cost functions. It has been implemented in 2017 in the tool suite Stamina.[1]


See also

-   Generalized star height problem
-   Kleene's algorithm — computes a regular expression (usually of non-minimal star height) for a language given by a deterministic finite automaton


References

Works cited

-   (technical report version)

-   -   -   -   -


Further reading

-   -   -   -   -

Category:Automata (computation) Category:Formal languages Category:Theorems in discrete mathematics

[1] Nathanaël Fijalkow, Hugo Gimbert, Edon Kelmendi, Denis Kuperberg: "Stamina: Stabilisation Monoids in Automata Theory". CIAA 2017: 101-112 Tool available at https://github.com/nathanael-fijalkow/stamina/