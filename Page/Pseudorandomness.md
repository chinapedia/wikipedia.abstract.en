A PSEUDORANDOM process produces predictable outcomes given information which is typically difficult to acquire; absent such information, pseudorandom sequences of numbers exhibit statistical randomness.

In general, a random process generates unpredictable outcomes: for any single event any particular outcome cannot be predicted in advance given available information. For example, consider an unbiased coin which on any given flip is either heads or tails: on a single flip no outcome is certain. Recording 1,000 flips in a logbook provides a sequence of pseudorandom outcomes: in possession of the logbook each outcome is known for certain; however, a person without the logbook sees only a random string of heads and tails.

To generate random numbers that can never be predicted by any observer requires a causally non-deterministic process where events are not fully determined by prior states (e.g., whether a photon is emitted by an atom in any given nanosecond). Due to the physical impossibility of acquiring sufficient information to predict the outcome of such an event, its outcomes are guaranteed to be random to all.

Randomness is therefore a condition which holds of a sequence relative to the information available to the predictor, with PSEUDORANDOMNESS indicating that information sufficient to predict the next outcome may be acquired by the predictor under some circumstances. The most prominent example is the pseudorandom number generators used by digital computers in which knowing a starting "seed" number produces an entirely predictable string of numbers which are unpredictable without it.


History

The generation of random numbers has many uses (mostly in statistics, for random sampling, and simulation). Before modern computing, researchers requiring random numbers would either generate them through various means (dice, cards, roulette wheels,[1] etc.) or use existing random number tables.

The first attempt to provide researchers with a ready supply of random digits was in 1927, when the Cambridge University Press published a table of 41,600 digits developed by L.H.C. Tippett. In 1947, the RAND Corporation generated numbers by the electronic simulation of a roulette wheel;[2] the results were eventually published in 1955 as _A Million Random Digits with 100,000 Normal Deviates_.


Almost random

A pseudorandom variable is a variable which is created by a deterministic algorithm, often a computer program or subroutine, which in most cases takes random bits as input. The pseudorandom string will typically be longer than the original random string, but less random (less entropic in the information theory sense). This can be useful for randomized algorithms.

Pseudorandom number generators are widely used in such applications as computer modeling (e.g., Markov chains), statistics, experimental design, etc.

Linux uses various system timings (like user keystrokes, I/O, or least-significant digit voltage measurements) to produce a pool of random numbers. It attempts to constantly replenish the pool, depending on the level of importance, and so will issue a random number.


In computational complexity

In theoretical computer science, a distribution is PSEUDORANDOM against a class of adversaries if no adversary from the class can distinguish it from the uniform distribution with significant advantage.[3] This notion of pseudorandomness is studied in computational complexity theory and has applications to cryptography.

Formally, let _S_ and _T_ be finite sets and let F = {_f_: _S_ → _T_} be a class of functions. A distribution D over _S_ is ε-PSEUDORANDOM against F if for every _f_ in F, the statistical distance between the distributions _f_(_X_), where _X_ is sampled from D, and _f_(_Y_), where _Y_ is sampled from the uniform distribution on _S_, is at most ε.

In typical applications, the class F describes a model of computation with bounded resources and one is interested in designing distributions D with certain properties that are pseudorandom against F. The distribution D is often specified as the output of a pseudorandom generator.


Cryptography

Though random numbers are needed in cryptography, the use of pseudorandom number generators (whether hardware or software or some combination) is insecure. When random values are required in cryptography, the goal is to make a message as hard to crack as possible, by eliminating or obscuring the parameters used to encrypt the message (the key) from the message itself or from the context in which it is carried. Pseudorandom sequences are deterministic and reproducible; all that is required in order to discover and reproduce a pseudorandom sequence is the algorithm used to generate it and the initial seed. So the entire sequence of numbers is only as powerful as the randomly chosen parts—sometimes the algorithm and the seed, but usually only the seed.

There are many examples in cryptographic history of ciphers, otherwise excellent, in which random choices were not random enough and security was lost as a direct consequence. The World War II Japanese PURPLE cipher machine used for diplomatic communications is a good example. It was consistently broken throughout World War II, mostly because the "key values" used were insufficiently random. They had patterns, and those patterns made any intercepted traffic readily decryptable. Had the keys (i.e., the initial settings of the stepping switches in the machine) been made unpredictably (i.e., randomly), that traffic would have been much harder to break, and perhaps even secure in practice.[4]


In security

Since pseudorandom numbers are in fact deterministic, a given seed will always determine the same pseudorandom number. This attribute is used in security, in the form of rolling code to avoid replay attacks, in which a command would be intercepted to be used by a thief at a later time.[5]


Monte Carlo method simulations

A Monte Carlo method simulation is defined as any method that utilizes sequences of random numbers to perform the simulation. Monte Carlo simulations are applied to many topics including quantum chromodynamics, cancer radiation therapy, traffic flow, stellar evolution and VLSI design. All these simulations require the use of random numbers and therefore pseudorandom number generators, which makes creating random-like numbers very important.

A simple example of how a computer would perform a Monte Carlo simulation is the calculation of π. If a square enclosed a circle and a point were randomly chosen inside the square the point would either lie inside the circle or outside it. If the process were repeated many times, the ratio of the random points that lie inside the circle to the total number of random points in the square would approximate the ratio of the area of the circle to the area of the square. From this we can estimate pi, as shown in the Python code below utilizing a SciPy package to generate pseudorandom numbers with the MT19937 algorithm. Note that this method is a computationally inefficient way to numerically approximate π.

    import scipy
    N=100000
    x_array = scipy.random.rand(N)
    y_array = scipy.random.rand(N)
    # generate N pseudorandom independent x and y-values on interval [0,1)
    N_qtr_circle = sum(x_array**2+y_array**2 < 1)
    # Number of pts within the quarter circle x^2 + y^2 < 1 centered at the origin with radius r=1.
    # True area of quarter circle is pi/4 and has N_qtr_circle points within it.
    # True area of the square is 1 and has N points within it, hence we approximate pi with
    pi_approx = 4*float(N_qtr_circle)/N # Typical values: 3.13756, 3.15156


See also

-   Pseudorandom ensemble
-   Pseudorandom binary sequence
-   Pseudorandom number generator
-   Quasi-random sequence
-   List of random number generators
-   Random number generation


References


Further reading

-   Donald E. Knuth (1997) _The Art of Computer Programming, Volume 2: Seminumerical Algorithms (3rd edition)_. Addison-Wesley Professional,
-   Oded Goldreich. (2008) _Computational Complexity: a conceptual perspective_. Cambridge University Press. .
-


External links

-   HotBits: Genuine random numbers, generated by radioactive decay
-   Using and Creating Cryptographic-Quality Random Numbers
-   In RFC 1750, the use of pseudorandom number sequences in cryptography is discussed at length.

Pseudorandomness Category:Theoretical computer science Category:Articles with example Python code

[1]

[2]

[3] Oded Goldreich. Computational Complexity: A Conceptual Perspective. Cambridge University Press. 2008.

[4]

[5] Brain, M., "How Remote Entry Works", _HowStuffWorks_ Auto Auto Basics. Retrieved July 8, 2018.