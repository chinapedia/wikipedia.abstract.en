SPEECH PROCESSING is the study of speech signals and the processing methods of signals. The signals are usually processed in a digital representation, so speech processing can be regarded as a special case of digital signal processing, applied to speech signals. Aspects of speech processing includes the acquisition, manipulation, storage, transfer and output of speech signals. The input is called speech recognition and the output is called speech synthesis.


History

Early attempts at speech processing and recognition were primarily focused on understanding a handful of simple phonetic elements such as vowels. In 1952, three researchers at Bell Labs, Stephen. Balashek, R. Biddulph, and K. H. Davis, developed a system that could recognize digits spoken by a single speaker. [1]

One of the first commercially available speech recognition products was Dragon Dictate, released in 1990. In 1992, technology developed by Lawrence Rabiner and others at Bell Labs was used by AT&T in their Voice Recognition Call Processing service to route calls without a human operator. By this point, the vocabulary of these systems was larger than the average human vocabulary.[2]

By the early 2000s, the dominant speech processing strategy started to shift away from Hidden Markov Models towards more modern neural networks and deep learning.


Techniques

Dynamic time warping

Dynamic time warping (DTW) is an algorithm for measuring similarity between two temporal sequences, which may vary in speed. In general, DTW is a method that calculates an optimal match between two given sequences (e.g. time series) with certain restriction and rules. The optimal match is denoted by the match that satisfies all the restrictions and the rules and that has the minimal cost, where the cost is computed as the sum of absolute differences, for each matched pair of indices, between their values.

Hidden Markov models

A hidden Markov model can be represented as the simplest dynamic Bayesian network. The goal of the algorithm is to estimate a hidden variable x(t) given a list of observations y(t). By applying the Markov property, the conditional probability distribution of the hidden variable _x_(_t_) at time _t_, given the values of the hidden variable _x_ at all times, depends _only_ on the value of the hidden variable _x_(_t_ − 1). Similarly, the value of the observed variable _y_(_t_) only depends on the value of the hidden variable _x_(_t_) (both at time _t_).

Artificial neural networks

An artificial neural network (ANN) is based on a collection of connected units or nodes called artificial neurons, which loosely model the neurons in a biological brain. Each connection, like the synapses in a biological brain, can transmit a signal from one artificial neuron to another. An artificial neuron that receives a signal can process it and then signal additional artificial neurons connected to it. In common ANN implementations, the signal at a connection between artificial neurons is a real number, and the output of each artificial neuron is computed by some non-linear function of the sum of its inputs.


Applications

-   Interactive Voice Systems
-   Virtual Assistants
-   Voice Identification
-   Emotion Recognition
-   Call Center Automation
-   Robotics


See also

-   Neurocomputational speech processing
-   Speech coding
-   Speech technology
-   Natural Language Processing


References

Category:Speech Category:Signal processing Category:Speech processing

[1]

[2]