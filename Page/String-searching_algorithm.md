In computer science, STRING-SEARCHING ALGORITHMS, sometimes called STRING-MATCHING ALGORITHMS, are an important class of string algorithms that try to find a place where one or several strings (also called patterns) are found within a larger string or text.

Let Σ be an alphabet (finite set). The most basic example of string searching is where both the pattern and searched text are arrays of elements of Σ. The Σ may be a usual human alphabet (for example, the letters A through Z in the Latin alphabet). Other applications may use _binary alphabet_ (Σ = {0,1}) or _DNA alphabet_ (Σ = {A,C,G,T}) in bioinformatics.

In practice, how the string is encoded can affect the feasible string-search algorithms. In particular, if a variable-width encoding is in use then it may be slower to find the Nth character (perhaps requiring time proportional to N). This may significantly slow down some search algorithms. One of many possible solutions is to search for the sequence of code units instead, but doing so may produce false matches unless the encoding is specifically designed to avoid it.


Kinds of searching

The most basic case of string searching involves one (often very long) string, sometimes called the "haystack", and one (often very short) string, sometimes called the "needle". The goal is to find one or more occurrences of the "needle" within the "haystack". For example, one might search for "to" within:

   Some books are to be tasted, others to be swallowed, and some few to be chewed and digested.

One might request the first occurrenceo of "to", which is the fourth word; or all occurrences, of which there are 3; or the last, which is the fifth word from the end.

Very commonly, however, various constraints are added. For example, one might want to match "needle" only where it consists of one (or more) complete words—perhaps defined as _not_ having other letters immediately adjacent on either side. In that case a search for "hew" or "low" should fail for the example sentence above, even though those literal strings do occur.

Another common example involves "normalization". For many purposes, a search for a phrase such as "to be" should succeed even in places where there is something else intervening between the "to" and the "be":

-   More than one space
-   Other "whitespace" characters such as tabs, non-breaking spaces, line-breaks, etc.
-   Less commonly, a hyphen or soft hyphen
-   In structured texts, tags or even arbitrarily large but "parenthetical" things such as footnotes, list-numbers or other markers, embedded images, and so on.

Many symbol systems include characters that are synonymous (at least for some purposes):

-   Latin-based alphabets distinguish lower-case from upper-case, but for many purposes string search is expected to ignore the distinction.
-   Many languages include ligatures, where one composite character is equivalent to two or more other characters.
-   Many writing systems involve diacritical marks such as accents or vowel points, which may vary in their usage, or be of varying importance in matching.
-   DNA sequences can involve non-coding segments which may be ignored for some purposes, or polymorphisms that lead to no change in the encoded proteins, which may not count as a true difference for some other purposes.
-   Some languages have rules where a different character or form of character must be used at the start, middle, or end of words.

Finally, for strings that represent natural language, aspects of the language itself become involved. For example, one might wish to find all occurrences of a "word" despite it having alternate spellings, prefixes or suffixes, etc.

Another more complex type of search is regular expression searching, where the user constructs a pattern of characters or other symbols, and any match to the pattern should fulfill the search. For example, to catch both the American English word "color" and the British equivalent "colour", instead of searching for two different literal strings, one might use a regular expression such as:

   colou?r

where the "?" conventionally makes the preceding character ("u") optional.

This article mainly discusses algorithms for the simpler kinds of string searching.

A similar problem introduced in the field of bioinformatics and genomics is the maximal exact matching (MEM).[1] Given two strings, MEMs are common substrings that cannot be extended left or right without causing a mismatch.[2]


Basic classification of search algorithms

The various algorithms can be classified by the number of patterns each uses.

Single-pattern algorithms

Let _m_ be the length of the pattern, _n_ be the length of the searchable text and _k_ = |Σ| be the size of the alphabet.

+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Algorithm                                                       | Preprocessing time | Matching time     | Space |
+=================================================================+====================+===================+=======+
| Naïve string-search algorithm                                   | none               | Θ(nm)             | none  |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Rabin–Karp algorithm                                            | Θ(m)               | average Θ(n + m), | O(1)  |
|                                                                 |                    | worst Θ((n−m)m)   |       |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Knuth–Morris–Pratt algorithm                                    | Θ(m)               | Θ(n)              | Θ(m)  |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Boyer–Moore string-search algorithm                             | Θ(m + k)           | best Ω(n/m),      | Θ(k)  |
|                                                                 |                    | worst O(mn)       |       |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Bitap algorithm (_shift-or_, _shift-and_, _Baeza–Yates–Gonnet_) | Θ(m + k)           | O(mn)             |       |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| Two-way string-matching algorithm12                             | Θ(m)               | O(n+m)            | O(1)  |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| BNDM (Backward Non-Deterministic DAWG Matching)34               | O(m)               | O(n)              |       |
+-----------------------------------------------------------------+--------------------+-------------------+-------+
| BOM (Backward Oracle Matching)5                                 | O(m)               | O(mn)             |       |
+-----------------------------------------------------------------+--------------------+-------------------+-------+

    1.Asymptotic times are expressed using O, Ω, and Θ notation.

The BOYER–MOORE STRING-SEARCH ALGORITHM has been the standard benchmark for the practical string-search literature.[3]

Algorithms using a finite set of patterns

-   Aho–Corasick string matching algorithm (extension of Knuth-Morris-Pratt)
-   Commentz-Walter algorithm (extension of Boyer-Moore)
-   Set-BOM (extension of Backward Oracle Matching)
-   Rabin–Karp string search algorithm

Algorithms using an infinite number of patterns

Naturally, the patterns can not be enumerated finitely in this case. They are represented usually by a regular grammar or regular expression.


Other classification

Other classification approaches are possible. One of the most common uses preprocessing as main criteria.

                              Text not preprocessed        Text preprocessed
  --------------------------- ---------------------------- ------------------------
  Patterns not preprocessed   Elementary algorithms        Index methods
  Patterns preprocessed       Constructed search engines   Signature methods :[5]

  : Classes of string searching algorithms[4]

Another one classifies the algorithms by their matching strategy:[6]

-   Match the prefix first (Knuth-Morris-Pratt, Shift-And, Aho-Corasick)
-   Match the suffix first (Boyer-Moore and variants, Commentz-Walter)
-   Match the best factor first (BNDM, BOM, Set-BOM)
-   Other strategy (Naive, Rabin-Karp)

Naïve string search

A simple and inefficient way to see where one string occurs inside another is to check each place it could be, one by one, to see if it's there. So first we see if there's a copy of the needle in the first character of the haystack; if not, we look to see if there's a copy of the needle starting at the second character of the haystack; if not, we look starting at the third character, and so forth. In the normal case, we only have to look at one or two characters for each wrong position to see that it is a wrong position, so in the average case, this takes O(_n_ + _m_) steps, where _n_ is the length of the haystack and _m_ is the length of the needle; but in the worst case, searching for a string like "aaaab" in a string like "aaaaaaaaab", it takes O(_nm_)

Finite-state-automaton-based search

DFA_search_mommy.svg In this approach, we avoid backtracking by constructing a deterministic finite automaton (DFA) that recognizes stored search string. These are expensive to construct—they are usually created using the powerset construction—but are very quick to use. For example, the DFA shown to the right recognizes the word "MOMMY". This approach is frequently generalized in practice to search for arbitrary regular expressions.

Stubs

Knuth–Morris–Pratt computes a DFA that recognizes inputs with the string to search for as a suffix, Boyer–Moore starts searching from the end of the needle, so it can usually jump ahead a whole needle-length at each step. Baeza–Yates keeps track of whether the previous _j_ characters were a prefix of the search string, and is therefore adaptable to fuzzy string searching. The bitap algorithm is an application of Baeza–Yates' approach.

Index methods

Faster search algorithms preprocess the text. After building a substring index, for example a suffix tree or suffix array, the occurrences of a pattern can be found quickly. As an example, a suffix tree can be built in Θ(n) time, and all z occurrences of a pattern can be found in O(m) time under the assumption that the alphabet has a constant size and all inner nodes in the suffix tree know what leaves are underneath them. The latter can be accomplished by running a DFS algorithm from the root of the suffix tree.

Other variants

Some search methods, for instance trigram search, are intended to find a "closeness" score between the search string and the text rather than a "match/non-match". These are sometimes called "fuzzy" searches.


See also

-   Sequence alignment
-   Graph matching
-   Pattern matching
-   Compressed pattern matching
-   Matching wildcards


References

-   R. S. Boyer and J. S. Moore, _A fast string searching algorithm,_ Carom. ACM 20, (10), 262–272(1977).
-   Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. _Introduction to Algorithms_, Third Edition. MIT Press and McGraw-Hill, 2009. . Chapter 32: String Matching, pp. 985–1013.


External links

-   Huge (maintained) list of pattern matching links Last updated:12/27/2008 20:18:38
-   StringSearch – high-performance pattern matching algorithms in Java – Implementations of many String-Matching-Algorithms in Java (BNDM, Boyer-Moore-Horspool, Boyer-Moore-Horspool-Raita, Shift-Or)
-   StringsAndChars – Implementations of many String-Matching-Algorithms (for single and multiple patterns) in Java
-   Exact String Matching Algorithms — Animation in Java, Detailed description and C implementation of many algorithms.
-   (PDF) Improved Single and Multiple Approximate String Matching
-   Kalign2: high-performance multiple alignment of protein and nucleotide sequences allowing external features

String_matching_algorithms

[1]

[2]

[3]

[4] Melichar, Borivoj, Jan Holub, and J. Polcar. Text Searching Algorithms. Volume I: Forward String Matching. Vol. 1. 2 vols., 2005. http://stringology.org/athens/TextSearchingAlgorithms/.

[5]

[6]