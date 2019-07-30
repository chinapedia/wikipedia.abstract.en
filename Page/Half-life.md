+------------+--------------+----------------+
| Number of  | Fraction     | Percentage     |
| half-lives | remaining    | remaining      |
| elapsed    |              |                |
+============+==============+================+
| 0          | ¹⁄₁          | 100            |
+------------+--------------+----------------+
| 1          | ¹⁄₂          | 50             |
+------------+--------------+----------------+
| 2          | ¹⁄₄          | 25             |
+------------+--------------+----------------+
| 3          | ¹⁄₈          | 12             |
+------------+--------------+----------------+
| 4          | ¹⁄₁₆         | 6              |
+------------+--------------+----------------+
| 5          | ¹⁄₃₂         | 3              |
+------------+--------------+----------------+
| 6          | ¹⁄₆₄         | 1              |
+------------+--------------+----------------+
| 7          | ¹⁄₁₂₈        | 0              |
+------------+--------------+----------------+
| ...        | ...          | ...            |
+------------+--------------+----------------+
| _n_        | ¹/_(2^(_n_)) | ¹⁰⁰/_(2^(_n_)) |
+------------+--------------+----------------+

HALF-LIFE (symbol _T__(1⁄2)) is the time required for a quantity to reduce to half of its initial value. The term is commonly used in nuclear physics to describe how quickly unstable atoms undergo, or how long stable atoms survive, radioactive decay. The term is also used more generally to characterize any type of exponential or non-exponential decay. For example, the medical sciences refer to the biological half-life of drugs and other chemicals in the human body. The converse of half-life is doubling time.

The original term, _half-life period_, dating to Ernest Rutherford's discovery of the principle in 1907, was shortened to _half-life_ in the early 1950s.[1] Rutherford applied the principle of a radioactive element's half-life to studies of age determination of rocks by measuring the decay period of radium to lead-206.

Half-life is constant over the lifetime of an exponentially decaying quantity, and it is a characteristic unit for the exponential decay equation. The accompanying table shows the reduction of a quantity as a function of the number of half-lives elapsed.


Probabilistic nature

: with more atoms, the overall decay is more regular and more predictable.]]

A half-life usually describes the decay of discrete entities, such as radioactive atoms. In that case, it does not work to use the definition that states "half-life is the time required for exactly half of the entities to decay". For example, if there is just one radioactive atom, and its half-life is one second, there will _not_ be "half of an atom" left after one second.

Instead, the half-life is defined in terms of probability: "Half-life is the time required for exactly half of the entities to decay _on average_". In other words, the _probability_ of a radioactive atom decaying within its half-life is 50%.[2]

For example, the image on the right is a simulation of many identical atoms undergoing radioactive decay. Note that after one half-life there are not _exactly_ one-half of the atoms remaining, only _approximately_, because of the random variation in the process. Nevertheless, when there are many identical atoms decaying (right boxes), the law of large numbers suggests that it is a _very good approximation_ to say that half of the atoms remain after one half-life.

There are various simple exercises that demonstrate probabilistic decay, for example involving flipping coins or running a statistical computer program.[3][4][5]


Formulas for half-life in exponential decay

An exponential decay can be described by any of the following three equivalent formulas:[6] } \\

 N(t) &= N_0 e^{-\frac{t}{\tau}} \\
 N(t) &= N_0 e^{-\lambda t}

\end{align}}} where

-   _N_₀ is the initial quantity of the substance that will decay (this quantity may be measured in grams, moles, number of atoms, etc.),
-   _N_(_t_) is the quantity that still remains and has not yet decayed after a time _t_,
-   is the half-life of the decaying quantity,

-   is a positive number called the mean lifetime of the decaying quantity,

-   is a positive number called the decay constant of the decaying quantity.

The three parameters , , and are all directly related in the following way: where ln(2) is the natural logarithm of 2 (approximately 0.693).[7]

Decay by two or more processes

Some quantities decay by two exponential-decay processes simultaneously. In this case, the actual half-life can be related to the half-lives _t_₁ and _t_₂ that the quantity would have if each of the decay processes acted in isolation:

$$\frac{1}{T_{1/2}} = \frac{1}{t_1} + \frac{1}{t_2}$$

For three or more processes, the analogous formula is:

$$\frac{1}{T_{1/2}} = \frac{1}{t_1} + \frac{1}{t_2} + \frac{1}{t_3} + \cdots$$
For a proof of these formulas, see Exponential decay § Decay by two or more processes.

Examples

]] There is a half-life describing any exponential-decay process. For example:

-   As noted above, in radioactive decay the half-life is the length of time after which there is a 50% chance that an atom will have undergone nuclear decay. It varies depending on the atom type and isotope, and is usually determined experimentally. See List of nuclides.
-   The current flowing through an RC circuit or RL circuit decays with a half-life of ln(2)_RC_ or ln(2)_L/R_, respectively. For this example the term half time tends to be used, rather than "half life", but they mean the same thing.
-   In a chemical reaction, the half-life of a species is the time it takes for the concentration of that substance to fall to half of its initial value. In a first-order reaction the half-life of the reactant is ln(2)/, where is the reaction rate constant.


In non-exponential decay

The term "half-life" is almost exclusively used for decay processes that are exponential (such as radioactive decay or the other examples above), or approximately exponential (such as biological half-life discussed below). In a decay process that is not even close to exponential, the half-life will change dramatically while the decay is happening. In this situation it is generally uncommon to talk about half-life in the first place, but sometimes people will describe the decay in terms of its "first half-life", "second half-life", etc., where the first half-life is defined as the time required for decay from the initial value to 50%, the second half-life is from 50% to 25%, and so on.[8]


In biology and pharmacology

A biological half-life or elimination half-life is the time it takes for a substance (drug, radioactive nuclide, or other) to lose one-half of its pharmacologic, physiologic, or radiological activity. In a medical context, the half-life may also describe the time that it takes for the concentration of a substance in blood plasma to reach one-half of its steady-state value (the "plasma half-life").

The relationship between the biological and plasma half-lives of a substance can be complex, due to factors including accumulation in tissues, active metabolites, and receptor interactions.[9]

While a radioactive isotope decays almost perfectly according to so-called "first order kinetics" where the rate constant is a fixed number, the elimination of a substance from a living organism usually follows more complex chemical kinetics.

For example, the biological half-life of water in a human being is about 9 to 10 days,[10] though this can be altered by behavior and various other conditions. The biological half-life of caesium in human beings is between one and four months.

The concept of a half-life has also been utilized for pesticides in plants,[11] and certain authors maintain that pesticide risk and impact assessment models rely on and are sensitive to information describing dissipation from plants.[12]


See also

-   Half time (physics)
-   List of isotopes by half-life
-   Mean lifetime


References


External links

-   Nucleonica.net, Nuclear Science Portal
-   Nucleonica.net, wiki: Decay Engine
-   Bucknell.edu, System Dynamics – Time Constants
-   1 Researchers Nikhef and UvA measure slowest radioactive decay ever: Xe-124 with 18 billion trillion years.
-   Subotex.com, Half-Life elimination of drugs in blood plasma – Simple Charting Tool

Category:Radioactivity Category:Exponentials Category:Chemical kinetics

[1] John Ayto, _20th Century Words_ (1989), Cambridge University Press.

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]