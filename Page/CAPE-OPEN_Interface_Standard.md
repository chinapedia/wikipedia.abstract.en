The CAPE-OPEN INTERFACE STANDARD consists of a series of specifications to expand the range of application of process simulation technologies. The CAPE-OPEN specifications comprise a set of software interfaces that allow plug and play inter-operability between a given Process Modelling Environment (PME) and a third-party Process Modelling Component (PMC).


Origins

The CAPE-OPEN, European Union funded, project was established in 1995.[1] The project involved participants from a number of companies from the process industries (Bayer, BASF, BP, DuPont, French Institute of Petroleum (IFP), Elf Aquitaine, and Imperial Chemical Industries (ICI)) together with 15 partners including software vendors (Aspen Technology, ProSim, Hyprotech Ltd, QuantiSci and SimSci]) and academics (Imperial College London, National Polytechnic Institute of Toulouse (INPT), and RWTH Aachen University). The objective of the project was to demonstrate the feasibility of a set of specification interfaces to allow plug and play interoperability between modelling environments and third party modelling components.

Following the completion of the CAPE-OPEN project in 1999, and the projects successful proof-of-concept of plug and play interoperability, a second project, Global CAPE-OPEN, was formed to turn the interface specifications into products that could be widely used by Industry. This project had a number of key elements including:

-   An Interoperability task force to check on the implementation of CAPE-OPEN in commercial simulation tools
-   The subsidy of small simulation vendors to implement CAPE-OPEN interfaces
-   The formation of the not-for-profit organisation, The CAPE-OPEN Laboratories Network(CO-LaN),[2] to assure the maintenance and further development of the CAPE-OPEN interfaces.


Purpose

Operating companies in the process industries typically make a significant financial investment in commercial simulation technologies. However, all simulation tools have strengths and weaknesses. Typically, these reflect a focus on the particular process industry for which the simulation package was originally developed. For example, simulation packages developed for the oil industry may have a weakness for the modelling of certain speciality chemical systems; modelling environments focussed on gas and oil systems may not have the capabilities to handle multiple liquid phases and/or solids formation. Although, over time, simulation vendors improve and enhance the capabilities of their modelling technologies generally capability gaps remain. An operating company can address these capability gaps by replacing the relevant components in their tool of choice with improved components from elsewhere. Often these improved components originate from within the operating company itself and contain significant intellectual property relating to a specific process which is not readily available to the commercial modelling vendors. Alternatively, the improved components may come from a company specialising in niche areas of modelling, for example the rigorous modelling of heat exchangers or for thermodynamics and physical properties.

Historically the integration of third-party components into a commercial simulation environment involved the writing of proprietary software interfaces that “wrapped” around the new components and allowed them to communicate with the host modelling environment. The degree of difficulty in developing such interfaces varied significantly depending on how “open” the host modelling environment was and how well documented were the associated communication protocols. Inevitably bespoke component interfaces were difficult to maintain as new versions of the modelling environment were adopted. Additionally, a component wrapper for one environment would not work with an alternative environment from a different simulation vendor. User added subroutines, for both unit operations and thermodynamic models, is an alternative approach to component integration but one that suffers from similar difficulties in moving the subroutines from one simulator to another.

The development of a standardised plug and play capability hence had the potential to deliver a number of significant business benefits [3]:

-   Lower maintenance costs for operating companies and software vendors due to the standardisation of the interfaces.
-   Continuous capture of lessons learned across the membership community and the associated improvements to the interfaces.
-   The ability to apply a consistent set of simulation components across all CAPE-OPEN compliant simulation environments and other modelling tools such as MATLAB and Microsoft Excel.
-   The ability to choose and incorporate the technically most appropriate model for a particular modelling task with the level of fidelity needed.


Concepts

A number of commercial simulation programmes are available to support process modelling. Generally one or more of these commercial tools will be used by a given operating company to underpin its modelling activity. In addition, many operating companies also maintain their own in-house software to allow for the modelling of niche applications not fully addressed by the commercial tools. Each simulation programme provides an environment which allows a process flow-sheet to be constructed and the process fluid thermodynamics to be incorporated. The CAPE-OPEN project formally identified such a modelling programme as a Process Modelling Environment (PME) with the requirement that users of a PME should be able to easily connect the PME with other modelling tools without the need to develop bespoke interfaces. To do this a PME would be provided with a CAPE-OPEN “plug” that would allow any CAPE-OPEN component to be added to the modelling environment [4].

All PMEs come with a library of unit operations (vapor-liquid separators, valves, heat exchangers, distillation columns etc.) and a range of thermodynamic methods (equation of state, activity coefficient models, etc.). These library components are normally restricted to usage within the native PME. However, users of a given PME, often require to substitute a third party unit operation or thermodynamic model for the one provided by the native environment. The CAPE-OPEN project formally identified a unit operation or a thermodynamic engine as a Process Modelling Component (PMC) with the requirement that a PMC could be “wrapped” with standard interfaces that would allow it to be placed in a CAPE-OPEN compliant PME without the need for additional interfacing software to be developed – no programming would be required either for the modelling environment or for the core of the modelling component. In order to organise its work programmes the CAPE-OPEN project classified the main elements of a simulation system namely:

-   Unit operations; the modelling of specific process units, e.g. reactors, distillation columns, heat exchangers. A unit operation has ports defining the locations of material stream inputs and outputs and acquires physical properties from Material Objects.
-   Material Objects. These represent process fluid, energy or information streams connecting two or more unit operations. A material object is associated with a thermodynamic package which returns physical properties such as density, viscosity, thermal conductivity, etc.
-   Numerical solvers; efficient iterative numerical methods for solving the highly non-linear equations set formed by a process flow-sheet. Iterative methods are used to solve the equations of both a single unit operation module and to solve the overall flow-sheet containing a number of inter-connected unit operations.

Any modelling environment with a CAPE-OPEN interface, for a unit operation or a thermodynamics package, would be able to communicate with any CAPE-OPEN modelling component without the need for additional interfacing software to be written.

The CAPE-OPEN specifications define software interfaces for process simulation environments in terms of both the Microsoft standard COM/DCOM and the Common Object Request Broker Architecture (CORBA). Hence both COM and CORBA based simulators are supported by the CAPE-OPEN specifications. The specifications follow an Object Oriented approach and are developed and specified using the Unified Modelling Language (UML). Formal Use Cases are developed to define end-user requirements. The Use Cases summarise the activities and interactions involved with the installation and application of a CAPE-OPEN component within a CAPE-OPEN modelling environment. Once developed, the Use Cases provide an effective procedure for testing new CAPE-OPEN components and environments.


Support

The CAPE-OPEN project ended in 2001 and delivered interface specifications for unit operations (in steady-state) and thermodynamic components. A non-profit organisation, CO-LaN,[5] was subsequently established to maintain and support the existing specifications and to continue the development of additional CAPE-OPEN interface specifications.


CAPE-OPEN Specifications

Currently three main CAPE-OPEN specifications have found wide use within the process industries[6]

-   The unit operation specification, version 1.0, which applies to steady-state modelling
-   Thermodynamic and physical property interface 1.0
-   Thermodynamic and physical property interface version 1.1. This interface is a complete revision of Thermodynamic and physical property interface 1.0 with some extended functionality together with simplifications and increased flexibility designed to make it easier for the CAPE-OPEN implementation to be carried out. Unfortunately this version of the interface is not backwards compatible with version 1.0

The development and support of new CAPE-OPEN components has been actively encouraged and supported by CO-LaN[7][8] and attention has focussed on new unit operations, not readily available in commercial simulators[9][10] and the interfacing of proprietary thermodynamic and physical property models to commercial simulation environments while protecting the inherent intellectual property.[11] Currently all of the major commercial process modelling environments are CAPE-OPEN compliant and there are many CAPE-OPEN process modelling components available. A full list of the available PMEs and PMCs is available on the CO-LaN website.


Software Tools

There is no licensing required from CO-LaN or another organization in order to make use of the CAPE-OPEN specifications. However, CO-LaN has developed a number of tools to assist with the implementation of CAPE-OPEN interfaces:

-   Software Wizards to assist with the development of the CAPE-OPEN interface for modelling components.
-   Software code examples for thermodynamic components and unit operations to provide templates for new implementations.
-   A CAPE-OPEN testing environment into which components can be plugged and tested for conformity against the CAPE-OPEN specifications.
-   A logging tool to capture all communications between a CAPE-OPEN modelling component and a CAPE-OPEN modelling environment[12]

More information on the CO-LaN software tools together with available downloads can be found on the CO-LaN website.

In addition, CAPE-OPEN is implemented in freeware such as COCO simulator, in openware such as DWSIM, and in many of the leading commercial simulation tools.


Future Developments

Specifications under development by the CO-LaN include:

-   Dynamic Unit Operations. This extension to the steady-state unit operation specification will allow third party dynamic unit operation models to be used in a CAPE-OPEN compliant dynamic simulation environment.
-   Chemical reactions which will be issued as an extension to the Thermodynamic interface [13]
-   A Flow-sheet monitoring specification
-   A Petroleum Fractions interface specification


References

Category:Simulation software

[1] M. Jarke, J. Köller, W. Marquardt, L. von Wedel, B. Braunschweig, 1999, “CAPE-OPEN: Experiences from a Standardization Effort in Chemical Industries”, _Proceedings of 1st IEEE Conference on Standardisation and Innovation in Information Technology (SIIT 99)_, Aachen, Germany, pages 25-35,

[2] CO-LaN

[3] P. S. Banks, K.A. Irons, M.R. Woodman, 2005, "Interoperability of Process Simulation Software", _Oil & Gas Science and Technology-revue De L Institut Francais Du Petrole - OIL GAS SCI TECHNOL. 60. 607-616._, DOI: 10.2516/ogst:2005043

[4] JP. Belaud, M. Pons, 2002, "Open Software Architecture For Process Simulation: The Current Status of CAPE-OPEN Standard", _Computer Aided Chemical Engineering._, DOI:10.1016/S1570-7946(02)80169-9

[5]

[6] Michel Pons, 2009, "Making Use of CAPE-OPEN Technology in Process Simulation", _Conference: 2009 AIChE Annual Meeting_,

[7] Michel Pons, 2010, "How to make use of CAPE-OPEN?", _2010 AIChE Annual Meeting_,

[8] Jasper Van Baten, Michel Pons, 2014, “CAPE‐OPEN: Interoperability in Industrial Flowsheet Simulation Software”, _Chemie Ingenieur Technik_, Volume 86, Issue 7, Pages 1052-1064, DOI: 10.1002/cite.201400009

[9] Jasper Van Baten, César G. Pernalete, Juan C. Urbina, José F. Arévalo, 2015, “A molecular reconstruction feed characterization and CAPE OPEN implementation strategy to develop a tool for modeling HDT reactors for light petroleum cuts”, _Computer Aided Chemical Engineering_, Volume 37,  

[10] Jasper van Baten, Richard Szczepanski, 2011, "A thermodynamic equilibrium reactor model as a CAPE-OPEN unit operation", _Computers & Chemical Engineering, Volume 35, Issue 7, Pages 1251-1256_, DOI:10.1016/j.compchemeng.2010.07.016

[11] Gregor Tolksdorf, Erik Esche, Jasper van Baten, Gunter Wozny, 2016, Taylor-Made Modeling and Solution of Novel Process Units by Modular CAPE-OPEN-based Flowsheeting,_Computer Aided Chemical Engineering. vol 38_,

[12] Michel Pons, Peter Banks, Bertrand Braunschweig, 2007, "A deliverable from CO-LaN to CAPE-OPEN developers and users: the CAPE-OPEN logging and testing tool (COLTT)", _17th European Symposium on Computed Aided Process Engineering_,  

[13] Michel Pons, 2003, "The CAPE-OPEN Interface Specification for Reactions Package", _Computer-Aided Chemical Engineering, Volume 14_, DOI:10.1016/S1570-7946(03)80225-0