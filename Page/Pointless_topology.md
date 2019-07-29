In mathematics, POINTLESS TOPOLOGY (also called POINT-FREE or POINTFREE TOPOLOGY, or LOCALE THEORY) is an approach to topology that avoids mentioning points.


Intuitively

Traditionally, a topological space consists of a set of points together with a _topology_, a system of subsets called open sets that with the operations of intersection and union forms a lattice with certain properties. Point-free topology is based on the concept of a "realistic spot" instead of a point without extent. Spots can be joined (forming a complete lattice) and if a spot meets a join of others it has to meet some of the constituents, which, roughly speaking, leads to the distributive law

b ∧ (⋁a_(i)) = ⋁(b∧a_(i)).


Formally

The basic concept is that of a FRAME, a complete lattice satisfying the distributive law above; frame homomorphisms respect all joins (in particular, the least element of the lattice) and finite meets (in particular, the greatest element of the lattice).

Frames, together with frame homomorphisms, form a category.


Relation to point-set topology

In classical topology, represented on a set X by the system Ω(X) of open sets, Ω(X) (partially ordered by inclusion) is a frame, and if f: X → Y is a continuous map, Ω(f): Ω(Y) → Ω(X) defined by Ω(f)(U) = f^( − 1)[U] is a frame homomorphism. For sober spaces such Ω(f) are precisely the frame homomorphisms h: Ω(Y) → Ω(X). Hence Ω is a full embedding of the category of sober spaces into the dual of the category of frames (usually called of the category of locales). This justifies thinking of frames (locales) as of generalized topological spaces. A frame is _spatial_ if it is isomorphic to a Ω(X). There are plenty of non-spatial ones and this fact turned out to be helpful in several problems.


The theory of frames and locales

The theory of frames and locales in the contemporary sense initiated in late fifties (Charles Ehresmann, Jean Bénabou, Hugh Dowker, Dona Papert) and developed through the following decades (John Isbell, Peter Johnstone, Harold Simmons, Bernhard Banaschewski, Aleš Pultr, Till Plewe, Japie Vermeulen, Steve Vickers) into a lively branch of topology, with application in various fields, in particular also in theoretical computer science. For more on the history of locale theory see.[1]

It is possible to translate most concepts of point-set topology into the context of locales, and prove analogous theorems. From the advantages of the point-free approach let us point out, e.g. the fact that some important facts of classical topology depending on choice principles become choice-free (that is, constructive, which is, a.o. appealing for computer science). Thus for instance, products of compact locales are compact constructively, or completions of uniform locales are constructive. This can be useful if one works in a topos that does not have the axiom of choice. From among other facts of advantage let us name the much better behavior of paracompactness, or the fact that subgroups of localic groups are always closed.

Another point where locale theory and topology diverge strongly is the concept of subspaces vs. sublocales: by Isbell's density theorem, every locale has a smallest dense sublocale. This has absolutely no equivalent in the realm of topological spaces.


See also

-   Heyting algebra. A frame is a complete Heyting algebra.
-   Complete Boolean algebra. Any complete Boolean algebra is a frame (it is a spatial frame if and only if it is atomic).
-   Details on the relationship between the category of topological spaces and the category of locales, including the explicit construction of the duality between sober spaces and spatial locales, are to be found in the article on Stone duality.
-   Point-free geometry.


Bibliography

A general introduction to pointless topology is

-

This is, in its own words, to be read as the trailer for Johnstone's excellent monograph (which appeared already in 1982 and can still be used for basic reference):

-   Johnstone, Peter T. (1982). Stone Spaces. Cambridge University Press, .

There is a recent monograph

-   Picado, Jorge, Pultr, Aleš (2012). Frames and locales: Topology without points. Frontiers in Mathematics, vol. 28, Springer, Basel.

where one also finds a more extensive bibliography.

For relations with logic:

-   Vickers, Steven (1996). Topology via Logic. Cambridge Tracts in Theoretical Computer Science, Cambridge University Press.

For a faster information see the respective chapters in:

-   Pedicchio, Maria Cristina, Tholen, Walter (Eds.). Categorical Foundations - Special Topics in Order, Topology, Algebra and Sheaf Theory. Encyclopedia of Mathematics and its Applications, Vol. 97, Cambridge University Press, 2003, pp. 49–101.
-   Hazewinkel, Michiel (Ed.). Handbook of Algebra. Vol. 3, North-Holland, Amsterdam, 2003, pp. 791–857.
-   Grätzer, George, Wehrung, Friedrich (Eds.). Lattice Theory: Special Topics and Applications. Vol. 1, Springer, Basel, 2014, pp. 55–88.

Category:Category theory Category:General topology

[1] Peter T. Johnstone, Elements of the history of locale theory, in: Handbook of the History of General Topology, vol. 3, pp. 835-851, Springer, , 2001.