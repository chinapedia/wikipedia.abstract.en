s in a brain. Here, each circular node represents an artificial neuron and an arrow represents a connection from the output of one artificial neuron to the input of another.]] ARTIFICIAL NEURAL NETWORKS (ANN) or CONNECTIONIST SYSTEMS are computing systems that are inspired by, but not necessarily identical to, the biological neural networks that constitute animal brains. Such systems "learn" to perform tasks by considering examples, generally without being programmed with any task-specific rules. For example, in image recognition, they might learn to identify images that contain cats by analyzing example images that have been manually labeled as "cat" or "no cat" and using the results to identify cats in other images. They do this without any prior knowledge about cats, for example, that they have fur, tails, whiskers and cat-like faces. Instead, they automatically generate identifying characteristics from the learning material that they process.

An ANN is based on a collection of connected units or nodes called artificial neurons, which loosely model the neurons in a biological brain. Each connection, like the synapses in a biological brain, can transmit a signal from one artificial neuron to another. An artificial neuron that receives a signal can process it and then signal additional artificial neurons connected to it.

In common ANN implementations, the signal at a connection between artificial neurons is a real number, and the output of each artificial neuron is computed by some non-linear function of the sum of its inputs. The connections between artificial neurons are called 'edges'. Artificial neurons and edges typically have a weight that adjusts as learning proceeds. The weight increases or decreases the strength of the signal at a connection. Artificial neurons may have a threshold such that the signal is only sent if the aggregate signal crosses that threshold. Typically, artificial neurons are aggregated into layers. Different layers may perform different kinds of transformations on their inputs. Signals travel from the first layer (the input layer), to the last layer (the output layer), possibly after traversing the layers multiple times.

The original goal of the ANN approach was to solve problems in the same way that a human brain would. However, over time, attention moved to performing specific tasks, leading to deviations from biology. Artificial neural networks have been used on a variety of tasks, including computer vision, speech recognition, machine translation, social network filtering, playing board and video games and medical diagnosis.


History

Warren McCulloch and Walter Pitts[1] (1943) created a computational model for neural networks based on mathematics and algorithms called threshold logic. This model paved the way for neural network research to split into two approaches. One approach focused on biological processes in the brain while the other focused on the application of neural networks to artificial intelligence. This work led to work on nerve networks and their link to finite automata.[2]

Hebbian learning

In the late 1940s, D. O. Hebb[3] created a learning hypothesis based on the mechanism of neural plasticity that became known as Hebbian learning. Hebbian learning is unsupervised learning. This evolved into models for long-term potentiation. Researchers started applying these ideas to computational models in 1948 with Turing's B-type machines. Farley and Clark[4] (1954) first used computational machines, then called "calculators", to simulate a Hebbian network. Other neural network computational machines were created by Rochester, Holland, Habit and Duda (1956).[5] Rosenblatt[6] (1958) created the perceptron, an algorithm for pattern recognition. With mathematical notation, Rosenblatt described circuitry not in the basic perceptron, such as the exclusive-or circuit that could not be processed by neural networks at the time.[7] In 1959, a biological model proposed by Nobel laureates Hubel and Wiesel was based on their discovery of two types of cells in the primary visual cortex: simple cells and complex cells.[8] The first functional networks with many layers were published by Ivakhnenko and Lapa in 1965, becoming the Group Method of Data Handling.[9][10][11]

Neural network research stagnated after machine learning research by Minsky and Papert (1969),[12] who discovered two key issues with the computational machines that processed neural networks. The first was that basic perceptrons were incapable of processing the exclusive-or circuit. The second was that computers didn't have enough processing power to effectively handle the work required by large neural networks. Neural network research slowed until computers achieved far greater processing power. Much of artificial intelligence had focused on high-level (symbolic) models that are processed by using algorithms, characterized for example by expert systems with knowledge embodied in _if-then_ rules, until in the late 1980s research expanded to low-level (sub-symbolic) machine learning, characterized by knowledge embodied in the parameters of a cognitive model.

Backpropagation

A key trigger for renewed interest in neural networks and learning was Werbos's (1975) backpropagation algorithm that made the training of multi-layer networks feasible and efficient. Backpropagation distributed the error term back up through the layers, by modifying the weights at each node.[13]

In the mid-1980s, parallel distributed processing became popular under the name connectionism. Rumelhart and McClelland (1986) described the use of connectionism to simulate neural processes.[14]

Support vector machines and other, much simpler methods such as linear classifiers gradually overtook neural networks in machine learning popularity. However, using neural networks transformed some domains, such as the prediction of protein structures.[15][16]

In 1992, max-pooling was introduced to help with least shift invariance and tolerance to deformation to aid in 3D object recognition.[17][18][19] In 2010, Backpropagation training through max-pooling was accelerated by GPUs and shown to perform better than other pooling variants.[20]

The vanishing gradient problem affects many-layered feedforward networks that used backpropagation and also recurrent neural networks (RNNs).[21][22] As errors propagate from layer to layer, they shrink exponentially with the number of layers, impeding the tuning of neuron weights that is based on those errors, particularly affecting deep networks.

To overcome this problem, Schmidhuber adopted a multi-level hierarchy of networks (1992) pre-trained one level at a time by unsupervised learning and fine-tuned by backpropagation.[23] Behnke (2003) relied only on the sign of the gradient (Rprop)[24] on problems such as image reconstruction and face localization.

Hinton et al. (2006) proposed learning a high-level representation using successive layers of binary or real-valued latent variables with a restricted Boltzmann machine[25] to model each layer. Once sufficiently many layers have been learned, the deep architecture may be used as a generative model by reproducing the data when sampling down the model (an "ancestral pass") from the top level feature activations.[26][27] In 2012, Ng and Dean created a network that learned to recognize higher-level concepts, such as cats, only from watching unlabeled images taken from YouTube videos.[28]

Earlier challenges in training deep neural networks were successfully addressed with methods such as unsupervised pre-training, while available computing power increased through the use of GPUs and distributed computing. Neural networks were deployed on a large scale, particularly in image and visual recognition problems. This became known as "deep learning".

Hardware-based designs

Computational devices were created in CMOS, for both biophysical simulation and neuromorphic computing. Nanodevices[29] for very large scale principal components analyses and convolution may create a new class of neural computing because they are fundamentally analog rather than digital (even though the first implementations may use digital devices).[30] Ciresan and colleagues (2010)[31] in Schmidhuber's group showed that despite the vanishing gradient problem, GPUs make back-propagation feasible for many-layered feedforward neural networks.

Contests

Between 2009 and 2012, recurrent neural networks and deep feedforward neural networks developed in Schmidhuber's research group won eight international competitions in pattern recognition and machine learning.[32][33] For example, the bi-directional and multi-dimensional long short-term memory (LSTM)[34][35][36][37] of Graves et al. won three competitions in connected handwriting recognition at the 2009 International Conference on Document Analysis and Recognition (ICDAR), without any prior knowledge about the three languages to be learned.[38][39]

Ciresan and colleagues won pattern recognition contests, including the IJCNN 2011 Traffic Sign Recognition Competition,[40] the ISBI 2012 Segmentation of Neuronal Structures in Electron Microscopy Stacks challenge[41] and others. Their neural networks were the first pattern recognizers to achieve human-competitive or even superhuman performance[42] on benchmarks such as traffic sign recognition (IJCNN 2012), or the MNIST handwritten digits problem.

Researchers demonstrated (2010) that deep neural networks interfaced to a hidden Markov model with context-dependent states that define the neural network output layer can drastically reduce errors in large-vocabulary speech recognition tasks such as voice search.

GPU-based implementations[43] of this approach won many pattern recognition contests, including the IJCNN 2011 Traffic Sign Recognition Competition,[44] the ISBI 2012 Segmentation of neuronal structures in EM stacks challenge,[45] the ImageNet Competition[46] and others.

Deep, highly nonlinear neural architectures similar to the neocognitron[47] and the "standard architecture of vision",[48] inspired by simple and complex cells, were pre-trained by unsupervised methods by Hinton.[49][50] A team from his lab won a 2012 contest sponsored by Merck to design software to help find molecules that might identify new drugs.[51]

Convolutional neural networks

, the state of the art in deep learning feedforward networks alternated between convolutional layers and max-pooling layers,[52][53] topped by several fully or sparsely connected layers followed by a final classification layer. Learning is usually done without unsupervised pre-training. In the convolutional layer, there are filters that are convolved with the input. Each filter is equivalent to a weights vector that has to be trained.

Such supervised deep learning methods were the first to achieve human-competitive performance on certain practical applications.[54]

Artificial neural networks were able to guarantee shift invariance to deal with small and large natural objects in large cluttered scenes, only when invariance extended beyond shift, to all ANN-learned concepts, such as location, type (object class label), scale, lighting and others. This was realized in Developmental Networks (DNs)[55] whose embodiments are Where-What Networks, WWN-1 (2008)[56] through WWN-7 (2013).[57]


Models

An _artificial neural network_ is a network of simple elements called _artificial neurons_, which receive input, change their internal state (_activation_) according to that input, and produce output depending on the input and activation.

An artificial neuron mimics the working of a biophysical neuron with inputs and outputs, but is not a biological neuron model.

The _network_ forms by connecting the output of certain neurons to the input of other neurons forming a directed, weighted graph. The weights as well as the functions that compute the activation can be modified by a process called _learning_ which is governed by a _learning rule_.[58]

Components of an artificial neural network

Neurons

A neuron with label j receiving an input p_(j)(t) from predecessor neurons consists of the following components:[59]

-   an _activation_ a_(j)(t), the neuron's state, depending on a discrete time parameter,
-   possibly a _threshold_ θ_(j), which stays fixed unless changed by a learning function,
-   an _activation function_ f that computes the new activation at a given time t + 1 from a_(j)(t), θ_(j) and the net input p_(j)(t) giving rise to the relation

    a_(j)(t + 1) = f(a_(j)(t), p_(j)(t), θ_(j)),

-   and an _output function_ f_(out) computing the output from the activation

    o_(j)(t) = f_(out)(a_(j)(t)).

Often the output function is simply the Identity function.

An _input neuron_ has no predecessor but serves as input interface for the whole network. Similarly an _output neuron_ has no successor and thus serves as output interface of the whole network.

Connections, weights and biases

The _network_ consists of connections, each connection transferring the output of a neuron i to the input of a neuron j. In this sense i is the predecessor of j and j is the successor of i. Each connection is assigned a weight w_(ij).[60] Sometimes a bias term is added to the total weighted sum of inputs to serve as a threshold to shift the activation function.[61]

Propagation function

The _propagation function_ computes the _input_ p_(j)(t) to the neuron j from the outputs o_(i)(t) of predecessor neurons and typically has the form[62]

    p_(j)(t) = ∑_(i)o_(i)(t)w_(ij).

When a bias value is added with the function, the above form changes to the following:[63]

    p_(j)(t) = ∑_(i)o_(i)(t)w_(ij) + w_(0j) , where w_(0j) is a bias.

Learning rule

The _learning rule_ is a rule or an algorithm which modifies the parameters of the neural network, in order for a given input to the network to produce a favored output. This _learning_ process typically amounts to modifying the weights and thresholds of the variables within the network.[64]

Neural networks as functions

Neural network models can be viewed as simple mathematical models defining a function $\textstyle f : X \rightarrow Y$ or a distribution over $\textstyle X$ or both $\textstyle X$ and $\textstyle Y$. Sometimes models are intimately associated with a particular learning rule. A common use of the phrase "ANN model" is really the definition of a _class_ of such functions (where members of the class are obtained by varying parameters, connection weights, or specifics of the architecture such as the number of neurons or their connectivity).

Mathematically, a neuron's network function $\textstyle f(x)$ is defined as a composition of other functions $\textstyle g_i(x)$, that can further be decomposed into other functions. This can be conveniently represented as a network structure, with arrows depicting the dependencies between functions. A widely used type of composition is the _nonlinear weighted sum_, where $\textstyle f (x) = K \left(\sum_i w_i g_i(x)\right)$, where $\textstyle K$ (commonly referred to as the activation function[65]) is some predefined function, such as the hyperbolic tangent, sigmoid function, softmax function, or rectifier function. The important characteristic of the activation function is that it provides a smooth transition as input values change, i.e. a small change in input produces a small change in output. The following refers to a collection of functions $\textstyle g_i$ as a vector $\textstyle g = (g_1, g_2, \ldots, g_n)$.

This figure depicts such a decomposition of $\textstyle f$, with dependencies between variables indicated by arrows. These can be interpreted in two ways.

The first view is the functional view: the input $\textstyle x$ is transformed into a 3-dimensional vector $\textstyle h$, which is then transformed into a 2-dimensional vector $\textstyle g$, which is finally transformed into $\textstyle f$. This view is most commonly encountered in the context of optimization.

The second view is the probabilistic view: the random variable $\textstyle F = f(G)$ depends upon the random variable $\textstyle G = g(H)$, which depends upon $\textstyle H=h(X)$, which depends upon the random variable $\textstyle X$. This view is most commonly encountered in the context of graphical models.

The two views are largely equivalent. In either case, for this particular architecture, the components of individual layers are independent of each other (e.g., the components of $\textstyle g$ are independent of each other given their input $\textstyle h$). This naturally enables a degree of parallelism in the implementation.

Networks such as the previous one are commonly called feedforward, because their graph is a directed acyclic graph. Networks with cycles are commonly called recurrent. Such networks are commonly depicted in the manner shown at the top of the figure, where $\textstyle f$ is shown as being dependent upon itself. However, an implied temporal dependence is not shown.

Learning

The possibility of learning has attracted the most interest in neural networks. Given a specific _task_ to solve, and a class of functions $\textstyle F$, learning means using a set of observations to find $\textstyle  f^{*} \in F$ which solves the task in some optimal sense.

This entails defining a cost function $\textstyle C : F \rightarrow \mathbb{R}$ such that, for the optimal solution $\textstyle f^*$, $\textstyle C(f^*) \leq C(f)$ $\textstyle \forall f \in F$ i.e., no solution has a cost less than the cost of the optimal solution (see mathematical optimization).

The cost function $\textstyle C$ is an important concept in learning, as it is a measure of how far away a particular solution is from an optimal solution to the problem to be solved. Learning algorithms search through the solution space to find a function that has the smallest possible cost.

For applications where the solution is data dependent, the cost must necessarily be a function of the observations, otherwise the model would not relate to the data. It is frequently defined as a statistic to which only approximations can be made. As a simple example, consider the problem of finding the model $\textstyle f$, which minimizes $\textstyle C=E\left[(f(x) - y)^2\right]$, for data pairs $\textstyle (x,y)$ drawn from some distribution $\textstyle \mathcal{D}$. In practical situations we would only have $\textstyle N$ samples from $\textstyle \mathcal{D}$ and thus, for the above example, we would only minimize $\textstyle \hat{C}=\frac{1}{N}\sum_{i=1}^N (f(x_i)-y_i)^2$. Thus, the cost is minimized over a sample of the data rather than the entire distribution.

When $\textstyle N \rightarrow \infty$ some form of online machine learning must be used, where the cost is reduced as each new example is seen. While online machine learning is often used when $\textstyle \mathcal{D}$ is fixed, it is most useful in the case where the distribution changes slowly over time. In neural network methods, some form of online machine learning is frequently used for finite datasets.

Choosing a cost function

While it is possible to define an ad hoc cost function, frequently a particular cost function is used, either because it has desirable properties (such as convexity) or because it arises naturally from a particular formulation of the problem (e.g., in a probabilistic formulation the posterior probability of the model can be used as an inverse cost). Ultimately, the cost function depends on the task.

Backpropagation

A DNN can be discriminatively trained with the standard backpropagation algorithm. Backpropagation is a method to calculate the gradient of the loss function (produces the cost associated with a given state) with respect to the weights in an ANN.

The basics of continuous backpropagation[66][67][68][69] were derived in the context of control theory by Kelley[70] in 1960 and by Bryson in 1961,[71] using principles of dynamic programming. In 1962, Dreyfus published a simpler derivation based only on the chain rule.[72] Bryson and Ho described it as a multi-stage dynamic system optimization method in 1969.[73][74] In 1970, Linnainmaa finally published the general method for automatic differentiation (AD) of discrete connected networks of nested differentiable functions.[75][76] This corresponds to the modern version of backpropagation which is efficient even when the networks are sparse.[77][78][79][80] In 1973, Dreyfus used backpropagation to adapt parameters of controllers in proportion to error gradients.[81] In 1974, Werbos mentioned the possibility of applying this principle to Artificial neural networks,[82] and in 1982, he applied Linnainmaa's AD method to neural networks in the way that is widely used today.[83][84] In 1986, Rumelhart, Hinton and Williams noted that this method can generate useful internal representations of incoming data in hidden layers of neural networks.[85] In 1993, Wan was the first[86] to win an international pattern recognition contest through backpropagation.[87]

The weight updates of backpropagation can be done via stochastic gradient descent using the following equation:

$$w_{ij}(t + 1) = w_{ij}(t) - \eta\frac{\partial C}{\partial w_{ij}} +\xi(t)$$
where, η is the learning rate, C is the cost (loss) function and ξ(t) a stochastic term. The choice of the cost function depends on factors such as the learning type (supervised, unsupervised, reinforcement, etc.) and the activation function. For example, when performing supervised learning on a multiclass classification problem, common choices for the activation function and cost function are the softmax function and cross entropy function, respectively. The softmax function is defined as $p_j = \frac{\exp(x_j)}{\sum_k \exp(x_k)}$ where p_(j) represents the class probability (output of the unit j) and x_(j) and x_(k) represent the total input to units j and k of the same level respectively. Cross entropy is defined as C =  − ∑_(j)d_(j)log (p_(j)) where d_(j) represents the target probability for output unit j and p_(j) is the probability output for j after applying the activation function.[88]

These can be used to output object bounding boxes in the form of a binary mask. They are also used for multi-scale regression to increase localization precision. DNN-based regression can learn features that capture geometric information in addition to serving as a good classifier. They remove the requirement to explicitly model parts and their relations. This helps to broaden the variety of objects that can be learned. The model consists of multiple layers, each of which has a rectified linear unit as its activation function for non-linear transformation. Some layers are convolutional, while others are fully connected. Every convolutional layer has an additional max pooling. The network is trained to minimize _L_² error for predicting the mask ranging over the entire training set containing bounding boxes represented as masks.

Alternatives to backpropagation include Extreme Learning Machines,[89] "No-prop" networks,[90] training without backtracking,[91] "weightless" networks,[92][93] and non-connectionist neural networks.

Learning paradigms

The three major learning paradigms each correspond to a particular learning task. These are supervised learning, unsupervised learning and reinforcement learning.

Supervised learning

Supervised learning uses a set of example pairs (x, y), x ∈ X, y ∈ Y and the aim is to find a function f : X → Y in the allowed class of functions that matches the examples. In other words, we wish to infer the mapping implied by the data; the cost function is related to the mismatch between our mapping and the data and it implicitly contains prior knowledge about the problem domain.[94]

A commonly used cost is the mean-squared error, which tries to minimize the average squared error between the network's output, f(x), and the target value y over all the example pairs. Minimizing this cost using gradient descent for the class of neural networks called multilayer perceptrons (MLP), produces the backpropagation algorithm for training neural networks.

Tasks that fall within the paradigm of supervised learning are pattern recognition (also known as classification) and regression (also known as function approximation). The supervised learning paradigm is also applicable to sequential data (e.g., for hand writing, speech and gesture recognition). This can be thought of as learning with a "teacher", in the form of a function that provides continuous feedback on the quality of solutions obtained thus far.

Unsupervised learning

In unsupervised learning, some data $\textstyle x$ is given and the cost function to be minimized, that can be any function of the data $\textstyle x$ and the network's output, $\textstyle f$.

The cost function is dependent on the task (the model domain) and any _a priori_ assumptions (the implicit properties of the model, its parameters and the observed variables).

As a trivial example, consider the model $\textstyle f(x) = a$ where $\textstyle a$ is a constant and the cost $\textstyle C=E[(x - f(x))^2]$. Minimizing this cost produces a value of $\textstyle a$ that is equal to the mean of the data. The cost function can be much more complicated. Its form depends on the application: for example, in compression it could be related to the mutual information between $\textstyle x$ and $\textstyle f(x)$, whereas in statistical modeling, it could be related to the posterior probability of the model given the data (note that in both of those examples those quantities would be maximized rather than minimized).

Tasks that fall within the paradigm of unsupervised learning are in general estimation problems; the applications include clustering, the estimation of statistical distributions, compression and filtering.

Reinforcement learning

In reinforcement learning, data $\textstyle x$ are usually not given, but generated by an agent's interactions with the environment. At each point in time $\textstyle t$, the agent performs an action $\textstyle y_t$ and the environment generates an observation $\textstyle x_t$ and an instantaneous cost $\textstyle c_t$, according to some (usually unknown) dynamics. The aim is to discover a policy for selecting actions that minimizes some measure of a long-term cost, e.g., the expected cumulative cost. The environment's dynamics and the long-term cost for each policy are usually unknown, but can be estimated.

More formally the environment is modeled as a Markov decision process (MDP) with states $\textstyle {s_1,...,s_n}\in S$ and actions $\textstyle {a_1,...,a_m} \in A$ with the following probability distributions: the instantaneous cost distribution $\textstyle P(c_t|s_t)$, the observation distribution $\textstyle P(x_t|s_t)$ and the transition $\textstyle P(s_{t+1}|s_t, a_t)$, while a policy is defined as the conditional distribution over actions given the observations. Taken together, the two then define a Markov chain (MC). The aim is to discover the policy (i.e., the MC) that minimizes the cost.

Artificial neural networks are frequently used in reinforcement learning as part of the overall algorithm.[95][96] Dynamic programming was coupled with Artificial neural networks (giving neurodynamic programming) by Bertsekas and Tsitsiklis[97] and applied to multi-dimensional nonlinear problems such as those involved in vehicle routing,[98] natural resources management[99][100] or medicine[101] because of the ability of Artificial neural networks to mitigate losses of accuracy even when reducing the discretization grid density for numerically approximating the solution of the original control problems.

Tasks that fall within the paradigm of reinforcement learning are control problems, games and other sequential decision making tasks.

Learning algorithms

Training a neural network model essentially means selecting one model from the set of allowed models (or, in a Bayesian framework, determining a distribution over the set of allowed models) that minimizes the cost. Numerous algorithms are available for training neural network models; most of them can be viewed as a straightforward application of optimization theory and statistical estimation.

Most employ some form of gradient descent, using backpropagation to compute the actual gradients. This is done by simply taking the derivative of the cost function with respect to the network parameters and then changing those parameters in a gradient-related direction. Backpropagation training algorithms fall into three categories:

-   steepest descent (with variable learning rate and momentum, resilient backpropagation);
-   quasi-Newton (Broyden-Fletcher-Goldfarb-Shanno, one step secant);
-   Levenberg-Marquardt and conjugate gradient (Fletcher-Reeves update, Polak-Ribiére update, Powell-Beale restart, scaled conjugate gradient).[102]

Evolutionary methods,[103] gene expression programming,[104] simulated annealing,[105] expectation-maximization, non-parametric methods and particle swarm optimization[106] are other methods for training neural networks.

Convergent recursive learning algorithm

This is a learning method specially designed for cerebellar model articulation controller (CMAC) neural networks. In 2004, a recursive least squares algorithm was introduced to train CMAC neural network online.[107] This algorithm can converge in one step and update all weights in one step with any new input data. Initially, this algorithm had computational complexity of _O_(_N_³). Based on QR decomposition, this recursive learning algorithm was simplified to be _O_(_N_).[108]


Optimization

The optimization algorithm repeats a two phase cycle, propagation and weight update. When an input vector is presented to the network, it is propagated forward through the network, layer by layer, until it reaches the output layer. The output of the network is then compared to the desired output, using a loss function. The resulting error value is calculated for each of the neurons in the output layer. The error values are then propagated from the output back through the network, until each neuron has an associated error value that reflects its contribution to the original output.

Backpropagation uses these error values to calculate the gradient of the loss function. In the second phase, this gradient is fed to the optimization method, which in turn uses it to update the weights, in an attempt to minimize the loss function.

Algorithm

Let N be a neural network with e connections, m inputs, and n outputs.

Below, x₁, x₂, … will denote vectors in ℝ^(m), y₁, y₂, … vectors in ℝ^(n), and w₀, w₁, w₂, … vectors in ℝ^(e). These are called _inputs_, _outputs_ and _weights_ respectively.

The neural network corresponds to a function y = f_(N)(w, x) which, given a weight w, maps an input x to an output y.

The optimization takes as input a sequence of _training examples_ (x₁, y₁), …, (x_(p), y_(p)) and produces a sequence of weights w₀, w₁, …, w_(p) starting from some initial weight w₀, usually chosen at random.

These weights are computed in turn: first compute w_(i) using only (x_(i), y_(i), w_(i − 1)) for i = 1, …, p. The output of the algorithm is then w_(p), giving us a new function x ↦ f_(N)(w_(p), x). The computation is the same in each step, hence only the case i = 1 is described.

Calculating w₁ from (x₁, y₁, w₀) is done by considering a variable weight w and applying gradient descent to the function w ↦ E(f_(N)(w, x₁), y₁) to find a local minimum, starting at w = w₀.

This makes w₁ the minimizing weight found by gradient descent.


Algorithm in code

To implement the algorithm above, explicit formulas are required for the gradient of the function w ↦ E(f_(N)(w, x), y) where the function is E(y, y′) = |y − y′|².

The learning algorithm can be divided into two phases: propagation and weight update.

Phase 1: propagation

Each propagation involves the following steps:

1.  Propagation forward through the network to generate the output value(s)
2.  Calculation of the cost (error term)
3.  Propagation of the output activations back through the network using the training pattern target to generate the deltas (the difference between the targeted and actual output values) of all output and hidden neurons.

Phase 2: weight update

For each weight, the following steps must be followed:

1.  The weight's output delta and input activation are multiplied to find the gradient of the weight.
2.  A ratio (percentage) of the weight's gradient is subtracted from the weight.

This ratio (percentage) influences the speed and quality of learning; it is called the _learning rate_. The greater the ratio, the faster the neuron trains, but the lower the ratio, the more accurate the training is. The sign of the gradient of a weight indicates whether the error varies directly with, or inversely to, the weight. Therefore, the weight must be updated in the opposite direction, "descending" the gradient.

Learning is repeated (on new batches) until the network performs adequately.

Pseudocode

The following is pseudocode for a stochastic gradient descent algorithm for training a three-layer network (only one hidden layer):

  initialize network weights (often small random values)
  do
     forEach training example named ex
        prediction = neural-net-output(network, ex)  _// forward pass_
        actual = teacher-output(ex)
        compute error (prediction - actual) at the output units
          _// backward pass_
           _// backward pass continued_
        update network weights _// input layer not modified by error estimate_
  until all examples classified correctly or another stopping criterion satisfied
  return the network

The lines labeled "backward pass" can be implemented using the backpropagation algorithm, which calculates the gradient of the error of the network regarding the network's modifiable weights.[109]


Extension

The choice of learning rate η is important, since a high value can cause too strong a change, causing the minimum to be missed, while a too low learning rate slows the training unnecessarily.

Optimizations such as Quickprop are primarily aimed at speeding up error minimization; other improvements mainly try to increase reliability.

Adaptive learning rate

In order to avoid oscillation inside the network such as alternating connection weights, and to improve the rate of convergence, refinements of this algorithm use an adaptive learning rate.[110]

Inertia

By using a variable inertia term _(Momentum)_ α the gradient and the last change can be weighted such that the weight adjustment additionally depends on the previous change. If the _Momentum_ α is equal to 0, the change depends solely on the gradient, while a value of 1 will only depend on the last change.

Similar to a ball rolling down a mountain, whose current speed is determined not only by the current slope of the mountain but also by its own inertia, inertia can be added
_Δ__w__(_i__j_)(_t_ + 1) = (1 − _α_)_η__δ__(_j_)_o__(_i_) + _α_ _Δ__w__(_i__j_)(_t_)
where:

    Δw_(ij)(t + 1) is the change in weight w_(ij)(t + 1) in the connection of neuron i to neuron j at time (t + 1),
    η a learning rate (η < 0),
    δ_(j) the error signal of neuron j and
    o_(i) the output of neuron i, which is also an input of the current neuron (neuron j),
    α the influence of the inertial term Δw_(ij)(t) (in [0, 1]). This corresponds to the weight change at the previous point in time.

Inertia makes the current weight change (t + 1) depend both on the current gradient of the error function (slope of the mountain, 1st summand), as well as on the weight change from the previous point in time (inertia, 2nd summand).

With inertia, the problems of getting stuck (in steep ravines and flat plateaus) are avoided. Since, for example, the gradient of the error function becomes very small in flat plateaus, a plateau would immediately lead to a "deceleration" of the gradient descent. This deceleration is delayed by the addition of the inertia term so that a flat plateau can be escaped more quickly.


Modes of learning

Two modes of learning are available: stochastic and batch. In stochastic learning, each input creates a weight adjustment. In batch learning weights are adjusted based on a batch of inputs, accumulating errors over the batch. Stochastic learning introduces "noise" into the gradient descent process, using the local gradient calculated from one data point; this reduces the chance of the network getting stuck in local minima. However, batch learning typically yields a faster, more stable descent to a local minimum, since each update is performed in the direction of the average error of the batch. A common compromise choice is to use "mini-batches", meaning small batches and with samples in each batch selected stochastically from the entire data set.


Variants

Group method of data handling

The Group Method of Data Handling (GMDH)[111] features fully automatic structural and parametric model optimization. The node activation functions are Kolmogorov-Gabor polynomials that permit additions and multiplications. It used a deep feedforward multilayer perceptron with eight layers.[112] It is a supervised learning network that grows layer by layer, where each layer is trained by regression analysis. Useless items are detected using a validation set, and pruned through regularization. The size and depth of the resulting network depends on the task.[113]

Convolutional neural networks

A convolutional neural network (CNN) is a class of deep, feed-forward networks, composed of one or more convolutional layers with fully connected layers (matching those in typical Artificial neural networks) on top. It uses tied weights and pooling layers. In particular, max-pooling[114] is often structured via Fukushima's convolutional architecture.[115] This architecture allows CNNs to take advantage of the 2D structure of input data.

CNNs are suitable for processing visual and other two-dimensional data.[116][117] They have shown superior results in both image and speech applications. They can be trained with standard backpropagation. CNNs are easier to train than other regular, deep, feed-forward neural networks and have many fewer parameters to estimate.[118] Examples of applications in computer vision include DeepDream[119] and robot navigation.[120]

A recent development has been that of Capsule Neural Network (CapsNet), the idea behind which is to add structures called capsules to a CNN and to reuse output from several of those capsules to form more stable (with respect to various perturbations) representations for higher order capsules.[121]

Long short-term memory

Long short-term memory (LSTM) networks are RNNs that avoid the vanishing gradient problem.[122] LSTM is normally augmented by recurrent gates called forget gates.[123] LSTM networks prevent backpropagated errors from vanishing or exploding.[124] Instead errors can flow backwards through unlimited numbers of virtual layers in space-unfolded LSTM. That is, LSTM can learn "very deep learning" tasks[125] that require memories of events that happened thousands or even millions of discrete time steps ago. Problem-specific LSTM-like topologies can be evolved.[126] LSTM can handle long delays and signals that have a mix of low and high frequency components.

Stacks of LSTM RNNs[127] trained by Connectionist Temporal Classification (CTC)[128] can find an RNN weight matrix that maximizes the probability of the label sequences in a training set, given the corresponding input sequences. CTC achieves both alignment and recognition.

In 2003, LSTM started to become competitive with traditional speech recognizers.[129] In 2007, the combination with CTC achieved first good results on speech data.[130] In 2009, a CTC-trained LSTM was the first RNN to win pattern recognition contests, when it won several competitions in connected handwriting recognition.[131][132] In 2014, Baidu used CTC-trained RNNs to break the Switchboard Hub5'00 speech recognition benchmark, without traditional speech processing methods.[133] LSTM also improved large-vocabulary speech recognition,[134][135] text-to-speech synthesis,[136] for Google Android,[137][138] and photo-real talking heads.[139] In 2015, Google's speech recognition experienced a 49% improvement through CTC-trained LSTM.[140]

LSTM became popular in Natural Language Processing. Unlike previous models based on HMMs and similar concepts, LSTM can learn to recognise context-sensitive languages.[141] LSTM improved machine translation,[142][143] language modeling[144] and multilingual language processing.[145] LSTM combined with CNNs improved automatic image captioning.[146]

Deep reservoir computing

Deep Reservoir Computing and Deep Echo State Networks (deepESNs)[147][148] provide a framework for efficiently trained models for hierarchical processing of temporal data, while enabling the investigation of the inherent role of RNN layered composition.

Deep belief networks

(RBM) with fully connected visible and hidden units. Note there are no hidden-hidden or visible-visible connections.]] A deep belief network (DBN) is a probabilistic, generative model made up of multiple layers of hidden units. It can be considered a composition of simple learning modules that make up each layer.[149]

A DBN can be used to generatively pre-train a DNN by using the learned DBN weights as the initial DNN weights. Backpropagation or other discriminative algorithms can then tune these weights. This is particularly helpful when training data are limited, because poorly initialized weights can significantly hinder model performance. These pre-trained weights are in a region of the weight space that is closer to the optimal weights than were they randomly chosen. This allows for both improved modeling and faster convergence of the fine-tuning phase.[150]

Large memory storage and retrieval neural networks

Large memory storage and retrieval neural networks (LAMSTAR)[151][152] are fast deep learning neural networks of many layers that can use many filters simultaneously. These filters may be nonlinear, stochastic, logic, non-stationary, or even non-analytical. They are biologically motivated and learn continuously.

A LAMSTAR neural network may serve as a dynamic neural network in spatial or time domains or both. Its speed is provided by Hebbian link-weights[153] that integrate the various and usually different filters (preprocessing functions) into its many layers and to dynamically rank the significance of the various layers and functions relative to a given learning task. This grossly imitates biological learning which integrates various preprocessors (cochlea, retina, _etc._) and cortexes (auditory, visual, _etc._) and their various regions. Its deep learning capability is further enhanced by using inhibition, correlation and its ability to cope with incomplete data, or "lost" neurons or layers even amidst a task. It is fully transparent due to its link weights. The link-weights allow dynamic determination of innovation and redundancy, and facilitate the ranking of layers, of filters or of individual neurons relative to a task.

LAMSTAR has been applied to many domains, including medical[154][155][156] and financial predictions,[157] adaptive filtering of noisy speech in unknown noise,[158] still-image recognition,[159] video image recognition,[160] software security[161] and adaptive control of non-linear systems.[162] LAMSTAR had a much faster learning speed and somewhat lower error rate than a CNN based on ReLU-function filters and max pooling, in 20 comparative studies.[163]

These applications demonstrate delving into aspects of the data that are hidden from shallow learning networks and the human senses, such as in the cases of predicting onset of sleep apnea events,[164] of an electrocardiogram of a fetus as recorded from skin-surface electrodes placed on the mother's abdomen early in pregnancy,[165] of financial prediction[166] or in blind filtering of noisy speech.[167]

LAMSTAR was proposed in 1996 () and was further developed Graupe and Kordylewski from 1997–2002.[168][169][170] A modified version, known as LAMSTAR 2, was developed by Schneider and Graupe in 2008.[171][172]

Stacked (de-noising) auto-encoders

The auto encoder idea is motivated by the concept of a _good_ representation. For example, for a classifier, a good representation can be defined as one that yields a better-performing classifier.

An _encoder_ is a deterministic mapping f_(θ) that transforms an input vector'' X'' into hidden representation _Y_, where θ = {W, b}, W is the weight matrix and B is an offset vector (bias). A _decoder_ maps back the hidden representation Y to the reconstructed input _Z_ via g_(θ). The whole process of auto encoding is to compare this reconstructed input to the original and try to minimize the error to make the reconstructed value as close as possible to the original.

In _stacked denoising auto encoders_, the partially corrupted output is cleaned (de-noised). This idea was introduced in 2010 by Vincent et al.[173] with a specific approach to _good_ representation, a _good representation_ is one that can be obtained robustly from a corrupted input and that will be useful for recovering the corresponding clean input_._ Implicit in this definition are the following ideas:

-   The higher level representations are relatively stable and robust to input corruption;
-   It is necessary to extract features that are useful for representation of the input distribution.

The algorithm starts by a stochastic mapping of X to $\tilde{\boldsymbol{x}}$ through $q_D(\tilde{\boldsymbol{x}}|\boldsymbol{x})$, this is the corrupting step. Then the corrupted input $\tilde{\boldsymbol{x}}$ passes through a basic auto-encoder process and is mapped to a hidden representation $\boldsymbol{y} = f_\theta(\tilde{\boldsymbol{x}}) = s(\boldsymbol{W}\tilde{\boldsymbol{x}}+b)$. From this hidden representation, we can reconstruct Z = g_(θ)(Y). In the last stage, a minimization algorithm runs in order to have _Z_ as close as possible to uncorrupted input X. The reconstruction error L_(H)(X, Z) might be either the cross-entropy loss with an affine-sigmoid decoder, or the squared error loss with an affine decoder.[174]

In order to make a deep architecture, auto encoders stack.[175] Once the encoding function f_(θ) of the first denoising auto encoder is learned and used to uncorrupt the input (corrupted input), the second level can be trained.[176]

Once the stacked auto encoder is trained, its output can be used as the input to a supervised learning algorithm such as support vector machine classifier or a multi-class logistic regression.[177]

Deep stacking networks

A deep stacking network (DSN)[178] (deep convex network) is based on a hierarchy of blocks of simplified neural network modules. It was introduced in 2011 by Deng and Dong.[179] It formulates the learning as a convex optimization problem with a closed-form solution, emphasizing the mechanism's similarity to stacked generalization.[180] Each DSN block is a simple module that is easy to train by itself in a supervised fashion without backpropagation for the entire blocks.[181]

Each block consists of a simplified multi-layer perceptron (MLP) with a single hidden layer. The hidden layer _H_ has logistic sigmoidal units, and the output layer has linear units. Connections between these layers are represented by weight matrix _U;_ input-to-hidden-layer connections have weight matrix _W_. Target vectors _T_ form the columns of matrix _T_, and the input data vectors _X_ form the columns of matrix _X._ The matrix of hidden units is H = σ(W^(T)X). Modules are trained in order, so lower-layer weights _W_ are known at each stage. The function performs the element-wise logistic sigmoid operation. Each block estimates the same final label class _y_, and its estimate is concatenated with original input _X_ to form the expanded input for the next block. Thus, the input to the first block contains the original data only, while downstream blocks' input adds the output of preceding blocks. Then learning the upper-layer weight matrix _U_ given other weights in the network can be formulated as a convex optimization problem:

    min_(U^(T))f = ||U^(T)H − T||_(F)²,

which has a closed-form solution.

Unlike other deep architectures, such as DBNs, the goal is not to discover the transformed feature representation. The structure of the hierarchy of this kind of architecture makes parallel learning straightforward, as a batch-mode optimization problem. In purely discriminative tasks, DSNs perform better than conventional DBNs.[182]

Tensor deep stacking networks

This architecture is a DSN extension. It offers two important improvements: it uses higher-order information from covariance statistics, and it transforms the non-convex problem of a lower-layer to a convex sub-problem of an upper-layer.[183] TDSNs use covariance statistics in a bilinear mapping from each of two distinct sets of hidden units in the same layer to predictions, via a third-order tensor.

While parallelization and scalability are not considered seriously in conventional ,[184][185][186] all learning for s and s is done in batch mode, to allow parallelization.[187][188] Parallelization allows scaling the design to larger (deeper) architectures and data sets.

The basic architecture is suitable for diverse tasks such as classification and regression.

Spike-and-slab RBMs

The need for deep learning with real-valued inputs, as in Gaussian restricted Boltzmann machines, led to the _spike-and-slab_ RBM (_ss_RBM), which models continuous-valued inputs with strictly binary latent variables.[189] Similar to basic RBMs and its variants, a spike-and-slab RBM is a bipartite graph, while like GRBMs, the visible units (input) are real-valued. The difference is in the hidden layer, where each hidden unit has a binary spike variable and a real-valued slab variable. A spike is a discrete probability mass at zero, while a slab is a density over continuous domain;[190] their mixture forms a prior.[191]

An extension of ssRBM called µ-ssRBM provides extra modeling capacity using additional terms in the energy function. One of these terms enables the model to form a conditional distribution of the spike variables by marginalizing out the slab variables given an observation.

Compound hierarchical-deep models

Compound hierarchical-deep models compose deep networks with non-parametric Bayesian models. Features can be learned using deep architectures such as DBNs,[192] DBMs,[193] deep auto encoders,[194] convolutional variants,[195][196] ssRBMs,[197] deep coding networks,[198] DBNs with sparse feature learning,[199] RNNs,[200] conditional DBNs,[201] de-noising auto encoders.[202] This provides a better representation, allowing faster learning and more accurate classification with high-dimensional data. However, these architectures are poor at learning novel classes with few examples, because all network units are involved in representing the input (a ) and must be adjusted together (high degree of freedom). Limiting the degree of freedom reduces the number of parameters to learn, facilitating learning of new classes from few examples. _Hierarchical Bayesian (HB)_ models allow learning from few examples, for example[203][204][205][206][207] for computer vision, statistics and cognitive science.

Compound HD architectures aim to integrate characteristics of both HB and deep networks. The compound HDP-DBM architecture is a _hierarchical Dirichlet process (HDP)_ as a hierarchical model, incorporated with DBM architecture. It is a full generative model, generalized from abstract concepts flowing through the layers of the model, which is able to synthesize new examples in novel classes that look "reasonably" natural. All the levels are learned jointly by maximizing a joint log-probability score.[208]

In a DBM with three hidden layers, the probability of a visible input is:

    $p(\boldsymbol{\nu}, \psi) = \frac{1}{Z}\sum_h e^{\sum_{ij}W_{ij}^{(1)}\nu_i h_j^1 + \sum_{jl}W_{jl}^{(2)}h_j^{1}h_l^{2}+\sum_{lm}W_{lm}^{(3)}h_l^{2}h_m^{3}},$

where H = {H⁽¹⁾, H⁽²⁾, H⁽³⁾} is the set of hidden units, and ψ = {W⁽¹⁾, W⁽²⁾, W⁽³⁾} are the model parameters, representing visible-hidden and hidden-hidden symmetric interaction terms.

A learned DBM model is an undirected model that defines the joint distribution P(ν, h¹, h², h³). One way to express what has been learned is the conditional model P(ν, h¹, h²|h³) and a prior term P(h³).

Here P(ν, h¹, h²|h³) represents a conditional DBM model, which can be viewed as a two-layer DBM but with bias terms given by the states of h³:

    $P(\nu, h^1, h^2|h^3) = \frac{1}{Z(\psi, h^3)}e^{\sum_{ij}W_{ij}^{(1)}\nu_i h_j^1 + \sum_{jl}W_{jl}^{(2)}h_j^{1}h_l^{2}+\sum_{lm}W_{lm}^{(3)}h_l^{2}h_m^{3}}.$

Deep predictive coding networks

A deep predictive coding network (DPCN) is a predictive coding scheme that uses top-down information to empirically adjust the priors needed for a bottom-up inference procedure by means of a deep, locally connected, generative model. This works by extracting sparse features from time-varying observations using a linear dynamical model. Then, a pooling strategy is used to learn invariant feature representations. These units compose to form a deep architecture and are trained by greedy layer-wise unsupervised learning. The layers constitute a kind of Markov chain such that the states at any layer depend only on the preceding and succeeding layers.

DPCNs predict the representation of the layer, by using a top-down approach using the information in upper layer and temporal dependencies from previous states.[209]

DPCNs can be extended to form a convolutional network.[210]

Networks with separate memory structures

Integrating external memory with Artificial neural networks dates to early research in distributed representations[211] and Kohonen's self-organizing maps. For example, in sparse distributed memory or hierarchical temporal memory, the patterns encoded by neural networks are used as addresses for content-addressable memory, with "neurons" essentially serving as address encoders and decoders. However, the early controllers of such memories were not differentiable.

LSTM-related differentiable memory structures

Apart from long short-term memory (LSTM), other approaches also added differentiable memory to recurrent functions. For example:

-   Differentiable push and pop actions for alternative memory networks called neural stack machines[212][213]
-   Memory networks where the control network's external differentiable storage is in the fast weights of another network[214]
-   LSTM forget gates[215]
-   Self-referential RNNs with special output units for addressing and rapidly manipulating the RNN's own weights in differentiable fashion (internal storage)[216][217]
-   Learning to transduce with unbounded memory[218]

Neural Turing machines

Neural Turing machines[219] couple LSTM networks to external memory resources, with which they can interact by attentional processes. The combined system is analogous to a Turing machine but is differentiable end-to-end, allowing it to be efficiently trained by gradient descent. Preliminary results demonstrate that neural Turing machines can infer simple algorithms such as copying, sorting and associative recall from input and output examples.

Differentiable neural computers (DNC) are an NTM extension. They out-performed Neural turing machines, long short-term memory systems and memory networks on sequence-processing tasks.[220][221][222][223][224]

Semantic hashing

Approaches that represent previous experiences directly and use a similar experience to form a local model are often called nearest neighbour or k-nearest neighbors methods.[225] Deep learning is useful in semantic hashing[226] where a deep graphical model the word-count vectors[227] obtained from a large set of documents. Documents are mapped to memory addresses in such a way that semantically similar documents are located at nearby addresses. Documents similar to a query document can then be found by accessing all the addresses that differ by only a few bits from the address of the query document. Unlike sparse distributed memory that operates on 1000-bit addresses, semantic hashing works on 32 or 64-bit addresses found in a conventional computer architecture.

Memory networks

Memory networks[228][229] are another extension to neural networks incorporating long-term memory. The long-term memory can be read and written to, with the goal of using it for prediction. These models have been applied in the context of question answering (QA) where the long-term memory effectively acts as a (dynamic) knowledge base and the output is a textual response.[230] A team of electrical and computer engineers from UCLA Samueli School of Engineering has created a physical artificial neural network that can analyze large volumes of data and identify objects at the actual speed of light.[231]

Pointer networks

Deep neural networks can be potentially improved by deepening and parameter reduction, while maintaining trainability. While training extremely deep (e.g., 1 million layers) neural networks might not be practical, CPU-like architectures such as pointer networks[232] and neural random-access machines[233] overcome this limitation by using external random-access memory and other components that typically belong to a computer architecture such as registers, ALU and pointers. Such systems operate on probability distribution vectors stored in memory cells and registers. Thus, the model is fully differentiable and trains end-to-end. The key characteristic of these models is that their depth, the size of their short-term memory, and the number of parameters can be altered independently – unlike models like LSTM, whose number of parameters grows quadratically with memory size.

Encoder–decoder networks

Encoder–decoder frameworks are based on neural networks that map highly structured input to highly structured output. The approach arose in the context of machine translation,[234][235][236] where the input and output are written sentences in two natural languages. In that work, an LSTM RNN or CNN was used as an encoder to summarize a source sentence, and the summary was decoded using a conditional RNN language model to produce the translation.[237] These systems share building blocks: gated RNNs and CNNs and trained attention mechanisms.

Multilayer kernel machine

Multilayer kernel machines (MKM) are a way of learning highly nonlinear functions by iterative application of weakly nonlinear kernels. They use the kernel principal component analysis (KPCA),[238] as a method for the unsupervised greedy layer-wise pre-training step of deep learning.[239]

Layer l + 1 learns the representation of the previous layer l, extracting the n_(l) principal component (PC) of the projection layer l output in the feature domain induced by the kernel. For the sake of dimensionality reduction of the updated representation in each layer, a supervised strategy selects the best informative features among features extracted by KPCA. The process is:

-   rank the n_(l) features according to their mutual information with the class labels;
-   for different values of _K_ and m_(l) ∈ {1, …, n_(l)}, compute the classification error rate of a _K-nearest neighbor (K-NN)_ classifier using only the m_(l) most informative features on a validation set;
-   the value of m_(l) with which the classifier has reached the lowest error rate determines the number of features to retain.

Some drawbacks accompany the KPCA method as the building cells of an MKM.

A more straightforward way to use kernel machines for deep learning was developed for spoken language understanding.[240] The main idea is to use a kernel machine to approximate a shallow neural net with an infinite number of hidden units, then use stacking to splice the output of the kernel machine and the raw input in building the next, higher level of the kernel machine. The number of levels in the deep convex network is a hyper-parameter of the overall system, to be determined by cross validation.


Neural architecture search

Neural architecture search (NAS) uses machine learning to automate the design of Artificial neural networks. Various approaches to NAS have designed networks that compare well with hand-designed systems. The basic search algorithm is to propose a candidate model, evaluate it against a dataset and use the results as feedback to teach the NAS network.[241]


Use

Using Artificial neural networks requires an understanding of their characteristics.

-   Choice of model: This depends on the data representation and the application. Overly complex models slow learning.
-   Learning algorithm: Numerous trade-offs exist between learning algorithms. Almost any algorithm will work well with the correct hyperparameters for training on a particular data set. However, selecting and tuning an algorithm for training on unseen data requires significant experimentation.
-   Robustness: If the model, cost function and learning algorithm are selected appropriately, the resulting ANN can become robust.

ANN capabilities fall within the following broad categories:

-   Function approximation, or regression analysis, including time series prediction, fitness approximation and modeling.
-   Classification, including pattern and sequence recognition, novelty detection and sequential decision making.
-   Data processing, including filtering, clustering, blind source separation and compression.
-   Robotics, including directing manipulators and prostheses.
-   Control, including computer numerical control.


Applications

Because of their ability to reproduce and model nonlinear processes, Artificial neural networks have found many applications in a wide range of disciplines.

Application areas include system identification and control (vehicle control, trajectory prediction,[242] process control, natural resource management), quantum chemistry,[243] general game playing,[244] pattern recognition (radar systems, face identification, signal classification,[245] 3D reconstruction,[246] object recognition and more), sequence recognition (gesture, speech, handwritten and printed text recognition), medical diagnosis, finance[247] (e.g. automated trading systems), data mining, visualization, machine translation, social network filtering[248] and e-mail spam filtering.

Artificial neural networks have been used to diagnose cancers, including lung cancer,[249] prostate cancer, colorectal cancer[250] and to distinguish highly invasive cancer cell lines from less invasive lines using only cell shape information.[251][252]

Artificial neural networks have been used to accelerate reliability analysis of infrastructures subject to natural disasters[253][254] and to predict foundation settlements.[255]

Artificial neural networks have also been used for building black-box models in geoscience: hydrology,[256][257] ocean modelling and coastal engineering,[258][259] and geomorphology.[260]

Artificial neural networks have been employed with some success also in cybersecurity, with the objective to discriminate between legitimate activities and malicious ones. For example, machine learning has been used for classifying android malware,[261] for identifying domains belonging to threat actors[262] and for detecting URLs posing a security risk.[263] Research is being carried out also on ANN systems designed for penetration testing,[264] for detecting botnets,[265] credit cards frauds,[266] network intrusions and, more in general, potentially infected machines.

Artificial neural networks have been proposed as a tool to simulate the properties of many-body open quantum systems.[267][268][269][270]

Types of models

Many types of models are used, defined at different levels of abstraction and modeling different aspects of neural systems. They range from models of the short-term behavior of individual neurons,[271] models of how the dynamics of neural circuitry arise from interactions between individual neurons and finally to models of how behavior can arise from abstract neural modules that represent complete subsystems. These include models of the long-term, and short-term plasticity, of neural systems and their relations to learning and memory from the individual neuron to the system level.


Theoretical properties

Computational power

The multilayer perceptron is a universal function approximator, as proven by the universal approximation theorem. However, the proof is not constructive regarding the number of neurons required, the network topology, the weights and the learning parameters.

A specific recurrent architecture with rational valued weights (as opposed to full precision real number-valued weights) has the full power of a universal Turing machine,[272] using a finite number of neurons and standard linear connections. Further, the use of irrational values for weights results in a machine with super-Turing power.[273]

Capacity

Models' "capacity" property roughly corresponds to their ability to model any given function. It is related to the amount of information that can be stored in the network and to the notion of complexity.

Convergence

Models may not consistently converge on a single solution, firstly because many local minima may exist, depending on the cost function and the model. Secondly, the optimization method used might not guarantee to converge when it begins far from any local minimum. Thirdly, for sufficiently large data or parameters, some methods become impractical. However, for CMAC neural network, a recursive least squares algorithm was introduced to train it, and this algorithm can be guaranteed to converge in one step.[274]

Generalization and statistics

Applications whose goal is to create a system that generalizes well to unseen examples, face the possibility of over-training. This arises in convoluted or over-specified systems when the capacity of the network significantly exceeds the needed free parameters. Two approaches address over-training. The first is to use cross-validation and similar techniques to check for the presence of over-training and optimally select hyperparameters to minimize the generalization error. The second is to use some form of _regularization_. This concept emerges in a probabilistic (Bayesian) framework, where regularization can be performed by selecting a larger prior probability over simpler models; but also in statistical learning theory, where the goal is to minimize over two quantities: the 'empirical risk' and the 'structural risk', which roughly corresponds to the error over the training set and the predicted error in unseen data due to overfitting.

Supervised neural networks that use a mean squared error (MSE) cost function can use formal statistical methods to determine the confidence of the trained model. The MSE on a validation set can be used as an estimate for variance. This value can then be used to calculate the confidence interval of the output of the network, assuming a normal distribution. A confidence analysis made this way is statistically valid as long as the output probability distribution stays the same and the network is not modified.

By assigning a softmax activation function, a generalization of the logistic function, on the output layer of the neural network (or a softmax component in a component-based neural network) for categorical target variables, the outputs can be interpreted as posterior probabilities. This is very useful in classification as it gives a certainty measure on classifications.

The softmax activation function is:

$$y_i=\frac{e^{x_i}}{\sum_{j=1}^c e^{x_j}}$$


Criticism

Training issues

A common criticism of neural networks, particularly in robotics, is that they require too much training for real-world operation. Potential solutions include randomly shuffling training examples, by using a numerical optimization algorithm that does not take too large steps when changing the network connections following an example and by grouping examples in so-called mini-batches. Improving the training efficiency and convergence capability has always been an ongoing research area for neural network. For example, by introducing a recursive least squares algorithm for CMAC neural network, the training process only takes one step to converge.[275]

Theoretical issues

A fundamental objection is that they do not reflect how real neurons function. Back propagation is a critical part of most artificial neural networks, although no such mechanism exists in biological neural networks.[276] How information is coded by real neurons is not known. Sensor neurons fire action potentials more frequently with sensor activation and muscle cells pull more strongly when their associated motor neurons receive action potentials more frequently.[277] Other than the case of relaying information from a sensor neuron to a motor neuron, almost nothing of the principles of how information is handled by biological neural networks is known. This is a subject of active research in neural coding.

The motivation behind artificial neural networks is not necessarily to strictly replicate neural function, but to use biological neural networks as an inspiration. A central claim of artificial neural networks is therefore that it embodies some new and powerful general principle for processing information. Unfortunately, these general principles are ill-defined. It is often claimed that they are emergent from the network itself. This allows simple statistical association (the basic function of artificial neural networks) to be described as learning or recognition. Alexander Dewdney commented that, as a result, artificial neural networks have a "something-for-nothing quality, one that imparts a peculiar aura of laziness and a distinct lack of curiosity about just how good these computing systems are. No human hand (or mind) intervenes; solutions are found as if by magic; and no one, it seems, has learned anything".[278]

Biological brains use both shallow and deep circuits as reported by brain anatomy,[279] displaying a wide variety of invariance. Weng[280] argued that the brain self-wires largely according to signal statistics and therefore, a serial cascade cannot catch all major statistical dependencies.

Hardware issues

Large and effective neural networks require considerable computing resources.[281] While the brain has hardware tailored to the task of processing signals through a graph of neurons, simulating even a simplified neuron on von Neumann architecture may compel a neural network designer to fill many millions of database rows for its connections which can consume vast amounts of memory and storage. Furthermore, the designer often needs to transmit signals through many of these connections and their associated neurons which must often be matched with enormous CPU processing power and time.

Schmidhuber notes that the resurgence of neural networks in the twenty-first century is largely attributable to advances in hardware: from 1991 to 2015, computing power, especially as delivered by GPGPUs (on GPUs), has increased around a million-fold, making the standard backpropagation algorithm feasible for training networks that are several layers deeper than before.[282] The use of accelerators such as FPGAs and GPUs can reduce training times from months to days.[283]

Neuromorphic engineering addresses the hardware difficulty directly, by constructing non-von-Neumann chips to directly implement neural networks in circuitry. Another chip optimized for neural network processing is called a Tensor Processing Unit, or TPU.[284]

Practical counterexamples to criticisms

Arguments against Dewdney's position are that neural networks have been successfully used to solve many complex and diverse tasks, ranging from autonomously flying aircraft[285] to detecting credit card fraud to mastering the game of Go.

Technology writer Roger Bridgman commented:

Although it is true that analyzing what has been learned by an artificial neural network is difficult, it is much easier to do so than to analyze what has been learned by a biological neural network. Furthermore, researchers involved in exploring learning algorithms for neural networks are gradually uncovering general principles that allow a learning machine to be successful. For example, local vs non-local learning and shallow vs deep architecture.[286]

Hybrid approaches

Advocates of hybrid models (combining neural networks and symbolic approaches), claim that such a mixture can better capture the mechanisms of the human mind.[287][288]


Types

Artificial neural networks have many variations. The simplest, static types have one or more static components, including number of units, number of layers, unit weights and topology. Dynamic types allow one or more of these to change during the learning process. The latter are much more complicated, but can shorten learning periods and produce better results. Some types allow/require learning to be "supervised" by the operator, while others operate independently. Some types operate purely in hardware, while others are purely software and run on general purpose computers.


Gallery

File:Single layer ann.svg|A single-layer feedforward artificial neural network. Arrows originating from $\scriptstyle x_2$ are omitted for clarity. There are p inputs to this network and q outputs. In this system, the value of the qth output, $\scriptstyle y_q$ would be calculated as $\scriptstyle y_q = K*(\sum(x_i*w_{iq})-b_q)$ File:Two layer ann.svg|A two-layer feedforward artificial neural network. File:Artificial neural network.svg|An artificial neural network. File:Ann dependency (graph).svg|An ANN dependency graph. File:Single-layer feedforward artificial neural network.png|A single-layer feedforward artificial neural network with 4 inputs, 6 hidden and 2 outputs. Given position state and direction outputs wheel based control values. File:Two-layer feedforward artificial neural network.png|A two-layer feedforward artificial neural network with 8 inputs, 2x8 hidden and 2 outputs. Given position state, direction and other environment values outputs thruster based control values. File:Cmac.jpg%7CParallel pipeline structure of CMAC neural network. This learning algorithm can converge in one step.


See also


References


Bibliography

-   -   -   -   PDF

-   -   -   -   -   created for National Science Foundation, Contract Number EET-8716324, and Defense Advanced Research Projects Agency (DOD), ARPA Order No. 4976 under Contract F33615-87-C-1499.

-   -   -   -   -   -   -   -   -   -   -   -


External links

-   The Neural Network Zoo – a compilation of neural network types

Category:Computational statistics Artificial_neural_networks Category:Classification algorithms Category:Computational neuroscience Category:Market research Category:Market segmentation Category:Mathematical psychology Category:Mathematical and quantitative methods (economics)

[1]

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

[13]

[14]

[15]

[16]

[17] J. Weng, N. Ahuja and T. S. Huang, "Cresceptron: a self-organizing neural network which grows adaptively," _Proc. International Joint Conference on Neural Networks_, Baltimore, Maryland, vol I, pp. 576–581, June, 1992.

[18] J. Weng, N. Ahuja and T. S. Huang, "Learning recognition and segmentation of 3-D objects from 2-D images," _Proc. 4th International Conf. Computer Vision_, Berlin, Germany, pp. 121–128, May, 1993.

[19] J. Weng, N. Ahuja and T. S. Huang, "Learning recognition and segmentation using the Cresceptron," _International Journal of Computer Vision_, vol. 25, no. 2, pp. 105–139, Nov. 1997.

[20] Dominik Scherer, Andreas C. Müller, and Sven Behnke: "Evaluation of Pooling Operations in Convolutional Architectures for Object Recognition," _In 20th International Conference Artificial Neural Networks (ICANN)_, pp. 92–101, 2010. .

[21] S. Hochreiter., "Untersuchungen zu dynamischen neuronalen Netzen," _Diploma thesis. Institut f. Informatik, Technische Univ. Munich. Advisor: J. Schmidhuber_, 1991.

[22]

[23] J. Schmidhuber., "Learning complex, extended sequences using the principle of history compression," _Neural Computation_, 4, pp. 234–242, 1992.

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32] 2012 Kurzweil AI Interview with Jürgen Schmidhuber on the eight competitions won by his Deep Learning team 2009–2012

[33]  KurzweilAI|last=|first=|date=|website=www.kurzweilai.net|access-date=2017-06-16}}

[34] Graves, Alex; and Schmidhuber, Jürgen; _Offline Handwriting Recognition with Multidimensional Recurrent Neural Networks_, in Bengio, Yoshua; Schuurmans, Dale; Lafferty, John; Williams, Chris K. I.; and Culotta, Aron (eds.), _Advances in Neural Information Processing Systems 22 (NIPS'22), 7–10 December 2009, Vancouver, BC_, Neural Information Processing Systems (NIPS) Foundation, 2009, pp. 545–552.

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51]

[52]

[53]

[54]

[55] J. Weng, "Why Have We Passed 'Neural Networks Do not Abstract Well'?," _Natural Intelligence: the INNS Magazine_, vol. 1, no.1, pp. 13–22, 2011.

[56] Z. Ji, J. Weng, and D. Prokhorov, "Where-What Network 1: Where and What Assist Each Other Through Top-down Connections," _Proc. 7th International Conference on Development and Learning (ICDL'08)_, Monterey, CA, Aug. 9–12, pp. 1–6, 2008.

[57] X. Wu, G. Guo, and J. Weng, "Skull-closed Autonomous Development: WWN-7 Dealing with Scales," _Proc. International Conference on Brain-Mind_, July 27–28, East Lansing, Michigan, pp. 1–9, 2013.

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69] Eiji Mizutani, Stuart Dreyfus, Kenichi Nishio (2000). On derivation of MLP backpropagation from the Kelley-Bryson optimal-control gradient formula and its application. Proceedings of the IEEE International Joint Conference on Neural Networks (IJCNN 2000), Como Italy, July 2000. Online

[70]

[71] Arthur E. Bryson (1961, April). A gradient method for optimizing multi-stage allocation processes. In Proceedings of the Harvard Univ. Symposium on digital computers and their applications.

[72]

[73]

[74]

[75] Seppo Linnainmaa (1970). The representation of the cumulative rounding error of an algorithm as a Taylor expansion of the local rounding errors. Master's Thesis (in Finnish), Univ. Helsinki, 6–7.

[76]

[77]

[78]

[79]

[80]

[81]

[82] Paul Werbos (1974). Beyond regression: New tools for prediction and analysis in the behavioral sciences. PhD thesis, Harvard University.

[83]

[84]

[85]

[86]

[87] Eric A. Wan (1993). "Time series prediction by using a connectionist network with internal delay lines." In _Proceedings of the Santa Fe Institute Studies in the Sciences of Complexity_, 15: p. 195. Addison-Wesley Publishing Co.

[88]

[89]

[90]

[91]

[92] ESANN. 2009

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101]

[102]

[103]

[104]

[105]

[106]

[107] Ting Qin, et al. "A learning algorithm of CMAC based on RLS." Neural Processing Letters 19.1 (2004): 49–61.

[108] Ting Qin, et al. "Continuous CMAC-QRLS and its systolic array." Neural Processing Letters 22.1 (2005): 1–16.

[109] Werbos, Paul J. (1994). _The Roots of Backpropagation_. From Ordered Derivatives to Neural Networks and Political Forecasting. New York, NY: John Wiley & Sons, Inc.

[110]

[111]

[112]

[113]

[114]

[115]

[116] LeCun _et al._, "Backpropagation Applied to Handwritten Zip Code Recognition," _Neural Computation_, 1, pp. 541–551, 1989.

[117] Yann LeCun (2016). Slides on Deep Learning Online

[118]

[119]

[120]

[121]

[122]

[123]

[124]

[125]

[126]

[127]

[128]

[129]

[130]

[131]

[132]

[133]

[134]

[135]

[136]

[137]

[138]

[139]

[140]

[141]

[142]

[143]

[144]

[145]

[146]

[147]

[148]

[149]

[150]

[151]

[152]

[153] D. Graupe, "Principles of Artificial Neural Networks.3rd Edition", World Scientific Publishers, 2013, pp. 203–274.

[154]

[155]

[156]

[157]

[158]

[159] D. Graupe, "Principles of Artificial Neural Networks.3rd Edition", World Scientific Publishers", 2013, pp. 253–274.

[160]

[161]

[162]

[163]

[164]

[165]

[166]

[167]

[168]

[169]

[170]

[171]

[172]

[173]

[174]

[175]

[176]

[177]

[178]

[179]

[180]

[181]

[182]

[183]

[184]

[185]

[186]

[187]

[188]

[189]

[190]

[191]

[192]

[193]

[194]

[195]

[196]

[197]

[198]

[199]

[200]

[201]

[202]

[203]

[204]

[205]

[206]

[207]

[208]

[209]

[210]

[211]

[212] S. Das, C.L. Giles, G.Z. Sun, "Learning Context Free Grammars: Limitations of a Recurrent Neural Network with an External Stack Memory," Proc. 14th Annual Conf. of the Cog. Sci. Soc., p. 79, 1992.

[213]

[214]

[215]

[216]

[217]

[218]

[219]

[220]

[221]

[222]

[223]

[224]  DeepMind|website=DeepMind|access-date=2016-10-19}}

[225]

[226] Salakhutdinov, Ruslan, and Geoffrey Hinton. "Semantic hashing." International Journal of Approximate Reasoning 50.7 (2009): 969–978.

[227]

[228]

[229]

[230]

[231]

[232]

[233]

[234]

[235]

[236]

[237]

[238]

[239]

[240]

[241]

[242]

[243]

[244] Silver, David, et al. "Mastering the game of Go with deep neural networks and tree search." nature 529.7587 (2016): 484.

[245]

[246] Choy, Christopher B., et al. "3d-r2n2: A unified approach for single and multi-view 3d object reconstruction." European conference on computer vision. Springer, Cham, 2016.

[247]

[248]

[249]

[250]

[251]

[252]

[253]

[254]

[255]

[256]

[257]

[258]

[259]

[260]

[261]

[262]

[263]

[264]  GitHub|archive-url=|archive-date=|dead-url=|access-date=}}

[265]

[266]

[267]

[268]

[269]

[270]

[271]

[272]

[273]

[274]

[275]

[276]

[277]

[278]

[279] D. J. Felleman and D. C. Van Essen, "Distributed hierarchical processing in the primate cerebral cortex," _Cerebral Cortex_, 1, pp. 1–47, 1991.

[280] J. Weng, "Natural and Artificial Intelligence: Introduction to Computational Brain-Mind," BMI Press, , 2012.

[281]

[282]

[283] "A Survey of FPGA-based Accelerators for Convolutional Neural Networks", NCAA, 2018

[284]

[285] NASA – Dryden Flight Research Center – News Room: News Releases: NASA NEURAL NETWORK PROJECT PASSES MILESTONE. Nasa.gov. Retrieved on 2013-11-20.

[286]

[287] Sun and Bookman (1990)

[288]