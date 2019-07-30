
History

The Fly Algorithm is a type of cooperative coevolution based on the Parisian approach.[1] The Fly Algorithm has first been developed in 1999 in the scope of the application of Evolutionary algorithms to computer stereo vision.[2][3] Unlike the classical image-based approach to stereovision, which extracts image primitives then matches them in order to obtain 3-D information, the Fly Agorithm is based on the direct exploration of the 3-D space of the scene. A fly is defined as a 3-D point described by its coordinates (_x_, _y_, _z_). Once a random population of flies has been created in a search space corresponding to the field of view of the cameras, its evolution (based on the Evolutionary Strategy paradigm) used a fitness function that evaluates how likely the fly is lying on the visible surface of an object, based on the consistency of its image projections. To this end, the fitness function uses the grey levels, colours and/or textures of the calculated fly's projections.

The first application field of the Fly Algorithm has been stereovision.[4][5][6][7] While classical `image priority' approaches use matching features from the stereo images in order to build a 3-D model, the Fly Algorithm directly explores the 3-D space and uses image data to evaluate the validity of 3-D hypotheses. A variant called the "Dynamic Flies" defines the fly as a 6-uple (_x_, _y_, _z_, _x’_, _y’_, _z’_) involving the fly's velocity.[8][9] The velocity components are not explicitly taken into account in the fitness calculation but are used in the flies' positions updating and are subject to similar genetic operators (mutation, crossover).

The application of Flies to obstacle avoidance in vehicles[10] exploits the fact that the population of flies is a time compliant, quasi-continuously evolving representation of the scene to directly generate vehicle control signals from the flies. The use of the Fly Algorithm is not strictly restricted to stereo images, as other sensors may be added (e.g. acoustic proximity sensors, etc.) as additional terms to the fitness function being optimised. Odometry information can also be used to speed up the updating of flies' positions, and conversely the flies positions can be used to provide localisation and mapping information.[11]

Another application field of the Fly Algorithm is reconstruction for emission Tomography in nuclear medicine. The Fly Algorithm has been successfully applied in single-photon emission computed tomography[12] and positron emission tomography[13] .[14] Here, each fly is considered a photon emitter and its fitness is based on the conformity of the simulated illumination of the sensors with the actual pattern observed on the sensors. Within this application, the fitness function has been re-defined to use the new concept of 'marginal evaluation'. Here, the fitness of one individual is calculated as its (positive or negative) contribution to the quality of the global population. It is based on the leave-one-out cross-validation principle. A _global fitness function_ evaluates the quality of the population as a whole; only then the fitness of an individual (a fly) is calculated as the difference between the global fitness values of the population with and without the particular fly whose _individual fitness function_ has to be evaluated.[15][16] In [17] the fitness of each fly is considered as a `level of confidence'. It is used during the voxelisation process to tweak the fly's individual footprint using implicit modelling (such as metaballs). It produces smooth results that are more accurate.

More recently it has been used in digital art to generate mosaic-like images or spray paint.[18] Examples of images can be found on YouTube


Parisian Evolution

Here, the population of individuals is considered as a _society_ where the individuals collaborate toward a common goal. This is implemented using an evolutionary algorithm that includes all the common genetic operators (e.g. mutation, cross-over, selection). The main difference is in the fitness function. Here two levels of fitness function are used:

-   A local fitness function to assess the performance of a given individual (usually used during the selection process).
-   A global fitness function to assess the performance of the whole population. Maximising (or minimising depending on the problem considered) this global fitness is the goal of the population.

In addition, a diversity mechanism is required to avoid individuals gathering in only a few areas of the search space. Another difference is in the extraction of the problem solution once the evolutionary loop terminates. In classical evolutionary approaches, the best individual corresponds to the solution and the rest of the population is discarded. Here, all the individuals (or individuals of a sub-group of the population) are collated to build the problem solution. The way the fitness functions are constructed and the way the solution extraction is made are of course problem-dependent.

Examples of Parisian Evolution applications include:

-   The Fly algorithm.
-   Text-mining.
-   Hand gesture recognition.
-   Modelling complex interactions in industrial agrifood process.
-   Positron Emission Tomography reconstruction.


Disambiguation

Parisian approach _vs_ cooperative coevolution

Cooperative coevolution is a broad class of evolutionary algorithms where a complex problem is solved by decomposing it into subcomponents that are solved independently. The Parisian approach shares many similarities with the cooperative coevolutionary algorithm. The Parisian approach makes use of a single-population whereas multi-species may be used in cooperative coevolutionary algorithm. Similar internal evolutionary engines are considered in classical evolutionary algorithm, cooperative coevolutionary algorithm and Parisian evolution. The difference between cooperative coevolutionary algorithm and Parisian evolution resides in the population's semantics. Cooperative coevolutionary algorithm divides a big problem into sub-problems (groups of individuals) and solves them separately toward the big problem.[19] There is no interaction/breeding between individuals of the different sub-populations, only with individuals of the same sub-population. However, Parisian evolutionary algorithms solve a whole problem as a big component. All population's individuals cooperate together to drive the whole population toward attractive areas of the search space.

Fly Algorithm _vs_ particle swarm optimisation

Cooperative coevolution and particle swarm optimisation (PSO) share many similarities. PSO is inspired by the social behaviour of bird flocking or fish schooling.[20][21] It was initially introduced as a tool for realistic animation in computer graphics. It uses complex individuals that interact with each other in order to build visually realistic collective behaviours through adjusting the individuals' behavioural rules (which may use random generators). In mathematical optimisation, every particle of the swarm somehow follows its own random path biased toward the best particle of the swarm. In the Fly Algorithm, the flies aim at building spatial representations of a scene from actual sensor data; flies do not communicate or explicitly cooperate, and do not use any behavioural model.

Both algorithms are search methods that start with a set of random solutions, which are iteratively corrected toward a global optimum. However, the solution of the optimisation problem in the Fly Algorithm is the population (or a subset of the population): The flies implicitly collaborate to build the solution. In PSO the solution is a single particle, the one with the best fitness. Another main difference between the Fly Algorithm and with PSO is that the Fly Algorithm is not based on any behavioural model but only builds a geometrical representation.


Applications of the Fly Algorithnm

-   Computer stereo vision [22][23][24][25]
-   Obstacle avoidance [26][27][28]
-   Simultaneous localization and mapping (SLAM) [29]
-   Single-photon emission computed tomography (SPECT) reconstruction [30]
-   Positron emission tomography (PET) reconstruction [31][32][33][34][35][36]
-   Digital art [37][38]


Example: Tomography reconstruction

Tomography reconstruction is an inverse problem that is often ill-posed due to missing data and/or noise. The answer to the inverse problem is not unique, and in case of extreme noise level it may not even exist. The input data of a reconstruction algorithm may be given as the Radon transform or sinogram (Y) of the data to reconstruct (f). f is unknown; Y is known. The data acquisition in tomography can be modelled as:

Y = P[f] + ϵ

where P is the system matrix or projection operator and ϵ corresponds to some Poisson noise. In this case the reconstruction corresponds to the inversion of the Radon transform:

f = P^( − 1)[Y]

Note that P^( − 1) can account for noise, acquisition geometry, etc. The Fly Algorithm is an example of iterative reconstruction. Iterative methods in tomographic reconstruction are relatively easy to model:

$\hat{f} = \operatorname{arg\,min} || Y - \hat{Y}||^2_2$

where f̂ is an estimate of f, that minimises an error metrics (here [[Norm_(mathematics)|\overset{j<H}{\underset{j=0}{\sum}}|input(x,y) - P[F](x,y)|

where input is the input image, x and y are the pixel coordinates along the horizontal and vertical axis respectively, W and H are the image width and height in number of pixels respectively, F is the fly population, and P is a projection operator that creates an image from flies. This projection operator P can take many forms. In her work, Z. Ali Aboodd [39] uses OpenGL to generate different effects (e.g. mosaics, or spray paint). For speeding up the evaluation of the fitness functions, OpenCL is used too. The algorithm starts with a population F that is randomly generated (see Line 3 in the algorithm above). F is then assessed using the global fitness to compute $G_{fitness}(F) = \overset{x<W}{\underset{y=0}{\sum}}\overset{j<H}{\underset{j=0}{\sum}}|input(x,y) - P[F](x,y)|$ (see Line 10). G_(fitness) is an error metrics, it has to be minimised.


See also

-   Mathematical optimization
-   Metaheuristic
-   Search algorithm
-   Stochastic optimization
-   Evolutionary computation
-   Evolutionary algorithm
-   Genetic algorithm
-   Mutation (genetic algorithm)
-   Crossover (genetic algorithm)
-   Selection (genetic algorithm)


References

Category:Optimization algorithms and methods Category:Genetic algorithms Category:Evolutionary algorithms Category:Heuristics Category:Nature-inspired metaheuristics Category:Evolutionary computation

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

[17] >

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]