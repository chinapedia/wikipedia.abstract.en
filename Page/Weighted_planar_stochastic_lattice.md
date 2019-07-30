Physicists often use various lattices to apply their favorite models in them. For instance, the most favorite lattice is perhaps the square lattice. There are 14 Bravais space lattice where every cell has exactly the same number of nearest, next nearest, nearest of next nearest etc neighbors and hence they are called regular lattice. Often physicists and mathematicians study phenomena which require disordered lattice where each cell do not have exactly the same number of neighbors rather the number of neighbors can vary wildly. For instance, if one wants to study the spread of disease, viruses, rumors etc then the last thing one would look for is the square lattice. In such cases a disordered lattice is necessary. One way of constructing a disordered lattice is by doing the following.

Starting with a square, say of unit area, and dividing randomly at each step only one block, after picking it preferentially with respect to ares, into four smaller blocks creates WEIGHTED PLANAR STOCHASTIC LATTICE (WPSL). Essentially it is a disordered planar lattice as its block size and their coordination number are random.


Description

In applied mathematics, a WEIGHTED PLANAR STOCHASTIC LATTICE (WPSL) is a structure that has properties in common with those of lattices and those of graphs. In general, space-filling planar cellular structures can be useful in a wide variety of seemingly disparate physical and biological systems. Examples include grain in polycrystalline structures, cell texture and tissues in biology, acicular texture in martensite growth, tessellated pavement on ocean shores, soap froths and agricultural land division according to ownership etc.[1][2][3] The question of how these structures appear and the understanding of their topological and geometrical properties have always been an interesting proposition among scientists in general and physicists in particular. Several models prescribe how to generate cellular structures. Often these structures can mimic directly the structures found in nature and they are able to capture the essential properties that we find in natural structures. In general, cellular structures appear through random tessellation, tiling, or subdivision of a plane into contiguous and non-overlapping cells. For instance, Voronoi diagram and Apollonian packing are formed by partitioning or tiling of a plane into contiguous and non-overlapping convex polygons and disks respectively.[4][5]

Regular planar lattices like square lattices, triangular lattices, honeycomb lattices, etc., are the simplest example of the cellular structure in which every cell has exactly the same size and the same coordination number. The planar Voronoi diagram, on the other hand, has neither a fixed cell size nor a fixed coordination number. Its coordination number distribution is rather Poissonian in nature.[6] That is, the distribution is peaked about the mean where it is almost impossible to find cells which have significantly higher or fewer coordination number than the mean. Recently, Hassan _et al_ proposed a lattice, namely the weighted planar stochastic lattice. For instance, unlike a network or a graph, it has properties of lattices as its sites are spatially embedded. On the other hand, unlike lattices, its dual (obtained by considering the center of each block of the lattice as a node and the common border between blocks as links) display the property of networks as its degree distribution follows a power law. Besides, unlike regular lattices, the sizes of its cells are not equal; rather, the distribution of the area size of its blocks obeys dynamic scaling,[7] whose coordination number distribution follows a power-law.[8][9]

Snapshot_of_weighted_stochastic_lattice.jpg


Construction of WPSLs

The construction process of the WPSL can be described as follows. It starts with a square of unit area which we regard as an initiator. The generator then divides the initiator, in the first step, randomly with uniform probability into four smaller blocks. In the second step and thereafter, the generator is applied to only one of the blocks. The question is: How do we pick that block when there is more than one block? The most generic choice would be to pick preferentially according to their areas so that the higher the area the higher the probability to be picked. For instance, in step one, the generator divides the initiator randomly into four smaller blocks. Let us label their areas starting from the top left corner and moving clockwise as a₁, a₂, a₃ and a₄. But of course the way we label is totally arbitrary and will bear no consequence to the final results of any observable quantities. Note that a_(i) is the area of the ith block which can be well regarded as the probability of picking the ith block. These probabilities are naturally normalized ∑_(i)a_(i) = 1 since we choose the area of the initiator equal to one. In step two, we pick one of the four blocks preferentially with respect to their areas. Consider that we pick the block 3 and apply the generator onto it to divide it randomly into four smaller blocks. Thus the label 3 is now redundant and hence we recycle it to label the top left corner while the rest of three new blocks are labelled a₅, a₆ and a₇ in a clockwise fashion. In general, in the jth step, we pick one out of 3j − 2 blocks preferentially with respect to area and divide randomly into four blocks. The detailed algorithm can be found in Dayeen and Hassan[10] and Hassan, Hassan, and Pavel.[11]

This process of lattice generation can also be described as follows. Consider that the substrate is a square of unit area and at each time step a seed is nucleated from which two orthogonal partitioning lines parallel to the sides of the substrate are grown until intercepted by existing lines. It results in partitioning the square into ever smaller mutually exclusive rectangular blocks. Note that the higher the area of a block, the higher is the probability that the seed will be nucleated in it to divide that into four smaller blocks since seeds are sown at random on the substrate. It can also describes kinetics of fragmentation of two-dimensional objects.[12][13]

Log_aC_vs_a_1_copy.jpg

Distribution_WPSL.jpg


Properties of WPSLs

-   The dynamics of the growth of this lattice is governed by infinitely many conservation laws, one of which is the trivial conservation of total area.
-   Each of the non-trivial conservation laws can be used as a multifractal measure and hence it is also a multi-multifractal (multifractal system).
-   The area size distribution function of its blocks obeys dynamic scaling.
-   It can be mapped as a network if we consider the center of each block as a node and the common border between block as the link between the center of the corresponding nodes. The degree distribution of the resulting network exhibits power-law (scale-free network). In 1999 Barabasi and Albert argued that growth and preferential attachment (PA) rule are the two basic ingredients behind power-law degree distribution. In the case of WPSL, presence of one of the ingredients is obvious. What about the PA rule. A closer look at the growth process of the WPSL suggest that a block gain new neighbor only if one of its neighbor is picked and divided. Thus the higher the number of neighbors a block has, the higher is the chances that it will gain more neighbors. In fact, the (Mediation-driven attachment model) embodies exactly this idea. In this model too PA rule is present but in disguise!
-   It exhibits multiscaling.

Before 2000 epidemic models, for instance, were studying by applying them on regular lattices like square lattice assuming that everyone can infect everyone else in the same way. The emergence of a network-based framework has brought a fundamental change, offering a much much better pragmatic skeleton than any time before. Today epidemic models is one of the most active applications of network science, being used to foresee the spread of influenza or to contain Ebola. The WPSL can be a good candidate for applying epidemic like models since it has the properties of graph or network and the properties of traditional lattice as well.


References

Category:Applied mathematics Category:Stochastic models Category:Network theory Category:Graph theory

[1] M. Rao, S. Sengupta, and H. K. Sahu Phys. Rev. Lett. {\bf 75}, 2164 (1995).

[2] A. Okabe, B. Boots, K. Sugihara and S. N. Chiu, {\it Spatial Tessellations - Concepts and Applications of Voronoi Diagrams} (Chicester: Wiley, 2000).

[3] E. Ben-Naim and P. L. Krapivsky, Phys. Rev. Lett. 76, 3234 (1996).

[4] A. Okabe, B. Boots, K. Sugihara, and S. N. Chiu, {\it Spatial Tessellations - Concepts and Applications of Voronoi Diagrams} (Chicester: Wiley, 2000).

[5] G. W. Delaney, S. Hutzler and T. Aste, Phys. Rev. Lett. {\bf 101} 120602 (2008).

[6] M. M. de Oliveira, S. G. Alves, S. C. Ferreira, and R. Dickman, "Contact process on a Voronoi triangulation", Phys. Rev. E 78 031133 (2008)

[7] F. R. Dayeen and M. K. Hassan “Multi-multifractality, dynamic scaling and neighbourhood statistics in weighted planar stochastic lattice” Chaos, Solitons & Fractals 91 228 (2016)

[8] M. K. Hassan, M. Z. Hassan and N. I. Pavel, “Scale-free network topology and multifractality in a weighted planar stochastic lattice” New Journal of Physics 12 093045 ( 2010) http://doi:10.1088/1367-2630/12/9/093045

[9] M. K. Hassan, M. Z. Hassan and N. I. Pavel, Scale-free coordination number disorder and multifractal size disorder in weighted planar stochastic lattice, J. Phys: Conf. Ser, 297 012010 (2011)

[10] F. R. Dayeen and M. K. Hassan “Multi-multifractality, dynamic scaling and neighbourhood statistics in weighted planar stochastic lattice” Chaos, Solitons & Fractals 91 228 (2016)

[11] M. K. Hassan, M. Z. Hassan and N. I. Pavel, Scale-free coordination number disorder and multifractal size disorder in weighted planar stochastic lattice, J. Phys: Conf. Ser, 297 012010 (2011).

[12] P. L. Krapivsky, E. Ben-Naim, "Scaling and multiscaling in models of fragmentation", Phys. Rev. E 50 3502 (1994)

[13] P. L. Krapivsky, S. Redner and E. Ben_naim, _A kinetic View of Statistical Physics_ (Cambridge University Press, New York, 2010)