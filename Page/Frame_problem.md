In artificial intelligence, the FRAME PROBLEM describes an issue with using first-order logic (FOL) to express facts about a robot in the world. Representing the state of a robot with traditional FOL requires the use of many axioms that simply imply that things in the environment do not change arbitrarily. For example, Hayes describes a "block world" with rules about stacking blocks together. In a FOL system, additional axioms are required to make inferences about the environment (for example, that a block cannot change position unless it is physically moved). The frame problem is the problem of finding adequate collections of axioms for a viable description of a robot environment.[1]

John McCarthy and Patrick J. Hayes defined this problem in their 1969 article, _Some Philosophical Problems from the Standpoint of Artificial Intelligence_. In this paper, and many that came after, the formal mathematical problem was a starting point for more general discussions of the difficulty of knowledge representation for artificial intelligence. Issues such as how to provide rational default assumptions and what humans consider common sense in a virtual environment.[2] Later, the term acquired a broader meaning in philosophy, where it is formulated as the problem of limiting the beliefs that have to be updated in response to actions. In the logical context, actions are typically specified by what they change, with the implicit assumption that everything else (the frame) remains unchanged.


Description

The frame problem occurs even in very simple domains. A scenario with a door, which can be open or closed, and a light, which can be on or off, is statically represented by two propositions open and on. If these conditions can change, they are better represented by two predicates open(t) and on(t) that depend on time; such predicates are called fluents. A domain in which the door is closed and the light off at time 0, and the door opened at time 1, can be directly represented in logic by the following formulae:

¬_o__p__e__n_(0)

¬_o__n_(0)

_o__p__e__n_(1)

The first two formulae represent the initial situation; the third formula represents the effect of executing the action of opening the door at time 1. If such an action had preconditions, such as the door being unlocked, it would have been represented by ¬locked(0) ⟹ open(1). In practice, one would have a predicate executeopen(t) for specifying when an action is executed and a rule ∀t.executeopen(t) ⟹ open(t + 1) for specifying the effects of actions. The article on the situation calculus gives more details.

While the three formulae above are a direct expression in logic of what is known, they do not suffice to correctly draw consequences. While the following conditions (representing the expected situation) are consistent with the three formulae above, they are not the only ones.

    {|

| ¬open(0)     || open(1) |- | ¬on(0) || ¬on(1) |}

Indeed, another set of conditions that is consistent with the three formulae above is:

    {|

| ¬open(0)     || open(1) |- | ¬on(0) || on(1) |}

The frame problem is that specifying only which conditions are changed by the actions does not entail that all other conditions are not changed. This problem can be solved by adding the so-called “frame axioms”, which explicitly specify that all conditions not affected by actions are not changed while executing that action. For example, since the action executed at time 0 is that of opening the door, a frame axiom would state that the status of the light does not change from time 0 to time 1:

_o__n_(0) ⇔ _o__n_(1)

The frame problem is that one such frame axiom is necessary for every pair of action and condition such that the action does not affect the condition. In other words, the problem is that of formalizing a dynamical domain without explicitly specifying the frame axioms.

The solution proposed by McCarthy to solve this problem involves assuming that a minimal amount of condition changes have occurred; this solution is formalized using the framework of circumscription. The Yale shooting problem, however, shows that this solution is not always correct. Alternative solutions were then proposed, involving predicate completion, fluent occlusion, successor state axioms, etc.; they are explained below. By the end of the 1980s, the frame problem as defined by McCarthy and Hayes was solved. Even after that, however, the term “frame problem” was still used, in part to refer to the same problem but under different settings (e.g., concurrent actions), and in part to refer to the general problem of representing and reasoning with dynamical domains.


Solutions

The following solutions depict how the frame problem is solved in various formalisms. The formalisms themselves are not presented in full: what is presented are simplified versions that are sufficient to explain the full solution.

Fluent occlusion solution

This solution was proposed by Erik Sandewall, who also defined a formal language for the specification of dynamical domains; therefore, such a domain can be first expressed in this language and then automatically translated into logic. In this article, only the expression in logic is shown, and only in the simplified language with no action names.

The rationale of this solution is to represent not only the value of conditions over time, but also whether they can be affected by the last executed action. The latter is represented by another condition, called occlusion. A condition is said to be _occluded_ in a given time point if an action has been just executed that makes the condition true or false as an effect. Occlusion can be viewed as “permission to change”: if a condition is occluded, it is relieved from obeying the constraint of inertia.

In the simplified example of the door and the light, occlusion can be formalized by two predicates occludeopen(t) and occludeon(t). The rationale is that a condition can change value only if the corresponding occlusion predicate is true at the next time point. In turn, the occlusion predicate is true only when an action affecting the condition is executed.

¬_o__p__e__n_(0)

¬_o__n_(0)

_o__p__e__n_(1) ∧ _o__c__c__l__u__d__e__o__p__e__n_(1)

∀_t_.¬_o__c__c__l__u__d__e__o__p__e__n_(_t_) ⟹ (_o__p__e__n_(_t_ − 1) ⇔ _o__p__e__n_(_t_))

∀_t_.¬_o__c__c__l__u__d__e__o__n_(_t_) ⟹ (_o__n_(_t_ − 1) ⇔ _o__n_(_t_))

In general, every action making a condition true or false also makes the corresponding occlusion predicate true. In this case, occludeopen(1) is true, making the antecedent of the fourth formula above false for t = 1; therefore, the constraint that open(t − 1) ⇔ open(t) does not hold for t = 1. Therefore, open can change value, which is also what is enforced by the third formula.

In order for this condition to work, occlusion predicates have to be true only when they are made true as an effect of an action. This can be achieved either by circumscription or by predicate completion. It is worth noticing that occlusion does not necessarily imply a change: for example, executing the action of opening the door when it was already open (in the formalization above) makes the predicate occludeopen true and makes open true; however, open has not changed value, as it was true already.

Predicate completion solution

This encoding is similar to the fluent occlusion solution, but the additional predicates denote change, not permission to change. For example, changeopen(t) represents the fact that the predicate open will change from time t to t + 1. As a result, a predicate changes if and only if the corresponding change predicate is true. An action results in a change if and only if it makes true a condition that was previously false or vice versa.

¬_o__p__e__n_(0)

¬_o__n_(0)

¬_o__p__e__n_(0) ⟹ _c__h__a__n__g__e__o__p__e__n_(0)

∀_t_._c__h__a__n__g__e__o__p__e__n_(_t_) ⇔ (¬_o__p__e__n_(_t_) ⇔ _o__p__e__n_(_t_ + 1))

∀_t_._c__h__a__n__g__e__o__n_(_t_) ⇔ (¬_o__n_(_t_) ⇔ _o__n_(_t_ + 1))

The third formula is a different way of saying that opening the door causes the door to be opened. Precisely, it states that opening the door changes the state of the door if it had been previously closed. The last two conditions state that a condition changes value at time t if and only if the corresponding change predicate is true at time t. To complete the solution, the time points in which the change predicates are true have to be as few as possible, and this can be done by applying predicate completion to the rules specifying the effects of actions.

Successor state axioms solution

The value of a condition after the execution of an action can be determined by the fact that the condition is true if and only if:

1.  the action makes the condition true; or
2.  the condition was previously true and the action does not make it false.

A successor state axiom is a formalization in logic of these two facts. For example, if opendoor(t) and closedoor(t) are two conditions used to denote that the action executed at time t was to open or close the door, respectively, the running example is encoded as follows.

    ¬open(0)
    ¬on(0)
    opendoor(0)
    ∀t.open(t + 1) ⇔ opendoor(t) ∨ (open(t) ∧ ¬closedoor(t))

This solution is centered around the value of conditions, rather than the effects of actions. In other words, there is an axiom for every condition, rather than a formula for every action. Preconditions to actions (which are not present in this example) are formalized by other formulae. The successor state axioms are used in the variant to the situation calculus proposed by Ray Reiter.

Fluent calculus solution

The fluent calculus is a variant of the situation calculus. It solves the frame problem by using first-order logic terms, rather than predicates, to represent the states. Converting predicates into terms in first-order logic is called reification; the fluent calculus can be seen as a logic in which predicates representing the state of conditions are reified.

The difference between a predicate and a term in first-order logic is that a term is a representation of an object (possibly a complex object composed of other objects), while a predicate represents a condition that can be true or false when evaluated over a given set of terms.

In the fluent calculus, each possible state is represented by a term obtained by composition of other terms, each one representing the conditions that are true in state. For example, the state in which the door is open and the light is on is represented by the term open ∘ on. It is important to notice that a term is not true or false by itself, as it is an object and not a condition. In other words, the term open ∘ on represent a possible state, and does not by itself mean that this is the current state. A separate condition can be stated to specify that this is actually the state at a given time, e.g., state(open ∘ on, 10) means that this is the state at time 10.

The solution to the frame problem given in the fluent calculus is to specify the effects of actions by stating how a term representing the state changes when the action is executed. For example, the action of opening the door at time 0 is represented by the formula:

    state(s ∘ open, 1) ⇔ state(s, 0)

The action of closing the door, which makes a condition false instead of true, is represented in a slightly different way:

    state(s, 1) ⇔ state(s ∘ open, 0)

This formula works provided that suitable axioms are given about state and ∘, e.g., a term containing the same condition twice is not a valid state (for example, state(open ∘ s ∘ open, t) is always false for every s and t).

Event calculus solution

The event calculus uses terms for representing fluents, like the fluent calculus, but also has axioms constraining the value of fluents, like the successor state axioms. In the event calculus, inertia is enforced by formulae stating that a fluent is true if it has been true at a given previous time point and no action changing it to false has been performed in the meantime. Predicate completion is still needed in the event calculus for obtaining that a fluent is made true only if an action making it true has been performed, but also for obtaining that an action had been performed only if that is explicitly stated.

Default logic solution

The frame problem can be thought of as the problem of formalizing the principle that, by default, "everything is presumed to remain in the state in which it is" (Leibniz, "An Introduction to a Secret Encyclopædia", _c_. 1679). This default, sometimes called the _commonsense law of inertia_, was expressed by Raymond Reiter in default logic:

    $\frac{R(x,s)\; :\ R(x,\mathrm{do}(a,s))}{R(x,\mathrm{do}(a,s))}$

(if R(x) is true in situation s, and it can be assumed[3] that R(x) remains true after executing action a, then we can conclude that R(x) remains true).

Steve Hanks and Drew McDermott argued, on the basis of their Yale shooting example, that this solution to the frame problem is unsatisfactory. Hudson Turner showed, however, that it works correctly in the presence of appropriate additional postulates.

Answer set programming solution

The counterpart of the default logic solution in the language of answer set programming is a rule with strong negation:

$$r(X,T+1) \leftarrow r(X,T),\ \hbox{not }\sim r(X,T+1)$$

(if r(X) is true at time T, and it can be assumed that r(X) remains true at time T + 1, then we can conclude that r(X) remains true).

Action description languages

Action description languages elude the frame problem rather than solving it. An action description language is a formal language with a syntax that is specific for describing situations and actions. For example, that the action opendoor makes the door open if not locked is expressed by:

    opendoor causes open if ¬locked

The semantics of an action description language depends on what the language can express (concurrent actions, delayed effects, etc.) and is usually based on transition systems.

Since domains are expressed in these languages rather than directly in logic, the frame problem only arises when a specification given in an action description logic is to be translated into logic. Typically, however, a translation is given from these languages to answer set programming rather than first-order logic.


See also

-   Yale shooting problem
-   Binding problem
-   Ramification problem
-   Qualification problem
-   Common sense
-   Commonsense reasoning
-   Defeasible reasoning
-   Non-monotonic logic
-   Symbol grounding
-   Linear logic


Notes


References

-   -   -   -   -   -   -   Presented at _Celebration of John McCarthy's Accomplishments_, Stanford University, March 25, 2012.

-   -   -   -   -   -   -   -   -   -   -   -   -   -


External links

-   -   Some Philosophical Problems from the Standpoint of Artificial Intelligence; the original article of McCarthy and Hayes that proposed the problem.

Category:Artificial intelligence Category:Knowledge representation Category:Epistemology Category:Logic programming Category:Philosophical problems Category:1969 introductions

[1]

[2]

[3] i.e., no contradicting information is known