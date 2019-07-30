FIRST-ORDER LOGIC—also known as PREDICATE LOGIC and FIRST-ORDER PREDICATE CALCULUS—is a collection of formal systems used in mathematics, philosophy, linguistics, and computer science. First-order logic uses quantified variables over non-logical objects and allows the use of sentences that contain variables, so that rather than propositions such as _Socrates is a man_ one can have expressions in the form "there exists x such that x is Socrates and x is a man" and _there exists_ is a quantifier while _x_ is a variable.[1] This distinguishes it from propositional logic, which does not use quantifiers or relations;[2] in this sense, propositional logic is the foundation of first-order logic.

A theory about a topic is usually a first-order logic together with a specified domain of discourse over which the quantified variables range, finitely many functions from that domain to itself, finitely many predicates defined on that domain, and a set of axioms believed to hold for those things. Sometimes "theory" is understood in a more formal sense, which is just a set of sentences in first-order logic.

The adjective "first-order" distinguishes first-order logic from higher-order logic in which there are predicates having predicates or functions as arguments, or in which one or both of predicate quantifiers or function quantifiers are permitted.[3] In first-order theories, predicates are often associated with sets. In interpreted higher-order theories, predicates may be interpreted as sets of sets.

There are many deductive systems for first-order logic which are both sound (all provable statements are true in all models) and complete (all statements which are true in all models are provable). Although the logical consequence relation is only semidecidable, much progress has been made in automated theorem proving in first-order logic. First-order logic also satisfies several metalogical theorems that make it amenable to analysis in proof theory, such as the Löwenheim–Skolem theorem and the compactness theorem.

First-order logic is the standard for the formalization of mathematics into axioms and is studied in the foundations of mathematics. Peano arithmetic and Zermelo–Fraenkel set theory are axiomatizations of number theory and set theory, respectively, into first-order logic. No first-order theory, however, has the strength to uniquely describe a structure with an infinite domain, such as the natural numbers or the real line. Axiom systems that do fully describe these two structures (that is, categorical axiom systems) can be obtained in stronger logics such as second-order logic.

The foundations of first-order logic were developed independently by Gottlob Frege and Charles Sanders Peirce.[4] For a history of first-order logic and how it came to dominate formal logic, see José Ferreirós (2001).


Introduction

While propositional logic deals with simple declarative propositions, first-order logic additionally covers predicates and quantification.

A predicate takes an entity or entities in the domain of discourse as input while outputs are either True or False. Consider the two sentences "Socrates is a philosopher" and "Plato is a philosopher". In propositional logic, these sentences are viewed as being unrelated and might be denoted, for example, by variables such as _p_ and _q_. The predicate "is a philosopher" occurs in both sentences, which have a common structure of "_a_ is a philosopher". The variable _a_ is instantiated as "Socrates" in the first sentence and is instantiated as "Plato" in the second sentence. While first-order logic allows for the use of predicates, such as "is a philosopher" in this example, propositional logic does not.[5]

Relationships between predicates can be stated using logical connectives. Consider, for example, the first-order formula "if _a_ is a philosopher, then _a_ is a scholar". This formula is a conditional statement with "_a_ is a philosopher" as its hypothesis and "_a_ is a scholar" as its conclusion. The truth of this formula depends on which object is denoted by _a_, and on the interpretations of the predicates "is a philosopher" and "is a scholar".

Quantifiers can be applied to variables in a formula. The variable _a_ in the previous formula can be universally quantified, for instance, with the first-order sentence "For every _a_, if _a_ is a philosopher, then _a_ is a scholar". The universal quantifier "for every" in this sentence expresses the idea that the claim "if _a_ is a philosopher, then _a_ is a scholar" holds for _all_ choices of _a_.

The _negation_ of the sentence "For every _a_, if _a_ is a philosopher, then _a_ is a scholar" is logically equivalent to the sentence "There exists _a_ such that _a_ is a philosopher and _a_ is not a scholar". The existential quantifier "there exists" expresses the idea that the claim "_a_ is a philosopher and _a_ is not a scholar" holds for _some_ choice of _a_.

The predicates "is a philosopher" and "is a scholar" each take a single variable. In general, predicates can take several variables. In the first-order sentence "Socrates is the teacher of Plato", the predicate "is the teacher of" takes two variables.

An interpretation (or model) of a first-order formula specifies what each predicate means and the entities that can instantiate the variables. These entities form the domain of discourse or universe, which is usually required to be a nonempty set. For example, in an interpretation with the domain of discourse consisting of all human beings and the predicate "is a philosopher" understood as "was the author of the _Republic_", the sentence "There exists _a_ such that _a_ is a philosopher" is seen as being true, as witnessed by Plato.


Syntax

There are two key parts of first-order logic. The syntax determines which collections of symbols are legal expressions in first-order logic, while the semantics determine the meanings behind these expressions.

Alphabet

Unlike natural languages, such as English, the language of first-order logic is completely formal, so that it can be mechanically determined whether a given expression is legal. There are two key types of legal expressions: TERMS, which intuitively represent objects, and FORMULAS, which intuitively express predicates that can be true or false. The terms and formulas of first-order logic are strings of SYMBOLS, where all the symbols together form the ALPHABET of the language. As with all formal languages, the nature of the symbols themselves is outside the scope of formal logic; they are often regarded simply as letters and punctuation symbols.

It is common to divide the symbols of the alphabet into LOGICAL SYMBOLS, which always have the same meaning, and NON-LOGICAL SYMBOLS, whose meaning varies by interpretation. For example, the logical symbol ∧ always represents "and"; it is never interpreted as "or". On the other hand, a non-logical predicate symbol such as Phil(_x_) could be interpreted to mean "_x_ is a philosopher", "_x_ is a man named Philip", or any other unary predicate, depending on the interpretation at hand.

Logical symbols

There are several logical symbols in the alphabet, which vary by author but usually include:

-   The quantifier symbols ∀ and ∃
-   The logical connectives: ∧ for conjunction, ∨ for disjunction, → for implication, ↔ for biconditional, ¬ for negation. Occasionally other logical connective symbols are included. Some authors use C_pq_, instead of →, and E_pq_, instead of ↔, especially in contexts where → is used for other purposes. Moreover, the horseshoe ⊃ may replace →; the triple-bar ≡ may replace ↔; a tilde (~), N_p_, or F_pq_, may replace ¬; _||_, or A_pq_ may replace ∨; and &, K_pq_, or the middle dot, ⋅, may replace ∧, especially if these symbols are not available for technical reasons. (_Note_: the aforementioned symbols C_pq_, E_pq_, N_p_, A_pq_, and K_pq_ are used in Polish notation.)
-   Parentheses, brackets, and other punctuation symbols. The choice of such symbols varies depending on context.
-   An infinite set of VARIABLES, often denoted by lowercase letters at the end of the alphabet _x_, _y_, _z_, ... . Subscripts are often used to distinguish variables:
-   An EQUALITY SYMBOL (sometimes, IDENTITY SYMBOL) =; see the section on equality below.

Not all of these symbols are required–only one of the quantifiers, negation and conjunction, variables, brackets and equality suffice. There are numerous minor variations that may define additional logical symbols:

-   Sometimes the truth constants T, V_pq_, or ⊤, for "true" and F, O_pq_, or ⊥, for "false" are included. Without any such logical operators of valence 0, these two constants can only be expressed using quantifiers.
-   Sometimes additional logical connectives are included, such as the Sheffer stroke, D_pq_ (NAND), and exclusive or, J_pq_.

Non-logical symbols

The non-logical symbols represent predicates (relations), functions and constants on the domain of discourse. It used to be standard practice to use a fixed, infinite set of non-logical symbols for all purposes. A more recent practice is to use different non-logical symbols according to the application one has in mind. Therefore, it has become necessary to name the set of all non-logical symbols used in a particular application. This choice is made via a SIGNATURE.[6]

The traditional approach is to have only one, infinite, set of non-logical symbols (one signature) for all applications. Consequently, under the traditional approach there is only one language of first-order logic.[7] This approach is still common, especially in philosophically oriented books.

1.  For every integer _n_ ≥ 0 there is a collection of _n_-ARY, or _n_-PLACE, PREDICATE SYMBOLS. Because they represent relations between _n_ elements, they are also called RELATION SYMBOLS. For each arity _n_ we have an infinite supply of them:

        _P_^(_n_)₀, _P_^(_n_)₁, _P_^(_n_)₂, _P_^(_n_)₃, ...

2.  For every integer _n_ ≥ 0 there are infinitely many _n_-ary FUNCTION SYMBOLS:

        _f^(n)_₀, _f^(n)_₁, _f^(n)_₂, _f^(n)_₃, ...

In contemporary mathematical logic, the signature varies by application. Typical signatures in mathematics are {1, ×} or just {×} for groups, or {0, 1, +, ×, <} for ordered fields. There are no restrictions on the number of non-logical symbols. The signature can be empty, finite, or infinite, even uncountable. Uncountable signatures occur for example in modern proofs of the Löwenheim–Skolem theorem.

In this approach, every non-logical symbol is of one of the following types.

1.  A PREDICATE SYMBOL (or RELATION SYMBOL) with some VALENCE (or ARITY, number of arguments) greater than or equal to 0. These are often denoted by uppercase letters _P_, _Q_, _R_,... .
    -   Relations of valence 0 can be identified with propositional variables. For example, _P_, which can stand for any statement.
    -   For example, _P_(_x_) is a predicate variable of valence 1. One possible interpretation is "_x_ is a man".
    -   _Q_(_x_,_y_) is a predicate variable of valence 2. Possible interpretations include "_x_ is greater than _y_" and "_x_ is the father of _y_".
2.  A FUNCTION SYMBOL, with some valence greater than or equal to 0. These are often denoted by lowercase letters _f_, _g_, _h_,... .
    -   Examples: _f_(_x_) may be interpreted as for "the father of _x_". In arithmetic, it may stand for "-x". In set theory, it may stand for "the power set of x". In arithmetic, _g_(_x_,_y_) may stand for "_x_+_y_". In set theory, it may stand for "the union of _x_ and _y_".
    -   Function symbols of valence 0 are called CONSTANT SYMBOLS, and are often denoted by lowercase letters at the beginning of the alphabet _a_, _b_, _c_,... . The symbol _a_ may stand for Socrates. In arithmetic, it may stand for 0. In set theory, such a constant may stand for the empty set.

The traditional approach can be recovered in the modern approach by simply specifying the "custom" signature to consist of the traditional sequences of non-logical symbols.

Formation rules

The formation rules define the terms and formulas of first-order logic.[8] When terms and formulas are represented as strings of symbols, these rules can be used to write a formal grammar for terms and formulas. These rules are generally context-free (each production has a single symbol on the left side), except that the set of symbols may be allowed to be infinite and there may be many start symbols, for example the variables in the case of terms.

Terms

The set of TERMS is inductively defined by the following rules:

1.  VARIABLES. Any variable is a term.
2.  FUNCTIONS. Any expression _f_(_t_₁,...,_t__(_n_)) of _n_ arguments (where each argument _t__(_i_) is a term and _f_ is a function symbol of valence _n_) is a term. In particular, symbols denoting individual constants are nullary function symbols, and are thus terms.

Only expressions which can be obtained by finitely many applications of rules 1 and 2 are terms. For example, no expression involving a predicate symbol is a term.

Formulas

The set of FORMULAS (also called WELL-FORMED FORMULAS[9] or WFFS) is inductively defined by the following rules:

1.  PREDICATE SYMBOLS. If _P_ is an _n_-ary predicate symbol and _t__(_1_), ..., _t__(_n_) are terms then _P_(_t_₁,...,_t__(n)) is a formula.
2.  EQUALITY. If the equality symbol is considered part of logic, and _t__(_1_) and _t_₂ are terms, then _t_₁ = _t_₂ is a formula.
3.  NEGATION. If φ is a formula, then ¬φ is a formula.
4.  BINARY CONNECTIVES. If φ and ψ are formulas, then (φ → ψ) is a formula. Similar rules apply to other binary logical connectives.
5.  QUANTIFIERS. If φ is a formula and _x_ is a variable, then ∀xφ (for all x, φ holds) and ∃xφ (there exists x such that φ) are formulas.

Only expressions which can be obtained by finitely many applications of rules 1–5 are formulas. The formulas obtained from the first two rules are said to be ATOMIC FORMULAS.

For example,

∀_x_∀_y_(_P_(_f_(_x_)) → ¬(_P_(_x_) → _Q_(_f_(_y_), _x_, _z_)))
is a formula, if _f_ is a unary function symbol, _P_ a unary predicate symbol, and Q a ternary predicate symbol. On the other hand, ∀x x→ is not a formula, although it is a string of symbols from the alphabet.

The role of the parentheses in the definition is to ensure that any formula can only be obtained in one way by following the inductive definition (in other words, there is a unique parse tree for each formula). This property is known as UNIQUE READABILITY of formulas. There are many conventions for where parentheses are used in formulas. For example, some authors use colons or full stops instead of parentheses, or change the places in which parentheses are inserted. Each author's particular definition must be accompanied by a proof of unique readability.

This definition of a formula does not support defining an if-then-else function ite(c, a, b), where "c" is a condition expressed as a formula, that would return "a" if c is true, and "b" if it is false. This is because both predicates and functions can only accept terms as parameters, but the first parameter is a formula. Some languages built on first-order logic, such as SMT-LIB 2.0, add this.[10]

Notational conventions

For convenience, conventions have been developed about the precedence of the logical operators, to avoid the need to write parentheses in some cases. These rules are similar to the order of operations in arithmetic. A common convention is:

-   ¬ is evaluated first
-   ∧ and ∨ are evaluated next
-   Quantifiers are evaluated next
-   → is evaluated last.

Moreover, extra punctuation not required by the definition may be inserted to make formulas easier to read. Thus the formula

¬∀_x__P_(_x_) → ∃_x_¬_P_(_x_)
might be written as

(¬[∀_x__P_(_x_)]) → ∃_x_[¬_P_(_x_)].

In some fields, it is common to use infix notation for binary relations and functions, instead of the prefix notation defined above. For example, in arithmetic, one typically writes "2 + 2 = 4" instead of "=(+(2,2),4)". It is common to regard formulas in infix notation as abbreviations for the corresponding formulas in prefix notation, cf. also term structure vs. representation.

The definitions above use infix notation for binary connectives such as →. A less common convention is Polish notation, in which one writes →, ∧, and so on in front of their arguments rather than between them. This convention allows all punctuation symbols to be discarded. Polish notation is compact and elegant, but rarely used in practice because it is hard for humans to read it. In Polish notation, the formula

∀_x_∀_y_(_P_(_f_(_x_)) → ¬(_P_(_x_) → _Q_(_f_(_y_), _x_, _z_)))
becomes

Free and bound variables

In a formula, a variable may occur FREE or BOUND (or both). Intuitively, a variable occurrence is free in a formula if it is not quantified: in ∀y P(x, y), the sole occurrence of variable _x_ is free while that of _y_ is bound. The free and bound variable occurrences in a formula are defined inductively as follows.

1.  ATOMIC FORMULAS. If φ is an atomic formula then _x_ occurs free in φ if and only if _x_ occurs in φ. Moreover, there are no bound variables in any atomic formula.
2.  NEGATION. _x_ occurs free in ¬φ if and only if _x_ occurs free in φ. _x_ occurs bound in ¬φ if and only if _x_ occurs bound in φ.
3.  BINARY CONNECTIVES. _x_ occurs free in (φ → ψ) if and only if _x_ occurs free in either φ or ψ. _x_ occurs bound in (φ → ψ) if and only if _x_ occurs bound in either φ or ψ. The same rule applies to any other binary connective in place of →.
4.  QUANTIFIERS. _x_ occurs free in ∀_y_ φ if and only if x occurs free in φ and _x_ is a different symbol from _y_. Also, _x_ occurs bound in ∀_y_ φ if and only if _x_ is _y_ or _x_ occurs bound in φ. The same rule holds with ∃ in place of ∀.

For example, in ∀_x_ ∀_y_ (_P_(_x_)→ _Q_(_x_,_f_(_x_),_z_)), _x_ and _y_ occur only bound,[11] _z_ occurs only free, and _w_ is neither because it does not occur in the formula.

Free and bound variables of a formula need not be disjoint sets: in the formula P(x) → ∀x Q(x), the first occurrence of _x_, as argument of _P_, is free while the second one, as argument of _Q_, is bound.

A formula in first-order logic with no free variable occurrences is called a FIRST-ORDER SENTENCE. These are the formulas that will have well-defined truth values under an interpretation. For example, whether a formula such as Phil(_x_) is true must depend on what _x_ represents. But the sentence ∃xPhil (x) will be either true or false in a given interpretation.

Example: ordered abelian groups

In mathematics the language of ordered abelian groups has one constant symbol 0, one unary function symbol −, one binary function symbol +, and one binary relation symbol ≤. Then:

-   The expressions +(_x_, _y_) and +(_x_, +(_y_, −(_z_))) are TERMS. These are usually written as _x_ + _y_ and _x_ + _y_ − _z_.
-   The expressions +(_x_, _y_) = 0 and ≤(+(_x_, +(_y_, −(_z_))), +(_x_, _y_)) are ATOMIC FORMULAS. These are usually written as _x_ + _y_ = 0 and _x_ + _y_ − _z_  ≤  _x_ + _y_.
-   The expression (∀x∀y [≤(+(x, y), z) → ∀x ∀y +(x, y) = 0)] is a FORMULA, which is usually written as ∀x∀y(x + y ≤ z) → ∀x∀y(x + y = 0). This formula has one free variable, _z_.

The axioms for ordered abelian groups can be expressed as a set of sentences in the language. For example, the axiom stating that the group is commutative is usually written (∀x)(∀y)[x + y = y + x].


Semantics

An interpretation of a first-order language assigns a denotation to each non-logical symbol in that language. It also determines a domain of discourse that specifies the range of the quantifiers. The result is that each term is assigned an object that it represents, each predicate is assigned a property of objects, and each sentence is assigned a truth value. In this way, an interpretation provides semantic meaning to the terms, the predicates, and formulas of the language. The study of the interpretations of formal languages is called formal semantics. What follows is a description of the standard or Tarskian semantics for first-order logic. (It is also possible to define game semantics for first-order logic, but aside from requiring the axiom of choice, game semantics agree with Tarskian semantics for first-order logic, so game semantics will not be elaborated herein.)

The domain of discourse _D_ is a nonempty set of "objects" of some kind. Intuitively, a first-order formula is a statement about these objects; for example, ∃xP(x) states the existence of an object _x_ such that the predicate _P_ is true where referred to it. The domain of discourse is the set of considered objects. For example, one can take D to be the set of integer numbers.

The interpretation of a function symbol is a function. For example, if the domain of discourse consists of integers, a function symbol _f_ of arity 2 can be interpreted as the function that gives the sum of its arguments. In other words, the symbol _f_ is associated with the function _I(f)_ which, in this interpretation, is addition.

The interpretation of a constant symbol is a function from the one-element set _D_⁰ to _D_, which can be simply identified with an object in _D_. For example, an interpretation may assign the value I(c) = 10 to the constant symbol c.

The interpretation of an _n_-ary predicate symbol is a set of _n_-tuples of elements of the domain of discourse. This means that, given an interpretation, a predicate symbol, and _n_ elements of the domain of discourse, one can tell whether the predicate is true of those elements according to the given interpretation. For example, an interpretation _I(P)_ of a binary predicate symbol _P_ may be the set of pairs of integers such that the first one is less than the second. According to this interpretation, the predicate _P_ would be true if its first argument is less than the second.

First-order structures

The most common way of specifying an interpretation (especially in mathematics) is to specify a STRUCTURE (also called a MODEL; see below). The structure consists of a nonempty set _D_ that forms the domain of discourse and an interpretation _I_ of the non-logical terms of the signature. This interpretation is itself a function:

-   Each function symbol _f_ of arity _n_ is assigned a function _I(f)_ from D^(n) to D. In particular, each constant symbol of the signature is assigned an individual in the domain of discourse.
-   Each predicate symbol _P_ of arity _n_ is assigned a relation _I(P)_ over D^(n) or, equivalently, a function from D^(n) to {true, false}. Thus each predicate symbol is interpreted by a Boolean-valued function on _D_.

Evaluation of truth values

A formula evaluates to true or false given an interpretation, and a VARIABLE ASSIGNMENT μ that associates an element of the domain of discourse with each variable. The reason that a variable assignment is required is to give meanings to formulas with free variables, such as y = x. The truth value of this formula changes depending on whether _x_ and _y_ denote the same individual.

First, the variable assignment μ can be extended to all terms of the language, with the result that each term maps to a single element of the domain of discourse. The following rules are used to make this assignment:

1.  VARIABLES. Each variable _x_ evaluates to μ(_x_)
2.  FUNCTIONS. Given terms t₁, …, t_(n) that have been evaluated to elements d₁, …, d_(n) of the domain of discourse, and a _n_-ary function symbol _f_, the term f(t₁, …, t_(n)) evaluates to (I(f))(d₁, …, d_(n)).

Next, each formula is assigned a truth value. The inductive definition used to make this assignment is called the T-schema.

1.  ATOMIC FORMULAS (1). A formula P(t₁, …, t_(n)) is associated the value true or false depending on whether ⟨v₁, …, v_(n)⟩ ∈ I(P), where v₁, …, v_(n) are the evaluation of the terms t₁, …, t_(n) and I(P) is the interpretation of P, which by assumption is a subset of D^(n).
2.  ATOMIC FORMULAS (2). A formula t₁ = t₂ is assigned true if t₁ and t₂ evaluate to the same object of the domain of discourse (see the section on equality below).
3.  LOGICAL CONNECTIVES. A formula in the form ¬ϕ, \phi \rightarrow

\psi, etc. is evaluated according to the truth table for the connective in question, as in propositional logic.

1.  EXISTENTIAL QUANTIFIERS. A formula ∃xϕ(x) is true according to _M_ and μ if there exists an evaluation μ′ of the variables that only differs from μ regarding the evaluation of _x_ and such that φ is true according to the interpretation _M_ and the variable assignment μ′. This formal definition captures the idea that ∃xϕ(x) is true if and only if there is a way to choose a value for _x_ such that φ(_x_) is satisfied.
2.  UNIVERSAL QUANTIFIERS. A formula ∀xϕ(x) is true according to _M_ and μ if φ(_x_) is true for every pair composed by the interpretation _M_ and some variable assignment μ′ that differs from μ only on the value of _x_. This captures the idea that ∀xϕ(x) is true if every possible choice of a value for _x_ causes φ(_x_) to be true.

If a formula does not contain free variables, and so is a sentence, then the initial variable assignment does not affect its truth value. In other words, a sentence is true according to _M_ and μ if and only if it is true according to _M_ and every other variable assignment μ′.

There is a second common approach to defining truth values that does not rely on variable assignment functions. Instead, given an interpretation _M_, one first adds to the signature a collection of constant symbols, one for each element of the domain of discourse in _M_; say that for each _d_ in the domain the constant symbol _c__(_d_) is fixed. The interpretation is extended so that each new constant symbol is assigned to its corresponding element of the domain. One now defines truth for quantified formulas syntactically, as follows:

1.  EXISTENTIAL QUANTIFIERS (ALTERNATE). A formula ∃xϕ(x) is true according to _M_ if there is some _d_ in the domain of discourse such that ϕ(c_(d)) holds. Here ϕ(c_(d)) is the result of substituting _c__(_d_) for every free occurrence of _x_ in φ.
2.  UNIVERSAL QUANTIFIERS (ALTERNATE). A formula ∀xϕ(x) is true according to _M_ if, for every _d_ in the domain of discourse, ϕ(c_(d)) is true according to _M_.

This alternate approach gives exactly the same truth values to all sentences as the approach via variable assignments.

Validity, satisfiability, and logical consequence

If a sentence φ evaluates to True under a given interpretation _M_, one says that _M_ SATISFIES φ; this is denoted M ⊨ φ. A sentence is SATISFIABLE if there is some interpretation under which it is true.

Satisfiability of formulas with free variables is more complicated, because an interpretation on its own does not determine the truth value of such a formula. The most common convention is that a formula with free variables is said to be satisfied by an interpretation if the formula remains true regardless which individuals from the domain of discourse are assigned to its free variables. This has the same effect as saying that a formula is satisfied if and only if its universal closure is satisfied.

A formula is LOGICALLY VALID (or simply VALID) if it is true in every interpretation. These formulas play a role similar to tautologies in propositional logic.

A formula φ is a LOGICAL CONSEQUENCE of a formula ψ if every interpretation that makes ψ true also makes φ true. In this case one says that φ is logically implied by ψ.

Algebraizations

An alternate approach to the semantics of first-order logic proceeds via abstract algebra. This approach generalizes the Lindenbaum–Tarski algebras of propositional logic. There are three ways of eliminating quantified variables from first-order logic that do not involve replacing quantifiers with other variable binding term operators:

-   Cylindric algebra, by Alfred Tarski and his coworkers;
-   Polyadic algebra, by Paul Halmos;
-   Predicate functor logic, mainly due to Willard Quine.

These algebras are all lattices that properly extend the two-element Boolean algebra.

Tarski and Givant (1987) showed that the fragment of first-order logic that has no atomic sentence lying in the scope of more than three quantifiers has the same expressive power as relation algebra. This fragment is of great interest because it suffices for Peano arithmetic and most axiomatic set theory, including the canonical ZFC. They also prove that first-order logic with a primitive ordered pair is equivalent to a relation algebra with two ordered pair projection functions.

First-order theories, models, and elementary classes

A FIRST-ORDER THEORY of a particular signature is a set of axioms, which are sentences consisting of symbols from that signature. The set of axioms is often finite or recursively enumerable, in which case the theory is called EFFECTIVE. Some authors require theories to also include all logical consequences of the axioms. The axioms are considered to hold within the theory and from them other sentences that hold within the theory can be derived.

A first-order structure that satisfies all sentences in a given theory is said to be a MODEL of the theory. An ELEMENTARY CLASS is the set of all structures satisfying a particular theory. These classes are a main subject of study in model theory.

Many theories have an INTENDED INTERPRETATION, a certain model that is kept in mind when studying the theory. For example, the intended interpretation of Peano arithmetic consists of the usual natural numbers with their usual operations. However, the Löwenheim–Skolem theorem shows that most first-order theories will also have other, nonstandard models.

A theory is CONSISTENT if it is not possible to prove a contradiction from the axioms of the theory. A theory is COMPLETE if, for every formula in its signature, either that formula or its negation is a logical consequence of the axioms of the theory. Gödel's incompleteness theorem shows that effective first-order theories that include a sufficient portion of the theory of the natural numbers can never be both consistent and complete.

For more information on this subject see List of first-order theories and Theory (mathematical logic)

Empty domains

The definition above requires that the domain of discourse of any interpretation must be nonempty. There are settings, such as inclusive logic, where empty domains are permitted. Moreover, if a class of algebraic structures includes an empty structure (for example, there is an empty poset), that class can only be an elementary class in first-order logic if empty domains are permitted or the empty structure is removed from the class.

There are several difficulties with empty domains, however:

-   Many common rules of inference are only valid when the domain of discourse is required to be nonempty. One example is the rule stating that ϕ ∨ ∃xψ implies ∃x(ϕ ∨ ψ) when _x_ is not a free variable in ϕ. This rule, which is used to put formulas into prenex normal form, is sound in nonempty domains, but unsound if the empty domain is permitted.
-   The definition of truth in an interpretation that uses a variable assignment function cannot work with empty domains, because there are no variable assignment functions whose range is empty. (Similarly, one cannot assign interpretations to constant symbols.) This truth definition requires that one must select a variable assignment function (μ above) before truth values for even atomic formulas can be defined. Then the truth value of a sentence is defined to be its truth value under any variable assignment, and it is proved that this truth value does not depend on which assignment is chosen. This technique does not work if there are no assignment functions at all; it must be changed to accommodate empty domains.

Thus, when the empty domain is permitted, it must often be treated as a special case. Most authors, however, simply exclude the empty domain by definition.


Deductive systems

A DEDUCTIVE SYSTEM is used to demonstrate, on a purely syntactic basis, that one formula is a logical consequence of another formula. There are many such systems for first-order logic, including Hilbert-style deductive systems, natural deduction, the sequent calculus, the tableaux method, and resolution. These share the common property that a deduction is a finite syntactic object; the format of this object, and the way it is constructed, vary widely. These finite deductions themselves are often called DERIVATIONS in proof theory. They are also often called proofs, but are completely formalized unlike natural-language mathematical proofs.

A deductive system is SOUND if any formula that can be derived in the system is logically valid. Conversely, a deductive system is COMPLETE if every logically valid formula is derivable. All of the systems discussed in this article are both sound and complete. They also share the property that it is possible to effectively verify that a purportedly valid deduction is actually a deduction; such deduction systems are called EFFECTIVE.

A key property of deductive systems is that they are purely syntactic, so that derivations can be verified without considering any interpretation. Thus a sound argument is correct in every possible interpretation of the language, regardless whether that interpretation is about mathematics, economics, or some other area.

In general, logical consequence in first-order logic is only semidecidable: if a sentence A logically implies a sentence B then this can be discovered (for example, by searching for a proof until one is found, using some effective, sound, complete proof system). However, if A does not logically imply B, this does not mean that A logically implies the negation of B. There is no effective procedure that, given formulas A and B, always correctly decides whether A logically implies B.

Rules of inference

A RULE OF INFERENCE states that, given a particular formula (or set of formulas) with a certain property as a hypothesis, another specific formula (or set of formulas) can be derived as a conclusion. The rule is sound (or truth-preserving) if it preserves validity in the sense that whenever any interpretation satisfies the hypothesis, that interpretation also satisfies the conclusion.

For example, one common rule of inference is the RULE OF SUBSTITUTION. If _t_ is a term and φ is a formula possibly containing the variable _x_, then φ[_t_/_x_] is the result of replacing all free instances of _x_ by _t_ in φ. The substitution rule states that for any φ and any term _t_, one can conclude φ[_t_/_x_] from φ provided that no free variable of _t_ becomes bound during the substitution process. (If some free variable of _t_ becomes bound, then to substitute _t_ for _x_ it is first necessary to change the bound variables of φ to differ from the free variables of _t_.)

To see why the restriction on bound variables is necessary, consider the logically valid formula φ given by ∃x(x = y), in the signature of (0,1,+,×,=) of arithmetic. If _t_ is the term "x + 1", the formula φ[_t_/_y_] is ∃x(x = x + 1), which will be false in many interpretations. The problem is that the free variable _x_ of _t_ became bound during the substitution. The intended replacement can be obtained by renaming the bound variable _x_ of φ to something else, say _z_, so that the formula after substitution is ∃z(z = x + 1), which is again logically valid.

The substitution rule demonstrates several common aspects of rules of inference. It is entirely syntactical; one can tell whether it was correctly applied without appeal to any interpretation. It has (syntactically defined) limitations on when it can be applied, which must be respected to preserve the correctness of derivations. Moreover, as is often the case, these limitations are necessary because of interactions between free and bound variables that occur during syntactic manipulations of the formulas involved in the inference rule.

Hilbert-style systems and natural deduction

A deduction in a Hilbert-style deductive system is a list of formulas, each of which is a LOGICAL AXIOM, a hypothesis that has been assumed for the derivation at hand, or follows from previous formulas via a rule of inference. The logical axioms consist of several axiom schemas of logically valid formulas; these encompass a significant amount of propositional logic. The rules of inference enable the manipulation of quantifiers. Typical Hilbert-style systems have a small number of rules of inference, along with several infinite schemas of logical axioms. It is common to have only modus ponens and universal generalization as rules of inference.

Natural deduction systems resemble Hilbert-style systems in that a deduction is a finite list of formulas. However, natural deduction systems have no logical axioms; they compensate by adding additional rules of inference that can be used to manipulate the logical connectives in formulas in the proof.

Sequent calculus

The sequent calculus was developed to study the properties of natural deduction systems. Instead of working with one formula at a time, it uses SEQUENTS, which are expressions of the form

_A_₁, …, _A__(_n_) ⊢ _B_₁, …, _B__(_k_),
where A₁, ..., A_(_n_), B₁, ..., B_(_k_) are formulas and the turnstile symbol ⊢ is used as punctuation to separate the two halves. Intuitively, a sequent expresses the idea that (A₁ ∧ ⋯ ∧ A_(n)) implies (B₁ ∨ ⋯ ∨ B_(k)).

Tableaux method

formula ]]

Unlike the methods just described, the derivations in the tableaux method are not lists of formulas. Instead, a derivation is a tree of formulas. To show that a formula A is provable, the tableaux method attempts to demonstrate that the negation of A is unsatisfiable. The tree of the derivation has ¬A at its root; the tree branches in a way that reflects the structure of the formula. For example, to show that C ∨ D is unsatisfiable requires showing that C and D are each unsatisfiable; this corresponds to a branching point in the tree with parent C ∨ D and children C and D.

Resolution

The resolution rule is a single rule of inference that, together with unification, is sound and complete for first-order logic. As with the tableaux method, a formula is proved by showing that the negation of the formula is unsatisfiable. Resolution is commonly used in automated theorem proving.

The resolution method works only with formulas that are disjunctions of atomic formulas; arbitrary formulas must first be converted to this form through Skolemization. The resolution rule states that from the hypotheses A₁ ∨ ⋯ ∨ A_(k) ∨ C and B₁ ∨ ⋯ ∨ B_(l) ∨ ¬C, the conclusion A₁ ∨ ⋯ ∨ A_(k) ∨ B₁ ∨ ⋯ ∨ B_(l) can be obtained.

Provable identities

Many identities can be proved, which establish equivalences between particular formulas. These identities allow for rearranging formulas by moving quantifiers across other connectives, and are useful for putting formulas in prenex normal form. Some provable identities include:

¬∀_x_ _P_(_x_) ⇔ ∃_x_ ¬_P_(_x_)

¬∃_x_ _P_(_x_) ⇔ ∀_x_ ¬_P_(_x_)

∀_x_ ∀_y_ _P_(_x_, _y_) ⇔ ∀_y_ ∀_x_ _P_(_x_, _y_)

∃_x_ ∃_y_ _P_(_x_, _y_) ⇔ ∃_y_ ∃_x_ _P_(_x_, _y_)

∀_x_ _P_(_x_) ∧ ∀_x_ _Q_(_x_) ⇔ ∀_x_ (_P_(_x_) ∧ _Q_(_x_))

∃_x_ _P_(_x_) ∨ ∃_x_ _Q_(_x_) ⇔ ∃_x_ (_P_(_x_) ∨ _Q_(_x_))

_P_ ∧ ∃_x_ _Q_(_x_) ⇔ ∃_x_ (_P_ ∧ _Q_(_x_))
(where x must not occur free in P)

_P_ ∨ ∀_x_ _Q_(_x_) ⇔ ∀_x_ (_P_ ∨ _Q_(_x_))
(where x must not occur free in P)


Equality and its axioms

There are several different conventions for using equality (or identity) in first-order logic. The most common convention, known as FIRST-ORDER LOGIC WITH EQUALITY, includes the equality symbol as a primitive logical symbol which is always interpreted as the real equality relation between members of the domain of discourse, such that the "two" given members are the same member. This approach also adds certain axioms about equality to the deductive system employed. These equality axioms are:

1.  REFLEXIVITY. For each variable _x_, _x_ = _x_.
2.  SUBSTITUTION FOR FUNCTIONS. For all variables _x_ and _y_, and any function symbol _f_,

        _x_ = _y_ → _f_(...,_x_,...) = _f_(...,_y_,...).

3.  SUBSTITUTION FOR FORMULAS. For any variables _x_ and _y_ and any formula φ(_x_), if φ' is obtained by replacing any number of free occurrences of _x_ in φ with _y_, such that these remain free occurrences of _y_, then

        _x_ = _y_ → (φ → φ').

These are axiom schemas, each of which specifies an infinite set of axioms. The third schema is known as LEIBNIZ'S LAW, "the principle of substitutivity", "the indiscernibility of identicals", or "the replacement property". The second schema, involving the function symbol _f_, is (equivalent to) a special case of the third schema, using the formula

    _x_ = _y_ → (_f_(...,_x_,...) = z → _f_(...,_y_,...) = z).

Many other properties of equality are consequences of the axioms above, for example:

1.  SYMMETRY. If _x_ = _y_ then _y_ = _x_.
2.  TRANSITIVITY. If _x_ = _y_ and _y_ = _z_ then _x_ = _z_.

First-order logic without equality

An alternate approach considers the equality relation to be a non-logical symbol. This convention is known as FIRST-ORDER LOGIC WITHOUT EQUALITY. If an equality relation is included in the signature, the axioms of equality must now be added to the theories under consideration, if desired, instead of being considered rules of logic. The main difference between this method and first-order logic with equality is that an interpretation may now interpret two distinct individuals as "equal" (although, by Leibniz's law, these will satisfy exactly the same formulas under any interpretation). That is, the equality relation may now be interpreted by an arbitrary equivalence relation on the domain of discourse that is congruent with respect to the functions and relations of the interpretation.

When this second convention is followed, the term NORMAL MODEL is used to refer to an interpretation where no distinct individuals _a_ and _b_ satisfy _a_ = _b_. In first-order logic with equality, only normal models are considered, and so there is no term for a model other than a normal model. When first-order logic without equality is studied, it is necessary to amend the statements of results such as the Löwenheim–Skolem theorem so that only normal models are considered.

First-order logic without equality is often employed in the context of second-order arithmetic and other higher-order theories of arithmetic, where the equality relation between sets of natural numbers is usually omitted.

Defining equality within a theory

If a theory has a binary formula _A_(_x_,_y_) which satisfies reflexivity and Leibniz's law, the theory is said to have equality, or to be a theory with equality. The theory may not have all instances of the above schemas as axioms, but rather as derivable theorems. For example, in theories with no function symbols and a finite number of relations, it is possible to define equality in terms of the relations, by defining the two terms _s_ and _t_ to be equal if any relation is unchanged by changing _s_ to _t_ in any argument.

Some theories allow other _ad hoc_ definitions of equality:

-   In the theory of partial orders with one relation symbol ≤, one could define _s_ = _t_ to be an abbreviation for _s_ ≤ _t_ ∧ _t_ ≤ _s_.
-   In set theory with one relation ∈, one may define _s_ = _t_ to be an abbreviation for ∀_x_ (_s_ ∈ _x_ ↔ _t_ ∈ _x_) ∧ ∀_x_ (_x_ ∈ _s_ ↔ _x_ ∈ _t_). This definition of equality then automatically satisfies the axioms for equality. In this case, one should replace the usual axiom of extensionality, which can be stated as ∀x∀y[∀z(z ∈ x ⇔ z ∈ y) ⇒ x = y], with an alternative formulation ∀x∀y[∀z(z ∈ x ⇔ z ∈ y) ⇒ ∀z(x ∈ z ⇔ y ∈ z)], which says that if sets _x_ and _y_ have the same elements, then they also belong to the same sets.


Metalogical properties

One motivation for the use of first-order logic, rather than higher-order logic, is that first-order logic has many metalogical properties that stronger logics do not have. These results concern general properties of first-order logic itself, rather than properties of individual theories. They provide fundamental tools for the construction of models of first-order theories.

Completeness and undecidability

Gödel's completeness theorem, proved by Kurt Gödel in 1929, establishes that there are sound, complete, effective deductive systems for first-order logic, and thus the first-order logical consequence relation is captured by finite provability. Naively, the statement that a formula φ logically implies a formula ψ depends on every model of φ; these models will in general be of arbitrarily large cardinality, and so logical consequence cannot be effectively verified by checking every model. However, it is possible to enumerate all finite derivations and search for a derivation of ψ from φ. If ψ is logically implied by φ, such a derivation will eventually be found. Thus first-order logical consequence is semidecidable: it is possible to make an effective enumeration of all pairs of sentences (φ,ψ) such that ψ is a logical consequence of φ.

Unlike propositional logic, first-order logic is undecidable (although semidecidable), provided that the language has at least one predicate of arity at least 2 (other than equality). This means that there is no decision procedure that determines whether arbitrary formulas are logically valid. This result was established independently by Alonzo Church and Alan Turing in 1936 and 1937, respectively, giving a negative answer to the Entscheidungsproblem posed by David Hilbert in 1928. Their proofs demonstrate a connection between the unsolvability of the decision problem for first-order logic and the unsolvability of the halting problem.

There are systems weaker than full first-order logic for which the logical consequence relation is decidable. These include propositional logic and monadic predicate logic, which is first-order logic restricted to unary predicate symbols and no function symbols. Other logics with no function symbols which are decidable are the guarded fragment of first-order logic, as well as two-variable logic. The Bernays–Schönfinkel class of first-order formulas is also decidable. Decidable subsets of first-order logic are also studied in the framework of description logics.

The Löwenheim–Skolem theorem

The Löwenheim–Skolem theorem shows that if a first-order theory of cardinality λ has an infinite model, then it has models of every infinite cardinality greater than or equal to λ. One of the earliest results in model theory, it implies that it is not possible to characterize countability or uncountability in a first-order language with a countable signature. That is, there is no first-order formula φ(_x_) such that an arbitrary structure M satisfies φ if and only if the domain of discourse of M is countable (or, in the second case, uncountable).

The Löwenheim–Skolem theorem implies that infinite structures cannot be categorically axiomatized in first-order logic. For example, there is no first-order theory whose only model is the real line: any first-order theory with an infinite model also has a model of cardinality larger than the continuum. Since the real line is infinite, any theory satisfied by the real line is also satisfied by some nonstandard models. When the Löwenheim–Skolem theorem is applied to first-order set theories, the nonintuitive consequences are known as Skolem's paradox.

The compactness theorem

The compactness theorem states that a set of first-order sentences has a model if and only if every finite subset of it has a model.[12] This implies that if a formula is a logical consequence of an infinite set of first-order axioms, then it is a logical consequence of some finite number of those axioms. This theorem was proved first by Kurt Gödel as a consequence of the completeness theorem, but many additional proofs have been obtained over time. It is a central tool in model theory, providing a fundamental method for constructing models.

The compactness theorem has a limiting effect on which collections of first-order structures are elementary classes. For example, the compactness theorem implies that any theory that has arbitrarily large finite models has an infinite model. Thus the class of all finite graphs is not an elementary class (the same holds for many other algebraic structures).

There are also more subtle limitations of first-order logic that are implied by the compactness theorem. For example, in computer science, many situations can be modeled as a directed graph of states (nodes) and connections (directed edges). Validating such a system may require showing that no "bad" state can be reached from any "good" state. Thus one seeks to determine if the good and bad states are in different connected components of the graph. However, the compactness theorem can be used to show that connected graphs are not an elementary class in first-order logic, and there is no formula φ(_x_,_y_) of first-order logic, in the logic of graphs, that expresses the idea that there is a path from _x_ to _y_. Connectedness can be expressed in second-order logic, however, but not with only existential set quantifiers, as Σ₁¹ also enjoys compactness.

Lindström's theorem

Per Lindström showed that the metalogical properties just discussed actually characterize first-order logic in the sense that no stronger logic can also have those properties (Ebbinghaus and Flum 1994, Chapter XIII). Lindström defined a class of abstract logical systems, and a rigorous definition of the relative strength of a member of this class. He established two theorems for systems of this type:

-   A logical system satisfying Lindström's definition that contains first-order logic and satisfies both the Löwenheim–Skolem theorem and the compactness theorem must be equivalent to first-order logic.
-   A logical system satisfying Lindström's definition that has a semidecidable logical consequence relation and satisfies the Löwenheim–Skolem theorem must be equivalent to first-order logic.


Limitations

Although first-order logic is sufficient for formalizing much of mathematics, and is commonly used in computer science and other fields, it has certain limitations. These include limitations on its expressiveness and limitations of the fragments of natural languages that it can describe.

For instance, first-order logic is undecidable, meaning a sound, complete and terminating decision algorithm for provability is impossible. This has led to the study of interesting decidable fragments such as C₂, first-order logic with two variables and the counting quantifiers ∃^( ≥ n) and ∃^( ≤ n) (these quantifiers are, respectively, "there exists at least _n_" and "there exists at most _n_").

Expressiveness

The Löwenheim–Skolem theorem shows that if a first-order theory has any infinite model, then it has infinite models of every cardinality. In particular, no first-order theory with an infinite model can be categorical. Thus there is no first-order theory whose only model has the set of natural numbers as its domain, or whose only model has the set of real numbers as its domain. Many extensions of first-order logic, including infinitary logics and higher-order logics, are more expressive in the sense that they do permit categorical axiomatizations of the natural numbers or real numbers. This expressiveness comes at a metalogical cost, however: by Lindström's theorem, the compactness theorem and the downward Löwenheim–Skolem theorem cannot hold in any logic stronger than first-order.

Formalizing natural languages

First-order logic is able to formalize many simple quantifier constructions in natural language, such as "every person who lives in Perth lives in Australia". But there are many more complicated features of natural language that cannot be expressed in (single-sorted) first-order logic. "Any logical system which is appropriate as an instrument for the analysis of natural language needs a much richer structure than first-order predicate logic".

  Type                             Example                                                                                   Comment
  -------------------------------- ----------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------
  Quantification over properties   If John is self-satisfied, then there is at least one thing he has in common with Peter   Requires a quantifier over predicates, which cannot be implemented in single-sorted first-order logic: Zj→ ∃X(Xj∧Xp)
  Quantification over properties   Santa Claus has all the attributes of a sadist                                            Requires quantifiers over predicates, which cannot be implemented in single-sorted first-order logic: ∀X(∀x(Sx → Xx)→Xs)
  Predicate adverbial              John is walking quickly                                                                   Cannot be analysed as Wj ∧ Qj; predicate adverbials are not the same kind of thing as second-order predicates such as colour
  Relative adjective               Jumbo is a small elephant                                                                 Cannot be analysed as Sj ∧ Ej; predicate adjectives are not the same kind of thing as second-order predicates such as colour
  Predicate adverbial modifier     John is walking very quickly                                                              -
  Relative adjective modifier      Jumbo is terribly small                                                                   An expression such as "terribly", when applied to a relative adjective such as "small", results in a new composite relative adjective "terribly small"
  Prepositions                     Mary is sitting next to John                                                              The preposition "next to" when applied to "John" results in the predicate adverbial "next to John"


Restrictions, extensions, and variations

There are many variations of first-order logic. Some of these are inessential in the sense that they merely change notation without affecting the semantics. Others change the expressive power more significantly, by extending the semantics through additional quantifiers or other new logical symbols. For example, infinitary logics permit formulas of infinite size, and modal logics add symbols for possibility and necessity.

Restricted languages

First-order logic can be studied in languages with fewer logical symbols than were described above.

-   Because ∃xϕ(x) can be expressed as ¬∀x¬ϕ(x), and ∀xϕ(x) can be expressed as ¬∃x¬ϕ(x), either of the two quantifiers ∃ and ∀ can be dropped.
-   Since ϕ ∨ ψ can be expressed as ¬(¬ϕ ∧ ¬ψ) and ϕ ∧ ψ can be expressed as ¬(¬ϕ ∨ ¬ψ), either ∨ or ∧ can be dropped. In other words, it is sufficient to have ¬ and ∨, or ¬ and ∧, as the only logical connectives.
-   Similarly, it is sufficient to have only ¬ and → as logical connectives, or to have only the Sheffer stroke (NAND) or the Peirce arrow (NOR) operator.
-   It is possible to entirely avoid function symbols and constant symbols, rewriting them via predicate symbols in an appropriate way. For example, instead of using a constant symbol  0 one may use a predicate  0(x) (interpreted as  x = 0 ), and replace every predicate such as  P(0, y) with ∀x (0(x) → P(x, y)). A function such as f(x₁, x₂, ..., x_(n)) will similarly be replaced by a predicate F(x₁, x₂, ..., x_(n), y) interpreted as y = f(x₁, x₂, ..., x_(n)). This change requires adding additional axioms to the theory at hand, so that interpretations of the predicate symbols used have the correct semantics.[13]

Restrictions such as these are useful as a technique to reduce the number of inference rules or axiom schemas in deductive systems, which leads to shorter proofs of metalogical results. The cost of the restrictions is that it becomes more difficult to express natural-language statements in the formal system at hand, because the logical connectives used in the natural language statements must be replaced by their (longer) definitions in terms of the restricted collection of logical connectives. Similarly, derivations in the limited systems may be longer than derivations in systems that include additional connectives. There is thus a trade-off between the ease of working within the formal system and the ease of proving results about the formal system.

It is also possible to restrict the arities of function symbols and predicate symbols, in sufficiently expressive theories. One can in principle dispense entirely with functions of arity greater than 2 and predicates of arity greater than 1 in theories that include a pairing function. This is a function of arity 2 that takes pairs of elements of the domain and returns an ordered pair containing them. It is also sufficient to have two predicate symbols of arity 2 that define projection functions from an ordered pair to its components. In either case it is necessary that the natural axioms for a pairing function and its projections are satisfied.

Many-sorted logic

Ordinary first-order interpretations have a single domain of discourse over which all quantifiers range. MANY-SORTED FIRST-ORDER LOGIC allows variables to have different SORTS, which have different domains. This is also called TYPED FIRST-ORDER LOGIC, and the sorts called TYPES (as in data type), but it is not the same as first-order type theory. Many-sorted first-order logic is often used in the study of second-order arithmetic.[14]

When there are only finitely many sorts in a theory, many-sorted first-order logic can be reduced to single-sorted first-order logic.[15] One introduces into the single-sorted theory a unary predicate symbol for each sort in the many-sorted theory, and adds an axiom saying that these unary predicates partition the domain of discourse. For example, if there are two sorts, one adds predicate symbols P₁(x) and P₂(x) and the axiom

∀_x_(_P_₁(_x_) ∨ _P_₂(_x_)) ∧ ¬∃_x_(_P_₁(_x_) ∧ _P_₂(_x_))
. Then the elements satisfying P₁ are thought of as elements of the first sort, and elements satisfying P₂ as elements of the second sort. One can quantify over each sort by using the corresponding predicate symbol to limit the range of quantification. For example, to say there is an element of the first sort satisfying formula φ(_x_), one writes

∃_x_(_P_₁(_x_) ∧ _ϕ_(_x_))
.

Additional quantifiers

Additional quantifiers can be added to first-order logic.

-   Sometimes it is useful to say that "_P(x)_ holds for exactly one _x_", which can be expressed as ∃!_x_ _P_(_x_). This notation, called uniqueness quantification, may be taken to abbreviate a formula such as ∃_x_ (_P_(_x_)  ∧ ∀_y_ (_P_(_y_) → (_x_ = _y_))).
-   FIRST-ORDER LOGIC WITH EXTRA QUANTIFIERS has new quantifiers _Qx_,..., with meanings such as "there are many _x_ such that ...". Also see branching quantifiers and the plural quantifiers of George Boolos and others.
-   BOUNDED QUANTIFIERS are often used in the study of set theory or arithmetic.

Infinitary logics

Infinitary logic allows infinitely long sentences. For example, one may allow a conjunction or disjunction of infinitely many formulas, or quantification over infinitely many variables. Infinitely long sentences arise in areas of mathematics including topology and model theory.

Infinitary logic generalizes first-order logic to allow formulas of infinite length. The most common way in which formulas can become infinite is through infinite conjunctions and disjunctions. However, it is also possible to admit generalized signatures in which function and relation symbols are allowed to have infinite arities, or in which quantifiers can bind infinitely many variables. Because an infinite formula cannot be represented by a finite string, it is necessary to choose some other representation of formulas; the usual representation in this context is a tree. Thus formulas are, essentially, identified with their parse trees, rather than with the strings being parsed.

The most commonly studied infinitary logics are denoted _L__(αβ), where α and β are each either cardinal numbers or the symbol ∞. In this notation, ordinary first-order logic is _L__(ωω). In the logic _L__(∞ω), arbitrary conjunctions or disjunctions are allowed when building formulas, and there is an unlimited supply of variables. More generally, the logic that permits conjunctions or disjunctions with less than κ constituents is known as _L__(κω). For example, _L__(ω₁ω) permits countable conjunctions and disjunctions.

The set of free variables in a formula of _L__(κω) can have any cardinality strictly less than κ, yet only finitely many of them can be in the scope of any quantifier when a formula appears as a subformula of another.[16] In other infinitary logics, a subformula may be in the scope of infinitely many quantifiers. For example, in _L__(κ∞), a single universal or existential quantifier may bind arbitrarily many variables simultaneously. Similarly, the logic _L__(κλ) permits simultaneous quantification over fewer than λ variables, as well as conjunctions and disjunctions of size less than κ.

Non-classical and modal logics

-   INTUITIONISTIC FIRST-ORDER LOGIC uses intuitionistic rather than classical propositional calculus; for example, ¬¬φ need not be equivalent to φ.
-   First-order MODAL LOGIC allows one to describe other possible worlds as well as this contingently true world which we inhabit. In some versions, the set of possible worlds varies depending on which possible world one inhabits. Modal logic has extra _modal operators_ with meanings which can be characterized informally as, for example "it is necessary that φ" (true in all possible worlds) and "it is possible that φ" (true in some possible world). With standard first-order logic we have a single domain and each predicate is assigned one extension. With first-order modal logic we have a _domain function_ that assigns each possible world its own domain, so that each predicate gets an extension only relative to these possible worlds. This allows us to model cases where, for example, Alex is a Philosopher, but might have been a Mathematician, and might not have existed at all. In the first possible world _P_(_a_) is true, in the second _P_(_a_) is false, and in the third possible world there is no _a_ in the domain at all.
-   FIRST-ORDER FUZZY LOGICS are first-order extensions of propositional fuzzy logics rather than classical propositional calculus.

Fixpoint logic

FIXPOINT LOGIC extends first-order logic by adding the closure under the least fixed points of positive operators.[17]

Higher-order logics

The characteristic feature of first-order logic is that individuals can be quantified, but not predicates. Thus

∃_a_(Phil(_a_))
is a legal first-order formula, but

∃Phil(Phil(_a_))
is not, in most formalizations of first-order logic. Second-order logic extends first-order logic by adding the latter type of quantification. Other higher-order logics allow quantification over even higher types than second-order logic permits. These higher types include relations between relations, functions from relations to relations between relations, and other higher-type objects. Thus the "first" in first-order logic describes the type of objects that can be quantified.

Unlike first-order logic, for which only one semantics is studied, there are several possible semantics for second-order logic. The most commonly employed semantics for second-order and higher-order logic is known as FULL SEMANTICS. The combination of additional quantifiers and the full semantics for these quantifiers makes higher-order logic stronger than first-order logic. In particular, the (semantic) logical consequence relation for second-order and higher-order logic is not semidecidable; there is no effective deduction system for second-order logic that is sound and complete under full semantics.

Second-order logic with full semantics is more expressive than first-order logic. For example, it is possible to create axiom systems in second-order logic that uniquely characterize the natural numbers and the real line. The cost of this expressiveness is that second-order and higher-order logics have fewer attractive metalogical properties than first-order logic. For example, the Löwenheim–Skolem theorem and compactness theorem of first-order logic become false when generalized to higher-order logics with full semantics.


Automated theorem proving and formal methods

Automated theorem proving refers to the development of computer programs that search and find derivations (formal proofs) of mathematical theorems.[18] Finding derivations is a difficult task because the search space can be very large; an exhaustive search of every possible derivation is theoretically possible but computationally infeasible for many systems of interest in mathematics. Thus complicated heuristic functions are developed to attempt to find a derivation in less time than a blind search.

The related area of automated proof verification uses computer programs to check that human-created proofs are correct. Unlike complicated automated theorem provers, verification systems may be small enough that their correctness can be checked both by hand and through automated software verification. This validation of the proof verifier is needed to give confidence that any derivation labeled as "correct" is actually correct.

Some proof verifiers, such as Metamath, insist on having a complete derivation as input. Others, such as Mizar and Isabelle, take a well-formatted proof sketch (which may still be very long and detailed) and fill in the missing pieces by doing simple proof searches or applying known decision procedures: the resulting derivation is then verified by a small, core "kernel". Many such systems are primarily intended for interactive use by human mathematicians: these are known as proof assistants. They may also use formal logics that are stronger than first-order logic, such as type theory. Because a full derivation of any nontrivial result in a first-order deductive system will be extremely long for a human to write,[19] results are often formalized as a series of lemmas, for which derivations can be constructed separately.

Automated theorem provers are also used to implement formal verification in computer science. In this setting, theorem provers are used to verify the correctness of programs and of hardware such as processors with respect to a formal specification. Because such analysis is time-consuming and thus expensive, it is usually reserved for projects in which a malfunction would have grave human or financial consequences.

For the problem of model checking, efficient algorithms are known to decide whether an input finite structure satisfies a first-order formula, in addition to computational complexity bounds: see Model_checking#First-order_logic.


See also

-   ACL2 — A Computational Logic for Applicative Common Lisp.
-   Equiconsistency
-   Extension by definitions
-   Herbrandization
-   Higher-order logic
-   List of logic symbols
-   Löwenheim number
-   Nonfirstorderizability
-   Prenex normal form
-   Relational algebra
-   Relational model
-   Second-order logic
-   Skolem normal form
-   Tarski's World
-   Truth table
-   Type (model theory)
-   Prolog


Notes


References

-   Andrews, Peter B. (2002); _An Introduction to Mathematical Logic and Type Theory: To Truth Through Proof_, 2nd ed., Berlin: Kluwer Academic Publishers. Available from Springer.
-   Avigad, Jeremy; Donnelly, Kevin; Gray, David; and Raff, Paul (2007); "A formally verified proof of the prime number theorem", _ACM Transactions on Computational Logic_, vol. 9 no. 1
-   -   Barwise, Jon; and Etchemendy, John (2000); _Language Proof and Logic_, Stanford, CA: CSLI Publications (Distributed by the University of Chicago Press)
-   Bocheński, Józef Maria (2007); _A Précis of Mathematical Logic_, Dordrecht, NL: D. Reidel, translated from the French and German editions by Otto Bird
-   Ferreirós, José (2001); _The Road to Modern Logic — An Interpretation_, Bulletin of Symbolic Logic, Volume 7, Issue 4, 2001, pp. 441–484, ,
-   -   Hilbert, David; and Ackermann, Wilhelm (1950); _Principles of Mathematical Logic_, Chelsea (English translation of _Grundzüge der theoretischen Logik_, 1928 German first edition)
-   Hodges, Wilfrid (2001); "Classical Logic I: First Order Logic", in Goble, Lou (ed.); _The Blackwell Guide to Philosophical Logic_, Blackwell
-   Ebbinghaus, Heinz-Dieter; Flum, Jörg; and Thomas, Wolfgang (1994); _Mathematical Logic_, Undergraduate Texts in Mathematics, Berlin, DE/New York, NY: Springer-Verlag, Second Edition,
-   -   Tarski, Alfred and Givant, Steven (1987); _A Formalization of Set Theory without Variables_. Vol.41 of American Mathematical Society colloquium publications, Providence RI: American Mathematical Society,


External links

-   -   Stanford Encyclopedia of Philosophy: Shapiro, Stewart; "Classical Logic". Covers syntax, model theory, and metatheory for first-order logic in the natural deduction style.
-   Magnus, P. D.; _forall x: an introduction to formal logic_. Covers formal semantics and proof theory for first-order logic.
-   Metamath: an ongoing online project to reconstruct mathematics as a huge first-order theory, using first-order logic and the axiomatic set theory ZFC. _Principia Mathematica_ modernized.
-   Podnieks, Karl; _Introduction to mathematical logic_
-   _Cambridge Mathematics Tripos Notes_ (typeset by John Fremlin). These notes cover part of a past Cambridge Mathematics Tripos course taught to undergraduates students (usually) within their third year. The course is entitled "Logic, Computation and Set Theory" and covers Ordinals and cardinals, Posets and Zorn's Lemma, Propositional logic, Predicate logic, Set theory and Consistency issues related to ZFC and other set theories.
-   Tree Proof Generator can validate or invalidate formulas of first-order logic through the semantic tableaux method.

Category:Systems of formal logic Category:Predicate logic Category:Model theory

[1] Hodgson, Dr. J. P. E., "First Order Logic", Saint Joseph's University, Philadelphia, 1995.

[2] Hughes, G. E., & Cresswell, M. J., _A New Introduction to Modal Logic_ (London: Routledge, 1996), p.161.

[3]

[4] Eric M. Hammer: Semantics for Existential Graphs, _Journal of Philosophical Logic_, Volume 27, Issue 5 (October 1998), page 489: "Development of first-order logic independently of Frege, anticipating prenex and Skolem normal forms"

[5] Goertzel, B., Geisweiller, N., Coelho, L., Janičić, P., & Pennachin, C., _Real-World Reasoning: Toward Scalable, Uncertain Spatiotemporal, Contextual and Causal Inference_ (Amsterdam & Paris: Atlantis Press, 2011), p. 29.

[6] The word _language_ is sometimes used as a synonym for signature, but this can be confusing because "language" can also refer to the set of formulas.

[7] More precisely, there is only one language of each variant of one-sorted first-order logic: with or without equality, with or without functions, with or without propositional variables, ....

[8] Smullyan, R. M., _First-order Logic_ (New York: Dover Publications, 1968), p. 5.

[9] Some authors who use the term "well-formed formula" use "formula" to mean any string of symbols from the alphabet. However, most authors in mathematical logic use "formula" to mean "well-formed formula" and have no term for non-well-formed formulas. In every context, it is only the well-formed formulas that are of interest.

[10]

[11] _y_ occurs bound by rule 4, although it doesn't appear in any atomic subformula

[12] Hodel, R. E., _An Introduction to Mathematical Logic_ (Mineola NY: Dover, 1995), p. 199.

[13] Left-totality can be expressed by an axiom ∀x₁, ..., x_(n).∃y.F(x₁, ..., x_(n), y); right-uniqueness by ∀x₁, ..., x_(n), y, y′.F(x₁, ..., x_(n), y) ∧ F(x₁, ..., x_(n), y′) → y = y′, provided the equality symbol is admitted. Both also apply to constant replacements (for n = 0).

[14]  See in particular section 3.2, Many-Sorted Quantification.

[15] Herbert Enderton. "A Mathematical Introduction to Logic" (2nd Edition). Academic Press, 2001, pp.296-299.

[16] Some authors only admit formulas with finitely many free variables in _L__(κω), and more generally only formulas with < λ free variables in _L__(κλ).

[17]

[18]

[19] Avigad _et al._ (2007) discuss the process of formally verifying a proof of the prime number theorem. The formalized proof required approximately 30,000 lines of input to the Isabelle proof verifier.