In the formal languages of computer science and linguistics, the CHOMSKY HIERARCHY (occasionally referred to as the CHOMSKY-SCHÜTZENBERGER HIERARCHY[1]) is a containment hierarchy of classes of formal grammars. This hierarchy of grammars was described by Noam Chomsky in 1956.[2] It is also named after Marcel-Paul Schützenberger, who played a crucial role in the development of the theory of formal languages.


Formal grammars

A formal grammar of this type consists of a finite set of _production rules_ (_left-hand side_ → _right-hand side_), where each side consists of a finite sequence of the following symbols:

-   a finite set of _nonterminal symbols_ (indicating that some production rule can yet be applied)
-   a finite set of _terminal symbols_ (indicating that no production rule can be applied)
-   a _start symbol_ (a distinguished nonterminal symbol)

A formal grammar provides an axiom schema for (or _generates_) a _formal language_, which is a (usually infinite) set of finite-length sequences of symbols that may be constructed by applying production rules to another sequence of symbols (which initially contains just the start symbol). A rule may be applied by replacing an occurrence of the symbols on its left-hand side with those that appear on its right-hand side. A sequence of rule applications is called a _derivation_. Such a grammar defines the formal language: all words consisting solely of terminal symbols which can be reached by a derivation from the start symbol.

Nonterminals are often represented by uppercase letters, terminals by lowercase letters, and the start symbol by . For example, the grammar with terminals , nonterminals , production rules

    →

    → (where is the empty string)

    →

    →

and start symbol , defines the language of all words of the form a^(n)b^(n) (i.e. copies of followed by copies of ).

The following is a simpler grammar that defines the same language: Terminals , Nonterminals , Start symbol , Production rules

    →

    →

As another example, a grammar for a toy subset of English language is given by:

terminals:
nonterminals:
production rules

    →

    →

    →

    →

    →

    →

    →

    →

    →

    →

    →

and start symbol . An example derivation is

    → → → → → → → → great → great linguists → great linguists generate → great linguists generate great → great linguists generate great green → great linguists generate great green ideas.

Other sequences that can be derived from this grammar are: "_ideas hate great linguists_", and "_ideas generate_". While these sentences are nonsensical, they are syntactically correct. A syntactically incorrect sentence ( e.g. "_ideas ideas great hate_") cannot be derived from this grammar. See "Colorless green ideas sleep furiously" for a similar example given by Chomsky in 1957; see Phrase structure grammar and Phrase structure rules for more natural language examples and the problems of formal grammar in that area.


The hierarchy

Chomsky-hierarchy.svg The following table summarizes each of Chomsky's four types of grammars, the class of language it generates, the type of automaton that recognizes it, and the form its rules must have.

+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+
| Grammar                                              | Languages              | Automaton                                       | Production rules (constraints)* | Examples[3]                                      |
+======================================================+========================+=================================================+=================================+==================================================+
| Type-0                                               | Recursively enumerable | Turing machine                                  | αAβ → β                         | L = {w|w describes a terminating Turing machine} |
+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+
| Type-1                                               | Context-sensitive      | Linear-bounded non-deterministic Turing machine | αAβ → αγβ                       | L = {a^(n)b^(n)c^(n)|n > 0}                      |
+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+
| Type-2                                               | Context-free           | Non-deterministic pushdown automaton            | A → α                           | L = {a^(n)b^(n)|n > 0}                           |
+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+
| Type-3                                               | Regular                | Finite state automaton                          | A → a                           | L = {a^(n)|n ≥ 0}                                |
|                                                      |                        |                                                 | and                             |                                                  |
|                                                      |                        |                                                 | A → aB                          |                                                  |
+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+
| * Meaning of symbols:                                |                        |                                                 |                                 |                                                  |
| * a = terminal                                       |                        |                                                 |                                 |                                                  |
| * A, B = non-terminal                                |                        |                                                 |                                 |                                                  |
| * α, β, γ = string of terminals and/or non-terminals |                        |                                                 |                                 |                                                  |
| :* α, β = maybe empty                                |                        |                                                 |                                 |                                                  |
|                                                      |                        |                                                 |                                 |                                                  |
| :* γ = never empty                                   |                        |                                                 |                                 |                                                  |
+------------------------------------------------------+------------------------+-------------------------------------------------+---------------------------------+--------------------------------------------------+

Note that the set of grammars corresponding to recursive languages is not a member of this hierarchy; these would be properly between Type-0 and Type-1.

Every regular language is context-free, every context-free language is context-sensitive, every context-sensitive language is recursive and every recursive language is recursively enumerable. These are all proper inclusions, meaning that there exist recursively enumerable languages that are not context-sensitive, context-sensitive languages that are not context-free and context-free languages that are not regular.[4]

Type-0 grammars

Type-0 grammars include all formal grammars. They generate exactly all languages that can be recognized by a Turing machine. These languages are also known as the _recursively enumerable_ or _Turing-recognizable_ languages.[5] Note that this is different from the recursive languages, which can be _decided_ by an always-halting Turing machine.

Type-1 grammars

Type-1 grammars generate context-sensitive languages. These grammars have rules of the form αAβ → αγβ with A a nonterminal and α, β and γ strings of terminals and/or nonterminals. The strings α and β may be empty, but γ must be nonempty. The rule S → ϵ is allowed if S does not appear on the right side of any rule. The languages described by these grammars are exactly all languages that can be recognized by a linear bounded automaton (a nondeterministic Turing machine whose tape is bounded by a constant times the length of the input.)

Type-2 grammars

Type-2 grammars generate the context-free languages. These are defined by rules of the form A → γ with A being a nonterminal and γ being a string of terminals and/or nonterminals. These languages are exactly all languages that can be recognized by a non-deterministic pushdown automaton. Context-free languages—or rather its subset of deterministic context-free language—are the theoretical basis for the phrase structure of most programming languages, though their syntax also includes context-sensitive name resolution due to declarations and scope. Often a subset of grammars is used to make parsing easier, such as by an LL parser.

Type-3 grammars

Type-3 grammars generate the regular languages. Such a grammar restricts its rules to a single nonterminal on the left-hand side and a right-hand side consisting of a single terminal, possibly followed by a single nonterminal (right regular). Alternatively, the right-hand side of the grammar can consist of a single terminal, possibly preceded by a single nonterminal (left regular). These generate the same languages. However, if left-regular rules and right-regular rules are combined, the language need no longer be regular. The rule S → ϵ is also allowed here if S does not appear on the right side of any rule. These languages are exactly all languages that can be decided by a finite state automaton. Additionally, this family of formal languages can be obtained by regular expressions. Regular languages are commonly used to define search patterns and the lexical structure of programming languages.


References

-   -   -

Category:1956 in computer science Category:Formal languages Category:Generative linguistics Hierarchy, Chomsky

[1]

[2]

[3] http://www.cs.ru.nl/~herman/onderwijs/2016TnA/lecture7.pdf

[4]

[5]