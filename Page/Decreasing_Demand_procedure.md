The DECREASING DEMAND PROCEDURE is a procedure for fair item assignment. It yields a Pareto-efficient division that maximizes the rank of the agent with the lowest rank. This corresponds to the Rawlsian justice criterion of taking care of the worst-off agent.

The procedure was developed by Dorothea Herreiner and Clemens Puppe.[1]


Description

Each agent is supposed to have a linear ranking on all bundles of items.

The agents are queried in a round-robin fashion: each agent, in turn, reports his next bundle in the ranking, going from the best to the worst.

After each report, the procedure checks whether it is possible to construct a complete partition of the items based on the reports made so far. If it is possible, then the procedure stops and returns one such partition. If there is more than one partition, then a Pareto-efficient one is returned.

The procedure produces "balanced" allocations, that is, allocations which maximize the rank in the preference ordering of the bundle obtained by the worst-off agent.[2]


Limitations

The procedure requires the agents to rank bundles of items. This is feasible when the number of items is small, but may be difficult when the number of items is large, since the number of bundles grows exponentially with the number of items.

The procedure does not guarantee envy-freeness; see envy-free item assignment for procedures that do guarantee it.


References

Category:Fair division protocols

[1]

[2]