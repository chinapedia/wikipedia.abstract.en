Symbolics3640_Modified.JPG Lisp Machine: an early platform for expert systems.]]

In artificial intelligence, an EXPERT SYSTEM is a computer system that emulates the decision-making ability of a human expert.[1] Expert systems are designed to solve complex problems by reasoning through bodies of knowledge, represented mainly as if–then rules rather than through conventional procedural code.[2] The first expert systems were created in the 1970s and then proliferated in the 1980s.[3] Expert systems were among the first truly successful forms of artificial intelligence (AI) software.[4] An expert system is divided into two subsystems: the inference engine and the knowledge base. The knowledge base represents facts and rules. The inference engine applies the rules to the known facts to deduce new facts. Inference engines can also include explanation and debugging abilities.[5]


History

Expert systems were introduced around 1965[6] by the Stanford Heuristic Programming Project led by Edward Feigenbaum, who is sometimes termed the "father of expert systems"; other key early contributors were Bruce Buchanan and Randall Davis. The Stanford researchers tried to identify domains where expertise was highly valued and complex, such as diagnosing infectious diseases (Mycin) and identifying unknown organic molecules (Dendral). The idea that "intelligent systems derive their power from the knowledge they possess rather than from the specific formalisms and inference schemes they use"[7] – as Feigenbaum said – was at the time a significant step forward, since the past research had been focused on heuristic computational methods, culminating in attempts to develop very general-purpose problem solvers (foremostly the conjunct work of Allen Newell and Herbert Simon).[8] Expert systems became some of the first truly successful forms of artificial intelligence (AI) software.[9]

Research on expert systems was also active in France. While in the US the focus tended to be on rule-based systems, first on systems hard coded on top of LISP programming environments and then on expert system shells developed by vendors such as Intellicorp, in France research focused more on systems developed in Prolog. The advantage of expert system shells was that they were somewhat easier for nonprogrammers to use. The advantage of Prolog environments was that they were not focused only on _if-then_ rules; Prolog environments provided a much better realization of a complete first order logic environment.[10][11]

In the 1980s, expert systems proliferated. Universities offered expert system courses and two thirds of the Fortune 500 companies applied the technology in daily business activities.[12][13] Interest was international with the Fifth Generation Computer Systems project in Japan and increased research funding in Europe.

In 1981, the first IBM PC, with the PC DOS operating system, was introduced. The imbalance between the high affordability of the relatively powerful chips in the PC, compared to the much more expensive cost of processing power in the mainframes that dominated the corporate IT world at the time, created a new type of architecture for corporate computing, termed the client-server model.[14] Calculations and reasoning could be performed at a fraction of the price of a mainframe using a PC. This model also enabled business units to bypass corporate IT departments and directly build their own applications. As a result, client server had a tremendous impact on the expert systems market. Expert systems were already outliers in much of the business world, requiring new skills that many IT departments did not have and were not eager to develop. They were a natural fit for new PC-based shells that promised to put application development into the hands of end users and experts. Until then, the main development environment for expert systems had been high end Lisp machines from Xerox, Symbolics, and Texas Instruments. With the rise of the PC and client server computing, vendors such as Intellicorp and Inference Corporation shifted their priorities to developing PC based tools. Also, new vendors, often financed by venture capital (such as Aion Corporation, Neuron Data, Exsys, and many others[15][16]), started appearing regularly.

The first expert system to be used in a design capacity for a large-scale product was the SID (Synthesis of Integral Design) software program, developed in 1982. Written in LISP, SID generated 93% of the VAX 9000 CPU logic gates.[17] Input to the software was a set of rules created by several expert logic designers. SID expanded the rules and generated software logic synthesis routines many times the size of the rules themselves. Surprisingly, the combination of these rules resulted in an overall design that exceeded the capabilities of the experts themselves, and in many cases out-performed the human counterparts. While some rules contradicted others, top-level control parameters for speed and area provided the tie-breaker. The program was highly controversial, but used nevertheless due to project budget constraints. It was terminated by logic designers after the VAX 9000 project completion.

In the 1990s and beyond, the term _expert system_ and the idea of a standalone AI system mostly dropped from the IT lexicon. There are two interpretations of this. One is that "expert systems failed": the IT world moved on because expert systems did not deliver on their over hyped promise.[18][19] The other is the mirror opposite, that expert systems were simply victims of their success: as IT professionals grasped concepts such as rule engines, such tools migrated from being standalone tools for developing special purpose _expert_ systems, to being one of many standard tools.[20] Many of the leading major business application suite vendors (such as SAP, Siebel, and Oracle) integrated expert system abilities into their suite of products as a way of specifying business logic – rule engines are no longer simply for defining the rules an expert would use but for any type of complex, volatile, and critical business logic; they often go hand in hand with business process automation and integration environments.[21][22][23]


Software architecture

An expert system is an example of a knowledge-based system. Expert systems were the first commercial systems to use a knowledge-based architecture. A knowledge-based system is essentially composed of two sub-systems: the knowledge base and the inference engine.[24]

The knowledge base represents facts about the world. In early expert systems such as Mycin and Dendral, these facts were represented mainly as flat assertions about variables. In later expert systems developed with commercial shells, the knowledge base took on more structure and used concepts from object-oriented programming. The world was represented as classes, subclasses, and instances and assertions were replaced by values of object instances. The rules worked by querying and asserting values of the objects.

The inference engine is an automated reasoning system that evaluates the current state of the knowledge-base, applies relevant rules, and then asserts new knowledge into the knowledge base. The inference engine may also include abilities for explanation, so that it can explain to a user the chain of reasoning used to arrive at a particular conclusion by tracing back over the firing of rules that resulted in the assertion.[25]

There are mainly two modes for an inference engine: forward chaining and backward chaining. The different approaches are dictated by whether the inference engine is being driven by the antecedent (left hand side) or the consequent (right hand side) of the rule. In forward chaining an antecedent fires and asserts the consequent. For example, consider the following rule:

R1 : Man(x) ⟹ Mortal(x)

A simple example of forward chaining would be to assert Man(Socrates) to the system and then trigger the inference engine. It would match R1 and assert Mortal(Socrates) into the knowledge base.

Backward chaining is a bit less straight forward. In backward chaining the system looks at possible conclusions and works backward to see if they might be true. So if the system was trying to determine if Mortal(Socrates) is true it would find R1 and query the knowledge base to see if Man(Socrates) is true. One of the early innovations of expert systems shells was to integrate inference engines with a user interface. This could be especially powerful with backward chaining. If the system needs to know a particular fact but does not, then it can simply generate an input screen and ask the user if the information is known. So in this example, it could use R1 to ask the user if Socrates was a Man and then use that new information accordingly.

The use of rules to explicitly represent knowledge also enabled explanation abilities. In the simple example above if the system had used R1 to assert that Socrates was Mortal and a user wished to understand why Socrates was mortal they could query the system and the system would look back at the rules which fired to cause the assertion and present those rules to the user as an explanation. In English if the user asked "Why is Socrates Mortal?" the system would reply "Because all men are mortal and Socrates is a man". A significant area for research was the generation of explanations from the knowledge base in natural English rather than simply by showing the more formal but less intuitive rules.[26]

As expert systems evolved, many new techniques were incorporated into various types of inference engines.[27] Some of the most important of these were:

-   Truth maintenance. These systems record the dependencies in a knowledge-base so that when facts are altered, dependent knowledge can be altered accordingly. For example, if the system learns that Socrates is no longer known to be a man it will revoke the assertion that Socrates is mortal.
-   Hypothetical reasoning. In this, the knowledge base can be divided up into many possible views, a.k.a. worlds. This allows the inference engine to explore multiple possibilities in parallel. For example, the system may want to explore the consequences of both assertions, what will be true if Socrates is a Man and what will be true if he is not?
-   Uncertainty systems. One of the first extensions of simply using rules to represent knowledge was also to associate a probability with each rule. So, not to assert that Socrates is mortal, but to assert Socrates _may_ be mortal with some probability value. Simple probabilities were extended in some systems with sophisticated mechanisms for uncertain reasoning, such as Fuzzy logic, and combination of probabilities.
-   Ontology classification. With the addition of object classes to the knowledge base, a new type of reasoning was possible. Along with reasoning simply about object values, the system could also reason about object structures. In this simple example, Man can represent an object class and R1 can be redefined as a rule that defines the class of all men. These types of special purpose inference engines are termed classifiers. Although they were not highly used in expert systems, classifiers are very powerful for unstructured volatile domains, and are a key technology for the Internet and the emerging Semantic Web.[28][29]


Advantages

The goal of knowledge-based systems is to make the critical information required for the system to work explicit rather than implicit.[30] In a traditional computer program the logic is embedded in code that can typically only be reviewed by an IT specialist. With an expert system the goal was to specify the rules in a format that was intuitive and easily understood, reviewed, and even edited by domain experts rather than IT experts. The benefits of this explicit knowledge representation were rapid development and ease of maintenance.

Ease of maintenance is the most obvious benefit. This was achieved in two ways. First, by removing the need to write conventional code, many of the normal problems that can be caused by even small changes to a system could be avoided with expert systems. Essentially, the logical flow of the program (at least at the highest level) was simply a given for the system, simply invoke the inference engine. This also was a reason for the second benefit: rapid prototyping. With an expert system shell it was possible to enter a few rules and have a prototype developed in days rather than the months or year typically associated with complex IT projects.

A claim for expert system shells that was often made was that they removed the need for trained programmers and that experts could develop systems themselves. In reality, this was seldom if ever true. While the rules for an expert system were more comprehensible than typical computer code, they still had a formal syntax where a misplaced comma or other character could cause havoc as with any other computer language. Also, as expert systems moved from prototypes in the lab to deployment in the business world, issues of integration and maintenance became far more critical. Inevitably demands to integrate with, and take advantage of, large legacy databases and systems arose. To accomplish this, integration required the same skills as any other type of system.[31]


Disadvantages

The most common disadvantage cited for expert systems in the academic literature is the knowledge acquisition problem. Obtaining the time of domain experts for any software application is always difficult, but for expert systems it was especially difficult because the experts were by definition highly valued and in constant demand by the organization. As a result of this problem, a great deal of research in the later years of expert systems was focused on tools for knowledge acquisition, to help automate the process of designing, debugging, and maintaining rules defined by experts. However, when looking at the life-cycle of expert systems in actual use, other problems – essentially the same problems as those of any other large system – seem at least as critical as knowledge acquisition: integration, access to large databases, and performance.[32][33]

Performance could be especially problematic because early expert systems were built using tools (such as earlier Lisp versions) that interpreted code expressions without first compiling them. This provided a powerful development environment, but with the drawback that it was virtually impossible to match the efficiency of the fastest compiled languages (such as C). System and database integration were difficult for early expert systems because the tools were mostly in languages and platforms that were neither familiar to nor welcome in most corporate IT environments – programming languages such as Lisp and Prolog, and hardware platforms such as Lisp machines and personal computers. As a result, much effort in the later stages of expert system tool development was focused on integrating with legacy environments such as COBOL and large database systems, and on porting to more standard platforms. These issues were resolved mainly by the client-server paradigm shift, as PCs were gradually accepted in the IT environment as a legitimate platform for serious business system development and as affordable minicomputer servers provided the processing power needed for AI applications.[34]


Applications

Hayes-Roth divides expert systems applications into 10 categories illustrated in the following table. The example applications were not in the original Hayes-Roth table, and some of them arose well afterward. Any application that is not footnoted is described in the Hayes-Roth book.[35] Also, while these categories provide an intuitive framework to describe the space of expert systems applications, they are not rigid categories, and in some cases an application may show traits of more than one category.

  Category         Problem addressed                                                      Examples
  ---------------- ---------------------------------------------------------------------- ------------------------------------------------------------------------------------
  Interpretation   Inferring situation descriptions from sensor data                      Hearsay (speech recognition), PROSPECTOR
  Prediction       Inferring likely consequences of given situations                      Preterm Birth Risk Assessment[36]
  Diagnosis        Inferring system malfunctions from observables                         CADUCEUS, MYCIN, PUFF, Mistral,[37] Eydenet,[38] Kaleidos[39]
  Design           Configuring objects under constraints                                  Dendral, Mortgage Loan Advisor, R1 (DEC VAX Configuration), SID (DEC VAX 9000 CPU)
  Planning         Designing actions                                                      Mission Planning for Autonomous Underwater Vehicle[40]
  Monitoring       Comparing observations to plan vulnerabilities                         REACTOR[41]
  Debugging        Providing incremental solutions for complex problems                   SAINT, MATHLAB, MACSYMA
  Repair           Executing a plan to administer a prescribed remedy                     Toxic Spill Crisis Management
  Instruction      Diagnosing, assessing, and repairing student behavior                  SMH.PAL,[42] Intelligent Clinical Training,[43] STEAMER[44]
  Control          Interpreting, predicting, repairing, and monitoring system behaviors   Real Time Process Control,[45] Space Shuttle Mission Control[46]

Hearsay was an early attempt at solving voice recognition through an expert systems approach. For the most part this category or expert systems was not all that successful. Hearsay and all interpretation systems are essentially pattern recognition systems—looking for patterns in noisy data. In the case of Hearsay recognizing phonemes in an audio stream. Other early examples were analyzing sonar data to detect Russian submarines. These kinds of systems proved much more amenable to a neural network AI solution than a rule-based approach.

CADUCEUS and MYCIN were medical diagnosis systems. The user describes their symptoms to the computer as they would to a doctor and the computer returns a medical diagnosis.

Dendral was a tool to study hypothesis formation in the identification of organic molecules. The general problem it solved—designing a solution given a set of constraints—was one of the most successful areas for early expert systems applied to business domains such as salespeople configuring Digital Equipment Corporation (DEC) VAX computers and mortgage loan application development.

SMH.PAL is an expert system for the assessment of students with multiple disabilities.[47]

Mistral [48] is an expert system to monitor dam safety, developed in the 90's by Ismes (Italy). It gets data from an automatic monitoring system and performs a diagnosis of the state of the dam. Its first copy, installed in 1992 on the Ridracoli Dam (Italy), is still operational 24/7/365. It has been installed on several dams in Italy and abroad (e.g., Itaipu Dam in Brazil), and on landslide sites under the name of Eydenet,[49] and on monuments under the name of Kaleidos.[50] Mistral is a registered trade mark of CESI.


See also

-   AI winter
-   CLIPS
-   Constraint logic programming
-   Constraint satisfaction
-   Knowledge engineering
-   Learning classifier system
-   Rule-based machine learning


References


External links

-   -   Expert System tutorial on Code Project

Category:Artificial intelligence Category:Decision support systems Expert_systems Category:Information systems

[1]

[2]

[3]

[4]

[5] Nwigbo Stella and Agbo Okechuku Chuks, School of Science Education, Expert system: a catalyst in educational development in Nigeria: "_Knowledge-based systems collect the small fragments of human know-how into a knowledge-base which is used to reason through a problem, using the knowledge that is appropriated_"

[6] kenyon.edu: AI Timeline, retrieved October 27, 2018

[7] Edward Feigenbaum, 1977. Paraphrased by Hayes-Roth, et al.

[8]

[9]

[10] George F. Luger and William A. Stubblefield, Benjamin/Cummings Publishers, Rule Based Expert System Shell: example of code using the Prolog rule based expert system shell

[11] A. Michiels, Université de Liège, Belgique: "PROLOG, the first declarative language

[12]

[13] Durkin, J. Expert Systems: Catalog of Applications. Intelligent Computer Systems, Inc., Akron, OH, 1993.

[14]

[15]

[16]

[17] Carl S. Gibson, et al, VAX 9000 SERIES, Digital Technical Journal of Digital Equipment Corporation, Volume 2, Number 4, Fall 1990, pp118-129.

[18] AI Expert Newsletter: W is for Winter

[19] Leith P., "The rise and fall of the legal expert system", in European Journal of Law and Technology, Vol 1, Issue 1, 2010

[20]

[21]

[22]

[23]

[24]

[25]

[26] Nabil Arman, Polytechnic University of Palestine, January 2007, Fault Detection in Dynamic Rule Bases Using Spanning Trees and Disjoin Sets: ""

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

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]