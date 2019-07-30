In the theory of fair cake-cutting, the INDIVIDUAL-PIECES SET (IPS) is a geometric object that represents all possible utility vectors in cake partitions.


Example

Suppose we have a cake made of four parts. There are two people, Alice and George, with different tastes: each person values the different parts of the cake differently. The table below describes the parts and their values.

Individual_Pieces_Set.png

                   Chocolate   Lemon   Vanilla   Cherries
  ---------------- ----------- ------- --------- ----------
  Alice's value    18          9       1         2
  George's value   18          0       4         8


The cake can be divided in various ways. Each division (Alice's-piece, George's-piece) yields a different utility vector (Alice's utility, George's utility). The IPS is the set of utility vectors of all possible partitions.

The IPS for the example cake is shown on the right.


Properties

The IPS is a convex set and a compact set. This follows from the Dubins–Spanier theorems.

With two agents, the IPS is symmetric across the middle point (in this case it is the point (15,15)). Take some int (x, y) on the IPS. This point comes from some partition. Swap the pieces between Alice and George. Then, Alice's new utility is 30 minus her previous utility, and George's new utility is 30 minus his previous utility, so the symmetric point (30 − x, 30 − y) is also on the IPS.

The top-right boundary of the IPS is the Pareto frontier – it is the set of all Pareto efficient partitions. With two agents, this frontier can be constructed in the following way:

-   Order the pieces of the cake in ascending order of the marginal-utiltiy ratio (George's utility / Alice's-utility). In the above example, the order would be: Lemon (0), Chocolate (1), Vanilla+Cherries (4).
-   Start at the point where all cake is given to George (0,30).
-   Move each piece-of-cake in order from George to Alice; draw a line whose slope is the corresponding utility-ratio.
-   Finish at the point where all cake is given to Alice (30,0).


History

The IPS was introduced as part of the Dubins–Spanier theorems and used in the proof of Weller's theorem. The term "Individual Pieces set" was coined by Julius Barbanel.[1]


See also

-   Radon–Nikodym set


References

Category:Fair division Category:Measure theory

[1]