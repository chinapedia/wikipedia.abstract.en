INFORMATION THEORY studies the quantification, storage, and communication of information. It was originally proposed by Claude Shannon in 1948 to find fundamental limits on signal processing and communication operations such as data compression, in a landmark paper entitled "A Mathematical Theory of Communication". Applications of fundamental topics of information theory include lossless data compression (e.g. ZIP files), lossy data compression (e.g. MP3s and JPEGs), and channel coding (e.g. for DSL). Its impact has been crucial to the success of the Voyager missions to deep space, the invention of the compact disc, the feasibility of mobile phones, the development of the Internet, the study of linguistics and of human perception, the understanding of black holes, and numerous other fields.

A key measure in information theory is "entropy". Entropy quantifies the amount of uncertainty involved in the value of a random variable or the outcome of a random process. For example, identifying the outcome of a fair coin flip (with two equally likely outcomes) provides less information (lower entropy) than specifying the outcome from a roll of a (with six equally likely outcomes). Some other important measures in information theory are mutual information, channel capacity, error exponents, and relative entropy.

The field is at the intersection of mathematics, statistics, computer science, physics, neurobiology, information engineering, and electrical engineering. The theory has also found applications in other areas, including statistical inference, natural language processing, cryptography, neurobiology,[1] human vision,[2] the evolution[3] and function[4] of molecular codes (bioinformatics), model selection in statistics,[5] thermal physics,[6] quantum computing, linguistics, plagiarism detection,[7] pattern recognition, and anomaly detection.[8] Important sub-fields of information theory include source coding, channel coding, algorithmic complexity theory, algorithmic information theory, information-theoretic security, Grey system theory and measures of information.


Overview

Information theory studies the transmission, processing, extraction, and utilization of information. Abstractly, information can be thought of as the resolution of uncertainty. In the case of communication of information over a noisy channel, this abstract concept was made concrete in 1948 by Claude Shannon in his paper "A Mathematical Theory of Communication", in which "information" is thought of as a set of possible messages, where the goal is to send these messages over a noisy channel, and then to have the receiver reconstruct the message with low probability of error, in spite of the channel noise. Shannon's main result, the noisy-channel coding theorem showed that, in the limit of many channel uses, the rate of information that is asymptotically achievable is equal to the channel capacity, a quantity dependent merely on the statistics of the channel over which the messages are sent.[9]

Information theory is closely associated with a collection of pure and applied disciplines that have been investigated and reduced to engineering practice under a variety of rubrics throughout the world over the past half century or more: adaptive systems, anticipatory systems, artificial intelligence, complex systems, complexity science, cybernetics, informatics, machine learning, along with systems sciences of many descriptions. Information theory is a broad and deep mathematical theory, with equally broad and deep applications, amongst which is the vital field of coding theory.

Coding theory is concerned with finding explicit methods, called _codes_, for increasing the efficiency and reducing the error rate of data communication over noisy channels to near the channel capacity. These codes can be roughly subdivided into data compression (source coding) and error-correction (channel coding) techniques. In the latter case, it took many years to find the methods Shannon's work proved were possible.

A third class of information theory codes are cryptographic algorithms (both codes and ciphers). Concepts, methods and results from coding theory and information theory are widely used in cryptography and cryptanalysis. _See the article ban (unit) for a historical application._

Information theory is also used in information retrieval, intelligence gathering, gambling, statistics, and even in musical composition.


Historical background

The landmark event that _established_ the discipline of information theory and brought it to immediate worldwide attention was the publication of Claude E. Shannon's classic paper "A Mathematical Theory of Communication" in the _Bell System Technical Journal_ in July and October 1948.

Prior to this paper, limited information-theoretic ideas had been developed at Bell Labs, all implicitly assuming events of equal probability. Harry Nyquist's 1924 paper, _Certain Factors Affecting Telegraph Speed_, contains a theoretical section quantifying "intelligence" and the "line speed" at which it can be transmitted by a communication system, giving the relation (recalling Boltzmann's constant), where _W_ is the speed of transmission of intelligence, _m_ is the number of different voltage levels to choose from at each time step, and _K_ is a constant. Ralph Hartley's 1928 paper, _Transmission of Information_, uses the word _information_ as a measurable quantity, reflecting the receiver's ability to distinguish one sequence of symbols from any other, thus quantifying information as , where _S_ was the number of possible symbols, and _n_ the number of symbols in a transmission. The unit of information was therefore the decimal digit, which has since sometimes been called the hartley in his honor as a unit or scale or measure of information. Alan Turing in 1940 used similar ideas as part of the statistical analysis of the breaking of the German second world war Enigma ciphers.

Much of the mathematics behind information theory with events of different probabilities were developed for the field of thermodynamics by Ludwig Boltzmann and J. Willard Gibbs. Connections between information-theoretic entropy and thermodynamic entropy, including the important contributions by Rolf Landauer in the 1960s, are explored in _Entropy in thermodynamics and information theory_.

In Shannon's revolutionary and groundbreaking paper, the work for which had been substantially completed at Bell Labs by the end of 1944, Shannon for the first time introduced the qualitative and quantitative model of communication as a statistical process underlying information theory, opening with the assertion that

    "The fundamental problem of communication is that of reproducing at one point, either exactly or approximately, a message selected at another point."

With it came the ideas of

-   the information entropy and redundancy of a source, and its relevance through the source coding theorem;
-   the mutual information, and the channel capacity of a noisy channel, including the promise of perfect loss-free communication given by the noisy-channel coding theorem;
-   the practical result of the Shannon–Hartley law for the channel capacity of a Gaussian channel; as well as
-   the bit—a new way of seeing the most fundamental unit of information.


Quantities of information

Information theory is based on probability theory and statistics. Information theory often concerns itself with measures of information of the distributions associated with random variables. Important quantities of information are entropy, a measure of information in a single random variable, and mutual information, a measure of information in common between two random variables. The former quantity is a property of the probability distribution of a random variable and gives a limit on the rate at which data generated by independent samples with the given distribution can be reliably compressed. The latter is a property of the joint distribution of two random variables, and is the maximum rate of reliable communication across a noisy channel in the limit of long block lengths, when the channel statistics are determined by the joint distribution.

The choice of logarithmic base in the following formulae determines the unit of information entropy that is used. A common unit of information is the bit, based on the binary logarithm. Other units include the nat, which is based on the natural logarithm, and the decimal digit, which is based on the common logarithm.

In what follows, an expression of the form is considered by convention to be equal to zero whenever . This is justified because lim_(p → 0+)plog p = 0 for any logarithmic base.

Entropy of an information source

Based on the probability mass function of each source symbol to be communicated, the Shannon entropy , in units of bits (per symbol), is given by

_H_ =  − ∑_(_i_)_p__(_i_)log₂(_p__(_i_))
where is the probability of occurrence of the -th possible value of the source symbol. This equation gives the entropy in the units of "bits" (per symbol) because it uses a logarithm of base 2, and this base-2 measure of entropy has sometimes been called the "shannon" in his honor. Entropy is also commonly computed using the natural logarithm (base [[E_(mathematical_constant)| p(x) \log p(x).

(Here, is the self-information, which is the entropy contribution of an individual message, and is the expected value.) A property of entropy is that it is maximized when all the messages in the message space are equiprobable ; i.e., most unpredictable, in which case .

The special case of information entropy for a random variable with two outcomes is the _binary entropy function_, usually taken to the logarithmic base 2, thus having the shannon (Sh) as unit:

_H__(_b_)(_p_) =  − _p_log₂_p_ − (1 − _p_)log₂(1 − _p_).

Joint entropy

The _joint entropy_ of two discrete random variables and is merely the entropy of their pairing: . This implies that if and are independent, then their joint entropy is the sum of their individual entropies.

For example, if represents the position of a chess piece — the row and the column, then the joint entropy of the row of the piece and the column of the piece will be the entropy of the position of the piece.

_H_(_X_, _Y_) = 𝔼_(_X_, _Y_)[ − log _p_(_x_, _y_)] =  − ∑_(_x_, _y_)_p_(_x_, _y_)log _p_(_x_, _y_) 

Despite similar notation, joint entropy should not be confused with _cross entropy_.

Conditional entropy (equivocation)

The _conditional entropy_ or _conditional uncertainty_ of given random variable (also called the _equivocation_ of about ) is the average conditional entropy over :[10]

_H_(_X_|_Y_) = 𝔼_(_Y_)[_H_(_X_|_y_)] =  − ∑_(_y_ ∈ _Y_)_p_(_y_)∑_(_x_ ∈ _X_)_p_(_x_|_y_)log _p_(_x_|_y_) =  − ∑_(_x_, _y_)_p_(_x_, _y_)log _p_(_x_|_y_).

Because entropy can be conditioned on a random variable or on that random variable being a certain value, care should be taken not to confuse these two definitions of conditional entropy, the former of which is in more common use. A basic property of this form of conditional entropy is that:

    H(X|Y) = H(X, Y) − H(Y). 

Mutual information (transinformation)

_Mutual information_ measures the amount of information that can be obtained about one random variable by observing another. It is important in communication where it can be used to maximize the amount of information shared between sent and received signals. The mutual information of relative to is given by:

$$I(X;Y) = \mathbb{E}_{X,Y} [SI(x,y)] = \sum_{x,y} p(x,y) \log \frac{p(x,y)}{p(x)\, p(y)}$$
where (_S_pecific mutual _I_nformation) is the pointwise mutual information.

A basic property of the mutual information is that

    I(X; Y) = H(X) − H(X|Y). 

That is, knowing _Y_, we can save an average of bits in encoding _X_ compared to not knowing _Y_.

Mutual information is symmetric:

    I(X; Y) = I(Y; X) = H(X) + H(Y) − H(X, Y). 

Mutual information can be expressed as the average Kullback–Leibler divergence (information gain) between the posterior probability distribution of _X_ given the value of _Y_ and the prior distribution on _X_:

    I(X; Y) = 𝔼_(p(y))[D_(KL)(p(X|Y = y)∥p(X))].

In other words, this is a measure of how much, on the average, the probability distribution on _X_ will change if we are given the value of _Y_. This is often recalculated as the divergence from the product of the marginal distributions to the actual joint distribution:

    I(X; Y) = D_(KL)(p(X, Y)∥p(X)p(Y)).

Mutual information is closely related to the log-likelihood ratio test in the context of contingency tables and the multinomial distribution and to Pearson's χ² test: mutual information can be considered a statistic for assessing independence between a pair of variables, and has a well-specified asymptotic distribution.

Kullback–Leibler divergence (information gain)

The _Kullback–Leibler divergence_ (or _information divergence_, _information gain_, or _relative entropy_) is a way of comparing two distributions: a "true" probability distribution _p(X)_, and an arbitrary probability distribution _q(X)_. If we compress data in a manner that assumes _q(X)_ is the distribution underlying some data, when, in reality, _p(X)_ is the correct distribution, the Kullback–Leibler divergence is the number of average additional bits per datum necessary for compression. It is thus defined

$$D_{\mathrm{KL}}(p(X) \| q(X)) = \sum_{x \in X} -p(x) \log {q(x)} \, - \, \sum_{x \in X} -p(x) \log {p(x)} = \sum_{x \in X} p(x) \log \frac{p(x)}{q(x)}.$$

Although it is sometimes used as a 'distance metric', KL divergence is not a true metric since it is not symmetric and does not satisfy the triangle inequality (making it a semi-quasimetric).

Another interpretation of the KL divergence is the "unnecessary surprise" introduced by a prior from the truth: suppose a number _X_ is about to be drawn randomly from a discrete set with probability distribution _p(x)_. If Alice knows the true distribution _p(x)_, while Bob believes (has a prior) that the distribution is _q(x)_, then Bob will be more surprised than Alice, on average, upon seeing the value of _X_. The KL divergence is the (objective) expected value of Bob's (subjective) surprisal minus Alice's surprisal, measured in bits if the _log_ is in base 2. In this way, the extent to which Bob's prior is "wrong" can be quantified in terms of how "unnecessarily surprised" it is expected to make him.

Other quantities

Other important information theoretic quantities include Rényi entropy (a generalization of entropy), differential entropy (a generalization of quantities of information to continuous distributions), and the conditional mutual information.


Coding theory

.]]

Coding theory is one of the most important and direct applications of information theory. It can be subdivided into source coding theory and channel coding theory. Using a statistical description for data, information theory quantifies the number of bits needed to describe the data, which is the information entropy of the source.

-   Data compression (source coding): There are two formulations for the compression problem:
-   lossless data compression: the data must be reconstructed exactly;
-   lossy data compression: allocates bits needed to reconstruct the data, within a specified fidelity level measured by a distortion function. This subset of information theory is called _rate–distortion theory_.
-   Error-correcting codes (channel coding): While data compression removes as much redundancy as possible, an error correcting code adds just the right kind of redundancy (i.e., error correction) needed to transmit the data efficiently and faithfully across a noisy channel.

This division of coding theory into compression and transmission is justified by the information transmission theorems, or source–channel separation theorems that justify the use of bits as the universal currency for information in many contexts. However, these theorems only hold in the situation where one transmitting user wishes to communicate to one receiving user. In scenarios with more than one transmitter (the multiple-access channel), more than one receiver (the broadcast channel) or intermediary "helpers" (the relay channel), or more general networks, compression followed by transmission may no longer be optimal. Network information theory refers to these multi-agent communication models.

Source theory

Any process that generates successive messages can be considered a _source_ of information. A memoryless source is one in which each message is an independent identically distributed random variable, whereas the properties of ergodicity and stationarity impose less restrictive constraints. All such sources are stochastic. These terms are well studied in their own right outside information theory.

Rate

Information _rate_ is the average entropy per symbol. For memoryless sources, this is merely the entropy of each symbol, while, in the case of a stationary stochastic process, it is

_r_ = lim_(_n_ → ∞)_H_(_X__(_n_)|_X__(_n_ − 1), _X__(_n_ − 2), _X__(_n_ − 3), …);

that is, the conditional entropy of a symbol given all the previous symbols generated. For the more general case of a process that is not necessarily stationary, the _average rate_ is

$$r = \lim_{n \to \infty} \frac{1}{n} H(X_1, X_2, \dots X_n);$$

that is, the limit of the joint entropy per symbol. For stationary sources, these two expressions give the same result.[11]

It is common in information theory to speak of the "rate" or "entropy" of a language. This is appropriate, for example, when the source of information is English prose. The rate of a source of information is related to its redundancy and how well it can be compressed, the subject of _source coding_.

Channel capacity

Communications over a channel—such as an ethernet cable—is the primary motivation of information theory. As anyone who's ever used a telephone (mobile or landline) knows, however, such channels often fail to produce exact reconstruction of a signal; noise, periods of silence, and other forms of signal corruption often degrade quality.

Consider the communications process over a discrete channel. A simple model of the process is shown below:

Here _X_ represents the space of messages transmitted, and _Y_ the space of messages received during a unit time over our channel. Let be the conditional probability distribution function of _Y_ given _X_. We will consider to be an inherent fixed property of our communications channel (representing the nature of the _noise_ of our channel). Then the joint distribution of _X_ and _Y_ is completely determined by our channel and by our choice of , the marginal distribution of messages we choose to send over the channel. Under these constraints, we would like to maximize the rate of information, or the _signal_, we can communicate over the channel. The appropriate measure for this is the mutual information, and this maximum mutual information is called the _channel capacity_ and is given by:

_C_ = max_(_f_)_I_(_X_; _Y_).​
This capacity has the following property related to communicating at information rate _R_ (where _R_ is usually bits per symbol). For any information rate _R < C_ and coding error ε > 0, for large enough _N_, there exists a code of length _N_ and rate ≥ R and a decoding algorithm, such that the maximal probability of block error is ≤ ε; that is, it is always possible to transmit with arbitrarily small block error. In addition, for any rate _R > C_, it is impossible to transmit with arbitrarily small block error.

_Channel coding_ is concerned with finding such nearly optimal codes that can be used to transmit data over a noisy channel with a small coding error at a rate near the channel capacity.

Capacity of particular channel models

-   A continuous-time analog communications channel subject to Gaussian noise — see Shannon–Hartley theorem.
-   A binary symmetric channel (BSC) with crossover probability _p_ is a binary input, binary output channel that flips the input bit with probability _p_. The BSC has a capacity of bits per channel use, where is the binary entropy function to the base-2 logarithm:





-   A binary erasure channel (BEC) with erasure probability _p_ is a binary input, ternary output channel. The possible channel outputs are 0, 1, and a third symbol 'e' called an erasure. The erasure represents complete loss of information about an input bit. The capacity of the BEC is bits per channel use.






Applications to other fields

Intelligence uses and secrecy applications

Information theoretic concepts apply to cryptography and cryptanalysis. Turing's information unit, the ban, was used in the Ultra project, breaking the German Enigma machine code and hastening the end of World War II in Europe. Shannon himself defined an important concept now called the unicity distance. Based on the redundancy of the plaintext, it attempts to give a minimum amount of ciphertext necessary to ensure unique decipherability.

Information theory leads us to believe it is much more difficult to keep secrets than it might first appear. A brute force attack can break systems based on asymmetric key algorithms or on most commonly used methods of symmetric key algorithms (sometimes called secret key algorithms), such as block ciphers. The security of all such methods currently comes from the assumption that no known attack can break them in a practical amount of time.

Information theoretic security refers to methods such as the one-time pad that are not vulnerable to such brute force attacks. In such cases, the positive conditional mutual information between the plaintext and ciphertext (conditioned on the key) can ensure proper transmission, while the unconditional mutual information between the plaintext and ciphertext remains zero, resulting in absolutely secure communications. In other words, an eavesdropper would not be able to improve his or her guess of the plaintext by gaining knowledge of the ciphertext but not of the key. However, as in any other cryptographic system, care must be used to correctly apply even information-theoretically secure methods; the Venona project was able to crack the one-time pads of the Soviet Union due to their improper reuse of key material.

Pseudorandom number generation

Pseudorandom number generators are widely available in computer language libraries and application programs. They are, almost universally, unsuited to cryptographic use as they do not evade the deterministic nature of modern computer equipment and software. A class of improved random number generators is termed cryptographically secure pseudorandom number generators, but even they require random seeds external to the software to work as intended. These can be obtained via extractors, if done carefully. The measure of sufficient randomness in extractors is min-entropy, a value related to Shannon entropy through Rényi entropy; Rényi entropy is also used in evaluating randomness in cryptographic systems. Although related, the distinctions among these measures mean that a random variable with high Shannon entropy is not necessarily satisfactory for use in an extractor and so for cryptography uses.

Seismic exploration

One early commercial application of information theory was in the field of seismic oil exploration. Work in this field made it possible to strip off and separate the unwanted noise from the desired seismic signal. Information theory and digital signal processing offer a major improvement of resolution and image clarity over previous analog methods.[12]

Semiotics

Semioticians Doede Nauta and Winfried Nöth both considered Charles Sanders Peirce as having created a theory of information in his works on semiotics.[13][14] Nauta defined semiotic information theory as the study of "the internal processes of coding, filtering, and information processing."[15]

Concepts from information theory such as redundancy and code control have been used by semioticians such as Umberto Eco and Ferruccio Rossi-Landi to explain ideology as a form of message transmission whereby a dominant social class emits its message by using signs that exhibit a high degree of redundancy such that only one message is decoded among a selection of competing ones.[16]

Miscellaneous applications

Information theory also has applications in gambling and investing, black holes, and bioinformatics.


See also

-   Algorithmic probability
-   Algorithmic information theory
-   Bayesian inference
-   Communication theory
-   Constructor theory - a generalization of information theory that includes quantum information
-   Inductive probability
-   Info-metrics
-   Minimum message length
-   Minimum description length
-   List of important publications
-   Philosophy of information

Applications

-   Active networking
-   Cryptanalysis
-   Cryptography
-   Cybernetics
-   Entropy in thermodynamics and information theory
-   Gambling
-   Intelligence (information gathering)
-   Seismic exploration

History

-   Hartley, R.V.L.
-   History of information theory
-   Shannon, C.E.
-   Timeline of information theory
-   Yockey, H.P.

Theory

-   Coding theory
-   Detection theory
-   Estimation theory
-   Fisher information
-   Information algebra
-   Information asymmetry
-   Information field theory
-   Information geometry
-   Information theory and measure theory
-   Kolmogorov complexity
-   List of unsolved problems in information theory
-   Logic of information
-   Network coding
-   Philosophy of information
-   Quantum information science
-   Source coding

Concepts

-   Ban (unit)
-   Channel capacity
-   Communication channel
-   Communication source
-   Conditional entropy
-   Covert channel
-   Decoder
-   Differential entropy
-   Encoder
-   Fungible information
-   Information entropy
-   Joint entropy
-   Kullback–Leibler divergence
-   Mutual information
-   Pointwise mutual information (PMI)
-   Receiver (information theory)
-   Redundancy
-   Rényi entropy
-   Self-information
-   Unicity distance
-   Variety
-   Hamming distance


References

The classic work

-   Shannon, C.E. (1948), "A Mathematical Theory of Communication", _Bell System Technical Journal_, 27, pp. 379–423 & 623–656, July & October, 1948. PDF.
    Notes and other formats.
-   R.V.L. Hartley, "Transmission of Information", _Bell System Technical Journal_, July 1928
-   Andrey Kolmogorov (1968), "Three approaches to the quantitative definition of information" in International Journal of Computer Mathematics.

Other journal articles

-   J. L. Kelly, Jr., Betbubbles.com, "A New Interpretation of Information Rate" _Bell System Technical Journal_, Vol. 35, July 1956, pp. 917–26.
-   R. Landauer, IEEE.org, "Information is Physical" _Proc. Workshop on Physics and Computation PhysComp'92_ (IEEE Comp. Sci.Press, Los Alamitos, 1993) pp. 1–4.
-   R. Landauer, IBM.com, "Irreversibility and Heat Generation in the Computing Process" _IBM J. Res. Dev._ Vol. 5, No. 3, 1961
-

Textbooks on information theory

-   Arndt, C. _Information Measures, Information and its Description in Science and Engineering_ (Springer Series: Signals and Communication Technology), 2004,
-   Ash, RB. _Information Theory_. New York: Interscience, 1965. . New York: Dover 1990.
-   Gallager, R. _Information Theory and Reliable Communication._ New York: John Wiley and Sons, 1968.
-   Goldman, S. _Information Theory_. New York: Prentice Hall, 1953. New York: Dover 1968 , 2005
-   -   Csiszar, I, Korner, J. _Information Theory: Coding Theorems for Discrete Memoryless Systems_ Akademiai Kiado: 2nd edition, 1997.
-   MacKay, David J. C.. _Information Theory, Inference, and Learning Algorithms_ Cambridge: Cambridge University Press, 2003.
-   Mansuripur, M. _Introduction to Information Theory_. New York: Prentice Hall, 1987.
-   McEliece, R. ''The Theory of Information and Coding". Cambridge, 2002.
-   Pierce, JR. "An introduction to information theory: symbols, signals and noise". Dover (2nd Edition). 1961 (reprinted by Dover 1980).
-   Reza, F. _An Introduction to Information Theory_. New York: McGraw-Hill 1961. New York: Dover 1994.
-   -   Stone, JV. Chapter 1 of book "Information Theory: A Tutorial Introduction", University of Sheffield, England, 2014. .
-   Yeung, RW. _A First Course in Information Theory_ Kluwer Academic/Plenum Publishers, 2002. .
-   Yeung, RW. _Information Theory and Network Coding_ Springer 2008, 2002.

Other books

-   Leon Brillouin, _Science and Information Theory_, Mineola, N.Y.: Dover, [1956, 1962] 2004.
-   James Gleick, _The Information: A History, a Theory, a Flood_, New York: Pantheon, 2011.
-   A. I. Khinchin, _Mathematical Foundations of Information Theory_, New York: Dover, 1957.
-   H. S. Leff and A. F. Rex, Editors, _Maxwell's Demon: Entropy, Information, Computing_, Princeton University Press, Princeton, New Jersey (1990).
-   Robert K. Logan. _What is Information? - Propagating Organization in the Biosphere, the Symbolosphere, the Technosphere and the Econosphere_, Toronto: DEMO Publishing.
-   Tom Siegfried, _The Bit and the Pendulum_, Wiley, 2000.
-   Charles Seife, _Decoding the Universe_, Viking, 2006.
-   Jeremy Campbell, _Grammatical Man_, Touchstone/Simon & Schuster, 1982,
-   Henri Theil, _Economics and Information Theory_, Rand McNally & Company - Chicago, 1967.
-   Escolano, Suau, Bonev, _Information Theory in Computer Vision and Pattern Recognition_, Springer, 2009.
-   Vlatko Vedral, _Decoding Reality: The Universe as Quantum Information_, Oxford University Press 2010.

MOOC on information theory

-   Raymond W. Yeung, "Information Theory" (The Chinese University of Hong Kong)


External links

-   -   Lambert F. L. (1999), "Shuffled Cards, Messy Desks, and Disorderly Dorm Rooms - Examples of Entropy Increase? Nonsense!", _Journal of Chemical Education_
-   IEEE Information Theory Society and ITSOC Monographs, Surveys, and Reviews

Information_theory Category:Cybernetics Category:Formal sciences Category:Information Age

[1]

[2]

[3]

[4]

[5] Burnham, K. P. and Anderson D. R. (2002) _Model Selection and Multimodel Inference: A Practical Information-Theoretic Approach, Second Edition_ (Springer Science, New York) .

[6]

[7]

[8]

[9]

[10]

[11]

[12] The Corporation and Innovation, Haggerty, Patrick, Strategic Management Journal, Vol. 2, 97-118 (1981)

[13]

[14]

[15]

[16] Nöth, Winfried (1981). "Semiotics of ideology". _Semiotica_, Issue 148.