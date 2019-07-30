The ENVY-CYCLES PROCEDURE is a procedure for fair item assignment. It can be used by several people who want to divide among them several discrete items, such as heirlooms, sweets, or seats in a class.

Ideally, we would like the allocation to be envy-free (EF). i.e., to give each agent a bundle that he/she prefers over the bundles of all other agents. However, the items are discrete and cannot be cut, so an envy-free assignment might be impossible (for example, consider a single item and two agents). The envy-cycles procedure aims to achieve the "next-best" option -- _envy-freeness up to at most a single good_ (EF1): it finds an allocation in which the envy of every person towards every other person is bounded by the maximum marginal utility it derives from a single item. In other words, for every two people _i_ and _j_, there exists an item such that, if that item is removed, _i_ does not envy _j_.

The procedure was presented by Lipton and Markakis and Mossel and Saberi[1] and it is also described in .[2]


Assumptions

The envy-cycles procedure assumes that each person has a cardinal utility function on bundles of items. This utility function does _not_ have to be additive. I.e, the items are _not_ assumed to be independent goods.

The agents do not have to actually report their cardinal utility: it is sufficient that they know how to rank bundles.


The procedure

1.  Order the items arbitrarily.
2.  While there are unassigned items:
    -   Ensure that there is an _unenvied agent_ - an agent that no other agent envies.
    -   Give the next item to the unenvied agent.

In step 2, if there is no unenvied agent, it means that there is a directed cycle in the _envy graph_ - a directed graph in which each agent points to all agents he envies. Cycles can be removed by cyclic exchange of bundles. After all cycles are removed, the envy-graph must have a node with no incoming edges; this node represents an unenvied agent.

The resulting allocation is not necessarily EF, but it is ENVY-FREE EXCEPT ONE ITEM. This is true not only in the final allocation but also in each intermediate allocation: since an item is always given to an unenvied agent, the envy of all other agents after that allocation is at most a single item.


Run-time analysis

Suppose there are _m_ items. Each allocation of an item adds to the envy-graph at most _n_-1 edges. Hence, at most (n − 1)m edges are added overall. Each cycle-removal removes at least two edges. Hence, we need to run the cycle-removal step at most (n − 1)m/2 times. Finding a cycle can be done in time O(n²) using e.g. depth-first search. All in all, the run-time is O(n³m).


Examples

In these examples the preferences go from 1-3 where the higher the number the higher the preference. Also a,b and c are people while X,Y and Z are objects.

1) With 3 people and 3 objects, every possible allocation will be a different result. This case happens when each of the three people have the same preferences.

      X   Y   Z
  --- --- --- ---
  a   3   2   1
  b   3   2   1
  c   3   2   1

  : 6 Different Results

There are six different ways to allocate the objects:

In the beginning because no one has anything then all of them are unenvied agents and this is the same in all the cases. In case of a tie, we break ties between unenvied agents in lexicographic order.

1.  .Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now c is jealous of b and a, b is jealous of a and a isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
2.  Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now c is jealous of a, b is jealous of a and c and a isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Z and c gets Y.
3.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now c is jealous of a and b , a is jealous of b and b isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Y, b gets X and c gets Z.
4.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now a is jealous of c, b is jealous of a and c and c isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Y, b gets Z and c gets X.
5.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now c is jealous of b, a is jealous of b and c and b isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Z, b gets X and c gets Y.
6.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now b is jealous of c, a is jealous of b and c and c isn't jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Z, b gets Y and c gets X.

2) With 3 people and 3 objects, every possible allocation will be the same result. This case happens when each of the three people have completely different preferences, because each person has something else they prefer no matter what they will get what they want.

      X   Y   Z
  --- --- --- ---
  a   3   2   1
  b   1   3   2
  c   2   1   3

  : Same Result

There are six different ways to allocate the objects:

In the beginning because no one has anything then all of them are unenvied agents and this is the same in all the cases. In case of a tie, we break ties between unenvied agents in lexicographic order.

1.  Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now a,b and c are all not jealous of anybody and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
2.  Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now c is jealous of b, b is jealous of c and a isn't jealous of anybody. Since there is an envy cycle between b and c, they will switch objects and now b gets Y and c gets Z. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
3.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now b is jealous of a, a is jealous of b and c isn't jealous of anybody.Since there is an envy cycle between b and c, they will switch objects and now a gets X and b gets Y. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
4.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now b is jealous of a, a is jealous of c and c is jealous of b. Since there is an envy cycle between a,b and c, they will rotate objects against the direction of jealousy and now a gets X, b gets Y and c gets Z. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
5.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now b is jealous of a and c, a is jealous of b and c and c is jealous of b and a.Since there is an envy cycle between a, b and c they will rotate objects against the direction of jealousy and now a gets X and b gets Y and c gets Z. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
6.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now c is jealous of a, a is jealous of c and b isn't jealous of anybody.Since there is an envy cycle between a and c, they will switch objects and now a gets X and c gets Z. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.

3) With 3 people and 3 objects, any other situation then the first and second example will give between 1 and 6 results. So for that to happen you just need at least two people to have same preference on one object or at most for two people to have different preferences on the same object.

      X   Y   Z
  --- --- --- ---
  a   3   2   1
  b   3   1   2
  c   1   2   3

  : 3 Different Results

There are six different ways to allocate the objects:

In the beginning because no one has anything then all of them are unenvied agents and this is the same in all the cases. In case of a tie, we break ties between unenvied agents in lexicographic order.

1.  Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now a isnt jealous of anybody, b is jealous of a and c and c isn't jealous of anybody, now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Y and c gets Z.
2.  Lets start off by giving the X object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now a isn't jealous of anybody ,b is jealous of a and c is jealous of b, now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Z and c gets Y.
3.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Z to c. Now b and c are not jealous of anybody and a is jealous of b ,now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Y, b gets X and c gets Z.
4.  Lets start off by giving the Y object to a. After that both b and c and unenvied agents. So now lets give the Z object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now a is jealous of c,b is jealous of c and c is jealous of a and b so there are two envy cycles, one between a and c and another between b and c. Because the tie breaker is by lexicographic order, the procedure does the a and c envy cycle first then a and c will switch then a isn't jealous of anybody, b is jealous of a and c is jealous of b and now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Z and c gets Y.
5.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the X object to b. After that c is an unenvied agent. So now lets give the last object Y to c. Now a is jealous of b and c, b isn't jealous of anybody and c is jealous of a.Since there is an envy cycle between a and c they will switch objects and now a gets Y and c gets Z, now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets Y, b gets X and c gets Z.
6.  Lets start off by giving the Z object to a. After that both b and c and unenvied agents. So now lets give the Y object to b. After that c is an unenvied agent. So now lets give the last object X to c. Now b is jealous of a and c, a is jealous of b and c and c is jealous of b and a.Since there is an envy cycle between a, b and c they will rotate objects against the direction of jealousy. However, because there are 2 envy cycles between a,b and c there could be two options.Because the tie breaker is by lexicographic order,a gets X from c, b gets Z from a and c gets Y from b so the outcome would be a gets X, b gets Z and c gets Y. And now since there is no envy cycle and no more objects to hand out then the procedure ends and the final result is a gets X, b gets Z and c gets Y.


See also

-   Envy-free item assignment


References

Category:Fair division protocols

[1]

[2]