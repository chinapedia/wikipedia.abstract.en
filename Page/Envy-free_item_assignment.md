ENVY-FREE ITEM ASSIGNMENT (EF assignment) is a fair item assignment problem, in which the fairness criterion is envy-freeness - each agent should receive a bundle that he believes to be at least as good as the bundle of any other agent.[1]

Since the items are indivisible, an EF assignment may not exist. The simplest case is when there is a single item and at least two agents: if the item is assigned to one agent, the other will envy. Therefore, the division procedures provide various kinds of relaxations.


Finding an envy-free allocation if it exists

Preference-orderings on bundles: envy-freeness

The undercut procedure finds a complete EF allocation for two agents, if-and-only-if such allocation exists. It requires the agents to rank bundles of items, but it does not require cardinal utility information. It works whenever the agents' preference relations are strictly monotone, but does not need to assume that they are responsive preferences. In the worst case, the agents may have to rank all possible bundles, so the run-time might be exponential in the number of items.

Preference-orderings on items: necessary/possible envy-freeness

It is usually easier for people to rank individual items than to rank bundles. Assuming all agents have responsive preferences, it is possible to lift the item-ranking to a partial bundle-ranking. For example, if the item-ranking is w>x>y>z, then responsiveness implies that {w,x}>{y,z} and {w,y}>{x,z}, but does not imply anything about the relation between {w,z} and {x,y}, between {x} and {y,z}, etc.

Given an item-ranking:

-   An allocation is NECESSARILY ENVY-FREE (NEF) if it is envy-free according to _all_ responsive bundle-rankings consistent with the item-ranking;
-   An allocation is POSSIBLY ENVY-FREE (PEF) if it is envy-free according to _at least one_ responsive bundle-ranking consistent with the item-ranking;
-   An allocation is NECESSARILY PARETO-OPTIMAL (NPE) if it is Pareto-optimal according to _all_ responsive bundle-rankings consistent with the item-ranking;
-   An allocation is POSSIBLY PARETO-OPTIMAL (PPE) if it is Pareto-optimal according to _at least one_ responsive bundle-ranking consistent with the item-ranking.

Bouveret and Endriss and Lang[2] study the algorithmic questions of finding a NEF/PEF allocation with an additional efficiency condition, particularly, completeness or NPE or PPE. In general, PEF is computationally easy while NEF is computationally hard.


Finding a partial envy-free allocation

The AL procedure finds an EF allocation for two agents. It may discard some of the items, but, the final allocation is Pareto efficient in the following sense: no other EF allocation is better for one and weakly better for the other.

The AL procedure only requires the agents to rank individual items. It assumes that the agents have responsive preferences and returns an allocation that is necessarily envy-free (NEF).


Bounding the maximum envy

Several procedures find an allocation that is ENVY-FREE EXCEPT ONE ITEM (EF1): for each two agents A and B, there exists an item that can be removed from the bundle of B such that A does not envy B.[3]

Round-robin procedure

When all agents have weakly additive utilities, the following protocol (which is similar to Round-robin scheduling) attains a complete EF1 allocation:

1.  Order the agents arbitrarily.
2.  While there are unassigned items:
    -   Let each agent from 1 to n pick an item.

    _Proof:_[4] For every agent i, divide the selections made by the agents to sub-sequences: the first subsequence starts at agent 1 and ends at agent i − 1; the latter subsequences start at i and end at i − 1. In the latter subsequences, agent i chooses first, so he can choose his best item, so he does not envy any other agent. Agent i can envy only one of the agents 1, ..., i − 1, and the envy comes only from an item they selected in the first subsequence. If this item is removed, agent i does not envy.

The round-robin protocol requires weak additivity, since it requires each agent to pick his "best item" without knowing what other items he is going to get. In other words, it assumes that the items are independent goods.

Envy-cycles procedure

The envy-cycles procedure returns a complete EF1 allocation for arbitrary preference relations. The only requirement is that the agents can rank bundles of items.

If the agents' valuations are represented by a cardinal utility function, then the EF1 guarantee has an additional interpretation: the numeric envy-level of each agent is at most the maximal-marginal-utility - the largest marginal utility of a single item for that agent.

A-CEEI procedure

The A-CEEI mechanism returns a partial EF1 allocation for arbitrary preference relations. The only requirement is that the agents can rank bundles of items.

A small number of items might remain unallocated; the allocation is Pareto-efficient with respect to the allocated items. Moreover, the A-CEEI mechanism is approximately strategyproof when the number of agents is large.

Maximum-Nash-Welfare

The Maximum-Nash-Welfare (MNW) algorithm selects a complete allocation that maximizes the product of utilities. It requires each agent to provide a numeric valuation of each item, and assumes that the agents' utilities are additive. The resulting allocation is EF1 and Pareto-efficient.[5]

If the agents' utilities are not additive, the MNW solution is not necessarily EF1; but if the agents' utilities are at least submodular, the MNW solution satisfies a weaker property called _Marginal-Envy-Freeness except-1-item_ (MEF1).

EF1 vs EFx

There is an alternative criterion called ENVY-FREENESS-EXCEPT-CHEAPEST (EFX): For each two agents A and B, if we remove from the bundle of B _any_ item, then A does not envy B. EFx is strictly stronger than EF1. As of this writing, it is not known whether EFx allocations always exist.[6]


Minimizing the envy-ratio

Given an allocation _X_, define the envy ratio of _i_ in _j_ as:

$$EnvyRatio(X,i,j) := \max(1, {u_i(X_j)\over u_i(X_i)})$$
so the ratio is 1 if _i_ does not envy _j_, and it is larger when _i_ envies _j_. Define the envy ratio of an assignment as:

_E__n__v__y__R__a__t__i__o_(_X_) := max_(_i_, _j_)(_E__n__v__y__R__a__t__i__o_(_X_, _i_, _j_)
The ENVY RATIO MINIMIZATION problem is the problem of finding an allocation _X_ with smallest envy ratio.

General valuations

With general valuations, any deterministic algorithm that computes an alloation with minimum envy-ratio requires a number of queries which is exponential in the number of goods in the worst case.[7]

Additive and identical valuations

With additive and identical valuations:[8]

-   The following greedy algorithm finds an allocation whose envy-ratio is at most 1.4 times the minimum:[9]
    1.  Order the items by descending value;
    2.  While there are more items, give the next item to an agent with the smallest total value.
-   There is a PTAS for envy-ratio minimization. Furthermore, when the number of players is constant, there is an FPTAS.

Additive and different valuations

With additive and different valuations:[10]

-   When the number of agents is part of the input, it is impossible to obtain in polynomial time an approximation factor better than 1.5, unless P=NP.
-   When the number of agents is constant, there is an FPTAS.
-   When the number of agents equals the number of items, there is a polynomial-time algorithm.


Dividing one item

The Adjusted winner procedure returns a complete and efficient EF allocation for two agents, but it might have to divide a single item. It requires the agents to report a numeric value for each item, and assumes that they have additive utilities.


Deciding whether an EF allocation exists

The empty allocation is always EF. But if we want some efficiency in addition to EF, then the decision problem becomes computationally hard: [11]

-   Deciding whether an EF and _complete_ allocation exists is NP complete. This is true even when there are only two agents, and even when their utilities are additive and identical, since in this case finding an EF allocation is equivalent to solving the partition problem.[12]
-   Deciding whether an EF and _Pareto efficient_ allocation exists is above NP: it is Σ₂^(P)-complete even with dichotomous preferences[13] and even with additive utilities.[14]


Existence of EF allocations with random valuations

If the agents have additive utility functions that are drawn from probability distributions satisfying some independence criteria, and the number of items is sufficiently large relative to the number of agents, then an EF allocation exists with high probability. Particularly:[15]

-   If the number of items is sufficiently large: m = Ω(nlog n), then w.h.p. an EF allocation exists (the probability goes to 1 as m goes to infinity).
-   If the number of items is not sufficiently large, i.e., m = n + o(n), then w.h.p. an EF allocation does not exist.


Envy-freeness vs. other fairness criteria

-   Every EF allocation is _min-max-fair_. This follows directly from the ordinal definitions and does not depend on additivity.
-   If all agents have additive utility functions, then an EF allocation is also _proportional_ and _max-min-fair_. Otherwise, an EF allocation may be not proportional and even not max-min-fair.
-   Every allocation of a _competitive equilibrium from equal incomes_ is also envy-free. This is true regardless of additivity.[16]
-   Every Nash-optimal allocation (allocation that maximizes the product of utilities) is EF1.[17]

See Fair item assignment for details and references.


Summary table

Below, the following shorthands are used:

-   n = the number of agents participating in the division;
-   m = the number of items to divide;
-   EF = envy-free, EF1 = envy-free except-1-item (weaker than EF), MEF1 = marginal-envy-free except-1-item (weaker than EF1).
-   PE = Pareto-efficient.

  Name                       #partners   Input             Preferences         #queries                                                  Fairness                                 Efficiency                                         Comments
  -------------------------- ----------- ----------------- ------------------- --------------------------------------------------------- ---------------------------------------- -------------------------------------------------- --------------------------------------------------------------
  Undercut                   2           Bundle ranking    Strictly monotone   2^(m)                                                     EF                                       Complete                                           If-and-only-if a complete EF allocation exists
  AL                         2           Item ranking      Weakly additive     Poly(m)                                                   Necessarily-EF                           Partial, but not Pareto-dominated by another NEF
  Adjusted winner            2           Item valuations   Additive            Poly(m)                                                   EF and equitable                         PE                                                 Might divide one item.
  Round-robin                n           Item ranking      Weakly additive     m                                                         Necessarily-EF1                          Complete
  Unenvied-agent             n           Bundle ranking    Monotone            O(mn³)                                                    EF1                                      Complete
  A-CEEI                     n           Bundle ranking    Any                 ?                                                         EF1, and (n + 1)-maximin-share           Partial, but PE w.r.t. allocated items             Also approximately strategyproof when there are many agents.
  Maximum-Nash-Welfare[18]   n           Item valuations   Additive            NP-hard (but there are approximations in special cases)   EF1, and approximately-n-maximin-share   PE                                                 With submodular utilities, allocation is PE and MEF1.


References

Category:Fair division

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

[15]  ACM link

[16]

[17]

[18]