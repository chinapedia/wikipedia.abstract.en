COLLABORATIVE CONTROL THEORY (CCT) is a collection of principles and models for supporting the effective design of collaborative e-Work systems.[1] Beyond human collaboration, advances in information and communications technologies, artificial intelligence, multi-agent systems, and cyber physical systems have enabled cyber-supported collaboration in highly distributed organizations of people, robots, and autonomous systems. The fundamental premise of CCT is: Without effective augmented collaboration by cyber support, working in parallel to and in anticipation of human interactions, the potential of emerging activities such as e-Commerce, virtual manufacturing, telerobotics, remote surgery, building automation, smart grids, cyber-physical infrastructure, precision agriculture, and intelligent transportation systems cannot be fully and safely materialized. CCT addresses the challenges and emerging solutions of such cyber-collaborative systems, with emphasis on issues of computer-supported and communication-enabled integration, coordination and augmented collaboration. CCT is composed of eight design principles:[2] (1) Collaboration Requirement Planning (CRP); (2) e-Work Parallelism (EWP); (3) Keep It Simple, System (KISS); (4) Conflict/Error Detection and Prevention (CEDP); (5) Fault Tolerance by Teaming (FTT); (6) Association/Dissociation (AD); (7) Dynamic Lines of Collaboration (DLOC); (8) Best Matching (BM).


Cyber-Supported Collaboration

Levels

Collaboration is an essential means for effective design and control of e-Work. It enables all the entities involved in a decentralized system to share their resources, information, and responsibilities, such that mutual benefits are obtained and sustained. The level of collaboration, however, may vary from minimal information sharing, to fully collaborative networks.[3] Often the terms “coordination”, “cooperation”, and “collaboration” are used interchangeably; but even though they are closely related, they do exhibit significant differences:

-   _Coordination_: Involves the use of communication and information exchange to reach mutual benefits among parties by working harmoniously.
-   _Cooperation_: Involves all the aspects of coordination as well as a resource-sharing dimension to support goal achievement. Cooperation commonly exhibits a division of labor component among all participants, and therefore the aggregated value is the result of adding the “individuals” parts.
-   _Collaboration_: Involves sharing of information, resources and responsibilities among all parties to jointly plan, implement, and assess the set of activities required to achieve a common goal, thus jointly creating added value.

Types

Collaboration may take place in one or a combination of the forms:

-   _Mandatory collaboration_: Two or more entities (e.g., agents; robots) must simultaneously process a task together.
-   _Optional collaboration_: One entity is sufficient for processing a task; however, another entity can contribute to processing the given task.
-   _Concurrent collaboration_: Two (or more) entities process certain portions of the same task, such that the overall task is completed in parallel.


CCT Design Principles

The following eight CCT principles have been defined, validated and implemented through cyber systems with algorithms, protocols, and multi-agent software systems in diverse industrial, production, supply and service installations, networks, and facilities.

Collaboration Requirement Planning (CRP)

CRP [4] includes two phases for: (1) Detailed requirement planning of how, when, and with whom to collaborate (CRP-I) based on the objectives and available resources; (2) Real-time execution and revision of plans (CRP-II) to meet spatial and temporal challenges, changes, and constraints. Future extensions need to incorporate methods such as robust optimization, fuzzy logic, machine learning, and real-time optimization to further enable real-time changes and learning. The effective implementation of this principle requires both advanced and adaptive real-time planning in order for the cooperation and collaboration efforts to be fruitful and efficient. revision

e-Work Parallelism (EWP)

EWP [5] implies that the activities and interactions in cyber and physical workspaces can and must be allowed to run in parallel. That is, systems cannot be constrained by sequential/linear tasks. The implications of the EWP principle span various human/software spaces and activities including human-human, human-computer, and machine-machine interactions. EWP defines the degree of parallelism as the level of resources/activity parallelism required to balance the tradeoff between the communication, transportation, and equipment costs, as well as the gained productivity. EWP also addresses the design and implementation of collaborative problem-solving, decision-support systems, and co-X tools, where “co-” implies coordinated, cooperative, and/or collaborative support concepts such as co-design and co-plan.

Keep It Simple, System (KISS)

KISS focuses on the human-computer/-automation usability design principles.[6] In addition to the need for human interaction with the emerging systems that are typically complex and not well understood (in terms of their internal mechanisms) by their human users, imagine the additional workload, confusion, and cost when those systems keep changing. KISS is a central principle for effective collaborative e-Work. This principle states that systems must be as complex as needed in their cyber sides, as long as the e-Work support system is enabled to work autonomously, in parallel to and supportive of humans, and subject to the humans’ inputs and instructions. At the same time, for the users, the system must be the simplest to comprehend and operate, in order to minimize the need for repeated and costly human retraining.

Conflict/Error Detection and Prevention (CEDP)

CEDP [7] enables dynamic diagnosis, prognosis, and resolution of conflicts between entities in a collaborative e-Work space. CEDP implies that the larger the rate of interactions, the larger the number of active collaborating parties and thus the rates of conflicts and errors. A conflict is defined as the inconsistencies between the goals, plans, tasks, and activities of two or more individuals. An error, on the other hand, refers to any input, output, or intermediate result which does not meet the predefined specifications, expectations, or comparison objectives of a system. Errors and conflicts are different but related. The key difference is that an error may involve only one individual, while for a conflict to occur, at least two individuals must be involved. An error may cause a conflict (or a series of conflicts) and vice versa. CEDP consists of a set of functions for detecting existing errors/conflict, classifying the observation as an error or a conflict, determining the exact point of error/conflict in the system, determining the type, magnitude, time, and cause of the out-of-control status, analyzing, predicting, and preventing propagation of the error/conflict, mitigating the negative effects of the error/conflict, and handling exceptions (constructive deviations from the process).

Fault Tolerance by Teaming (FTT)

FTT [8] addresses fault-tolerant, feed-forward collaborative control of distributed processes. The goal of the FTT principle is to enable better efficiency and reliability from a network of weak agents (e.g., micro- and nano-sensors) rather than a single strong agent. FTT implies that an optimized team of collaborative agents generally yields better results compared to more powerful but individual agents. The latter may fail, and without backup, the system risks failure. The reliability and availability of system is improved through application of multiple redundant agents. Fault tolerance relates to the structure of a collaborative e-Work system. The combination of the FTT and CEDP principles extend into resilience by teaming frameworks [9] that enable the formation, re-configuration, and operation of e-Work systems via “disruption-prone agents” that achieve higher resilience than an equivalent system of “flaw-less/more reliable” agents.

Association/Dissociation (AD)

AD [10] addresses dynamic variations in the formation, topology, size, and/or operations of collaborative systems such as enterprise alliances; self-organizing agent teams; sensor clusters; modular systems, and others. The AD principle analyzes the conditions and timing for individual/teams of agents to associate with or dissociate from a collaborative network. The AD decisions are made at different levels in the entire network, by individual agents, sub-networks or clusters of agents, or among multiple net-works. The analysis includes several phases, from creation and execution to dissolution and support. Some generic AD decisions include: When and why should to join a network? What are the benefits/costs of participating in a network? Why would an individual opt to remain in a network? What are the criteria to characterize and evaluate the performance of a network? The AD principle can be analyzed at the overall collaborative network level, at the individual/organization level, or at the sub-/multi-network level. The analysis may include various phases of the individual/organization/network lifecycle, from design to creation, activity, dissolution, and support.

Dynamic Lines of Collaboration (DLOC)

DLOC [11] addresses the dynamic nature of collaborative networks, including emergency situations and the volatility of formal and informal communications between the individual and clustered agents. DLOC finds adjustments when networks evolve and undergo gradual changes over time. Specifically, successful realization of the previous design principles depends on the efficiency of the established lines of collaboration. The DLOC principle enables effective decision-making in complex and dynamic environments when they are being challenged or forced to change, sustainable information exchange and knowledge creation despite emergency/evolution, and optimal control of the emergent networks. An emergent network is a network that evolves through adding or removing nodes (e.g., agents) and/or links (e.g., interaction, communication, collaboration). Emergent networks are defined as evolutionary mechanisms of interaction which build upon the well-established theories of organizational learning and that are characterized by ad hoc decisions, effective improvisation, on-the-spot creation of contacts, and best-matching protocols for pairing system alerts with decisions, decision-makers, and the executors of the decisions.

Best Matching (BM)

BM [12] implies that an e-Work system with a system with “mismatched” individuals is always outperformed by an equivalent system with “best-matched” individuals. The growing complexity and dynamic behavior of systems along with competitive and globalized markets have gradually transformed traditional centralized systems into distributed networks of e-Work systems. These systems, regardless of context and application, have a property in common: They all involve certain types of interactions (collaborative, competitive, or both) among their distributed individuals—from clusters of sensors and machines to complex networks of computers, intelligent robots, humans, and enterprises. Having this common property, such systems may encounter common challenges in terms of suboptimal interactions and thus poor performance, caused by potential mismatch between individuals. BM provides the PRISM taxonomy of best matching [12], a set of concepts, models, and frameworks for systematic analysis, taxonomy, analogical and structural assessment of matching processes, specification, modeling, and real-time optimization of matching processes in distributed manufacturing, supply, and service networks.


Emerging Thrusts

Collaborative Intelligence

Lean management, smart interactions with remote, global participants for set-up, development, and follow-up.

Service-Oriented Manufacturing

Manufacturing-as-a-service, effective integration and distribution of resources on the cloud.[13]

Resilience

Handling uncertainty, preventing and recovering from errors and conflicts by effective teaming, enhancing manufacturing, supply, energy, and transportation infrastructure security.

Security and Information Assurance

Preventing and eliminating any conceivable errors, failures, and conflicts, and sustaining critical continuity of operations, assuring information and managing risks associated with the use, processing, storage, and transmission of information.[14]

Integrated Factory Intelligence

Learning, adaptation, and evolution mechanisms, bio-inspired heterarchical control of distributed manufacturing networks and shop-floor devices.[15]

Real-time Data-driven Predictive Technologies

Dynamic, adaptive, and data-driven analysis and decision-making methodologies.


See also

-   21st century skills
-   Adaptive Collaborative Control
-   Collaborative Network
-   Collaborative Robots
-   Collaborative Learning


References

Category:Collaborative projects Category:Learning methods Category:Learning programs Category:Collaboration Category:Skills Category:Learning

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