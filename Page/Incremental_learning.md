In computer science, INCREMENTAL LEARNING is a method of machine learning in which input data is continuously used to extend the existing model's knowledge i.e. to further train the model. It represents a dynamic technique of supervised learning and unsupervised learning that can be applied when training data becomes available gradually over time or its size is out of system memory limits. Algorithms that can facilitate incremental learning are known as incremental machine learning algorithms.

Many traditional machine learning algorithms inherently support incremental learning. Other algorithms can be adapted to facilitate incremental learning. Examples of incremental algorithms include decision trees (IDE4[1], ID5R[2]), decision rules[3], artificial neural networks (RBF networks[4], Learn++[5], Fuzzy ARTMAP[6], TopoART[7], and IGNG[8]) or the incremental SVM[9].

The aim of incremental learning is for the learning model to adapt to new data without forgetting its existing knowledge, it does not retrain the model. Some incremental learners have built-in some parameter or assumption that controls the relevancy of old data, while others, called stable incremental machine learning algorithms, learn representations of the training data that are not even partially forgotten over time. Fuzzy ART[10] and TopoART[11] are two examples for this second approach.

Incremental algorithms are frequently applied to data streams or big data, addressing issues in data availability and resource scarcity respectively. Stock trend prediction and user profiling are some examples of data streams where new data becomes continuously available. Applying incremental learning to big data aims to produce faster classification or forecasting times.


External links

-   Brief Introduction to Streaming data and Incremental Algorithms 1
-   Incremental learning algorithms and applications 2
-   LibTopoART: A software library for incremental learning tasks 3


References

Category:Algorithms

[1] Schlimmer, J. C., & Fisher, D. A case study of incremental concept induction. Fifth National Conference on Artificial Intelligence, 496-501. Philadelphia, 1986

[2] Utgoff, P. E., Incremental induction of decision trees. Machine Learning, 4(2): 161-186, 1989

[3] Ferrer-Troyano, Francisco, Jesus S. Aguilar-Ruiz, and Jose C. Riquelme. Incremental rule learning based on example nearness from numerical data streams. Proceedings of the 2005 ACM symposium on Applied computing. ACM, 2005

[4] Bruzzone, Lorenzo, and D. Fernàndez Prieto. An incremental-learning neural network for the classification of remote-sensing images. Pattern Recognition Letters: 1241-1248, 1999

[5] R. Polikar, L. Udpa, S. Udpa, V. Honavar. Learn++: An incremental learning algorithm for supervised neural networks. IEEE Transactions on Systems, Man, and Cybernetics. Rowan University USA, 2001.

[6] G. Carpenter, S. Grossberg, N. Markuzon, J. Reynolds, D. Rosen. Fuzzy ARTMAP: a neural network architecture for incremental supervised learning of analog multidimensional maps. IEEE transactions on neural networks, 1992

[7] Marko Tscherepanow, Marco Kortkamp, and Marc Kammer. A Hierarchical ART Network for the Stable Incremental Learning of Topological Structures and Associations from Noisy Data. Neural Networks, 24(8): 906-916, 2011

[8] Jean-Charles Lamirel, Zied Boulila, Maha Ghribi, and Pascal Cuxac. A New Incremental Growing Neural Gas Algorithm Based on Clusters Labeling Maximization: Application to Clustering of Heterogeneous Textual Data. IEA/AIE 2010: Trends in Applied Intelligent Systems, 139-148, 2010

[9] Diehl, Christopher P., and Gert Cauwenberghs. SVM incremental learning, adaptation and optimization. Neural Networks, 2003. Proceedings of the International Joint Conference on. Vol. 4. IEEE, 2003.

[10] Carpenter, G.A., Grossberg, S., & Rosen, D.B., Fuzzy ART: Fast stable learning and categorization of analog patterns by an adaptive resonance system, Neural Networks, 4(6): 759-771, 1991

[11]