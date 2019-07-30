The MULTIPLICATIVE WEIGHTS UPDATE METHOD is an algorithmic technique most commonly used for decision making and prediction, and also widely deployed in game theory and algorithm design. The simplest use case is the problem of prediction from expert advice, in which a decision maker needs to iteratively decide on an expert whose advice to follow. The method assigns initial weights to the experts (usually identical initial weights), and updates these weights multiplicatively and iteratively according to the feedback of how well an expert performed: reducing it in case of poor performance, and increasing it otherwise. [1] It was discovered repeatedly in very diverse fields such as machine learning (AdaBoost, Winnow, Hedge), optimization (solving linear programs), theoretical computer science (devising fast algorithm for LPs and SDPs), and game theory.


Name

"Multiplicative weights" implies the iterative rule used in algorithms derived from the multiplicative weight update method.[2] It is given with different names in the different fields where it was discovered or rediscovered.


History and background

The earliest known version of this technique was in an algorithm named "fictitious play" which was proposed in game theory in the early 1950s. Grigoriadis and Khachiyan[3] applied a randomized variant of "fictitious play" to solve two-player zero-sum games efficiently using the multiplicative weights algorithm. In this case, player allocates higher weight to the actions that had a better outcome and choose his strategy relying on these weights. In machine learning, Littlestone applied the earliest form of the multiplicative weights update rule in his famous winnow algorithm, which is similar to Minsky and Papert's earlier perceptron learning algorithm. Later, he generalized the winnow algorithm to weighted majority algorithm. Freund and Schapire followed his steps and generalized the winnow algorithm in the form of hedge algorithm.

The multiplicative weights algorithm is also widely applied in computational geometry such as Clarkson's algorithm for linear programming (LP) with a bounded number of variables in linear time.[4][5] Later, Bronnimann and Goodrich employed analogous methods to find set covers for hypergraphs with small VC dimension.[6]

In operation research and on-line statistical decision making problem field, the weighted majority algorithm and its more complicated versions have been found independently.

In computer science field, some researchers have previously observed the close relationships between multiplicative update algorithms used in different contexts. Young discovered the similarities between fast LP algorithms and Raghavan's method of pessimistic estimators for derandomization of randomized rounding algorithms; Klivans and Servedio linked boosting algorithms in learning theory to proofs of Yao's XOR Lemma; Garg and Khandekar defined a common framework for convex optimization problems that contains Garg-Konemann and Plotkin-Shmoys-Tardos as subcases.[7]


General setup

A binary decision needs to be made based on n experts’ opinions to attain an associated payoff. In the first round, all experts’ opinions have the same weight. The decision maker will make the first decision based on the majority of the experts' prediction. Then, in each successive round, the decision maker will repeatedly update the weight of each expert's opinion depending on the correctness of his prior predictions. Real life examples includes predicting if it is rainy tomorrow or if the stock market will go up or go down.


Algorithm analysis

Halving algorithm[8]

Given a sequential game played between an adversary and an aggregator who is advised by N experts, the goal is for the aggregator to make as few mistakes as possible. Assume there is an expert among the N experts who always gives the correct prediction. In the halving algorithm, only the consistent experts are retained. Experts who make mistakes will be dismissed. For every decision, the aggregator decides by taking a majority vote among the remaining experts. Therefore, every time the aggregator makes a mistake, at least half of the remaining experts are dismissed. The aggregator makes at most mistakes.[9]

Weighted majority algorithm[10][11]

Unlike halving algorithm which dismisses experts who have made mistakes, weighted majority algorithm discounts their advice. Given the same "expert advice" setup, suppose we have n decisions, and we need to select one decision for each loop. In each loop, every decision incurs a cost. All costs will be revealed after making the choice. The cost is 0 if the expert is correct, and 1 otherwise. this algorithm's goal is to limit its cumulative losses to roughly the same as the best of experts. The very first algorithm that makes choice based on majority vote every iteration does not work since the majority of the experts can be wrong consistently every time. The weighted majority algorithm corrects above trivial algorithm by keeping a weight of experts instead of fixing the cost at either 1 or 0.[12] This would make fewer mistakes compared to halving algorithm.

   Initialization: 
      Fix an η ≤ 1/2. For each expert, associate the weight w_(i)¹≔1.
   For t = 1, 2,…,T
      1. Make the prediction that is the weighted majority of the experts' predictions based on the weights 𝕨_(𝟙)^(t), ..., 𝕨_(𝕟)^(t). That is, making a binary choice depending on which prediction has a higher total weight of experts advising it (breaking ties arbitrarily). 
      2. For every expert i who predicts wrongly, decrease his weight for the next round by multiplying it by a factor of (1-η):
                                                             w_(i)^(t + 1)=(1 − η)w_(i)^(t) (update rule)

If η = 0, the weight of the expert's advice will remain the same. When η increases, the weight of the expert's advice will decrease. Note that some researchers fix η = 1/2 in weighted majority algorithm.

After T steps, let m_(i)^(T) be the number of mistakes of expert i and M^(T) be the number of mistakes our algorithm has made. Then we have the following bound for every i:

                             $M^T \leq 2(1+\eta) m_i^T+ \frac{2 \ln(n)}{\eta}$.

In particular, this holds for i which is the best expert. Since the best expert will have the least m_(i)^(T), it will give the best bound on the number of mistakes made by the algorithm as a whole.

Randomized weighted majority algorithm[13][14]

Given the same setup with N experts. Consider the special situation where the proportions of experts predicting positive and negative, counting the weights, are both close to 50%. Then, there might be a tie. Following the weight update rule in weighted majority algorithm, the predictions made by the algorithm would be randomized. The algorithm calculates the probabilities of experts predicting positive or negatives, and then makes a random decision based on the computed fraction:

predict

$$f(x) = \begin{cases}1 & \text{with probability} \frac{q_1}{W}\\0 & \text{otherwise}\end{cases}$$

where

               W = ∑_(i)w_(i) = q₀ + q₁.

The number of mistakes made by the randomized weighted majority algorithm is bounded as:

                E[#mistakes of the learner] ≤ α_(β)(# mistakes of the best expert) + c_(β)ln (N)

where $\alpha_\beta= \frac{\ln(\frac{1}{\beta})}{1-\beta}$ and $c_\beta=\frac{1}{1-\beta}$.

Note that only the learning algorithm is randomized. The underlying assumption is that the examples and experts' predictions are not random. The only randomness is the randomness where the learner makes his own prediction. In this randomized algorithm, α_(β) → 1 if β → 1. Compared to weighted algorithm, this randomness halved the number of mistakes the algorithm is going to make.[15] However, it is important to note that in some research, people define η = 1/2 in weighted majority algorithm and allow 0 ≤ η ≤ 1 in randomized weighted majority algorithm.[16]


Applications

The multiplicative weights method is usually used to solve a constrained optimization problem. Let each expert be the constraint in the problem, and the events represent the points in the area of interest. The punishment of the expert corresponds to how well its corresponding constraint is satisfied on the point represented by an event.[17]

Solving zero-sum games approximately (Oracle algorithm):[18][19][20]

Suppose we were given the distribution P on experts. Let A = payoff matrix of a finite two-player zero-sum game, with n rows.

When the row player p_(r) uses plan i and the column player p_(c) uses plan j, the payoff of player p_(c) is A(i,j)≔A_(ij), assuming A(i,j) ∈ [0,1].

If player p_(r) chooses action i from a distribution P over the rows, then the expected result for player p_(c) selecting action j is A(P,j) = E_(i ∈ P)[A(i,j)].

To maximize A(P,j), player p_(c) is should choose plan j. Similarly, the expected payoff for player p_(l) is A(i,P) = E_(j ∈ P)[A(i,j)]. Choosing plan i would minimize this payoff. By John Von Neumann's Min-Max Theorem, we obtain:

                                          min_(P)max_(j)A(P,j) = max_(Q)min_(i)A(i,Q)

where P and i changes over the distributions over rows, Q and j changes over the columns.

Then, let λ^(*) denote the common value of above quantities, also named as the "value of the game". Let δ > 0 be an error parameter. To solve the zero-sum game bounded by additive error of δ,

                                                 λ^(*) − δ ≤ min_(i)A(i,q)
                                                 max_(j)A(p,j) ≤ λ^(*) + δ

So there is an algorithm solving zero-sum game up to an additive factor of δ using O(/δ²) calls to ORACLE, with an additional processing time of O(n) per call[21]

Bailey and Piliouras showed that although the time average behavior of multiplicative weights update converges to Nash equilibria in zero-sum games the day-to-day (last iterate) behavior diverges away from it.[22]

Machine learning

In machine learning, Littlestone and Warmuth generalized the winnow algorithm to the weighted majority algorithm.[23] Later, Freund and Schapire generalized it in the form of hedge algorithm.[24] AdaBoost Algorithm formulated by Yoav Freund and Robert Schapire also employed the Multiplicative Weight Update Method.[25]

Winnow algorithm

Based on current knowledge in algorithms, multiplicative weight update method was first used in Littlestone's winnow algorithm.[26] It is used in machine learning to solve a linear program.

Given m labeled examples (a₁,l₁), …, (a_(m),l_(m)) where a_(j) ∈ ℝ^(n) are feature vectors, and l_(j) ∈ {−1,1}  are their labels.

The aim is to find non-negative weights such that for all examples, the sign of the weighted combination of the features matches its labels. That is, require that l_(j)a_(j)x ≥ 0 for all j. Without loss of generality, assume the total weight is 1 so that they form a distribution. Thus, for notational convenience, redefine a_(j) to be l_(j)a_(j), the problem reduces to finding a solution to the following LP:

                     ∀j = 1, 2, …, m : a_(j)x ≥ 0,
                     1 * x = 1,
                     ∀i : x_(i) ≥ 0.

This is general form of LP.

Hedge algorithm [27]

The hedge algorithm is similar to the weighted majority algorithm. However, their exponential update rules are different.[28] It is generally used to solve the problem of binary allocation in which we need to allocate different portion of resources into N different options. The loss with every option is available at the end of every iteration. The goal is to reduce the total loss suffered for a particular allocation. The allocation for the following iteration is then revised, based on the total loss suffered in the current iteration using multiplicative update.[29]

Analysis

Assume the learning rate η > 0 and for t ∈ [T], p^(t) is picked by Hedge. Then for all experts i,

                                $\sum_{t \leq T} p^t m^t \leq \sum_{t \leq T} m_i^t +\frac{\ln(N)}{\eta}+\eta T$

INITIALIZATION: Fix an η > 0. For each expert, associate the weight w_(i)¹ ≔1 FOR t=1,2,…,T:

      1. Pick the distribution $p_i^t= \frac{w_i^t}{\Phi t}$ where Φt = ∑_(i)w_(i)^(t).
      2. Observe the cost of the decision m^(t). 
      3. Set 
                              w_(i)^(t + 1) = w_(i)^(t)exp ( − ηm_(i)^(t)).

AdaBoost algorithm

This algorithm[30] maintains a set of weights w^(t) over the training examples. On every iteration t, a distribution p^(t) is computed by normalizing these weights. This distribution is fed to the weak learner WeakLearn which generates a hypothesis h_(t) that (hopefully) has small error with respect to the distribution. Using the new hypothesis h_(t), AdaBoost generates the next weight vector w^(t + 1). The process repeats. After T such iterations, the final hypothesis h_(f) is the output. The hypothesis h_(f) combines the outputs of the T weak hypotheses using a weighted majority vote.[31]

Input: 
      Sequence of N labeled examples (x₁,y₁),…,(x_(N), y_(N))
      Distribution D over the N examples
      Weak learning algorithm "'WeakLearn"'
      Integer T specifying number of iterations
Initialize the weight vector: w_(i)¹ = D(i) for i = 1,..., N.
Do for t = 1,..., N
      1. Set $p^t=\frac{w^t}{\sum_{i=1}^{N} w_{i}^{t}}$.
      2. Call WeakLearn, providing it with the distribution p^(t); get back a hypothesis h_(t) : X→ [0,1].
      3. Calculate the error of $h_t:\epsilon_t = \sum_{i=1}^{N} p_{i}^{t}$|h_(t)(x_(i)).
      4. Set $\beta_t = \frac{\epsilon_t}{1-\epsilon_t}$.                                     
      5. Set the new weight vector to be w_(i)^(t + 1) = w_(i)^(t)β_(t)^(1 − |h_(t)(x_(i)) − y_(i)|).
Output the hypothesis:

      $f(x) = \begin{cases}1 & \text{if} \sum_{t=1}^{T} \log(1/\beta_t) h_{t}(x) \geq \frac{1}{2}\sum_{t=1}^{T} \log(1/\beta_t) \frac{q_1}{W}\\0 & \text{otherwise}\end{cases}$

Solving linear programs approximately[32]

Problem

Given a m × n matrix A and b ∈ ℝ^(n), is there a x such that Ax ≥ b?

                      ∃?x : Ax ≥ b              (1)

Assumption

Using the oracle algorithm in solving zero-sum problem, with an error parameter ϵ > 0, the output would either be a point x such that Ax ≥ b − ϵ or a proof that x does not exist, i.e., there is no solution to this linear system of inequalities.

solution

Given vector p ∈ Δ_(n), solves the following relaxed problem

                     $\exists ? x: p^{\textsf T}\!\!A x\geq p^\textsf{T}\!b$             (2)

If there exists a x satisfying (1), then x satisfies (2) for all p ∈ Δ_(n). The contrapositive of this statement is also true. Suppose if oracle returns a feasible solution for a p, the solution x it returns has bounded width max_(i)|(Ax)_(i) − b_(i)| ≤ 1. So if there is a solution to (1), then there is an algorithm that its output x satisfies the system (2) up to an additive error of 2ϵ. The algorithm makes at most $\frac{\ln(m)}{\epsilon^2}$ calls to a width-bounded oracle for the problem (2). The contrapositive stands true as well. The multiplicative updates is applied in the algorithm in this case.

Other applications

Evolutionary game theory

Multiplicative weights update is the discrete-time variant of the replicator equation (replicator dyamics), which is a commonly used model in evolutionary game theory. It converges to Nash equilibrium when applied to a congestion game.[33]

Operations research and online statistical decision-making[34]

In operations research and on-line statistical decision making problem field, the weighted majority algorithm and its more complicated versions have been found independently.

Computational geometry

The multiplicative weights algorithm is also widely applied in computational geometry[35], such as Clarkson's algorithm for linear programming (LP) with a bounded number of variables in linear time.[36][37] Later, Bronnimann and Goodrich employed analogous methods to find Set Covers for hypergraphs with small VC dimension.[38]

Gradient descent method[39]

Matrix multiplicative weights update[40]

Plotkin, Shmoys, Tardos framework for packing/covering LPs[41]

Approximating multi-commodity flow problems[42]

O (logn)- approximation for many NP-hard problems[43]

Learning theory and boosting[44]

Hard-core sets and the XOR lemma[45]

Hannan's algorithm and multiplicative weights[46]

Online convex optimization[47]


References


External links

Category:Algorithms Category:Machine learning Category:Randomized algorithms

[1]

[2]

[3]

[4] KENNETH L. CLARKSON. '' A Las Vegas algorithm for linear programming when the dimension is small.'', In Proc. 29th FOCS, pp. 452–456. IEEE Comp. Soc. Press, 1988.1 123, 152.

[5] KENNETH L. CLARKSON. _A Las Vegas algorithm for linear and integer programming when the dimension is small._, J. ACM, 42:488–499, 1995. 2 123, 152.

[6] H. BRONNIMANN AND ¨ M.T. GOODRICH. _Almost optimal set covers in finite VC-dimension._, Discrete Comput. Geom., 14:463–479, 1995. Preliminary version in 10th Ann. Symp. Comp. Geom. (SCG'94). 3 123, 152

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

[17]

[18]

[19]

[20]

[21]

[22] Bailey, James P., and Georgios Piliouras. "Multiplicative weights update in zero-sum games." Proceedings of the 2018 ACM Conference on Economics and Computation. ACM, 2018.

[23] DEAN P. FOSTER AND RAKESH VOHRA (1999). _Regret in the on-line decision problem_, p. 29. Games and Economic Behaviour

[24]

[25]

[26]

[27]

[28]

[29]

[30] Yoav, Freund. Robert, E. Schapire (1996). _TA Decision-Theoretic Generalization of On-Line Learning and an Application to Boosting*_, p. 55. journal of computer and system sciences.

[31]

[32]

[33] Kleinberg, Robert, Georgios Piliouras, and Eva Tardos. "Multiplicative updates outperform generic no-regret learning in congestion games." Proceedings of the forty-first annual ACM symposium on Theory of computing. ACM, 2009.

[34]

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