APPROXIMATE COMPETITIVE EQUILIBRIUM FROM EQUAL INCOMES (A-CEEI) is a procedure for fair item assignment. It was developed by Eric Budish.[1]


Background

CEEI (Competitive Equilibrium from Equal Incomes) is a fundamental mechanism for fair division of divisible resources. It works in two steps:

-   EI: Each agent receives an equal "income" - 1 unit of fiat money.
-   CE: The agents trade freely until a competitive equilibrium is attained (a price-vector and an allocation).

The equilibrium allocation is provably envy free and Pareto efficient.

Unfortunately, when there are indivisibilities, a CEEI does not always exist, so it cannot be used directly for fair item assignment. However, it can be approximated, and the approximation has good fairness, efficiency and strategic properties.


Assumptions

A-CEEI only assumes that the agents know how to rank bundles of items. The ranking need not be weakly additive nor even monotone.


Procedure

-   Approximate-EI: each agent receives an income between 1 and 1 + β, for some constant β. The exact income of each agent can be determined randomly, or by seniority (seniors can get a slightly higher income).
-   Approximate-CE: a price-vector and an allocation are calculated, such that (a) each allocated bundle is optimal to its agent given its budget, and (b) the market "almost" clears - up to a small constant that depends on the minimum between the number of different item-types and the number of different items that an agent may receive.


Guarantees

The allocation satisfies the following properties:

-   Envy-free-except-1-item (see envy-free item assignment).
-   (n + 1)-maximin-share-guarantee.
-   Pareto efficiency with respect to the allocated items. I.e, there is no Pareto-improving trade among the agents, but there may be Pareto-improving traders between an agent and the market-maker.

Moreover, the A-CEEI mechanism is strategyproof "in the large": when there are many agents, each agent has only a small influence on the price, so the agents act as price takers. Then, it is optimal for each agent to report his true valuations, since it allows the mechanism to give him an optimal bundle given the prices.


Computation

The A-CEEI allocation is hard to compute: it is PPAD complete.[2]

However, in realistic-size problems, A-CEEI can be computed using a two-level search process:

1.  Master level: the center uses tabu search to suggest prices;
2.  Agent level: mixed integer programs are solved to find agent demands at the current prices.

The agent-level program can be done in parallel for all agents, so this method scales near-optimally in the number of processors.[3]

The mechanism has been considered for the task of assigning students to courses at the Wharton School of the University of Pennsylvania. [4]


Comparison to maximum-Nash welfare

The _Maximum-Nash-Welfare_ (MNW) algorithm finds an allocation that maximizes the product of the agents' utilities. It is similar to A-CEEI in several respects:[5]

-   Both algorithms find an EF-except-1 allocation.
-   Both algorithms approximate the maximin-share-guarantee.

However, A-CEEI has several advantages:

-   It works with arbitrary utility functions - not only submodular ones. It does not even require monotonicity of preferences.
-   It works with ordinal input - the agents are only required to report their ranking over bundles - not their numeric valuation of items.
-   It is strategy proof "in the large".

On the flip side, A-CEEI has several disadvantages:

-   There is an approximation error in the items that are allocated - some items might be in excess demand or excess supply.[6]

-   In particular, the returned allocation is not Pareto-efficient - some items remain unallocated (it is Pareto-efficient only with respect to the allocated items).

The approximation error of A-CEEI grows with the number of distinct items, but not with the number of players or the number of copies of each item. Therefore, A-CEEI is better when there are many agents and many copies of each item. A typical application is when the agents are students and the items are positions in courses. [7]

In contrast, MNW is better when there are few agents and many distinct items, such as in inheritance division.


Comparison to competitive equilibrium

A-CEEI (and CEEI in general) is related, but not identical, to the concept of competitive equilibrium.

-   Competitive equilibrium (CE) is a descriptive concept: it describes the situation in free market when the price stabilizes and the demand equals the supply.
-   CEEI is a normative concept: it describes a rule for dividing commodities between people.


See also

-   Combinatorial auction


References

Category:Fair division protocols

[1]

[2]

[3]  acm.org

[4]

[5]

[6]

[7]