OPENLB is an object-oriented implementation of the lattice Boltzmann methods (LBM). It is the first implementation of a generic platform for LBM programming, which is shared with the open source community (GPLv2).[1] The code is written in C++ and is used by application programmers as well as developers, with the ability to implement custom models[2] OpenLB supports complex data structures that allow simulations in complex geometries and parallel execution using MPI and OpenMP on high-performance computers. The source code uses the concepts of interfaces and templates, so that efficient, direct and intuitive implementations of the LBM become possible.[3] The efficiency and scalability has been checked and proved by code reviews.[4] A user manual and a source code documentation by DoxyGen are available on the project page.


Functions

_OpenLB_ is being constantly developed. By now the following features are implemented:

-   Computational fluid dynamics in complex geometry[5]
-   Automatic generation of a grid[6]
-   Turbulent flow[7]
-   Multi-component flow[8]
-   Thermal flow[9]
-   Light radiation[10]
-   Topologie optimizing[11]
-   Particle flow (Euler–Euler and Euler–Lagrange method)[12]


Automated grid generation

Automated grid generation[13] is one of the great advantages of _OpenLB_ over other CFD software packages. The main advantages are listed below:

-   Use of geometries in the STL file format or geometrically primitive forms (e.g. ball, cylinder, cone) and their union, intersection and difference
-   Very fast voxelization: 600³ ~ 1 minute
-   Handling non-watertight surfaces
-   Memory-friendly using octrees
-   Load distribution for parallel execution with MPI and OpenMP.

The automatic grid generation can assume both an STL file as well as primitive geometries. For the geometry, a uniform and rectangular grid is created which encloses the entire space of the geometry. The superfluous grid cells are then removed and the remaining cuboids are shrunk to fit the given geometry. Finally, the grid is distributed to different threads or processors for the parallel execution of the simulation. The boundary conditions and start values can be set using material numbers.


Literature

-   Krause, Mathias J. and Latt, Jonas and Heuveline, Vincent. "Towards a hybrid parallelization of lattice Boltzmann methods." _Computers & Mathematics with Applications_ 58.5 (2009): 1071–1080.
-   Heuveline, Vincent, and Mathias J. Krause. "OpenLB: towards an efficient parallel open source library for lattice Boltzmann fluid flow simulations." _International Workshop on State-of-the-Art in Scientific and Parallel Computing_. PARA. Vol. 9. 2010.
-   Krause, Mathias J., Thomas Gengenbach, and Vincent Heuveline. "Hybrid parallel simulations of fluid flows in complex geometries: Application to the human lungs." _European Conference on Parallel Processing_. Springer Berlin Heidelberg, 2010.
-   Krause, Mathias J. "Fluid flow simulation and optimisation with lattice Boltzmann methods on high performance computers: application to the human respiratory system." Karlsruhe Institute of Technology, KIT (2010).
-   Trunk, Robin, et al. "Inertial dilute particulate fluid flow simulations with an Euler–Euler lattice Boltzmann method." _Journal of Computational Science_ (2016).
-   Mink, Albert, et al. "A 3D Lattice Boltzmann method for light simulation in participating media." _Journal of Computational Science_ (2016).


Awards

-   Winner Mimics Innovation Award (2011)[14]
-   Honorary certificate in the Group Humanitarian Impact, "Itanium® Solutions Alliance Innovation Awards" (2009)[15]
-   Finalist in the Group Humanitarian Impact Innovation, "Itanium® Solutions Alliance Innovation Awards" (2007)


References


External links

-   Official website
-   Dynamic Cross Flow Filtration with OpenLB (YouTube Video)
-   OpenLB Trailer (YouTube Video)

Category:C++ software Category:Computational fluid dynamics Category:Computer-aided engineering software for Linux Category:Continuum mechanics Category:Free science software Category:Free software programmed in C++ Category:Open Source computer aided engineering applications Category:Scientific simulation software

[1] Heuveline, Vincent, and Mathias J. Krause. "OpenLB: towards an efficient parallel open source library for lattice Boltzmann fluid flow simulations." International Workshop on State-of-the-Art in Scientific and Parallel Computing. PARA. Vol. 9. 2010.

[2]  OpenLB – Open Source Lattice Boltzmann Code|url=http://www.openlb.net/welcome%7Cwebsite=openlb.net%7Caccessdate=28 February 2017}}

[3]

[4]

[5] Krause, Mathias J., Thomas Gengenbach, and Vincent Heuveline. "Hybrid parallel simulations of fluid flows in complex geometries: Application to the human lungs." European Conference on Parallel Processing. Springer Berlin Heidelberg, 2010.

[6]

[7] Nathen, Patrick, et al. "An extension of the Lattice Boltzmann Method for simulating turbulent flows around rotating geometries of arbitrary shape." 21st AIAA Computational Fluid Dynamics Conference. 2013.

[8]  OpenLB – Open Source Lattice Boltzmann Code|url=http://www.openlb.net/bifurcation%7Cwebsite=optilb.org%7Caccessdate=28 February 2017}}

[9]  OpenLB – Open Source Lattice Boltzmann Code|url=http://optilb.org/openlb/rayleigh-benard%7Cwebsite=optilb.org%7Caccessdate=28 February 2017}}

[10] Mink, Albert, et al. "A 3D Lattice Boltzmann method for light stimulation in participating media." Journal of Computational Science (2016).

[11] Krause, Mathias J. "Fluid flow simulation and optimisation with lattice Boltzmann methods on high performance computers: application to the human respiratory system." Karlsruhe Institute of Technology, KIT (2010).

[12] Trunk, Robin, et al. "Inertial dilute particulate fluid flow simulations with an Euler–Euler lattice Boltzmann method." Journal of Computational Science (2016).

[13]

[14]

[15]