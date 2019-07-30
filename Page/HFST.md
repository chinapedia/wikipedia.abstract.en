HELSINKI FINITE-STATE TECHNOLOGY (HFST) is a computer programming library and set of utilities for natural language processing with finite-state automata and finite-state transducers. It is free and open-source software, released under a mix of the GNU General Public License version 3 (GPLv3) and the Apache License.


Features

The library functions as an interchanging interface to multiple backends, such as OpenFST, foma and SFST. The utilities comprise various compilers, such as hfst-twolc (a compiler for morphological two-level rules),[1] hfst-lexc (a compiler for lexicon definitions) and hfst-regexp2fst (a regular expression compiler). Functions from Xerox's proprietary scripting language xfst is duplicated in hfst-xfst, and the pattern matching utility pmatch in hfst-pmatch, which goes beyond the finite-state formalism in having recursive transition networks (RTNs).

The library and utilities are written in C++, with an interface to the library in Python and a utility for looking up results from transducers ported to Java and Python.

Transducers in HFST may incorporate weights depending on the backend. For performing FST operations, this is currently only possible via the OpenFST backend. HFST provides two _native_ backends, one designed for fast lookup (_hfst-optimized-lookup_), the other for format interchange. Both of them can be weighted.


Uses

HFST has been used for writing various linguistic tools, such as spell-checkers, hyphenators, and morphologies.[2][3] Morphological dictionaries written in other formalisms have also been converted to HFST's formats.[4]


See also

-   Foma (software)


Notes


External links

-   -   https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstHome - A documentation wiki


References

Category:Free software Category:Finite automata

[1]

[2]

[3]

[4]