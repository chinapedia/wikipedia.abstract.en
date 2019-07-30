In auction theory, JUMP BIDDING is the practice of increasing the current price in an English auction, substantially more than the minimal allowed amount.


Puzzle

At first glance, jump bidding seems irrational. Apparently, in an English auction, it is a dominant strategy for each buyer whose price is above the displayed price, to always bid the minimal allowed increment (e.g. one cent) above the displayed price. By bidding higher, the bidder gives up the opportunity to win the item at a lower price.

However, in practice buyers increase the displayed price much more than the minimal allowed increment. Often, buyers increase even their own previous bid!

Several explanations have been suggested to this behavior.


Reducing bidding costs

When bidding is costly, or when time is costly, jump-bidding allows the bidders to reduce their total costs and get to the final outcome faster.[1]


Signaling

Consider two veteran bidders, that compete with each other many times in English auctions. Each time, the higher-value bidder wins the item and pays the lower-value to the seller. Then, one day they decide to cooperate: they agree that from now on, the higher-value bidder will bid 1 and the lower-value bidder will bid 0. This way, the higher-value bidder will always win the item for free. Such cooperation could be very beneficial to both bidders in the long run. The problem is, it cannot be enforced, because both bidders have an incentive to say that their value is higher than it really is.

Here jump-bidding comes into play. It works like a signaling game.[2] By jump-bidding, the jumper signals that he has a high value, and so the other bidder should quit immediately if his value is lower.

Numeric example

Two bidders, Xenia and Yakov, participate in an auction for a single item. This is a common value auction with the following parameters, where A B and C are independent uniform random variables on the interval (0,36):

-   Xenia sees X := A + B.
-   Yakov sees Y := B + C.
-   The value of the item for both bidders is V := (X + Y)/2 = (A + 2B + C)/2.

The auction proceeds in two stages:

1.  In the first stage, each bidder bids either 0 (no jump) or K (jump). If exactly one bidder jumped, then this bidder wins the item and pays K and the auction is over. Otherwise -
2.  In the second stage, there is an incremental auction (a Japanese auction) starting at the current price. The initial price is 0 if no bidder jumped, or K if both jumped.

We show that there exists a symmetric perfect Bayesian equilibrium in which each bidder jumps if-and-only-if his value is above a certain threshold value, T. To show this, we proceed backwards.

In the second stage, there is a symmetric equilibrium in which each bidder exits at his observed value - Xenia exits at X and Yakov at Y.

In the first stage, we take Xenia's viewpoint. Assume that Yakov's strategy is to jump if-and-only-if his signal is at least T. We calculate Xenia's best response. There are four cases to consider, depending on whether Xenia/Yakov jumps/passes. The following table shows Xenia's expected net gain in each of these cases:

                 Xenia jumps          Xenia passes
  -------------- -------------------- ----------------
  YAKOV JUMPS    E[V − Y|T < Y < X]   0
  YAKOV PASSES   E[V − K|Y < T]       E[V − Y|Y < X]

At the threshold (X=T), Xenia should be indifferent between jumping and passing: $\begin{align}
&& E[V-K | Y<T, X=T] &= E[V-Y | Y<X, X=T]
\\
\implies
&& K &= E[Y | Y<X=T]
\\
\implies
&& K &= 2 T / 3 && (when\,\,T \leq 36)
\implies
&& T &= 3 K / 2 && (when\,\,K \leq 24)
\end{align}$

So the symmetric PBE strategy (at least when K ≤ 24) is that each bidder jumps to K if-and-only-if his signal is at least 3K/2.

The outcome of this PBE is substantially different than that of a standard Japanese auction (with no jump option). As an example, let the jump-level be K = 24. Hence T = 36 - the symmetric PBE strategy is to jump if-and-only-if the signal is at least 36. So if Xenia's value is e.g. 33 and Yakov's value is 39, then Xenia will pass and Yakov will jump, so Yakov will win and pay only 24. In contrast, in a simple Japanese auction, Xenia will stay up to her value of 33, so Yakov will win and pay 33.

This outcome seems counter-intuitive from two reasons:

-   Why does Xenia give up at 24 and not proceed to 33? Let's analyze Xenia's payoff if she jumps and then proceeds to 33:
    -   If Yakov also jumps, this means that Yakov's value is above 36. This means that Xenia will lose anyway - whether she jumps or not.
    -   If Yakov does not jump, Xenia wins immediately and pays 24. But if Yakov does not jump and Xenia also does not jump, she can win the item and pay Y. And, the expected value of Y conditioned on Y < X is only 2X/3, which in this case is only 22. So, by not jumping, Xenia can only gain.
-   Why does Yakov jump to 24 and not proceed in smaller steps? Let's analyze Yakov's payoff if he does not jump and then proceeds to 39:
    -   If Xenia also does not jump, then Yakov wins and pays X. The expected value of X given Y is 2Y/3 = 26. But by jumping he could have paid only 24.
    -   If Xenia jumps, then Yakov loses and his net-gain is 0, instead of the positive net-gain that he could have by winning.

Jump-bidding is a very crude form of communication: it does not communicate my actual value, it only signals that my value is above a certain threshold. The careful selection of the threshold and the jump-height guarantee that this communication is a self-enforcing agreement: it is best for both bidders to communicate truthfully.


Manipulating the outcome using the discreteness of prices

Since bidding proceeds in discrete steps, jump bidding can alter the final outcome. For example, suppose the initial price is 0, the minimal increment is 2 and the values are 9 and 10. Then, without jumping, the 9-bidder will increase the price to 2, the 10-bidder will increase the price to 4, the 9-bidder to 6, the 10-bidder to 8, and the 9-bidder will have to quit, so the 10-bidder will win and pay 8. But, if the 9-bidder jumps from 0 to 8, the 10-bidder might quit and the 9-bidder will win and pay 8.[3]


Effects

Some authors claim that jump-bidding reduces the seller's revenue, since the signaling allows bidders to collude and reduce the final price.[4] Therefore, it may be more profitable for the seller to use an auction format that does not allow jump-bidding, such as a Japanese auction.

Other authors dispute this claim.[5]


See also

-   Bid shading - the practice of a bidder placing a bid that is below what they believe a good is worth.
-   Calor licitantis - "bidding fever".


References

Category:Auctions

[1]

[2]

[3]

[4]

[5]