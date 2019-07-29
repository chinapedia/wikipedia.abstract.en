SOURCE SEPARATION, BLIND SIGNAL SEPARATION (BSS) or BLIND SOURCE SEPARATION, is the separation of a set of source signals from a set of mixed signals, without the aid of information (or with very little information) about the source signals or the mixing process. It is most commonly applied in digital signal processing and involves the analysis of mixtures of signals; the objective is to recover the original component signals from a mixture signal. The classical example of a source separation problem is the cocktail party problem, where a number of people are talking simultaneously in a room (for example, at a cocktail party), and a listener is trying to follow one of the discussions. The human brain can handle this sort of auditory source separation problem, but it is a difficult problem in digital signal processing.

This problem is in general highly underdetermined, but useful solutions can be derived under a surprising variety of conditions. Much of the early literature in this field focuses on the separation of temporal signals such as audio. However, blind signal separation is now routinely performed on multidimensional data, such as images and tensors,[1] which may involve no time dimension whatsoever.

Several approaches have been proposed for the solution of this problem but development is currently still very much in progress. Some of the more successful approaches are principal components analysis and independent component analysis, which work well when there are no delays or echoes present; that is, the problem is simplified a great deal. The field of computational auditory scene analysis attempts to achieve auditory source separation using an approach that is based on human hearing.

The human brain must also solve this problem in real time. In human perception this ability is commonly referred to as auditory scene analysis or the cocktail party effect.


Applications

Polyphonic_note_separation_&_manipulation.jpg

Cocktail party problem

At a cocktail party, there is a group of people talking at the same time. You have multiple microphones picking up mixed signals, but you want to isolate the speech of a single person. BSS can be used to separate the individual sources by using mixed signals. In the presence of noise, dedicated optimization criteria need to be used[2]

Image processing

BSS-example.png Figure 2 shows the basic concept of BSS. The individual source signals are shown as well as the mixed signals which are received signals. BSS is used to separate the mixed signals with only knowing mixed signals and nothing about original signal or how they were mixed. The separated signals are only approximations of the source signals. The separated images, were separated using Python and the Shogun toolbox using Joint Approximation Diagonalization of Eigen-matrices (JADE) algorithm which is based off independent component analysis, ICA.[3] This toolbox method can be used with multi-dimensions but for an easy visual aspect images(2-D) were used.

Medical imaging

One of the practical applications being researched in this area is medical imaging of the brain with magnetoencephalography (MEG). This kind of imaging involves careful measurements of magnetic fields outside the head which yield an accurate 3D-picture of the interior of the head. However, external sources of electromagnetic fields, such as a wristwatch on the subject's arm, will significantly degrade the accuracy of the measurement. Applying source separation techniques on the measured signals can help remove undesired artifacts from the signal.

EEG

In electroencephalogram (EEG) and magnetoencephalography (MEG), the interference from muscle activity masks the desired signal from brain activity. BSS, however, can be used to separate the two so an accurate representation of brain activity may be achieved.[4][5]

Music

Another application is the separation of musical signals. For a stereo mix of relatively simple signals it is now possible to make a fairly accurate separation, although some artifacts remain.

Others

Other applications:[6]

-   Communications
-   Stock Prediction
-   Seismic Monitoring
-   Text Document Analysis


Mathematical representation

BSS-flow-chart.png The set of individual source signals, s(t) = (s₁(t), …, s_(n)(t))^(T), is 'mixed' using a matrix, A = [a_(ij)] ∈ ℝ^(m × n), to produce a set of 'mixed' signals, x(t) = (x₁(t), …, x_(m)(t))^(T), as follows. Usually, n is equal to m. If m > n, then the system of equations is overdetermined and thus can be unmixed using a conventional linear method. If n > m, the system is underdetermined and a non-linear method must be employed to recover the unmixed signals. The signals themselves can be multidimensional.

x(t) = A ⋅ s(t)

The above equation is effectively 'inverted' as follows. Blind source separation separates the set of mixed signals, x(t), through the determination of an 'unmixing' matrix, B = [B_(ij)] ∈ ℝ^(n × m), to 'recover' an approximation of the original signals, y(t) = (y₁(t), …, y_(n)(t))^(T).[7][8][9]

y(t) = B ⋅ x(t)


Approaches

Since the chief difficulty of the problem is its underdetermination, methods for blind source separation generally seek to narrow the set of possible solutions in a way that is unlikely to exclude the desired solution. In one approach, exemplified by principal and independent component analysis, one seeks source signals that are minimally correlated or maximally independent in a probabilistic or information-theoretic sense. A second approach, exemplified by nonnegative matrix factorization, is to impose structural constraints on the source signals. These structural constraints may be derived from a generative model of the signal, but are more commonly heuristics justified by good empirical performance. A common theme in the second approach is to impose some kind of low-complexity constraint on the signal, such as sparsity in some basis for the signal space. This approach can be particularly effective if one requires not the whole signal, but merely its most salient features.

Methods

There are different methods of blind signal separation:

-   Principal components analysis
-   Singular value decomposition
-   Independent component analysis[10]
-   Dependent component analysis
-   Non-negative matrix factorization
-   Low-complexity coding and decoding
-   Stationary subspace analysis
-   Common spatial pattern


See also

-   Adaptive filtering
-   Celemony Software#DNA Direct Note Access
-   Colin Cherry
-   Deconvolution
-   Factorial codes
-   Infomax principle
-   Segmentation (image processing)
-   Speech segmentation


References


External links

-   Explanation of Independent Component Analysis (ICA)
-   A tutorial-style dissertation by Volker Koch that introduces message-passing on factor graphs to decompose EMG signals
-   Blind source separation flash presentation
-   Removing electroencephalographic artifacts by blind source separation

de:Cocktail-Party-Effekt

Category:Digital signal processing Category:Speech processing

[1] P. Comon and C. Jutten (editors). “Handbook of Blind Source Separation, Independent Component Analysis and Applications” Academic Press,

[2] P. Comon, Contrasts, Independent Component Analysis, and Blind Deconvolution, "Int. Journal Adapt. Control Sig. Proc.", Wiley, Apr. 2004. HAL link

[3] Kevin Hughes “Blind Source Separation on Images with Shogun” http://shogun-toolbox.org/static/notebook/current/bss_image.html

[4]

[5]

[6]

[7] Jean-Francois Cardoso “Blind Signal Separation: statistical Principles” http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.462.9738&rep=rep1&type=pdf

[8] Rui Li, Hongwei Li, and Fasong Wang. “Dependent Component Analysis: Concepts and Main Algorithms” http://www.jcomputers.us/vol5/jcp0504-13.pdf

[9] Aapo Hyvarinen, Juha Karhunen, and Erkki Oja. “Independent Component Analysis” https://www.cs.helsinki.fi/u/ahyvarin/papers/bookfinal_ICA.pdf pp. 147–148, pp. 410–411, pp. 441–442, p. 448

[10] Shlens, Jonathon. "A tutorial on independent component analysis." https://arxiv.org/pdf/1404.2986