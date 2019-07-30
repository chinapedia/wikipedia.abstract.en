The UNDERCUT PROCEDURE is a procedure for fair item assignment between two people. It provably finds a complete envy-free item assignment whenever such assignment exists. It was presented by Brams and Kilgour and Klamler[1] and simplified and extended by Aziz.[2]


Assumptions

The undercut procedure requires only the following weak assumptions on the people:

-   Each person has a weak preference relation on subsets of items.
-   Each preference relation is _strictly monotonic_: for every set X and item y ∉ X, the person strictly prefers X ∪ y to X.

It is _not_ assumed that agents have responsive preferences.


Main idea

The undercut procedure can be seen as a generalization of the divide and choose protocol from a divisible resource to a resource with indivisibilities. The divide-and-choose protocol requires one person to cut the resource to two equal pieces. But, if the resource contains with indivisibilities, it may be impossible to make an exactly-equal cut. Accordingly, the undercut procedure works with _almost-equal-cuts_. An almost-equal-cut of a person is a partition of the set of items to two disjoint subsets (X,Y) such that:

-   The person weakly prefers X to Y;
-   If any single item is moved from X to Y, then the person strictly prefers Y to X (i.e., for all x in X, the person prefers Y ∪ x to X \ x).


Procedure

Each person reports all his almost-equal-cuts. There are two cases:

-   _Case 1_: the reports are different, e.g., there is a partition (X,Y) that is an almost-equal-cut for Alice but not for George. Then, this partition is presented to George. George can either accept or reject it:
    -   George accepts the partition if he prefers Y to X. Then Alice receives X and George receives Y and the resulting allocation is envy-free.
    -   George rejects the partition if he prefers X to Y. By assumption, (X,Y) is not an almost-equal-cut for George. Therefore, there exists an item x in X such that George prefers X \ x to Y ∪ x. George reports X \ x; we say that George UNDERCUTS X. Since (X,Y) is an almost-equal-cut for Alice, Alice prefers Y ∪ x to X \ x. Then George receives X \ x and Alice receives Y ∪ x and the resulting allocation is envy-free.
-   _Case 2_: the reports are identical, i.e., Alice and George have exactly the same set of almost-equal-cuts. Then, the procedure asks them whether one of their almost-equal-cuts is an exactly-equal-cut. By the strict-monotonicity assumption, (X,Y) is an exactly-equal-cut, if-and-only-if both (X,Y) and (Y,X) are almost-equal-cuts. Therefore, in Case 2, Alice and George have the same set of exactly-equal-cuts. There are two sub-cases:
    -   Easy case: there exists an exactly-equal cut (X,Y). Then one person (no matter who) receives X and the other receives Y and the division is envy-free.
    -   Hard case: there is no exactly-equal cut. Then the procedure returns and reports that "an envy-free allocation does not exist".

To prove the correctness of the procedure, it is sufficient to prove that in the Hard case, an envy-free allocation does not exist. Indeed, suppose there exists an envy-free allocation (X,Y). Since we are in the Hard case, (X,Y) is not an exactly-equal cut. So one person (e.g. George) strictly prefers Y to X, while the other person (Alice) weakly prefers X to Y. If (X,Y) is not an almost-equal-cut for Alice, then we move some items from X to Y, until we get a partition (X',Y') that is an almost-equal-cut for Alice. Alice still weakly prefers X' to Y'. By the monotonicity assumption, George still strictly prefers Y' to X'. This means that (X',Y') is not an almost-equal-cut for George. But in the Hard case, both agents have the same set of almost-equal-cuts - a contradiction.


Run-time complexity

In the worst case, the agents may have to evaluate all possible bundles, so the run-time might be exponential in the number of items.

This is not surprising, since the undercut procedure can be used to solve the partition problem: assume both agents have identical and additive valuations and run the undercut procedure; if it finds an envy-free allocation, then this allocation represents an equal partition. Since the partition problem is NP-complete, it probably cannot be solved by a polynomial-time algorithm.


Unequal entitlements

The undercut procedure can also work when the agents have unequal entitlements.[3] Suppose each agent i is entitled to a fraction e_(i) of the items. Then, the definition of an almost-equal-cut (for agent i) should be changed as follows:

-   $u_i(X) \geq {c_i \over c_{-i}} u_i(Y)$, and
-   For all x in X, the $u_i(X\setminus x) < {c_i \over c_{-i}} u_i(Y\cup x)$


Generation phase

In the original publication,[4] the undercut procedure is preceded by the following _generation phase_:

-   While there are items on the table:
    -   Each person reports his/her best item.
        -   If the reports are different, then each person receives his/her best item.
        -   If the reports are identical, then the best item is put in a _contested pile_.

The undercut procedure described above is then executed only on the contested pile.

This phase may make the division procedure more efficient: the contested pile may be smaller than the original set of items, so it may be easier to calculate and report the almost-equal-cuts.

      Alice   George
  --- ------- --------
  w   9       1
  x   8       4
  y   7       3
  z   6       2

However, the generation phase has several disadvantages:[5]

1.  It might make the procedure miss a possible envy-free allocation. For example, suppose there are four items and their valuations are as in the adjacent table. The allocation that gives {w,z} to Alice and {x,y} to George is envy-free. Indeed, it can be found by the bare undercut procedure, since the partition ({w,z}, {x,y}) is an almost-equal-cut for Alice but not for George, and George would accept this partition. But with the generation phase, initially Alice gets w and George gets x and the other items {y,z} are put in the contested pile, and there is no envy-free allocation of the contested pile, so the procedure fails.
2.  It requires the people to select their "best item" without knowing what other items they are going to receive. This relies on an assumption that the items are independent goods. Alternatively, it relies on a _responsiveness_ assumption: if, in a bundle, an item is replaced by a better item, then the resulting bundle is better (it is closely related to weakly additive preferences).
3.  It does not work when the agents have unequal claims.
4.  It relies on sequential allocation, which is susceptible to strategic manipulation.


References

-

Category:Fair division protocols

[1]

[2]

[3]

[4]

[5]