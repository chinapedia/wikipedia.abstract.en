The proof of Gödel's completeness theorem given by Kurt Gödel in his doctoral dissertation of 1929 (and a rewritten version of the dissertation, published as an article in 1930) is not easy to read today; it uses concepts and formalism that are no longer used and terminology that is often obscure. The version given below attempts to represent all the steps in the proof and all the important ideas faithfully, while restating the proof in the modern language of mathematical logic. This outline should not be considered a rigorous proof of the theorem.


Assumptions

We work with first-order predicate calculus. Our languages allow constant, function and relation symbols. Structures consist of (non-empty) domains and interpretations of the relevant symbols as constant members, functions or relations over that domain.

We assume classical logic (as opposed to intuitionistic logic for example).

We fix some axiomatization (i.e. a syntax-based, machine-manageable proof system) of the predicate calculus: logical axioms and rules of inference. Any of the several well-known equivalent axiomatizations will do. Gödel's original proof assumed the Hilbert-Ackermann proof system.

We assume without proof all the basic well-known results about our formalism that we need, such as the normal form theorem or the soundness theorem.

We axiomatize predicate calculus _without equality_ (sometimes confusingly called _without identity_), i.e. there are no special axioms expressing the properties of (object) equality as a special relation symbol. After the basic form of the theorem has been proved, it will be easy to extend it to the case of predicate calculus _with equality_.


Statement of the theorem and its proof

In the following, we state two equivalent forms of the theorem, and show their equivalence.

Later, we prove the theorem. This is done in the following steps:

1.  Reducing the theorem to sentences (formulas with no free variables) in prenex form, i.e. with all quantifiers ( and ) at the beginning. Furthermore, we reduce it to formulas whose first quantifier is . This is possible because for every sentence, there is an equivalent one in prenex form whose first quantifier is .
2.  Reducing the theorem to sentences of the form . While we cannot do this by simply rearranging the quantifiers, we show that it is yet enough to prove the theorem for sentences of that form.
3.  Finally we prove the theorem for sentences of that form.
    -   This is done by first noting that a sentence such as ∀x₁∀x₂...∀x_(k) ∃y₁∃y₂...∃y_(m) φ(x₁...x_(k), y₁...y_(m)) }} is either refutable (its negation is always true) or satisfiable, i.e. there is some model in which it holds (it might even be always true, i.e. a tautology); this model is simply assigning truth values to the subpropositions from which B is built. The reason for that is the completeness of propositional logic, with the existential quantifiers playing no role.
    -   We extend this result to more and more complex and lengthy sentences, D_(n) (n=1,2...), built out from B, so that either any of them is refutable and therefore so is φ, or all of them are not refutable and therefore each holds in some model.
    -   We finally use the models in which the D_(n) hold (in case all are not refutable) in order to build a model in which φ holds.

Theorem 1. Every valid formula (true in all structures) is provable.

This is the most basic form of the completeness theorem. We immediately restate it in a form more convenient for our purposes: When we say "all structures", it is important to specify that the structures involved are classical (Tarskian) interpretations I, where I=<U,F> (U is a non-empty (possibly infinite) set of objects, whereas F is a set of functions from expressions of the interpreted symbolism into U). [By contrast, so-called "free logics" countenance possibly empty sets for U. For more regarding free logics, see the work of Karel Lambert.]

Theorem 2. Every formula φ is either refutable or satisfiable in some structure.

"φ is refutable" means _by definition_ "¬φ is provable".

Equivalence of both theorems

To see the equivalence, note first that if THEOREM 1 holds, and φ is not satisfiable in any structure, then ¬φ is valid in all structures and therefore provable, thus φ is refutable and THEOREM 2 holds. If on the other hand THEOREM 2 holds and φ is valid in all structures, then ¬φ is not satisfiable in any structure and therefore refutable; then ¬¬φ is provable and then so is φ, thus THEOREM 1 holds.

Proof of theorem 2: first step

We approach the proof of THEOREM 2 by successively restricting the class of all formulas φ for which we need to prove "φ is either refutable or satisfiable". At the beginning we need to prove this for all possible formulas φ in our language. However, suppose that for every formula φ there is some formula ψ taken from a more restricted class of formulas C, such that "ψ is either refutable or satisfiable" → "φ is either refutable or satisfiable". Then, once this claim (expressed in the previous sentence) is proved, it will suffice to prove "φ is either refutable or satisfiable" only for φ's belonging to the class C. Note also that if φ is provably equivalent to ψ (_i.e._, (φ≡ψ) is provable), then it is indeed the case that "ψ is either refutable or satisfiable" → "φ is either refutable or satisfiable" (the soundness theorem is needed to show this).

There are standard techniques for rewriting an arbitrary formula into one that does not use function or constant symbols, at the cost of introducing additional quantifiers; we will therefore assume that all formulas are free of such symbols. Gödel's paper uses a version of first-order predicate calculus that has no function or constant symbols to begin with.

Next we consider a generic formula φ (which no longer uses function or constant symbols) and apply the prenex form theorem to find a formula ψ in _normal form_ such that φ≡ψ (ψ being in _normal form_ means that all the quantifiers in ψ, if there are any, are found at the very beginning of ψ). It follows now that we need only prove THEOREM 2 for formulas φ in normal form.

Next, we eliminate all free variables from φ by quantifying them existentially: if, say, X₁...X_(N) are free in φ, we form ψ = ∃x₁...∃x_(n)ϕ. If ψ is satisfiable in a structure M, then certainly so is φ and if ψ is refutable, then ¬ψ = ∀x₁...∀x_(n)¬ϕ is provable, and then so is ¬φ, thus φ is refutable. We see that we can restrict φ to be a _sentence_, that is, a formula with no free variables.

Finally, we would like, for reasons of technical convenience, that the _prefix_ of φ (that is, the string of quantifiers at the beginning of φ, which is in normal form) begin with a universal quantifier and end with an existential quantifier. To achieve this for a generic φ (subject to restrictions we have already proved), we take some one-place relation symbol F unused in φ, and two new variables Y and Z.. If φ = (P)Φ, where (P) stands for the prefix of φ and Φ for the _matrix_ (the remaining, quantifier-free part of φ) we form ψ = ∀y(P)∃z(Φ ∧ [F(y) ∨ ¬F(z)]). Since ∀y∃z(F(y) ∨ ¬F(z)) is clearly provable, it is easy to see that ϕ = ψ is provable.

Reducing the theorem to formulas of degree 1

Our generic formula φ now is a sentence, in normal form, and its prefix starts with a universal quantifier and ends with an existential quantifier. Let us call the class of all such formulas R. We are faced with proving that every formula in R is either refutable or satisfiable. Given our formula φ, we group strings of quantifiers of one kind together in blocks:

_ϕ_ = (∀_x_₁...∀_x__(_k_₁))(∃_x__(_k_₁ + 1)...∃_x__(_k_₂)).......(∀_x__(_k__(_n_ − 2) + 1)...∀_x__(_k__(_n_ − 1)))(∃_x__(_k__(_n_ − 1) + 1)...∃_x__(_k__(_n_)))(_Φ_)

We define the DEGREE of ϕ to be the number of universal quantifier blocks, separated by existential quantifier blocks as shown above, in the prefix of ϕ. The following lemma, which Gödel adapted from Skolem's proof of the Löwenheim–Skolem theorem, lets us sharply reduce the complexity of the generic formula ϕ we need to prove the theorem for:

LEMMA. Let K>=1. If every formula in R of degree K is either refutable or satisfiable, then so is every formula in R of degree K+1.

    COMMENT: Take a formula φ of degree k+1 of the form $\phi = (\forall x)(\exists y)(\forall u)(\exist v) (P) \psi$, where (P)ψ is the remainder of ϕ (it is thus of degree K-1). φ states that for every x there is a y such that... (something). It would have been nice to have a predicate ''Q' '' so that for every x, _Q'(x,y)_ would be true if and only if y is the required one to make (something) true. Then we could have written a formula of degree k, which is equivalent to φ, namely $(\forall x')(\forall x)(\forall y)(\forall u)(\exist v)(\exist y') (P) Q'(x',y') \wedge (Q'(x,y) \rightarrow \psi)$. This formula is indeed equivalent to φ because it states that for every x, if there is a y that satisfies Q'(x,y), then (something) holds, and furthermore, we know that there is such a y, because for every x', there is a y' that satisfies Q'(x',y'). Therefore φ follows from this formula. It is also easy to show that if the formula is false, then so is φ. UNFORTUNATELY, in general there is no such predicate Q'. However, this idea can be understood as a basis for the following proof of the Lemma.

PROOF. Let φ be a formula of degree K+1; then we can write it as

$$\phi = (\forall x)(\exists y)(\forall u)(\exist v) (P) \psi$$

where (P) is the remainder of the prefix of ϕ (it is thus of degree K-1) and ψ is the quantifier-free matrix of ϕ. X, Y, U and V denote here _tuples_ of variables rather than single variables; _e.g._ (∀x) really stands for ∀x₁∀x₂...∀x_(n) where x₁...x_(n) are some distinct variables.

Let now X' and Y' be tuples of previously unused variables of the same length as X and Y respectively, and let Q be a previously unused relation symbol that takes as many arguments as the sum of lengths of X and Y; we consider the formula

$$\Phi = (\forall x')(\exists y') Q(x',y') \wedge (\forall x)(\forall y)( Q(x,y) \rightarrow (\forall u)(\exist v)(P)\psi )$$

Clearly, Φ → ϕ is provable.

Now since the string of quantifiers (∀u)(∃v)(P) does not contain variables from X or Y, the following equivalence is easily provable with the help of whatever formalism we're using:

(_Q_(_x_, _y_) → (∀_u_)(∃_v_)(_P_)_ψ_) ≡ (∀_u_)(∃_v_)(_P_)(_Q_(_x_, _y_) → _ψ_)

And since these two formulas are equivalent, if we replace the first with the second inside Φ, we obtain the formula Φ' such that Φ≡Φ':

$$\Phi' = (\forall x')(\exist y') Q(x',y') \wedge (\forall x)(\forall y) (\forall u)(\exists v)(P) ( Q(x,y) \rightarrow \psi )$$

Now Φ' has the form (S)ρ ∧ (S′)ρ′, where (S) and (S') are some quantifier strings, ρ and ρ' are quantifier-free, and, FURTHERMORE, no variable of (S) occurs in ρ' and no variable of (S') occurs in ρ. Under such conditions every formula of the form (T)(ρ ∧ ρ′), where (T) is a string of quantifiers containing all quantifiers in (S) and (S') interleaved among themselves in any fashion, but maintaining the relative order inside (S) and (S'), will be equivalent to the original formula Φ'(this is yet another basic result in first-order predicate calculus that we rely on). To wit, we form Ψ as follows:

_Ψ_ = (∀_x_′)(∀_x_)(∀_y_)(∀_u_)(∃_y_′)(∃_v_)(_P_)_Q_(_x_′, _y_′) ∧ (_Q_(_x_, _y_) → _ψ_)

and we have Φ′ ≡ Ψ.

Now Ψ is a formula of degree K and therefore by assumption either refutable or satisfiable. If Ψ is satisfiable in a structure M, then, considering Ψ ≡ Φ′ ≡ Φ ∧ Φ → ϕ, we see that ϕ is satisfiable as well. If Ψ is refutable, then so is Φ, which is equivalent to it; thus ¬Φ is provable. Now we can replace all occurrences of Q inside the provable formula ¬Φ by some other formula dependent on the same variables, and we will still get a provable formula. (_This is yet another basic result of first-order predicate calculus. Depending on the particular formalism adopted for the calculus, it may be seen as a simple application of a "functional substitution" rule of inference, as in Gödel's paper, or it may be proved by considering the formal proof of ¬Φ, replacing in it all occurrences of Q by some other formula with the same free variables, and noting that all logical axioms in the formal proof remain logical axioms after the substitution, and all rules of inference still apply in the same way._)

In this particular case, we replace Q(x',y') in ¬Φ with the formula (∀u)(∃v)(P)ψ(x, y|x′, y′). Here (x,y|x',y') means that instead of ψ we are writing a different formula, in which x and y are replaced with x' and y'. Note that Q(x,y) is simply replaced by (∀u)(∃v)(P)ψ.

¬Φ then becomes

¬((∀_x_′)(∃_y_′)(∀_u_)(∃_v_)(_P_)_ψ_(_x_, _y_|_x_′, _y_′) ∧ (∀_x_)(∀_y_)((∀_u_)(∃_v_)(_P_)_ψ_ → (∀_u_)(∃_v_)(_P_)_ψ_))

and this formula is provable; since the part under negation and after the ∧ sign is obviously provable, and the part under negation and before the ∧ sign is obviously φ, just with X and Y replaced by X' and Y', we see that ¬ϕ is provable, and φ is refutable. We have proved that φ is either satisfiable or refutable, and this concludes the proof of the LEMMA.

Notice that we could not have used (∀u)(∃v)(P)ψ(x, y|x′, y′) instead of Q(x',y') from the beginning, because Ψ would not have been a well-formed formula in that case. This is why we cannot naively use the argument appearing at the comment that precedes the proof.

Proving the theorem for formulas of degree 1

As shown by the LEMMA above, we only need to prove our theorem for formulas φ in R of degree 1. φ cannot be of degree 0, since formulas in R have no free variables and don't use constant symbols. So the formula φ has the general form:

(∀_x_₁..._x__(_k_))(∃_y_₁..._y__(_m_))_ϕ_(_x_₁..._x__(_k_), _y_₁..._y__(_m_)).

Now we define an ordering of the k-tuples of natural numbers as follows: (x₁...x_(k)) < (y₁...y_(k)) should hold if either Σ_(k)(x₁...x_(k)) < Σ_(k)(y₁...y_(k)), or Σ_(k)(x₁...x_(k)) = Σ_(k)(y₁...y_(k)), and (x₁...x_(k)) precedes (y₁...y_(k)) in lexicographic order. [Here Σ_(k)(x₁...x_(k)) denotes the sum of the terms of the tuple.] Denote the nth tuple in this order by (a₁^(n)...a_(k)^(n)).

Set the formula B_(n) as ϕ(z_(a₁^(n))...z_(a_(k)^(n)), z_((n − 1)m + 2), z_((n − 1)m + 3)...z_(nm + 1)). Then put D_(n) as

(∃_z_₁..._z__(_n__m_ + 1))(_B_₁ ∧ _B_₂... ∧ _B__(_n_)).

LEMMA: For every _n_, φ → D_(n).

PROOF: By induction on n; we have D_(k) ⇐ D_(k − 1) ∧ (∀z₁...z_((n − 1)m + 1))(∃z_((n − 1)m + 2)...z_(nm + 1))B_(n) ⇐ D_(k − 1) ∧ (∀z_(a₁^(n))...z_(a_(k)^(n)))(∃y₁...y_(m))ϕ(z_(a₁^(n))...z_(a_(k)^(n)), y₁...y_(m)), where the latter implication holds by variable substitution, since the ordering of the tuples is such that (∀k)(a₁^(n)...a_(k)^(n)) < (n − 1)m + 2. But the last formula is equivalent to D_(k − 1)∧φ.

For the base case, D₁ ≡ (∃z₁...z_(m + 1))ϕ(z_(a₁¹)...z_(a_(k)¹), z₂, z₃...z_(m + 1)) ≡ (∃z₁...z_(m + 1))ϕ(z₁...z₁, z₂, z₃...z_(m + 1)) is obviously a corollary of φ as well. So the LEMMA is proven.

Now if D_(n) is refutable for some _n_, it follows that φ is refutable. On the other hand, suppose that D_(n) is not refutable for any _n_. Then for each _n_ there is some way of assigning truth values to the distinct subpropositions E_(h) (ordered by their first appearance in D_(n); "distinct" here means either distinct predicates, or distinct bound variables) in B_(k), such that D_(n) will be true when each proposition is evaluated in this fashion. This follows from the completeness of the underlying propositional logic.

We will now show that there is such an assignment of truth values to E_(h), so that all D_(n) will be true: The E_(h) appear in the same order in every D_(n); we will inductively define a general assignment to them by a sort of "majority vote": Since there are infinitely many assignments (one for each D_(n)) affecting E₁, either infinitely many make E₁ true, or infinitely many make it false and only finitely many make it true. In the former case, we choose E₁ to be true in general; in the latter we take it to be false in general. Then from the infinitely many _n_ for which E₁ through E_(h − 1) are assigned the same truth value as in the general assignment, we pick a general assignment to E_(h) in the same fashion.

This general assignment must lead to every one of the B_(k) and D_(k) being true, since if one of the B_(k) were false under the general assignment, D_(n) would also be false for every _n > k_. But this contradicts the fact that for the finite collection of general E_(h) assignments appearing in D_(k), there are infinitely many _n_ where the assignment making D_(n) true matches the general assignment.

From this general assignment, which makes all of the D_(k) true, we construct an interpretation of the language's predicates that makes φ true. The universe of the model will be the natural numbers. Each i-ary predicate Ψ should be true of the naturals (u₁...u_(i)) precisely when the proposition Ψ(z_(u₁)...z_(u_(i))) is either true in the general assignment, or not assigned by it (because it never appears in any of the D_(k)).

In this model, each of the formulas (∃y₁...y_(m))ϕ(a₁^(n)...a_(k)^(n), y₁...y_(m)) is true by construction. But this implies that φ itself is true in the model, since the a^(n) range over all possible k-tuples of natural numbers. So φ is satisfiable, and we are done.

Intuitive explanation

We may write each B_(i) as Φ(x₁...x_(k),y₁...y_(m)) for some x-s, which we may call "first arguments" and y-s that we may call "last arguments".

Take B₁ for example. Its "last arguments" are z₂,z₃...z_(m+1), and for every possible combination of k of these variables there is some j so that they appear as "first arguments" in B_(j). Thus for large enough n₁, D_(n₁) has the property that the "last arguments" of B₁ appear, in every possible combinations of k of them, as "first arguments" in other B_(j)-s within D_(n). For every B_(i) there is a D_(n_(i)) with the corresponding property.

Therefore in a model that satisfies all the D_(n)-s, there are objects corresponding to z₁, z₂... and each combination of k of these appear as "first arguments" in some B_(j), meaning that for every k of these objects z_(p₁)...z_(p_(k)) there are z_(q₁)...z_(q_(m)), which makes Φ(z_(p₁)...z_(p_(k)),z_(q₁)...z_(q_(m))) satisfied. By taking a submodel with only these z₁, z₂... objects, we have a model satisfying φ.


Extensions

Extension to first-order predicate calculus with equality

Gödel reduced a formula containing instances of the equality predicate to ones without it in an extended language. His method involves replacing a formula φ containing some instances of equality with the formula

    (∀x)Eq(x, x) ∧ (∀x, y, z)[Eq(x, y) → (Eq(x, z) → Eq(y, z))]  ∧ (∀x, y, z)[Eq(x, y) → (Eq(z, x) → Eq(z, y))]
    ∧
    (∀x₁...x_(k), y₁...x_(k))[(Eq(x₁, y₁) ∧ ... ∧ Eq(x_(k), y_(k))) → (A(x₁...x_(k)) ≡ A(y₁...y_(k)))]
     ∧ ...∧
    (∀x₁...x_(m), y₁...x_(m))[(Eq(x₁, y₁) ∧ ... ∧ Eq(x_(m), y_(m))) → (Z(x₁...x_(m)) ≡ Z(y₁...y_(m)))]
    ∧
    φ′.

Here A...Z denote the predicates appearing in φ (with k...m their respective arities), and φ' is the formula φ with all occurrences of equality replaced with the new predicate _Eq_. If this new formula is refutable, the original φ was as well; the same is true of satisfiability, since we may take a quotient of satisfying model of the new formula by the equivalence relation representing _Eq_. This quotient is well-defined with respect to the other predicates, and therefore will satisfy the original formula φ.

Extension to countable sets of formulas

Gödel also considered the case where there are a countably infinite collection of formulas. Using the same reductions as above, he was able to consider only those cases where each formula is of degree 1 and contains no uses of equality. For a countable collection of formulas ϕ^(i) of degree 1, we may define B_(k)^(i) as above; then define D_(k) to be the closure of B₁¹...B_(k)¹, ..., B₁^(k)...B_(k)^(k). The remainder of the proof then went through as before.

Extension to arbitrary sets of formulas

When there is an uncountably infinite collection of formulas, the Axiom of Choice (or at least some weak form of it) is needed. Using the full AC, one can well-order the formulas, and prove the uncountable case with the same argument as the countable one, except with transfinite induction. Other approaches can be used to prove that the completeness theorem in this case is equivalent to the Boolean prime ideal theorem, a weak form of AC.


References

-   The first proof of the completeness theorem.

-   The same material as the dissertation, except with briefer proofs, more succinct explanations, and omitting the lengthy introduction.


External links

-   Stanford Encyclopedia of Philosophy: "Kurt Gödel"—by Juliette Kennedy.
-   MacTutor biography: Kurt Gödel.

Category:Logic Godel's completeness theorem Category:Mathematical proofs Godel's completeness theorem Godel's completeness theorem Category:Works by Kurt Gödel