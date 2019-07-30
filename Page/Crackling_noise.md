Fire_Ring.jpg CRACKLING NOISE arises when a system is subject to an external force and it responds via events that appear very similar at many different scales. In a classical system there are usually two states, on and off. However, sometimes a state can exist in between. There are three main categories this noise can be sorted into: the first is _popping_ where events at very similar magnitude occur continuously and randomly, e.g. popcorn; the second is _snapping_ where there is little change in the system until a critical threshold is surpassed, at which point the whole system flips from one state to another, i.e. snapping a pencil; the third is _crackling_ which is a combination of popping and snapping, where there are some small and some large events with a relation law predicting their occurrences, referred to as universality.[1] Crackling can be observed in many natural phenomena, e.g. crumpling paper,[2] fire, occurrences of earthquakes and the magnetisation of magnets.

Some of these systems are reversible, such as demagnetisation (by heating a magnet to its Curie temperature),[3] while others are irreversible, such as an avalanche (where the snow can only move down a mountain), but many systems have a positive bias causing it to eventually move from one state to another, such as gravity or another external force.


Theory

Barkhausen noise

Barkhausen_jumps.svg Research into the study of small perturbations within a large domains began in the late 1910s when Heinrich Barkhausen investigated how the domains, or dipoles, within a ferromagnetic material changed under the influence of an external electric field. When demagnetised, a magnet’s dipoles are pointing in random directions hence the net magnetic force from all the dipoles will be zero. By applying an external electric field by coiling an iron bar with wire and passing a current through a force perpendicular to the coil is produced (Fleming’s right hand rule for a coil), this causes the dipoles within the magnet to align to the external field.

Contrary to what was thought at the time that these domains flip continuously one by one, Barkhausen found that clusters of domains flipped in small discrete steps.[4] By coiling a secondary coil around the bar connected to a speaker or detector, when a cluster of domains change alignment a change in flux occurs, this disrupts the current in the secondary coil and hence causes a signal output. When played out loud, this is referred to as Barkhausen noise, the magnetisation of the magnet increases in discrete steps as a function of the flux density.[5]

Gutenberg–Richter law

Further research into crackling noise was done in the late 1940s by Charles Francis Richter and Beno Gutenberg who examined earthquakes analytically. Before the invention of the well-known Richter scale, the Mercalli intensity scale was used; this is a subjective measurement of how damaging an earthquake was to property, i.e. II would be small vibrations and objects moving, while XII would be wide spread destruction of all buildings. The Richter scale is a logarithmic scale which measures the energy and amplitude of vibrations dissipated from the epicentre of the earthquake, i.e. a 7.0 earthquake is 10 times more powerful than a 6.0 earthquake. Together with Gutenberg, they went on to discover the Gutenberg–Richter law which is a probability distribution relationship between the magnitude of an earthquake and its probability of occurrence. It states that small earthquakes happen much more frequently and larger earthquakes occur very rarely.[6]

    N = 10^(a − bM)

Gutenberg–Richter law[7] shows an inverse power relation between the number of earthquakes occurring _N_ and its magnitude _M_ with a proportionality constant _b_ and intercept _a_.


Simulation

2D_Cellular_Automaton.gif To truly simulate such an environment, one would need a continuous infinite 3D system, however due to computational limitations a 2D cellular automata can be used to provide a near approximation; a million cells in the form of a 1000x1000 matrix is sufficient to test most scenarios. Each cell stores two pieces of information; the force applied to the cell which is a continuous quantity, and the state of the cell which is an integer value of either +1 (on) or −1 (off).

Parametrisation

The net force is composed of three components which can correspond to physical attributes of any crackling noise system; the first is an external force field (K) that increases with time (t). The second component is a force that is dependent on the sum of the states of neighbouring cells (S) and the third is a random component (r) scaled by (X)[8]

    F_(i) = Kt + ΣJS_(i) + Xr_(i)

The external force K is multiplied by time (_t_), where _K_ is a positive scalar constant, however this can be varying and or negative as well. _S_ represents the state of a cell (+1 or −1), the second component takes the sum of the four neighbouring cell states (up, down, left & right) and multiplies it by another scalar quantity, this is analogous to a coupling constant (_J_). The random number generator (_r_) is a normally distributed range of values with a mean of zero and a fixed standard deviation (_r__(_σ_)), this is also multiplied by a scalar constant (_X_). Of the three components of the net force (_F_), the neighbour and random components can produce positive and negative values, while the external force is only positive meaning that there is a forward bias applied to the system which over time becomes the dominant force.

If the net force on a cell is positive it will turn the cell on (+1) and off (−1) if the force on the cell is negative. In a 2D system, there are a multitude of state combinations and arrangements possible, but this can be grouped into three regions, two global stable states of all +1s or all −1s and an unstable state in between where there is a mixture of both states. Traditionally if the system is unstable it will shortly flip to one of the global states, however under the perfect conditions, i.e. a critical point, a metastable state can form in between the two global states which is only sustainable if the parameters for the net force are balanced. The boundary conditions for the matrix wrap around top to bottom and left to right, problems for the corner cells can be negated using a large matrix.

Snap, crackle and pop

Three statements can be formed to describe when and how the system reacts to stimulus. The difference between the external field and the other components decides whether a system pops or crackles, but there is also a special case if the modulus of the random and neighbour components are much greater than the external field, the system snaps to a density of zero and then slows down its rate of conversion.



\begin{align} Kt < {} & |X2r_\sigma -\Sigma JS|\Rightarrow \text{popping} \\ Kt > {} & |X2r_\sigma -\Sigma JS|\Rightarrow \text{crackling} \Rightarrow \text{snapping} \\ Kt \ll {} & |X2r_\sigma -\Sigma JS|\Rightarrow \text{snapping to equilibrium} \end{align}

Popping is when there are small perturbations to the system which are reversible and have a negligible effect on the global system state.

Snapping is when large clusters of cells or the whole system flips to an alternate state, i.e. all +1s or all −1s. The whole system will only flip when it has reached a critical or tipping point.

Crackling is observed when the system experiences popping and snapping of reversible small and large clusters. The system is constantly imbalanced and attempts to reach equilibrium which is not possible due to internal or external forces.

Physical meaning of components

Random component (_r_)

By simulating earthquakes it is possible to observe the Gutenberg–Richter law, in this system the random component would have represented random perturbations in the ground and air and this could be anything from a violent weather system, natural continuous stimuli like a river flowing, waves hitting the shoreline or human activity such as drilling. This is much like the butterfly effect where one could not predict a future outcome of an event nor trace back to the original condition from a set time during the simulation and at the macroscopic level appears insignificant, but at the microscopic level may have been the cause for a chain reaction of events; one cell switching on may be responsible for the whole system flipping on.

Neighbour component (Σ_S_)

The neighbour component for physical objects such as rocks or tectonic plates is simply a description of Newton’s laws of motion, if a plate is moving and collides with another plate, the other plate will provide a reactionary force, similarly if a large collection of loose particles (boulders, faults) is forced against its neighbour, the adjacent particle/object will also move.

External force (_K_)

The external force are the long term movements of tectonic plates or the liquid rock currents within the upper mantle, which is a continuous force applied eventually the plate will snap back or fracture relieving stress on the system to flipping it to a stable state, i.e. an earthquake. Volcanoes are similar in that the build-up of magma pressure underneath will eventually overcome the layer of dry rock on top causing an eruption. Such models can be used to predict the occurrence of earthquakes and volcanoes in active regions and predict aftershocks which are common after a large events.

Practical applications

During magnetisation of a magnet; the external field is the applied electric field, the neighbour component is the effect of localised magnetic fields of the dipoles and the random component represents other perturbations from external or internal stimuli. There are many practical applications to this, a manufacturer can use this type of simulation to non-destructively test their magnets to see how it responds under certain conditions. To test its magnetisation after taking a large force i.e. a hammer blow or dropping it on the floor, one could suddenly increase the external force (_H_) or the coupling constant (_J_). To test heat conditions a boundary condition could be applied to one edge with an increase in thermal fluctuations (increase _X_), this would require a three dimensional model.


Bacterial closed system

Bacterial_growth_en.svg Bacterial growth inside a closed system is an example of when a system grows to the size of its container a death phase occurs; initially the bacteria will grow with plentiful food and space, then regardless of nutritional availability the space will be filled up, to counteract this lack of space the bacteria will produce antibiotics which are toxic to other bacteria to kill them off.[9] During the ‘stationary phase’ it is not possible to tell if the bacteria have simply stopped growing (reproducing) or if there is an equilibrium between the number of deaths and the number of births. Following the depletion of nutrients and space the bacteria die off to extinction, after a recovery period the population may begin to grow again.

    $\frac{\mathrm{d}N}{\mathrm{d}t} = \frac{\mathrm{d}B}{\mathrm{d}t}-\frac{\mathrm{d}D}{\mathrm{d}t}.$

The criterion required for the stationary phase is the rate of births (_B_) must be the same as the rate of deaths (_D_), meaning the total number of bacteria (_N_) is not varying with time (_t_).


Business world

The behaviour of stock prices have shown properties of universality. By taking historical share price data of a company,[10] calculating the daily returns and then plotting this in a histogram would produce a Gaussian distribution. Stock prices will fluctuate with small variations constantly and larger changes much more rarely; a stock exchange could be interpreted as the force responsible to bring the share price to equilibrium by adjusting the price to the supply and demand quota.

The mergers of companies where small companies are regularly forming, often start-ups which are very volatile, if it survives a period of time then it is likely to continue to grow, once it becomes large enough it is able to buy other smaller companies increasing its own size. This is much like larger companies buying their competitors out to increase their own market share and so on and so forth, until the market becomes saturated.


Examples in the natural world

It is not possible for systems in the real world to remain in permanent equilibrium as there are too many external factors contributing to the system's state. The system can either be in temporary equilibrium and then suddenly fail due to a stimulus or be in a constant state of changing phases due to an external force attempting to balance the system. These systems observe popping, snapping and crackling behaviour.[11]

File:Paperball 2.jpeg|Crumpling of paper makes crackling noise File:Hwy302 after the Nisqually earthquake.jpg|Frequency of earthquakes as a function of earthquake magnitude File:Krzywa magnesowania z domenami by Zureks.png|The rate at which a magnet's domain aligns to an external magnetic field. File:Popcorn 6.jpg|The random timing of corn popping File:Avalanche Gulch Shasta.jpg|The instance an avalanche is triggered due to excess snow build up File:Pencil-db.jpg%7CThe snapping of a pencil due to inelastic mechanical properties of the wood File:Very fresh rock fall - geograph.org.uk - 947561.jpg|The exact moment a landslide is triggered due to unstable rocks and boulders File:Santiaguito.jpg%7CA volcano will eventually erupt when the pressure build up of internal magma flow is greater than the seal File:Submarine PZS-50 Project 633RV 2008 G5.jpg|A submarine uses hydroplanes to constantly adjust the depth as it cannot remain at equilibrium (buoyancy = weight) without an external force File:Diffraction by oil on water.jpeg|Van der Waals forces mean that fat globules forming on the surface of water will attract to one another to reduce the free energy and become larger clusters File:Bowl of Rice Krispies.jpg|Rice Krispies crackle when milk is added


References

Category:Noise Category:Random dynamical systems

[1]  Quanta Magazine|website=www.quantamagazine.org|access-date=2016-11-27}}

[2]

[3]  physics|newspaper=Encyclopædia Britannica|access-date=2016-11-27}}

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]