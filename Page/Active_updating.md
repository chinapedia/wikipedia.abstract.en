In computer programming, suppose we have a data item A whose value depends on data item B, i.e., the value of A must be changed after the value of B changes and before the value of A becomes necessary. ACTIVE UPDATING is updating A immediately after B changes, while PASSIVE UPDATING or LAZY UPDATING (lazy evaluation) is updating A immediately before its value is fetched. And example of this distinction is, e.g., in the implementation of GUI applications: the list of submenu items may depend on the state of the application; this list may be updated either as soon as the state of the application changes ("active") or only when the menu is invoked ("passive").[1]

Another example is update a visual display as soon as the underlying data change as opposed to clicking the "redraw" button. In this situation active update may create a problem to deal with: an abrupt change of some part of the display may coincide in time with the saccadic movement of the eye, and the change may go unnoticed by a human observer.[2]


See also

-   Direct updating vs. deferred updating in transaction processing.[3]


References

Category:Programming idioms

[1] Active Scripting Newsletter - Issue #58 - November 2004, _Dr. Dobb's_

[2] in: _Human Aspects of Visualization: Second IFIP WG 13.7 Workshop on Human-Computer Interaction and Visualization, HCIV (INTERACT) 2009, Uppsala, Sweden, August 24, 2009_, p. 49

[3] C++ Move Semantics for Exception Safety and Optimization in Software Transactional Memory Libraries, In book: Proceedings of the Third International Workshop on Implementation, Compilation, Optimization of Object-Oriented Languages, Programs and Systems (ICOOOLPS), 2008