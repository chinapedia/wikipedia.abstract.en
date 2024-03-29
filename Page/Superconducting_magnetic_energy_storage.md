SUPERCONDUCTING MAGNETIC ENERGY STORAGE (SMES) systems store energy in the magnetic field created by the flow of direct current in a superconducting coil which has been cryogenically cooled to a temperature below its superconducting critical temperature.

A typical SMES system includes three parts: superconducting coil, power conditioning system and cryogenically cooled refrigerator. Once the superconducting coil is charged, the current will not decay and the magnetic energy can be stored indefinitely.

The stored energy can be released back to the network by discharging the coil. The power conditioning system uses an inverter/rectifier to transform alternating current (AC) power to direct current or convert DC back to AC power. The inverter/rectifier accounts for about 2–3% energy loss in each direction. SMES loses the least amount of electricity in the energy storage process compared to other methods of storing energy. SMES systems are highly efficient; the round-trip efficiency is greater than 95%.[1]

Due to the energy requirements of refrigeration and the high cost of superconducting wire, SMES is currently used for short duration energy storage. Therefore, SMES is most commonly devoted to improving power quality.


Advantages over other energy storage methods

There are several reasons for using superconducting magnetic energy storage instead of other energy storage methods. The most important advantage of SMES is that the time delay during charge and discharge is quite short. Power is available almost instantaneously and very high power output can be provided for a brief period of time. Other energy storage methods, such as pumped hydro or compressed air, have a substantial time delay associated with the energy conversion of stored mechanical energy back into electricity. Thus if demand is immediate, SMES is a viable option. Another advantage is that the loss of power is less than other storage methods because electric currents encounter almost no resistance. Additionally the main parts in a SMES are motionless, which results in high reliability.


Current use

There are several small SMES units available for commercial use and several larger test bed projects. Several 1 MW·h units are used for power quality control in installations around the world, especially to provide power quality at manufacturing plants requiring ultra-clean power, such as microchip fabrication facilities.

These facilities have also been used to provide grid stability in distribution systems. SMES is also used in utility applications. In northern Wisconsin, a string of distributed SMES units were deployed to enhance stability of a transmission loop. The transmission line is subject to large, sudden load changes due to the operation of a paper mill, with the potential for uncontrolled fluctuations and voltage collapse.

The Engineering Test Model is a large SMES with a capacity of approximately 20 MW·h, capable of providing 40 MW of power for 30 minutes or 10 MW of power for 2 hours.


Calculation of stored energy

The magnetic energy stored by a coil carrying a current is given by one half of the inductance of the coil times the square of the current.

$$E=\frac {1}{2} L I^2$$

Where

    _E_ = energy measured in joules
    _L_ = inductance measured in henries
    _I_ = current measured in amperes

Now let's consider a cylindrical coil with conductors of a rectangular cross section. The mean radius of coil is _R_. _a_ and _b_ are width and depth of the conductor. _f_ is called form function which is different for different shapes of coil. _ξ_ (xi) and _δ_ (delta) are two parameters to characterize the dimensions of the coil. We can therefore write the magnetic energy stored in such a cylindrical coil as shown below. This energy is a function of coil dimensions, number of turns and carrying current.

$$E=\frac {1}{2} R N^2 I^2 f \left( \xi,\delta\right)$$

Where

    _E_ = energy measured in joules
    _I_ = current measured in amperes
    _f(ξ,δ)_ = form function, joules per ampere-meter
    _N_ = number of turns of coil


Solenoid versus toroid

Besides the properties of the wire, the configuration of the coil itself is an important issue from a mechanical engineering aspect. There are three factors which affect the design and the shape of the coil - they are: Inferior strain tolerance, thermal contraction upon cooling and Lorentz forces in a charged coil. Among them, the strain tolerance is crucial not because of any electrical effect, but because it determines how much structural material is needed to keep the SMES from breaking. For small SMES systems, the optimistic value of 0.3% strain tolerance is selected. Toroidal geometry can help to lessen the external magnetic forces and therefore reduces the size of mechanical support needed. Also, due to the low external magnetic field, toroidal SMES can be located near a utility or customer load.

For small SMES, solenoids are usually used because they are easy to coil and no pre-compression is needed. In toroidal SMES, the coil is always under compression by the outer hoops and two disks, one of which is on the top and the other is on the bottom to avoid breakage. Currently, there is little need for toroidal geometry for small SMES, but as the size increases, mechanical forces become more important and the toroidal coil is needed.

The older large SMES concepts usually featured a low aspect ratio solenoid approximately 100 m in diameter buried in earth. At the low extreme of size is the concept of micro-SMES solenoids, for energy storage range near 1 MJ.


Low-temperature versus high-temperature superconductors

Under steady state conditions and in the superconducting state, the coil resistance is negligible. However, the refrigerator necessary to keep the superconductor cool requires electric power and this refrigeration energy must be considered when evaluating the efficiency of SMES as an energy storage device.

Although the high-temperature superconductor (HTSC) has higher critical temperature, flux lattice melting takes place in moderate magnetic fields around a temperature lower than this critical temperature. The heat loads that must be removed by the cooling system include conduction through the support system, radiation from warmer to colder surfaces, AC losses in the conductor (during charge and discharge), and losses from the cold–to-warm power leads that connect the cold coil to the power conditioning system. Conduction and radiation losses are minimized by proper design of thermal surfaces. Lead losses can be minimized by good design of the leads. AC losses depend on the design of the conductor, the duty cycle of the device and the power rating.

The refrigeration requirements for HTSC and low-temperature superconductor (LTSC) toroidal coils for the baseline temperatures of 77 K, 20 K, and 4.2 K, increases in that order. The refrigeration requirements here is defined as electrical power to operate the refrigeration system. As the stored energy increases by a factor of 100, refrigeration cost only goes up by a factor of 20. Also, the savings in refrigeration for an HTSC system is larger (by 60% to 70%) than for an LTSC systems.


Cost

Whether HTSC or LTSC systems are more economical depends because there are other major components determining the cost of SMES: Conductor consisting of superconductor and copper stabilizer and cold support are major costs in themselves. They must be judged with the overall efficiency and cost of the device. Other components, such as vacuum vessel insulation, has been shown to be a small part compared to the large coil cost. The combined costs of conductors, structure and refrigerator for toroidal coils are dominated by the cost of the superconductor. The same trend is true for solenoid coils. HTSC coils cost more than LTSC coils by a factor of 2 to 4. We expect to see a cheaper cost for HTSC due to lower refrigeration requirements but this is not the case. So, why is the HTSC system more expensive?

To gain some insight consider a breakdown by major components of both HTSC and LTSC coils corresponding to three typical stored energy levels, 2, 20 and 200 MW·h. The conductor cost dominates the three costs for all HTSC cases and is particularly important at small sizes. The principal reason lies in the comparative current density of LTSC and HTSC materials. The critical current of HTSC wire is lower than LTSC wire generally in the operating magnetic field, about 5 to 10 teslas (T). Assume the wire costs are the same by weight. Because HTSC wire has lower (_J__(c)) value than LTSC wire, it will take much more wire to create the same inductance. Therefore, the cost of wire is much higher than LTSC wire. Also, as the SMES size goes up from 2 to 20 to 200 MW·h, the LTSC conductor cost also goes up about a factor of 10 at each step. The HTSC conductor cost rises a little slower but is still by far the costliest item.

The structure costs of either HTSC or LTSC go up uniformly (a factor of 10) with each step from 2 to 20 to 200 MW·h. But HTSC structure cost is higher because the strain tolerance of the HTSC (ceramics cannot carry much tensile load) is less than LTSC, such as Nb₃Ti or Nb₃Sn, which demands more structure materials. Thus, in the very large cases, the HTSC cost can not be offset by simply reducing the coil size at a higher magnetic field.

It is worth noting here that the refrigerator cost in all cases is so small that there is very little percentage savings associated with reduced refrigeration demands at high temperature. This means that if a HTSC, BSCCO for instance, works better at a low temperature, say 20K, it will certainly be operated there. For very small SMES, the reduced refrigerator cost will have a more significant positive impact.

Clearly, the volume of superconducting coils increases with the stored energy. Also, we can see that the LTSC torus maximum diameter is always smaller for a HTSC magnet than LTSC due to higher magnetic field operation. In the case of solenoid coils, the height or length is also smaller for HTSC coils, but still much higher than in a toroidal geometry (due to low external magnetic field).

An increase in peak magnetic field yields a reduction in both volume (higher energy density) and cost (reduced conductor length). Smaller volume means higher energy density and cost is reduced due to the decrease of the conductor length. There is an optimum value of the peak magnetic field, about 7 T in this case. If the field is increased past the optimum, further volume reductions are possible with minimal increase in cost. The limit to which the field can be increased is usually not economic but physical and it relates to the impossibility of bringing the inner legs of the toroid any closer together and still leave room for the bucking cylinder.

The superconductor material is a key issue for SMES. Superconductor development efforts focus on increasing Jc and strain range and on reducing the wire manufacturing cost.


Technical challenges

The energy content of current SMES systems is usually quite small. Methods to increase the energy stored in SMES often resort to large-scale storage units. As with other superconducting applications, cryogenics are a necessity. A robust mechanical structure is usually required to contain the very large Lorentz forces generated by and on the magnet coils. The dominant cost for SMES is the superconductor, followed by the cooling system and the rest of the mechanical structure.

Mechanical support: Needed because of Lorentz forces.
Size: To achieve commercially useful levels of storage, around 1 GW·h (3.6 TJ), a SMES installation would need a loop of around 100 miles (160 km). This is traditionally pictured as a circle, though in practice it could be more like a rounded rectangle. In either case it would require access to a significant amount of land to house the installation.
Manufacturing: There are two manufacturing issues around SMES. The first is the fabrication of bulk cable suitable to carry the current. The HTSC superconducting materials found to date are relatively delicate ceramics, making it difficult to use established techniques to draw extended lengths of superconducting wire. Much research has focussed on layer deposit techniques, applying a thin film of material onto a stable substrate, but this is currently only suitable for small-scale electrical circuits.
Infrastructure: The second problem is the infrastructure required for an installation. Until room-temperature superconductors are found, the 100 mile (160 km) loop of wire would have to be contained within a vacuum flask of liquid nitrogen. This in turn would require stable support, most commonly envisioned by burying the installation.
Critical magnetic field: Above a certain field strength, known as the critical field, the superconducting state is destroyed.
Critical current: In general power systems look to maximize the current they are able to handle. This makes any losses due to inefficiencies in the system relatively insignificant. Unfortunately, large currents may generate magnetic fields greater than the critical field due to Ampere's Law. Current materials struggle, therefore, to carry sufficient current to make a commercial storage facility economically viable.

Several issues at the onset of the technology have hindered its proliferation:

1.  Expensive refrigeration units and high power cost to maintain operating temperatures
2.  Existence and continued development of adequate technologies using normal conductors

These still pose problems for superconducting applications but are improving over time. Advances have been made in the performance of superconducting materials. Furthermore, the reliability and efficiency of refrigeration systems has improved significantly.


See also

-   Grid energy storage
-   United States Department of Energy International Energy Storage Database


References


Bibliography

-   Sheahen, T., P. (1994). Introduction to High-Temperature Superconductivity. Plenum Press, New York. pp. 66, 76–78, 425–430, 433–446.
-   El-Wakil, M., M. (1984). Powerplant Technology. McGraw-Hill, pp. 685–689, 691–695.
-   Wolsky, A., M. (2002). The status and prospects for flywheels and SMES that incorporate HTS. Physica C 372–376, pp. 1,495–1,499.
-   Hassenzahl, W.V.,"Applied Superconductivity,Superconductivity, an enabling technology for 21st century power systems?", IEEE Transactions on Magnetics, pp. 1447-1453, Volume: 11, Issue: 1, Mar 2001


Further reading

-   Browne, Malcome W. New Hunt for Ideal Energy Storage System, _The New York Times_, January 6, 1988.


External links

-   Cost Analysis of Energy Storage Systems for Electric Utility Applications
-   Loyola SMES summary

Category:Superconductivity Category:Energy storage

[1] Cheung K.Y.C, Cheung S.T.H, Navin De Silvia R.G, Juvonen M.P.T, Singh R, Woo J.J. _Large-Scale Energy Storage Systems_. Imperial College London: ISE2, 2002/2003.