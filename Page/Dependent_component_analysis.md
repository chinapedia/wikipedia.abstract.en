DEPENDENT COMPONENT ANALYSIS (DCA) is a blind signal separation (BSS) method and an extension of Independent component analysis (ICA). ICA is the separating of mixed signals to individual signals without knowing anything about source signals. DCA is used to separate mixed signals into individual sets of signals that are dependent on signals within their own set, without knowing anything about the original signals. DCA can be ICA if all sets of signals only contain a single signal within their own set.[1]


Mathematical representation

For simplicity, assume all individual sets of signals are the same size, k, and total N sets. Building off the basic equations of BSS (seen below) instead of independent source signals, one has independent sets of signals, s(t) = ({s₁(t),...,s_(k)(t)},...,{s_(kN-k+1)(t)...,s_(kN)(t)})^(T), which are mixed by coefficients A=[a_(ij)]εR^(mxkN) that produce a set of mixed signals, x(t)=(x₁(t),...,x_(m)(t))^(T). The signals can be multidimensional.

x(t) = A * s(t)

The following equation BSS separates the set of mixed signals, x(t), by finding and using coefficients, B=[B_(ij)]εR^(kNxm), to separate and get the set of approximation of the original signals, y(t)=({y₁(t),...,y_(k)(t)},...,{y_(kN-k+1)(t)...,y_(kN)(t)})^(T).[2]

y(t) = B * x(t)


Methods

Sub-Band Decomposition ICA (SDICA) is based on the fact that wideband source signals are dependent, but that other subbands are independent. It uses an adaptive filter by choosing subbands using a minimum of mutual information (MI) to separate mixed signals. After finding subband signals, ICA can be used to reconstruct, based off subband signals, by using ICA. Below is a formula to find MI based on entropy, where H is entropy.[3]

$\widehat{I_H}(y)=\sum_{n=1}^N\widehat H(y_n)- \widehat H(y)$

$\widehat{H}(y_n)=-\frac{1}{T}\sum_{t=1}^Tlog\widehat P_{yn}(y_n(t))$

$\widehat{H}(y)=-\frac{1}{T}\sum_{t=1}^Tlog\widehat P_{y}(y_n(t))$


References

Category:Signal processing

[1] Rui Li, Hongwei Li, and Fasong Wang. “Dependent Component Analysis: Concepts and Main Algorithms” http://www.jcomputers.us/vol5/jcp0504-13.pdf

[2]

[3] Ivica Kopriva and Damir Sersic "Robust Blind Separation of Statistically Dependent Sources using Dual Tree Wavelets"https://pdfs.semanticscholar.org/5ffe/a962dc8b612a637a608cb77de8a4b1025c44.pdf