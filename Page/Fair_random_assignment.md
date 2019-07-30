FAIR RANDOM ASSIGNMENT is a kind of a fair division problem.

In the _assignment_ problem, _n_ objects have to be allocated fairly among _n_ agents. Each agent has to receive exactly one object. Examples include the assignment of jobs to workers, of rooms to housemates, of time slots to users of a common machine, and so on.

In general, a fair assignment may be impossible to attain. For example, if Alice and Batya both prefer the eastern room to the western room, only one of them will get it and the other will be envious. In the RANDOM ASSIGNMENT setting, fairness is attained using a lottery. So in the simple example above, Alice and Batya will toss a fair coin and the winner will get the eastern room.

There are several ways to extend the "coin toss" method to situations in which there are more than two agents, and they may have different preference relations on the objects:[1] [2] [3]

-   Random Priority (RP) is a truthful mechanism. It is ex-ante fair (guarantees equal-treatment-of-equals), but usually not Pareto efficient. It is a very simple mechanism that only requires agents to have ordinal ranking on individual items.
-   Competitive Equilibrium from Equal Incomes (CEEI) is a market-based mechanism: each item is viewed as a divisible commodity. Each agent is given 1/n-share of each commodity, then the agents are allowed to trade until there is equilibrium.[4] It is Pareto-efficient and envy-free, but not truthful. This is a more complex mechanism that requires the agents to have full cardinal utility functions (or, alternatively, ordinal ranking on lotteries).
-   Probabilistic Serial (PS) is an algorithm that guarantees sd-envy-freeness and sd-Pareto efficiency, but is not truthful. It requires only ordinal ranking on items.


See also

-   Rental harmony is a variant of the assignment problem in which fairness is attained using monetary payments, instead of randomization.
-   Fair item assignment is a setting in which agents may get more than one item.


References

Category:Fair division

[1]

[2]

[3]

[4]