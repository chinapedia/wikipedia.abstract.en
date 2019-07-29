SMILES.png

The SIMPLIFIED MOLECULAR-INPUT LINE-ENTRY SYSTEM (SMILES) is a specification in the form of a line notation for describing the structure of chemical species using short ASCII strings. SMILES strings can be imported by most molecule editors for conversion back into two-dimensional drawings or three-dimensional models of the molecules.

The original SMILES specification was initiated in the 1980s. It has since been modified and extended. In 2007, an open standard called OpenSMILES was developed in the open-source chemistry community. Other linear notations include the Wiswesser line notation (WLN), ROSDAL, and SYBYL Line Notation (SLN).


History

The original SMILES specification was initiated by David Weininger at the USEPA Mid-Continent Ecology Division Laboratory in Duluth in the 1980s.[1][2][3][4] Acknowledged for their parts in the early development were "Gilman Veith and Rose Russo (USEPA) and Albert Leo and Corwin Hansch (Pomona College) for supporting the work, and Arthur Weininger (Pomona; Daylight CIS) and Jeremy Scofield (Cedar River Software, Renton, WA) for assistance in programming the system."[5] The Environmental Protection Agency funded the initial project to develop SMILES.[6][7]

It has since been modified and extended by others, most notably by Daylight Chemical Information Systems. In 2007, an open standard called "OpenSMILES" was developed by the Blue Obelisk open-source chemistry community. Other 'linear' notations include the Wiswesser Line Notation (WLN), ROSDAL and SLN (Tripos Inc).

In July 2006, the IUPAC introduced the InChI as a standard for formula representation. SMILES is generally considered to have the advantage of being slightly more human-readable than InChI; it also has a wide base of software support with extensive theoretical backing (such as graph theory).


Terminology

The term SMILES refers to a line notation for encoding molecular structures and specific instances should strictly be called SMILES strings. However, the term SMILES is also commonly used to refer to both a single SMILES string and a number of SMILES strings; the exact meaning is usually apparent from the context. The terms "canonical" and "isomeric" can lead to some confusion when applied to SMILES. The terms describe different attributes of SMILES strings and are not mutually exclusive.

Typically, a number of equally valid SMILES strings can be written for a molecule. For example, CCO, OCC and C(O)C all specify the structure of ethanol. Algorithms have been developed to generate the same SMILES string for a given molecule; of the many possible strings, these algorithms choose only one of them. This SMILES is unique for each structure, although dependent on the canonicalization algorithm used to generate it, and is termed the canonical SMILES. These algorithms first convert the SMILES to an internal representation of the molecular structure; an algorithm then examines that structure and produces a unique SMILES string. Various algorithms for generating canonical SMILES have been developed and include those by Daylight Chemical Information Systems, OpenEye Scientific Software, MEDIT, Chemical Computing Group, MolSoft LLC, and the Chemistry Development Kit. A common application of canonical SMILES is indexing and ensuring uniqueness of molecules in a database.

The original paper that described the CANGEN[8] algorithm claimed to generate unique SMILES strings for graphs representing molecules, but the algorithm fails for a number of simple cases (e.g. cuneane, 1,2-dicyclopropylethane) and cannot be considered a correct method for representing a graph canonically.[9] There is currently no systematic comparison across commercial software to test if such flaws exist in those packages.

SMILES notation allows the specification of configuration at tetrahedral centers, and double bond geometry. These are structural features that cannot be specified by connectivity alone and SMILES which encode this information are termed isomeric SMILES. A notable feature of these rules is that they allow rigorous partial specification of chirality. The term isomeric SMILES is also applied to SMILES in which isotopes are specified.


Graph-based definition

In terms of a graph-based computational procedure, SMILES is a string obtained by printing the symbol nodes encountered in a depth-first tree traversal of a chemical graph. The chemical graph is first trimmed to remove hydrogen atoms and cycles are broken to turn it into a spanning tree. Where cycles have been broken, numeric suffix labels are included to indicate the connected nodes. Parentheses are used to indicate points of branching on the tree.

The resultant SMILES form depends on the choices:

-   of the bonds chosen to break cycles,
-   of the starting atom used for the depth-first traversal, and
-   of the order in which branches are listed when encountered.


Description

Atoms

Atoms are represented by the standard abbreviation of the chemical elements, in square brackets, such as [Au] for gold. Brackets may be omitted in the common case of atoms which:

1.  are in the "organic subset" of B, C, N, O, P, S, F, Cl, Br, or I, and
2.  have no formal charge, and
3.  have the number of hydrogens attached implied by the SMILES valence model (typically their normal valence, but for N and P it is 3 or 5, and for S it is 2, 4 or 6), and
4.  are the normal isotopes, and
5.  are not chiral centers.

All other elements must be enclosed in brackets, and have charges and hydrogens shown explicitly. For instance, the SMILES for water may be written as either O or [OH2]. Hydrogen may also be written as a separate atom; water may also be written as [H]O[H].

When brackets are used, the symbol H is added if the atom in brackets is bonded to one or more hydrogen, followed by the number of hydrogen atoms if greater than 1, then by the sign + for a positive charge or by - for a negative charge. For example, [NH4+] for ammonium (). If there is more than one charge, it is normally written as digit; however, it is also possible to repeat the sign as many times as the ion has charges: one may write either [Ti+4] or [Ti++++] for titanium(IV) Ti⁴⁺. Thus, the hydroxide anion () is represented by [OH-], the hydronium cation () is [OH3+] and the cobalt(III) cation (Co³⁺) is either [Co+3] or [Co+++].

Bonds

A bond is represented using one of the symbols . - = # $ : / \.

Bonds between aliphatic atoms are assumed to be single unless specified otherwise and are implied by adjacency in the SMILES string. Although single bonds may be written as -, this is usually omitted. For example, the SMILES for ethanol may be written as C-C-O, CC-O or C-CO, but is usually written CCO.

Double, triple, and quadruple bonds are represented by the symbols =, #, and $ respectively as illustrated by the SMILES O=C=O (carbon dioxide ), C#N (hydrogen cyanide HCN) and [Ga-]$[As+] (gallium arsenide).

An additional type of bond is a "non-bond", indicated with ., to indicate that two parts are not bonded together. For example, aqueous sodium chloride may be written as [Na+].[Cl-] to show the dissociation.

An aromatic "one and a half" bond may be indicated with :; see below.

Single bonds adjacent to double bonds may be represented using / or \ to indicate stereochemical configuration; see below.

Rings

Ring structures are written by breaking each ring at an arbitrary point (although some choices will lead to a more legible SMILES than others) to make an acyclic structure and adding numerical ring closure labels to show connectivity between non-adjacent atoms.

For example, cyclohexane and dioxane may be written as C1CCCCC1 and O1CCOCC1 respectively. For a second ring, the label will be 2. For example, decalin (decahydronaphthalene) may be written as C1CCCC2C1CCCC2.

SMILES does not require that ring numbers be used in any particular order, and permits ring number zero, although this is rarely used. Also, it is permitted to reuse ring numbers after the first ring has closed, although this usually makes formulae harder to read. For example, bicyclohexyl is usually written as C1CCCCC1C2CCCCC2, but it may also be written as C0CCCCC0C0CCCCC0.

Multiple digits after a single atom indicate multiple ring-closing bonds. For example, an alternative SMILES notation for decalin is C1CCCC2CCCCC12, where the final carbon participates in both ring-closing bonds 1 and 2. If two-digit ring numbers are required, the label is preceded by %, so C%12 is a single ring-closing bond of ring 12.

Either or both of the digits may be preceded by a bond type to indicate the type of the ring-closing bond. For example, cyclopropene is usually written C1=CC1, but if the double bond is chosen as the ring-closing bond, it may be written as C=1CC1, C1CC=1, or C=1CC=1. (The first form is preferred.) C=1CC-1 is illegal, as it explicitly specifies conflicting types for the ring-closing bond.

Ring-closing bonds may not be used to denote multiple bonds. For example, C1C1 is not a valid alternative to C=C for ethylene. However, they may be used with non-bonds; C1.C2.C12 is a peculiar but legal alternative way to write propane, more commonly written CCC.

Choosing a ring-break point adjacent to attached groups can lead to a simpler SMILES form by avoiding branches. For example, cyclohexane-1,2-diol is most simply written as OC1CCCCC1O; choosing a different ring-break location produces a branched structure that requires parentheses to write.

Aromaticity

Aromatic rings such as benzene may be written in one of three forms:

1.  In Kekulé form with alternating single and double bonds, e.g. C1=CC=CC=C1,
2.  Using the aromatic bond symbol :, e.g. C:1:C:C:C:C:C1, or
3.  Most commonly, by writing the constituent B, C, N, O, P and S atoms in lower-case forms b, c, n, o, p and s, respectively.

In the latter case, bonds between two aromatic atoms are assumed (if not explicitly shown) to be aromatic bonds. Thus, benzene, pyridine and furan can be represented respectively by the SMILES c1ccccc1, n1ccccc1 and o1cccc1.

Aromatic nitrogen bonded to hydrogen, as found in pyrrole must be represented as [nH]; thus imidazole is written in SMILES notation as n1c[nH]cc1.

When aromatic atoms are singly bonded to each other, such as in biphenyl, a single bond must be shown explicitly: c1ccccc1-c2ccccc2. This is one of the few cases where the single bond symbol - is required. (In fact, most SMILES software can correctly infer that the bond between the two rings cannot be aromatic and so will accept the nonstandard form c1ccccc1c2ccccc2.)

The Daylight and OpenEye algorithms for generating canonical SMILES differ in their treatment of aromaticity.

3-cyanoanisole_SMILES.svg

Branching

Branches are described with parentheses, as in CCC(=O)O for propionic acid and FC(F)F for fluoroform. The first atom within the parentheses, and the first atom after the parenthesized group, are both bonded to the same branch point atom.

Substituted rings can be written with the branching point in the ring as illustrated by the SMILES COc(c1)cccc1C#N (see depiction) and COc(cc1)ccc1C#N (see depiction) which encode the 3 and 4-cyanoanisole isomers. Writing SMILES for substituted rings in this way can make them more human-readable.

Branches may be written in any order. For example, bromochlorodifluoromethane may be written as FC(Br)(Cl)F, BrC(F)(F)Cl, C(F)(Cl)(F)Br, or the like. Generally, a SMILES form is easiest to read if the simpler branch comes first, with the final, unparenthesized portion being the most complex. The only caveats to such rearrangements are:

-   If ring numbers are reused, they are paired according to their order of appearance in the SMILES string. Some adjustments may be required to preserve the correct pairing.
-   If stereochemistry is specified, adjustments must be made; see below.

The one form of branch which does _not_ require parentheses are ring-closing bonds. Choosing ring-closing bonds appropriately can reduce the number of parentheses required. For example, toluene is normally written as Cc1ccccc1 or c1ccccc1C, avoiding the parentheses required if written as c1ccc(C)ccc1 or c1ccc(ccc1)C.

Stereochemistry

Trans-1,2-difluoroethylene.svg SMILES permits, but does not require, specification of stereoisomers.

Configuration around double bonds is specified using the characters / and \ to show directional single bonds adjacent to a double bond. For example, F/C=C/F (see depiction) is one representation of _trans_-1,2-difluoroethylene, in which the fluorine atoms are on opposite sides of the double bond (as shown in the figure), whereas F/C=C\F (see depiction) is one possible representation of _cis_-1,2-difluoroethylene, in which the fluorines are on the same side of the double bond.

Bond direction symbols always come in groups of at least two, of which the first is arbitrary. That is, F\C=C\F is the same as F/C=C/F. When alternating single-double bonds are present, the groups are larger than two, with the middle directional symbols being adjacent to two double bonds. For example, the common form of (2,4)-hexadiene is written C/C=C/C=C/C.

Beta-Carotene_conjugation.svg, with the eleven double bonds highlighted.]] As a more complex example, beta-carotene has a very long backbone of alternating single and double bonds, which may be written CC1CCC/C(C)=C1/C=C/C(C)=C/C=C/C(C)=C/C=C/C=C(C)/C=C/C=C(C)/C=C/C2=C(C)/CCCC2(C)C.

Configuration at tetrahedral carbon is specified by @ or @@. Consider the four bonds in the order in which they appear, left to right, in the SMILES form. Looking toward the central carbon from the perspective of the first bond, the other three are either clockwise or counter-clockwise. These cases are indicated with @@ and @, respectively (because the @ symbol itself is a counter-clockwise spiral).

L-Alanin_-_L-Alanine.svg For example, consider the amino acid alanine. One of its SMILES forms is NC(C)C(=O)O, more fully written as N[CH](C)C(=O)O. L-Alanine, the more common enantiomer, is written as N[C@@H](C)C(=O)O (see depiction). Looking from the nitrogen–carbon bond, the hydrogen (H), methyl (C), and carboxylate (C(=O)O) groups appear clockwise. D-Alanine can be written as N[C@H](C)C(=O)O (see depiction).

While the order is which branches are specified in SMILES is normally unimportant, in this case it matters; swapping any two groups requires reversing the chirality indicator. If the branches are reversed so alanine is written as NC(C(=O)O)C, then the configuration also reverses; L-alanine is written as N[C@H](C(=O)O)C (see depiction). Other ways of writing it include C[C@H](N)C(=O)O, OC(=O)[C@@H](N)C and OC(=O)[C@H](C)N.

Normally, the first of the four bonds appears to the left of the carbon atom, but if the SMILES is written beginning with the chiral carbon, such as C(C)(N)C(=O)O, then all four are to the right, but the first to appear (the [CH] bond in this case) is used as the reference to order the following three: L-alanine may also be written [C@@H](C)(N)C(=O)O.

The SMILES specification includes elaborations on the @ symbol to indicate stereochemistry around more complex chiral centers, such as trigonal bipyramidal molecular geometry.

Isotopes

Isotopes are specified with a number equal to the integer isotopic mass preceding the atomic symbol. Benzene in which one atom is carbon-14 is written as [14c]1ccccc1 and deuterochloroform is [2H]C(Cl)(Cl)Cl.

Examples

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Molecule                                                                                                                                                                | Structure                                                                                                                                                                                                                                                                                                                                                                                                                                         | SMILES Formula                                                          |
+=========================================================================================================================================================================+===================================================================================================================================================================================================================================================================================================================================================================================================================================================+=========================================================================+
| Dinitrogen                                                                                                                                                              | N≡N                                                                                                                                                                                                                                                                                                                                                                                                                                               | N#N                                                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Methyl isocyanate (MIC)                                                                                                                                                 | CH₃−N=C=O                                                                                                                                                                                                                                                                                                                                                                                                                                         | CN=C=O                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Copper(II) sulfate                                                                                                                                                      | Cu²⁺                                                                                                                                                                                                                                                                                                                                                                                                                                              | [Cu+2].[O-]S(=O)(=O)[O-]                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Vanillin                                                                                                                                                                | Vanillin.svg                                                                                                                                                                                                                                                                                                                                                                                                                                      | O=Cc1ccc(O)c(OC)c1                                                      |
|                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                   | COCc1cc(C=O)ccc1O                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Melatonin (C₁₃H₁₆N₂O₂)                                                                                                                                                  | Melatonin2.svg                                                                                                                                                                                                                                                                                                                                                                                                                                    | CC(=O)NCCC1=CNc2c1cc(OC)cc2                                             |
|                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                   | CC(=O)NCCc1c[nH]c2ccc(OC)cc12                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Flavopereirin (C₁₇H₁₅N₂)                                                                                                                                                | Flavopereirine.svg                                                                                                                                                                                                                                                                                                                                                                                                                                | CCc(c1)ccc2[n+]1ccc3c2[nH]c4c3cccc4                                     |
|                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                   | CCc1c[n+]2ccc3c4ccccc4[nH]c3c2cc1                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Nicotine (C₁₀H₁₄N₂)                                                                                                                                                     | Nicotine.svg                                                                                                                                                                                                                                                                                                                                                                                                                                      | CN1CCC[C@H]1c2cccnc2                                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Oenanthotoxin (C₁₇H₂₂O₂)                                                                                                                                                | Oenanthotoxin-structure.png                                                                                                                                                                                                                                                                                                                                                                                                                       | CCC[C@@H](O)CC\C=C\C=C\C#CC#C\C=C\CO                                    |
|                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                   | CCC[C@@H](O)CC/C=C/C=C/C#CC#C/C=C/CO                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Pyrethrin II (C₂₂H₂₈O₅)                                                                                                                                                 | Pyrethrin-II-2D-skeletal.svg                                                                                                                                                                                                                                                                                                                                                                                                                      | CC1=C(C(=O)C[C@@H]1OC(=O)[C@@H]2[C@H](C2(C)C)/C=C(\C)/C(=O)OC)C/C=C\C=C |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Aflatoxin B₁ (C₁₇H₁₂O₆)                                                                                                                                                 | Aflatoxin_B1.svg                                                                                                                                                                                                                                                                                                                                                                                                                                  | O1C=C[C@H]([C@H]1O2)c3c2cc(OC)c4c3OC(=O)C5=C4CCC(=O)5                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Glucose (glucopyranose) (C₆H₁₂O₆)                                                                                                                                       | Beta-D-Glucose.svg                                                                                                                                                                                                                                                                                                                                                                                                                                | OC[C@@H](O1)[C@@H](O)[C@H](O)[C@@H](O)[C@@H](O)1                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Bergenin (cuscutin, a resin) (C₁₄H₁₆O₉)                                                                                                                                 | Cuscutine.svg                                                                                                                                                                                                                                                                                                                                                                                                                                     | OC[C@@H](O1)[C@@H](O)[C@H](O)[C@@H]2[C@@H]1c3c(O)c(OC)c(O)cc3C(=O)O2    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| A pheromone of the Californian scale insect                                                                                                                             | Pheromone_cochenille_californienne.svg                                                                                                                                                                                                                                                                                                                                                                                                            | CC(=O)OCCC(/C)=C\C[C@H](C(C)=C)CCC=C                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| (2_S_,5_R_)-Chalcogran: a pheromone of the bark beetle _Pityogenes chalcographus_{{cite journal|last1=Byers|first1=JA|last2=Birgersson|first2=G|last3=Löfqvist|first3=J | last4=Appelgren|first4=M|last5=Bergström|first5=G| title = Isolation of pheromone synergists of bark beetle, _Pityogenes chalcographus_, from complex insect-plant odors by fractionation and subtractive-combination bioassay | journal = Journal of Chemical Ecology | volume = 16 | issue = 3 | pages = 861–76 | date = Mar 1990 | pmid = 24263601 | doi = 10.1007/BF01016496 | url = http://www.chemical-ecology.net/pdf/Byersetal1990a.pdf}} | 2S,5R-chalcogran-skeletal.svg                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| α-Thujone (C₁₀H₁₆O)                                                                                                                                                     | Alpha-thujone.svg                                                                                                                                                                                                                                                                                                                                                                                                                                 | CC(C)[C@@]12C[C@@H]1[C@@H](C)C(=O)C2                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Thiamine (vitamin B₁, C₁₂H₁₇N₄OS⁺)                                                                                                                                      | Thiamin.svg                                                                                                                                                                                                                                                                                                                                                                                                                                       | OCCc1c(C)[n+](cs1)Cc2cnc(C)nc2N                                         |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

To illustrate a molecule with more than 9 rings, consider cephalostatin-1,[10] a steroidic 13-ringed pyrazine with the empirical formula C₅₄H₇₄N₂O₁₀ isolated from the Indian Ocean hemichordate _Cephalodiscus gilchristi_:

    Cephalostatine-1.svg

Starting with the left-most methyl group in the figure:

    CC(C)(O1)C[C@@H](O)[C@@]1(O2)[C@@H](C)[C@@H]3CC=C4[C@]3(C2)C(=O)C[C@H]5[C@H]4CC[C@@H](C6)[C@]5(C)Cc(n7)c6nc(C[C@@]89(C))c7C[C@@H]8CC[C@@H]%10[C@@H]9C[C@@H](O)[C@@]%11(C)C%10=C[C@H](O%12)[C@]%11(O)[C@H](C)[C@]%12(O%13)[C@H](O)C[C@@]%13(C)CO

Note that % appears in front of the index of ring closure labels above 9; see above.

Other examples of SMILES

The SMILES notation is described extensively in the SMILES theory manual provided by Daylight Chemical Information Systems and a number of illustrative examples are presented. Daylight's depict utility provides users with the means to check their own examples of SMILES and is a valuable educational tool.


Extensions

SMARTS is a line notation for specification of substructural patterns in molecules. While it uses many of the same symbols as SMILES, it also allows specification of wildcard atoms and bonds, which can be used to define substructural queries for chemical database searching. One common misconception is that SMARTS-based substructural searching involves matching of SMILES and SMARTS strings. In fact, both SMILES and SMARTS strings are first converted to internal graph representations which are searched for subgraph isomorphism.

SMIRKS, a superset of "reaction SMILES" and a subset of "reaction SMARTS", is a line notation for specifying reaction transforms. The general syntax for the reaction extensions is REACTANT>AGENT>PRODUCT (without spaces), where any of the fields can either be left blank or filled with multiple molecules deliminated with a dot (.), and other descriptions dependent on the base language. Atoms can additionally be identified with a number (e.g. [C:1]) for mapping,[11] for example in [http://cdb.ics.uci.edu/cgibin/Smi2DepictWeb.py?smiles=%5BCH2%3A1%5D%3D%5BCH%3A2%5D%5BCH%3A3%5D%3D%5BCH%3A4%5D%5BCH2%3A5%5D%5BH%3A6%5D%3E%3E%5BH%3A6%5D%5BCH2%3A1%5D%5BCH%3A2%5D%3D%5BCH%3A3%5D%5BCH%3A4%5D%3D%5BCH2%3A5%5D[CH2:1]=[CH:2][CH:3]=[CH:4][CH2:5][H:6]>>[H:6][CH2:1][CH:2]=[CH:3][CH:4]=[CH2:5]].[12]


Conversion

SMILES can be converted back to two-dimensional representations using structure diagram generation (SDG) algorithms (Helson, 1999). This conversion is not always unambiguous. Conversion to three-dimensional representation is achieved by energy-minimization approaches. There are many downloadable and web-based conversion utilities.


See also

-   SMILES arbitrary target specification (SMARTS), an extension of SMILES for specification of substructural queries
-   SYBYL Line Notation, another line notation
-   International Chemical Identifier (InChI), the IUPAC's alternative to SMILES
-   Molecular Query Language, a query language allowing also numerical properties, e.g. physicochemical values or distances
-   Chemistry Development Kit, 2D layout and conversion software
-   OpenBabel, JOELib, OELib (conversion)


References


Further reading

-   -   -   -   -


External links

-   "SMILES – A Simplified Chemical Language"
-   The OpenSMILES home page
-   "SMARTS – SMILES Extension"
-   Daylight SMILES tutorial
-   Parsing SMILES

SMILES related software utilities

-   NIH online services
    -   NCI/CADD Chemical Identifier Resolver – resolves or generates SMILES from chemical names, CAS Registry Numbers, InChI/InChIKey and many other chemical structure file formats
    -   GIF/PNG-Creator for 2D Plots of Chemical Structures
    -   PubChem server side structure editor – online molecule editor
    -   NCI/CADD Online SMILES Translator and Structure File Generator – JSME online molecule editor that generates SMILES/SMARTS; source code (BSD license).
-   ChemAxon utilities, mostly Java-based, some with free personal use
    -   Smi2DepictWeb - Translate a SMILES formula into graphics with Marvin, hosted by UC Irvine (other online tools available on the same site)
    -   Marvin – chemical editor/viewer and SMILES generator/converter (previous version)
    -   Instant JChem – desktop application for storing/generating/converting/visualizing/searching SMILES structures, particularly batch processing (previous version)
    -   other tools and third-party integration; full list
-   OELib and descendents (Open Babel etc.; see also "#see also")
    -   Smormo-Ed – a FOSS molecule editor which can read and write SMILES; has Gtk+ and HTML5 frontends
-   smi23d – 3D Coordinate Generation; source code archive
-   ACD/ChemSketch
-   InChI.info – an unofficial InChI website featuring on-line converter from InChI and SMILES to molecular drawings, based on OASA
-   Balloon – A free program for 3D coordinate generation and conformational analysis.
-   Indigo – an open-source cross-platform cheminformatics library with a plugin for IUPAC-compliant molecule and reaction 2D structural formula rendering.
-   Bioclipse – a free and open source workbench for the life sciences (Wikipedia article)
-   Scilligence utilities
    -   MolEngine – A .NET cheminformatics toolkit to read/write SMILES, generate 2D coordinate from SMILES, and convert SMILES from/into other Chemical file formats.
    -   JSDraw – A cross-platform javascript chemical structure editor to generate SMILES and SMARTS.

Category:Chemical nomenclature Category:Encodings Category:Chemical file formats

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] National Center for Biotechnology Information (NCBI). PubChem Compound. (accessed May 12, 2012) PubChem Compound CID=183413 (Cephalostatin-1)

[11]

[12]