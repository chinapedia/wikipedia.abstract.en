CYC () is the world's longest-lived artificial intelligence project, attempting to assemble a comprehensive ontology and knowledge base that spans the basic concepts and "rules of thumb" about how the world works (think common sense knowledge but focusing more on things that rarely get written down or said, in contrast with facts one might find somewhere on the internet or retrieve via a search engine or Wikipedia), with the goal of enabling AI applications to perform human-like reasoning and be less "brittle" when confronted with novel situations that were not preconceived.

Douglas Lenat began the project in July 1984 at MCC, where he was Principal Scientist 1984–1994, and then, since January 1995, has been under active development by the Cycorp company, where he is the CEO.


Overview

The need for a massive symbolic artificial intelligence project of this kind was born in the early 1980s out of a large number of experiences early AI researchers had, in the previous 25 years, wherein their AI programs would generate encouraging early results but then fail to "scale up"—fail to cope with novel situations and problems outside the narrow area they were conceived and engineered to cope with. Douglas Lenat and Alan Kay publicized this need,[1][2][3] and organized a meeting at Stanford in 1983 to consider the problem; the back-of-the-envelope calculations by them and colleagues including Marvin Minsky, Allen Newell, Edward Feigenbaum, and John McCarthy indicated that that effort would require between 1000 and 3000 person-years of effort, hence not fit into the standard academic project model. Fortuitously, events within a year of that meeting enabled that Manhattan-Project-sized effort to get underway.

The project was started in July 1984 as the flagship project of the 400-person Microelectronics and Computer Technology Corporation, a research consortium started by two dozen large United States based corporations "to counter a then ominous Japanese effort in AI, the so-called "fifth-generation" project."[4] The US Government reacted to the Fifth Generation threat by passing the National Cooperative Research Act of 1984, which for the first time allowed US companies to "collude" on long-term high-risk high-payoff research, and MCC and Sematech sprang up to take advantage of that ten-year opportunity. MCC's first President and CEO was Bobby Ray Inman, former NSA Director and Central Intelligence Agency deputy director.

The objective of the Cyc project was to codify, in machine-usable form, the millions of pieces of knowledge that compose human common sense.[5] This entailed, along the way, (1) developing an adequately expressive representation language, CycL,[6] (2) developing an ontology spanning all human concepts down to some appropriate level of detail,[7] (3) developing a knowledge base on that ontological framework,[8] comprising all human knowledge about those concepts down to some appropriate level of detail, and (4) developing an inference engine exponentially faster than those used in then-conventional expert systems,[9][10] to be able to infer the same types and depth of conclusions that humans are capable of, given their knowledge of the world.

In slightly more detail:

-   The CycL representation language started as an extension of RLL[11][12] (the so-called Representation Language Language, developed in 1979-1980 by Professor Douglas Lenat at Stanford University and his graduate student Russell Greiner), but within a few years of the launch of the Cyc project it became clear that even representing a typical news story or novel or advertisement would require more than the expressive power of full first order logic, namely second order predicate calculus ("What is the relationship between rain and water?") and then even higher-level orders of logic including modal logic, reflection (enabling the system to reason about its progress so far, on a problem on which it's working), and context logic (enabling the system to reason explicitly about the contexts in which its various premises and conclusions might hold), non-monotonic logic, and circumscription. So, by 1989,[13] CycL had expanded in expressive power to Higher Order Logic (HOL).
    -   Triplestore representations (which are akin to the Frame -and-slot representation languages of the 1970s from which RLL sprang) are widespread today in AI. It may be useful to cite a few examples that stress or break that type of representation, typical of the examples that forced the Cyc project to move from a triplestore representation to a much more expressive one during the period 1984-1989:[14] English sentences including negations ("Fred does not own a dog"), nested quantifiers ("Every American has a mother" means for-all x there-exists y... but "Every American has a President" means there-exists y such that for-all x...), nested modals such as "The United States believes that Germany wants NATO to avoid pursuing..." and it's even awkward to represent, in a Triplestore, relationships of arity higher than 2, such as "Los Angeles is between San Diego and San Francisco along US101."
-   The ontology of Cyc terms grew to about 100,000 during the first decade of the project, to 1994, and as of 2017 contains about 1,500,000 terms. The ontology includes:
    -   416,000 collections (types, sorts, natural kinds, which includes both types of things such as Fish and types of actions such as Fishing)
    -   a little over a million individuals representing
        -   42,500 predicates (relations, attributes, fields, properties, functions),
        -   about a million generally well known entities such as TheUnitedStatesOfAmerica, BarackObama, TheSigningOfTheUSDeclarationOfIndependence, etc.
        -   An arbitrarily large number of additional terms are also _implicitly_ present in the Cyc ontology, in the sense that there are term-denoting functions such as CalendarYearFn (when given the argument 2016, it denotes the calendar year 2016), GovernmentFn (when given the argument France it denotes the government of France), Meter (when given the argument 2016, it denotes a distance of 2.016 kilometers), and nestings and compositions of such function-denoting terms.
-   The Cyc knowledge base of general common-sense rules and assertions involving those ontological terms was largely created by hand axiom-writing; it grew to about 1 million in 1994, and as of 2017 is about 24.5 million and has taken well over 1,000 person-years of effort to construct.
    -   It is important to understand that the Cyc ontological engineers strive to keep those numbers as _small_ as possible, not inflate them, so long as the _deductive closure_ of the knowledge base isn't reduced. Suppose Cyc is told about one billion individual people, animals, etc. Then it could be told 10¹⁸ facts of the form "Mickey Mouse is not the same individual as Bullwinkle the Moose". But instead of that, one could tell Cyc 10,000 Linnaean Taxonomy rules followed by just 10⁸ rules of the form "No mouse is a moose". And even more compactly, Cyc could instead just be given those 10,000 Linnaean Taxonomy rules followed by just one rule of the form "For any two Linnaean taxons, if neither is explicitly known to be a supertaxon of the other, then they are disjoint". Those 10,001 assertions have the same deductive closure as the earlier-mentioned 10¹⁸ facts.
-   The Cyc inference engine design separates the epistemological problem (what content should be in the Cyc KB) from the heuristic problem (how Cyc could efficiently infer arguments hundreds of steps deep, in a sea of tens of millions of axioms). To do the former, the CycL language and well-understood logical inference might suffice,but for the latter Cyc used a community-of-agents architecture, where specialized reasoning modules, each with its own data structure and algorithm, "raised their hand" if they could efficiently make progress on any of the currently open sub-problems. At the end of the first decade, 1994, there were 20 such heuristic level (HL) modules;[15] as of 2017 there are over 1,050 HL modules.[16]
    -   Some of these HL modules are very general, such as a module that caches the Kleene Star (transitive closure) of all the commonly-used transitive relations in Cyc's ontology.
    -   Some are domain-specific, such as a chemical equation-balancer. These can be and often are an "escape" to (pointer to) some externally available program or webservice or online database, such as a module to quickly "compute" the current population of a city by knowing where/how to look that up.

CycL has a publicly released specification[17] and dozens of HL modules were described in,[18] but the actual Cyc inference engine code, and the full list of 1000+ HL modules, is Cycorp-proprietary.[19]

The name "Cyc" (from "encyclopedia", pronounced like _syke_) is a registered trademark owned by Cycorp. Access to Cyc is through paid licenses, but _bona fide_ AI research groups are given research-only no-cost licenses (cf. ResearchCyc); there are currently over 600 such groups worldwide with such licenses.

Typical pieces of knowledge represented in the Cyc knowledge base are "Every tree is a plant" and "Plants die eventually". When asked whether trees die, the inference engine can draw the obvious conclusion and answer the question correctly.

Most of Cyc's knowledge, outside math and games, is only true by default. For example, Cyc knows that _as a default_ parents love their children, when you're made happy you smile, taking your first step is a big accomplishment, when someone you love has a big accomplishment that makes you happy, and only adults have children. When asked whether a picture captioned "Someone watching his daughter take her first step" contains a smiling adult person, Cyc can logically infer that the answer is _Yes_, and "show its work" by presenting the step by step logical argument using those five pieces of knowledge from its knowledge base. These are formulated in the language CycL, which is based on predicate calculus and has a syntax similar to that of the Lisp programming language.

In 2008, Cyc resources were mapped to many Wikipedia articles,[20] potentially easing connecting with other open datasets like DBpedia and Freebase.

Much of the current work Cyc continues to be knowledge engineering, representing facts about the world by hand, and implementing efficient inference mechanisms on that knowledge. Increasingly, however, work at Cycorp involves giving the Cyc system the ability to communicate with end users in natural language, and to assist with the ongoing knowledge formation process via machine learning and natural language understanding. Another large effort at Cycorp is building a suite of Cyc-powered ontological engineering tools to lower the bar to entry for individuals to contribute to, edit, browse, and query Cyc.

Like many companies, Cycorp has ambitions to use Cyc's natural language processing[21] to parse the entire internet to extract structured data;[22] unlike all others, it is able to call on the Cyc system itself to act as an inductive bias and as an adjudicator of ambiguity, metaphor, and ellipsis.


Knowledge base

The concept names in Cyc are CycL _constants_.[23] Constants start with an optional "#$" and are case-sensitive. There are constants for:

-   Individual items known as _individuals_, such as #$BillClinton or #$France.
-   _Collections_, such as #$Tree-ThePlant (containing all trees) or #$EquivalenceRelation (containing all equivalence relations). A member of a collection is called an _instance_ of that collection.[24]
-   _Functions_, which produce new terms from given ones. For example, #$FruitFn, when provided with an argument describing a type (or collection) of plants, will return the collection of its fruits. By convention, function constants start with an upper-case letter and end with the string "Fn".
-   _Truth functions_, which can apply to one or more other concepts and return either true or false. For example, #$siblings is the sibling relationship, true if the two arguments are siblings. By convention, truth function constants start with a lower-case letter. Truth functions may be broken down into logical connectives (such as #$and, #$or, #$not, #$implies), quantifiers (#$forAll, #$thereExists, etc.) and predicates.

Two important binary predicates are #$isa and #$genls. The first one describes that one item is an instance of some collection, the second one that one collection is a subcollection of another one. Facts about concepts are asserted using certain CycL _sentences_. Predicates are written before their arguments, in parentheses:

 (#$isa #$BillClinton #$UnitedStatesPresident)

"Bill Clinton belongs to the collection of U.S. presidents" and

 (#$genls #$Tree-ThePlant #$Plant)

"All trees are plants".

 (#$capitalCity #$France #$Paris)

"Paris is the capital of France."

Sentences can also contain variables, strings starting with "?". These sentences are called "rules". One important rule asserted about the #$isa predicate reads

(#$implies
   (#$and
     (#$isa ?OBJ ?SUBSET)
     (#$genls ?SUBSET ?SUPERSET))
   (#$isa ?OBJ ?SUPERSET))

with the interpretation "if OBJ is an instance of the collection SUBSET and SUBSET is a subcollection of SUPERSET, then OBJ is an instance of the collection SUPERSET". Another typical example is

 (#$relationAllExists #$biologicalMother #$ChordataPhylum #$FemaleAnimal)

which means that for every instance of the collection #$ChordataPhylum (i.e. for every chordate), there exists a female animal (instance of #$FemaleAnimal), which is its mother (described by the predicate #$biologicalMother).[25]

The knowledge base is divided into _microtheories_ (Mt), collections of concepts and facts typically pertaining to one particular realm of knowledge. Unlike the knowledge base as a whole, each microtheory must be free from _monotonic_ contradictions. Each microtheory is a first-class object in the Cyc ontology; it has a name that is a regular constant; microtheory constants contain the string "Mt" by convention. An example is #$MathMt, the microtheory containing mathematical knowledge. The microtheories can inherit from each other and are organized in a hierarchy: one specialization of #$MathMt is #$GeometryGMt, the microtheory about geometry.


Inference engine

An inference engine is a computer program that tries to derive answers from a knowledge base. The Cyc inference engine performs general logical deduction (including modus ponens, modus tollens, universal quantification and existential quantification).[26] It also performs inductive reasoning, statistical machine learning and symbolic machine learning, and abductive reasoning (but of course sparingly and using the existing knowledge base as a filter and guide).


Releases

OpenCyc

The first version of OpenCyc was released in spring 2002 and contained only 6,000 concepts and 60,000 facts. The knowledge base was released under the Apache License. Cycorp stated its intention to release OpenCyc under parallel, unrestricted licences to meet the needs of its users. The CycL and SubL interpreter (the program that allows users to browse and edit the database as well as to draw inferences) was released free of charge, but only as a binary, without source code. It was made available for Linux and Microsoft Windows. The open source Texai[27] project released the RDF-compatible content extracted from OpenCyc.[28] A version of OpenCyc, 4.0, was released in June 2012. OpenCyc 4.0 included much of the Cyc ontology at that time, containing hundreds of thousands of terms, along with millions of assertions relating the terms to each other; however, these are mainly taxonomic assertions, not the complex rules available in Cyc. The OpenCyc 4.0 knowledge base contained 239,000 concepts and 2,093,000 facts.

The main point of releasing OpenCyc was to help AI researchers understand what was _missing_ from what they now call ontologies and knowledge graphs. It's useful and important to have properly taxonomized concepts like person, night, sleep, lying down, waking, happy, etc., but what's _missing_ from the OpenCyc content about those terms, but present in the Cyc KB content, are the various rules of thumb that most of us share about those terms: that (as a default, in the ModernWesternHumanCultureMt) each person sleeps at night, sleeps lying down, can be woken up, is not happy about being woken up, _and so on._ That point does not require continually-updated releases of OpenCyc, so, as of 2017, OpenCyc is no longer available.

ResearchCyc

In July 2006, Cycorp released the executable of ResearchCyc 1.0, a version of Cyc aimed at the research community, at no charge. (ResearchCyc was in beta stage of development during all of 2004; a beta version was released in February 2005.) In addition to the taxonomic information contained in OpenCyc, ResearchCyc includes significantly more semantic knowledge (i.e., additional facts and rules of thumb) involving the concepts in its knowledge base; it also includes a large lexicon, English parsing and generation tools, and Java based interfaces for knowledge editing and querying. In addition it contains a system for Ontology-based data integration. As of 2017, regular releases of ResearchCyc continue to appear, and are licensed to over 600 research groups around the world at no cost for noncommercial research purposes.


Applications

There have been over 100 successful applications of Cyc;[29] listed here are a few mutually dissimilar instances:

Pharmaceutical Term Thesaurus Manager/Integrator

For over a decade, Glaxo has used Cyc to semi-automatically integrate all the large (hundreds of thousands of terms) thesauri of pharmaceutical-industry terms that reflect differing usage across companies, countries, years, and sub-industries.[30] This ontology integration task requires domain knowledge, shallow semantic knowledge, but also arbitrarily deep common sense knowledge and reasoning. Pharma vocabulary varies across countries, (sub-) industries, companies, departments, and decades of time. E.g., what’s a'' gel pak''? What’s the “street name” for _ranitidine hydrochloride_? Each of these ''n ''controlled vocabularies is an ontology with approximately 300k terms. Glaxo researchers need to issue a query _in their current vocabulary_, have it translated into a neutral “true meaning”, and then have that transformed in the opposite direction to find potential matches against documents each of which was written to comply with a particular known vocabulary. They had been using a large staff to do that manually. Cyc is used as the universal interlingua capable of representing the union of all the terms’ “true meanings”, and capable of representing the 300k transformations between each of those controlled vocabularies and Cyc, thereby converting an _n2_ problem into a linear one without introducing the usual sort of “telephone game” attenuation of meaning. Furthermore, creating each of those 300k mappings for each thesaurus is done in a largely automated fashion, by Cyc.

Terrorism Knowledge Base

The comprehensive Terrorism Knowledge Base is an application of Cyc in development that will try to ultimately contain all relevant knowledge about "terrorist" groups, their members, leaders, ideology, founders, sponsors, affiliations, facilities, locations, finances, capabilities, intentions, behaviors, tactics, and full descriptions of specific terrorist events. The knowledge is stored as statements in mathematical logic, suitable for computer understanding and reasoning.[31]

Cleveland Clinic Foundation

The Cleveland Clinic has used Cyc to develop a natural language query interface of biomedical information, spanning decades of information on cardiothoracic surgeries.[32] A query is parsed into a set of CycL (higher-order logic) fragments with open variables (e.g., "this question is talking about a person who developed an endocarditis infection", "this question is talking about a subset of Cleveland Clinic patients who underwent surgery there in 2009", etc.); then various constraints are applied (medical domain knowledge, common sense, discourse pragmatics, syntax) to see how those fragments could possibly fit together into one semantically meaningful formal query; significantly, in most cases, there is exactly _one and only one_ such way of incorporating and integrating those fragments.[33] Integrating the fragments involves (i) deciding which open variables in which fragments actually represent the same variable, and (ii) for all the final variables, decide what order and scope of quantification that variable should have, and what type (universal or existential). That logical (CycL) query is then converted into a SPARQL query that is passed to the CCF SemanticDB that is its data lake.

MathCraft

One Cyc application aims to help students doing math at a 6th grade level, helping them much more deeply understand that subject matter.[34] It is based on the experience that we often have _thought_ we understood something, but only _really_ understood it after we had to explain or teach it to someone else. Unlike almost all other educational software, where the computer plays the role of the teacher, this application of Cyc, called MathCraft,[35] has Cyc play the role of a fellow student who is always slightly more confused than you, the user, are about the subject. The user's role is to observe the Cyc avatar and give it advice, correct its errors, mentor it, get it to see what it's doing wrong, etc. As the user gives good advice, Cyc allows the avatar to make fewer mistakes of that type, hence, from the user's point of view, it seems as though the user has just successfully taught it something. This is a variation of Learning by Teaching.


Criticisms

The Cyc project has been described as "one of the most controversial endeavors of the artificial intelligence history".[36] Catherine Havasi, CEO of Luminoso, says that Cyc is the predecessor project to IBM's Watson.[37] Machine-learning scientist Pedro Domingos refers to the project as a "catastrophic failure" for several reasons, including the unending amount of data required to produce any viable results and the inability for Cyc to evolve on its own.[38]

Robin Hanson, a professor of economics at George Mason University, gives a more balanced analysis:

A similar sentiment was expressed by Marvin Minsky: "Unfortunately, the strategies most popular among AI researchers in the 1980s have come to a dead end," said Minsky. So-called “expert systems,” which emulated human expertise within tightly defined subject areas like law and medicine, could match users’ queries to relevant diagnoses, papers and abstracts, yet they could not learn concepts that most children know by the time they are 3 years old. “For each different kind of problem,” said Minsky, “the construction of expert systems had to start all over again, because they didn’t accumulate common-sense knowledge.” Only one researcher has committed himself to the colossal task of building a comprehensive common-sense reasoning system, according to Minsky. Douglas Lenat, through his Cyc project, has directed the line-by-line entry of more than 1 million rules into a commonsense knowledge base."[39]

Gary Marcus, a professor of psychology and neural science at New York University and the cofounder of an AI company called Geometric Intelligence, says "it represents an approach that is very different from all the deep-learning stuff that has been in the news.”[40] This is consistent with Doug Lenat's position that "Sometimes the _veneer_ of intelligence is not enough".[41]

Stephen Wolfram writes:

Every few years since it began publishing (1993), there is a new Wired Magazine article about Cyc,[42][43][44] some positive and some negative (including one issue[45] which contained one of each).


Notable employees

This is a list of some of the notable people who work or have worked on Cyc either while it was a project at MCC (where Cyc was first started) or Cycorp.

-   Douglas Lenat
-   Michael Witbrock
-   Pat Hayes
-   Ramanathan V. Guha
-   Stuart J. Russell
-   Srinija Srinivasan
-   Jared Friedman
-   John McCarthy
-   Dexter Pratt


See also

-   BabelNet
-   Categorical logic
-   Chinese room
-   DARPA Agent Markup Language
-   DBpedia
-   Fifth generation computer
-   Freebase
-   Large Scale Concept Ontology for Multimedia
-   Mindpixel
-   Never-Ending Language Learning
-   Open Mind Common Sense
-   Semantic Web
-   Suggested Upper Merged Ontology
-   SHRDLU
-   True Knowledge
-   UMBEL
-   Wolfram Alpha
-   YAGO


References


Further reading

-   Alan Belasco et al. (2004). "Representing Knowledge Gaps Effectively". In: D. Karagiannis, U. Reimer (Eds.): _Practical Aspects of Knowledge Management, Proceedings of PAKM 2004, Vienna, Austria, December 2–3, 2004_. Springer-Verlag, Berlin Heidelberg.
-   Elisa Bertino, Gian Piero & B.C. Zarria (2001). _Intelligent Database Systems_. Addison-Wesley Professional.
-   John Cabral & others (2005). "Converting Semantic Meta-Knowledge into Inductive Bias". In: _Proceedings of the 15th International Conference on Inductive Logic Programming_. Bonn, Germany, August 2005.
-   Jon Curtis et al. (2005). "On the Effective Use of Cyc in a Question Answering System". In: _Papers from the IJCAI Workshop on Knowledge and Reasoning for Answering Questions_. Edinburgh, Scotland: 2005.
-   Chris Deaton et al. (2005). "The Comprehensive Terrorism Knowledge Base in Cyc". In: Proceedings of the 2005 International Conference on Intelligence Analysis, McLean, Virginia, May 2005.
-   Kenneth Forbus et al. (2005) ."Combining analogy, intelligent information retrieval, and knowledge integration for analysis: A preliminary report". In: _Proceedings of the 2005 International Conference on Intelligence Analysis_, McLean, Virginia, May 2005
-   douglas foxvog (2010), "Cyc". In: ''Theory and Applications of Ontology: Computer Applications", Springer.
-   Fritz Lehmann and d. foxvog (1998), "Putting Flesh on the Bones: Issues that Arise in Creating Anatomical Knowledge Bases with Rich Relational Structures". In: _Knowledge Sharing across Biological and Medical Knowledge Based Systems_, AAAI.
-   Douglas Lenat and R. V. Guha (1990). _Building Large Knowledge-Based Systems: Representation and Inference in the Cyc Project_. Addison-Wesley. .
-   James Masters (2002). "Structured Knowledge Source Integration and its applications to information fusion". In: _Proceedings of the Fifth International Conference on Information Fusion_. Annapolis, MD, July 2002.
-   James Masters and Z. Güngördü (2003). ."Structured Knowledge Source Integration: A Progress Report" In: _Integration of Knowledge Intensive Multiagent Systems_. Cambridge, Massachusetts, USA, 2003.
-   Cynthia Matuszek et al. (2006). "An Introduction to the Syntax and Content of Cyc.". In: _Proc. of the 2006 AAAI Spring Symposium on Formalizing and Compiling Background Knowledge and Its Applications to Knowledge Representation and Question Answering_. Stanford, 2006
-   Cynthia Matuszek et al. (2005) ."Searching for Common Sense: Populating Cyc from the Web". In: _Proceedings of the Twentieth National Conference on Artificial Intelligence_. Pittsburgh, Pennsylvania, July 2005.
-   Tom O'Hara et al. (2003). "Inducing criteria for mass noun lexical mappings using the Cyc Knowledge Base and its Extension to WordNet". In: _Proceedings of the Fifth International Workshop on Computational Semantics_. Tilburg, 2003.
-   Fabrizio Morbini and Lenhart Schubert (2009). "Evaluation of EPILOG: a Reasoner for Episodic Logic". University of Rochester, Commonsense '09 Conference (describes Cyc's library of ~1600 'Commonsense Tests')
-   Kathy Panton et al. (2002). "Knowledge Formation and Dialogue Using the KRAKEN Toolset". In: _Eighteenth National Conference on Artificial Intelligence_. Edmonton, Canada, 2002.
-   Deepak Ramachandran P. Reagan & K. Goolsbey (2005). "First-Orderized ResearchCyc: Expressivity and Efficiency in a Common-Sense Ontology". In: _Papers from the AAAI Workshop on Contexts and Ontologies: Theory, Practice and Applications_. Pittsburgh, Pennsylvania, July 2005.
-   Stephen Reed and D. Lenat (2002). "Mapping Ontologies into Cyc". In: _AAAI 2002 Conference Workshop on Ontologies For The Semantic Web_. Edmonton, Canada, July 2002.
-   Benjamin Rode et al. (2005). "Towards a Model of Pattern Recovery in Relational Data". In: _Proceedings of the 2005 International Conference on Intelligence Analysis_. McLean, Virginia, May 2005.
-   Dave Schneider et al. (2005). "Gathering and Managing Facts for Intelligence Analysis". In: ''Proceedings of the 2005 International Conference on Intelligence Analysis". McLean, Virginia, May 2005.
-   Blake Shepard et al. (2005). "A Knowledge-Based Approach to Network Security: Applying Cyc in the Domain of Network Risk Assessment". In: _Proceedings of the Seventeenth Innovative Applications of Artificial Intelligence Conference_. Pittsburgh, Pennsylvania, July 2005.
-   Nick Siegel et al. (2004). "Agent Architectures: Combining the Strengths of Software Engineering and Cognitive Systems". In: _Papers from the AAAI Workshop on Intelligent Agent Architectures: Combining the Strengths of Software Engineering and Cognitive Systems_. Technical Report WS-04-07, pp. 74–79. Menlo Park, California: AAAI Press, 2004.
-   Nick Siegel et al. (2005). Hypothesis Generation and Evidence Assembly for Intelligence Analysis: Cycorp's Nooscape Application". In Proceedings of the 2005 International Conference on Intelligence Analysis, McLean, Virginia, May 2005.
-   Michael Witbrock et al. (2002). "An Interactive Dialogue System for Knowledge Acquisition in Cyc". In: _Proceedings of the Eighteenth International Joint Conference on Artificial Intelligence_. Acapulco, Mexico, 2003.
-   Michael Witbrock et al. (2004). "Automated OWL Annotation Assisted by a Large Knowledge Base". In: _Workshop Notes of the 2004 Workshop on Knowledge Markup and Semantic Annotation at the 3rd International Semantic Web Conference ISWC2004_. Hiroshima, Japan, November 2004, pp. 71–80.
-   Michael Witbrock et al. (2005). "Knowledge Begets Knowledge: Steps towards Assisted Knowledge Acquisition in Cyc". In: _Papers from the 2005 AAAI Spring Symposium on Knowledge Collection from Volunteer Contributors (KCVC)_. pp. 99–105. Stanford, California, March 2005.
-   William Jarrold (2001). "Validation of Intelligence in Large Rule-Based Systems with Common Sense". "Model-Based Validation of Intelligence: Papers from the 2001 AAAI Symposium" (AAAI Technical Report SS-01-04).
-   William Jarrold. (2003). Using an Ontology to Evaluate a Large Rule Based Ontology: Theory and Practice. {\em Performance Metrics for Intelligent Systems PerMIS '03} (NIST Special Publication 1014).


External links

-   Cycorp homepage

Category:Common Lisp software Category:Ontology (information science) Category:Knowledge bases Category:Cognitive architecture

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

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27] The open source Texai project

[28] Texai SourceForge project files

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

[41]  CogWorld|website=cognitiveworld.com|language=en| author= Doug Lenat | date=May 15, 2017|access-date=2017-11-29}}

[42]

[43]

[44]

[45]