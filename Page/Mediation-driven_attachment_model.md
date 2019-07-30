In the scale-free network theory (mathematical theory of networks or graph theory), a MEDIATION-DRIVEN ATTACHMENT (MDA) MODEL appears to embody a preferential attachment rule tacitly rather than explicitly. According to MDA rule, a new node first picks a node from the existing network at random and connect itself not with that but with one of the neighbors also picked at random.

Barabasi and Albert in 1999 noted through their seminal paper [1] noted that (i) most natural and man-made networks are not static, rather they grow with time and (ii) new nodes do not connect with an already connected one randomly rather preferentially with respect to their degrees. The later mechanism is called preferential attachment (PA) rule which embodies the rich get richer phenomena in economics. In their first model, known as the Barabási–Albert model, Barabási and Albert (BA model) choose

    $\Pi(i) = \frac{k_i}{\sum_{j=1} k_j}$

where, Π(i) is the probability that the new node picks a node i from the labelled nodes of the existing network. It directly embodies the rich get richer mechanism.

Recently, Hassan _et al._ proposed a mediation-driven attachment model which appears to embody the PA rule but not directly rather in disguise.[2] In the MDA model, an incoming node choose an existing node to connect by first picking one of the existing nodes at random which is regarded as mediator. The new node then connect with one of the neighbors of the mediator which is also picked at random. Now the question is: What is the probability Π(i) that an already existing node i is finally picked to connect it with the new node? Say, the node i has degree k_(i) and hence it has k_(i) neighbors. Consider that the neighbors of i are labeled 1, 2, …, k_(i) which have degrees k₁, k₂, …, k_(k_(i)) respectively. One can reach the node i from each of these k_(i) nodes with probabilities inverse of their respective degrees, and each of the k_(i) nodes are likely to be picked at random with probability 1/N. Thus the probability Π(i) of the MDA model is:

$$\Pi(i)= \frac 1 N \left[ \frac 1 {k_1}+ \frac 1 {k_2} + \cdots + \frac 1 {k_{k_i}} \right] =\frac{\sum_{j=1}^{k_i} \frac 1 {k_j}} N.$$
It can be re-written as

    $\Pi(i) = \frac{k_i}N \cdot \frac{\sum_{j=1}^{k_i} \frac 1 {k_j}}{k_i},$

where the factor $\frac{\sum_{j=1}^{k_i}{\frac{1}{k_j}}}{k_i}$ is the inverse of the harmonic mean (IHM) of degrees of the k_(i) neighbors of the node i. Extensive numerical simulation suggest that for small m the IHM value of each node fluctuate so wildly that the mean of the IHM values over the entire network bears no meaning. However, for large m (specially m approximately greater than 14) the distribution of IHM value of the entire network become left skewed Gaussian type and mean starts to have a meaning which becomes a constant value in the large m limit. In this limit one finds that Π(i) ∝ k_(i) which is exactly the PA rule. It implies that the higher the links (degree) a node has, the higher its chance of gaining more links since they can be reached in a larger number of ways through mediators which essentially embodies the intuitive idea of rich get richer mechanism. Therefore, the MDA network can be seen to follow the PA rule but in disguise. Moreover, for small m the MFA is no longer valid rather the attachment probability Π(i) becomes super-preferential in character.

The idea of MDA rule can be found in the growth process of the weighted planar stochastic lattice (WPSL). An existing node (the center of each block of the WPSL is regarded as nodes and the common border between blocks as the links between the corresponding nodes) during the process gain links only if one of its neighbor is picked not itself. It implies that the higher the links (or degree) a node has, the higher its chance of gaining more links since they can be reached in a larger number of ways. It essentially embodies the intuitive idea of PA rule. Therefore, the dual of the WPSL is a network which can be seen to follow preferential attachment rule but in disguise. Indeed, its degree distribution is found to exhibit power-law as underlined by Barabasi and Albert as one of the essential ingredients.[3][4]

Mediation-driven_attachment_network_of_size_256_nodes.pdf

Degree distribution: The two factors that the mean of the IHM is meaningful and it is independent of N implies that one can apply the mean-field approximation (MFA). That is, within this approximation one can replace the true IHM value β/m of each node by their mean, where the factor m that the number of edges the new nodes come with is introduced for latter convenience. The rate equation to solve then becomes exactly like that of the BA model and hence the network that emerges following MDA rule is also scale-free in nature. The only difference is that the exponent $\gamma={{1}\over{\beta(m)}}+1$ depends on m where as in the BA model γ = 3 independent of m.

Deg_dist_gm-page-0.jpg


Leadership persistence probability

In the growing network not all nodes are equally important. The extent of their importance is measured by the value of their degree k. Nodes which are linked to an unusually large number of other nodes, i.e. nodes with exceptionally high k value, are known as hubs. They are special because their existence make the mean distance, measured in units of the number of links, between nodes incredibly small thereby playing the key role in spreading rumors, opinions, diseases, computer viruses etc.[5] It is, therefore, important to know the properties of the largest hub, which we regard as the leader. Like in society, the leadership in a growing network is not permanent. That is, once a node becomes the leader, it does not mean that it remains the leader _ad infinitum_. An interesting question is: how long does the leader retain this leadership property as the network evolves? To find an answer to this question, we define the leadership persistence probability F(τ) that aleader retains its leadership for at least up to time τ. Persistence probability has been of interest in many different systems ranging from coarsening dynamics to fluctuating interfaces or polymer chains.

Persistence-page-0.jpg

The basic idea of the MDA rule is, however not completely new as either this or models similar to this can be found in a few earlier works, albeit their approach, ensuing analysis and their results are different from ours. For instance, Saramaki and Kaski presented a random-walk based model.[6] Another model proposed by Boccaletti _et al._ may appear similar to ours, but it markedly differs on closer look.[7] Recently, Yang {\it et al.} too gave a form for Π(i) and resorted to mean-field approximation.[8] However, the nature of their expressions are significantly different from the one studied by Hassan _et al._. Yet another closely related model is the Growing Network with Redirection (GNR) model presented by Gabel, Krapivsky and Redner where at each time step a new node either attaches to a randomly chosen target node with probability 1 − r, or to the parent of the target with probability r = 1.[9] The GNR model with r = 1 may appear similar to the MDA model. However, it should be noted that unlike the GNR model, the MDA model is for undirected networks, and that the new link can connect with any neighbor of the mediator-parent or not. One more difference is that, in the MDA model new node may join the existing network with m edges and in the GNR model it is considered m = 1 case only.


References

Category:Network theory Category:Graph theory

[1] A. -L. Barab\'{a}si and R. Albert, Science 286 509 (1999)

[2] M. K. Hassan, Liana Islam and Syed Arefinul Haque, Degree distribution, rank-size distribution, and leadership persistence in mediation-driven attachment networks Physica A 469 23 (2017) https://dx.doi.org/10.1016/j.physa.2016.11.001

[3] M. K. Hassan, M. Z. Hassan and N. I. Pavel, “Scale-free network topology and multifractality in a weighted planar stochastic lattice” New Journal of Physics 12 093045 ( 2010) http://doi:10.1088/1367-2630/12/9/093045

[4] M. K. Hassan, M. Z. Hassan and N. I. Pavel, Scale-free coordination number disorder and multifractal size disorder in weighted planar stochastic lattice, J. Phys: Conf. Ser, 297 012010 (2011)

[5] R. Pastor-Satorras, A. Vespignani., Phys. Rev. Lett. 86 3200(2001).

[6] Saramaki and K. Kaski, Physica A 341, 80 (2004)

[7] S. Boccaletti, D.-U. Hwang and V. Latora, I. J. Bifurcation and Chaos 17 2447 (2007)

[8] X.-H. Yang, S. -L. Lou, G. Chen, S.-Y. Chen, W. Huang, Physica A 392 3531 (2013).

[9] P. L. Krapivsky and S. Redner, Phys. Rev. E 63, 066123 (2001)