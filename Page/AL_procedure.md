The AL PROCEDURE is a procedure for fair item assignment between two people. It finds an envy-free item assignment of a subset of the items. Moreover, the resulting allocation is Pareto efficient in the following sense: there is no other envy-free allocation which is better for one person and not worse for the other person.

The AL procedure was first published by Brams and Kilgour and Klamler.[1] It was later generalized by Haris Aziz to handle the case where agents may express indifferences.[2]


Assumptions

The AL procedure requires the following assumptions on the people:

-   Each person can rank the items from best to worst (i.e., each person can report a strict preference relation on the items).
-   Each person has a preference relation on bundles of items which is compatible with the responsive set extension of the ordering on items.


Requirements

It is _not_ assumed that the people can report their preference relation on bundles. There are many bundles, and it may be difficult to report a ranking on all of them.

Therefore, the procedure should return an allocation that is envy-free for _every_ preference relation that is consistent with the item ranking and with weak additivity. In other words, the procedure should return an allocation that is _necessarily envy-free_ (NEF).[3]

Suppose the two people are Alice and George. An allocation is _NEF for Alice_ if there is an injection _f_ from George's items to Alice's items, such that for each item _x_ received by George, Alice prefers _f_(_x_) to _x_. An allocation is _NEF for George_ if the symmetric property is satisfied. An item assignment is _NEF_ if it is NEF for both partners. Note that in a NEF assignment, Alice and George receive the same number of items.

The empty allocation is obviously NEF, but it is very inefficient. Therefore, we are looking for an allocation that is "best" among all NEF allocations. A NEF allocation is called Pareto-efficient if there is no other NEF allocation that is better for one person and not worse for the other one.


The BT procedure

As an introduction, consider the following simple division procedure:

-   Put all items on the table.
-   While there are items on the table, do:
    -   Ask the partners to choose their favorite item from all items on the table.
    -   If the choices are different, then give each partner his/her favorite item and continue.
    -   If the choices are identical, then send the chosen item to the Contested Pile. It will not be allocated.

This procedure returns a NEF allocation. It is very simple but not very efficient, since many items are discarded to the contested pile. The AL procedure is slightly more complicated, but it guarantees that the contested pile is never larger, and may be smaller than under BT.


The AL procedure

The AL procedure works similarly to the BT procedure, but, before moving an item to the contested pile, it tries to allocate it to one partner while compensating the other partner with another item. Only if this doesn't succeed, the item is sent to the contested pile.

For example, suppose there are four items (1, 2, 3, 4) and the preferences of the partners are:

-   Alice: 1 > 2 > 3 > 4
-   George: 2 > 3 > 4 > 1

The BT procedure gives 1 to Alice and 2 to George, since these are their favorites and they are different. Then, both Alice and George choose 3 so it is discarded. Then, both choose 4 so it is also discarded. The final allocation is: Alice←{1}, George←{2}. It is NEF but not PE.

The AL procedure also starts by giving 1 to Alice and 2 to George. Then, instead of discarding item 3, it is given to Alice, and George is compensated with item 4. The final allocation is: Alice ← {1,3}, George ← {2,4}. It is NEF and PE.

Both procedures are manipulable: a partner can gain by reporting incorrect preferences. However, such manipulation requires knowledge of the other partner's preferences, so it is difficult in practice.


The AL procedure with indifferences

The original AL procedure crucially relies on the assumption that the item rankings are strict.

[4] generalizes this procedure to general rankings, with possible indifferences.


References

Category:Fair division protocols Category:Game theory Category:Mathematical optimization Category:Pareto efficiency

[1]

[2]

[3]

[4]